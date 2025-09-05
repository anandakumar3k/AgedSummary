report 99667 "Update ILE Manufacturer Date"
{
    Caption = 'Update ILE Manufacturer Date';
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;

    // We modify ILE and read IAE
    Permissions =
        tabledata "Item Ledger Entry" = rimd,
        tabledata "Item Application Entry" = r;

    dataset
    {
        // PHASE 1: Stamp origin inbounds with their own Posting Date
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            // Optional user filters
            RequestFilterFields = "Item No.", "Posting Date", "Location Code", "Variant Code";

            // Process origin inbound positives with blank Manufacturer Date
            DataItemTableView = sorting("Entry No.")
                                where(Positive = const(true),
                                      "Manufacturer Date" = filter(0D));

            trigger OnAfterGetRecord()
            begin
                DialogWindow.Update(1, StrSubstNo(Processing, "Item Ledger Entry"."Document No.", "Item Ledger Entry"."Entry No."));

                // Origin inbounds only
                if "Item Ledger Entry"."Entry Type" in [
                     "Item Ledger Entry"."Entry Type"::Purchase,
                     "Item Ledger Entry"."Entry Type"::"Positive Adjmt.",
                     "Item Ledger Entry"."Entry Type"::Output,
                     "Item Ledger Entry"."Entry Type"::"Assembly Output"
                    ] then begin

                    // 1) Update immediately applied entries (your original pattern)
                    FindUpdateAppliedEntries("Item Ledger Entry", TempItemLedgerEntry);

                    // 2) Stamp the inbound itself
                    "Item Ledger Entry"."Manufacturer Date" := "Item Ledger Entry"."Posting Date";
                    "Item Ledger Entry".Modify();
                end;
            end;
        }

        // PHASE 2: Resolve & stamp for ALL other entries (positives & negatives) still blank
        dataitem("Item Ledger Entry2"; "Item Ledger Entry")
        {
            RequestFilterFields = "Document No.", "Item No.", "Posting Date", "Location Code", "Variant Code", "Entry Type";

            // DO NOT filter Positive here (we need to process negatives too).
            DataItemTableView = sorting("Entry No.")
                                where("Manufacturer Date" = filter(0D));

            trigger OnAfterGetRecord()
            var
                ResolvedDate: Date;
            begin
                DialogWindow.Update(1, StrSubstNo(Processing, "Item Ledger Entry2"."Document No.", "Item Ledger Entry2"."Entry No."));

                // Skip origin inbounds here (handled in Phase 1)
                if "Item Ledger Entry2".Positive then
                    if "Item Ledger Entry2"."Entry Type" in [
                        "Item Ledger Entry2"."Entry Type"::Purchase,
                        "Item Ledger Entry2"."Entry Type"::"Positive Adjmt.",
                        "Item Ledger Entry2"."Entry Type"::Output,
                        "Item Ledger Entry2"."Entry Type"::"Assembly Output"
                       ] then
                        CurrReport.Skip();

                // Resolve original receipt date WITHOUT cache (recursion with depth guard)
                ResolvedDate := ResolveOriginMfgDate_NoCache("Item Ledger Entry2", 0);

                if ResolvedDate <> 0D then begin
                    "Item Ledger Entry2"."Manufacturer Date" := ResolvedDate;
                    "Item Ledger Entry2".Modify();
                end;
            end;
        }
    }

    trigger OnPreReport()
    begin
        DialogWindow.Open(UpdatingApplicationEntry);
        MaxDepth := 10; // safeguard against infinite recursion
    end;

    trigger OnPostReport()
    begin
        DialogWindow.Close();
    end;

    var
        TempItemLedgerEntry: Record "Item Ledger Entry" temporary;
        ItemLedgEntry: Record "Item Ledger Entry";
        ItemApplnEntry: Record "Item Application Entry";
        DialogWindow: Dialog;

        UpdatingApplicationEntry: Label '#1#################################\Updating Application \#2###########';
        Processing: Label 'Processing %1 %2';

        // recursion guard only (no caches)
        MaxDepth: Integer;

    // -------------------------------------------------------------------------
    // Your original support procs (kept, with small corrections)
    // -------------------------------------------------------------------------

    procedure FindUpdateAppliedEntries(ItemLedgEntry: Record "Item Ledger Entry"; var TempItemLedgerEntry: Record "Item Ledger Entry" temporary)
    var
        ItemApplnEntryL: Record "Item Application Entry";
    begin
        TempItemLedgerEntry.DeleteAll();

        if ItemLedgEntry.Positive then begin
            ItemApplnEntryL.Reset();
            ItemApplnEntryL.SetCurrentKey("Inbound Item Entry No.", "Outbound Item Entry No.", "Cost Application");
            ItemApplnEntryL.SetRange("Inbound Item Entry No.", ItemLedgEntry."Entry No.");
            ItemApplnEntryL.SetFilter("Outbound Item Entry No.", '<>%1', 0);
            ItemApplnEntryL.SetRange("Cost Application", true);
            if ItemApplnEntryL.Find('-') then
                repeat
                    UpdateManufacturerDateToAppliedEntries(ItemLedgEntry, ItemApplnEntryL."Outbound Item Entry No.");
                until ItemApplnEntryL.Next() = 0;
        end else begin
            ItemApplnEntryL.Reset();
            ItemApplnEntryL.SetCurrentKey("Outbound Item Entry No.", "Item Ledger Entry No.", "Cost Application");
            ItemApplnEntryL.SetRange("Outbound Item Entry No.", ItemLedgEntry."Entry No.");
            ItemApplnEntryL.SetRange("Item Ledger Entry No.", ItemLedgEntry."Entry No.");
            ItemApplnEntryL.SetRange("Cost Application", true);
            if ItemApplnEntryL.Find('-') then
                repeat
                    UpdateManufacturerDateToAppliedEntries(ItemLedgEntry, ItemApplnEntryL."Inbound Item Entry No.");
                until ItemApplnEntryL.Next() = 0;
        end;
    end;

    local procedure UpdateManufacturerDateToAppliedEntries(parentItemLedgEntry: Record "Item Ledger Entry"; AppliedEntryNo: Integer)
    var
        ItemLedgEntryL: Record "Item Ledger Entry";
        TransferItemLedgEntry: Record "Item Ledger Entry";
    begin
        ItemLedgEntryL.Get(AppliedEntryNo);

        // If it's a Transfer entry, set same manufacturer date on both legs of the transfer document (shipment/receipt)
        if ItemLedgEntryL."Entry Type" = ItemLedgEntryL."Entry Type"::Transfer then begin
            TransferItemLedgEntry.Reset();
            TransferItemLedgEntry.SetRange("Entry Type", TransferItemLedgEntry."Entry Type"::Transfer);
            TransferItemLedgEntry.SetRange("Document No.", ItemLedgEntryL."Document No.");
            TransferItemLedgEntry.SetRange("Item No.", ItemLedgEntryL."Item No.");
            TransferItemLedgEntry.SetRange("Lot No.", ItemLedgEntryL."Lot No.");
            TransferItemLedgEntry.ModifyAll("Manufacturer Date", parentItemLedgEntry."Posting Date");
        end;

        // Set Manufacturer Date on the specific applied entry if still blank
        ItemLedgEntryL.Reset();
        ItemLedgEntryL.SetRange("Entry No.", AppliedEntryNo);
        ItemLedgEntryL.SetRange("Manufacturer Date", 0D);
        if ItemLedgEntryL.FindFirst() then begin
            ItemLedgEntryL."Manufacturer Date" := parentItemLedgEntry."Posting Date";
            ItemLedgEntryL.Modify();
        end;
    end;
    // -------------------------------------------------------------------------
    // NEW: recursion-only resolver (NO cache), with depth guard
    // -------------------------------------------------------------------------
    local procedure ResolveOriginMfgDate_NoCache(var Curr: Record "Item Ledger Entry"; Depth: Integer): Date
    var
        OldestDate: Date;
        CandidateDate: Date;
    begin
        if Depth > MaxDepth then
            exit(0D);

        // If already stamped, use it
        if Curr."Manufacturer Date" <> 0D then
            exit(Curr."Manufacturer Date");

        // Origin inbound => Posting Date
        if Curr.Positive then
            if Curr."Entry Type" in [
                Curr."Entry Type"::Purchase,
                Curr."Entry Type"::"Positive Adjmt.",
                Curr."Entry Type"::Output,
                Curr."Entry Type"::"Assembly Output"
               ] then
                exit(Curr."Posting Date");

        // OUTBOUND: take oldest among all applied inbounds
        if not Curr.Positive then begin
            ItemApplnEntry.Reset();
            ItemApplnEntry.SetCurrentKey("Outbound Item Entry No.", "Inbound Item Entry No.", "Cost Application");
            ItemApplnEntry.SetRange("Outbound Item Entry No.", Curr."Entry No.");
            ItemApplnEntry.SetRange("Cost Application", true);

            OldestDate := 0D;
            if ItemApplnEntry.FindSet() then
                repeat
                    if ItemLedgEntry.Get(ItemApplnEntry."Inbound Item Entry No.") then begin
                        CandidateDate := ResolveOriginMfgDate_NoCache(ItemLedgEntry, Depth + 1);
                        if CandidateDate <> 0D then
                            if (OldestDate = 0D) or (CandidateDate < OldestDate) then
                                OldestDate := CandidateDate;
                    end;
                until ItemApplnEntry.Next() = 0;

            exit(OldestDate); // may be 0D if nothing found
        end;

        // NON-ORIGIN INBOUND (e.g., Transfer Receipt / Sales Return Receipt)
        ItemApplnEntry.Reset();
        ItemApplnEntry.SetCurrentKey("Inbound Item Entry No.", "Outbound Item Entry No.", "Cost Application");
        ItemApplnEntry.SetRange("Inbound Item Entry No.", Curr."Entry No.");
        ItemApplnEntry.SetRange("Cost Application", true);
        if ItemApplnEntry.FindFirst() then
            if ItemLedgEntry.Get(ItemApplnEntry."Outbound Item Entry No.") then
                exit(ResolveOriginMfgDate_NoCache(ItemLedgEntry, Depth + 1));

        // Fallback
        exit(0D);
    end;
}
