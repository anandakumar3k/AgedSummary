// report 99667 "Update ILE Manufacturer Date"
// {
//     dataset
//     {
//         dataitem("Item Ledger Entry"; "Item Ledger Entry")
//         {
//             DataItemTableView = sorting("Entry No.") where(Positive = filter(true),
//                                 "Manufacturer Date" = filter(0D));
//             trigger OnAfterGetRecord()
//             begin
//                if "Item Ledger Entry"."Entry Type" in [
//                     "Item Ledger Entry"."Entry Type"::"Purchase",
//                     "Item Ledger Entry"."Entry Type"::"Positive Adjmt.",
//                     "Item Ledger Entry"."Entry Type"::Output,
//                     "Item Ledger Entry"."Entry Type"::"Assembly Output",
//                     "Item Ledger Entry"."Entry Type"::"Assembly Consumption"] then begin
//                     FindUpdateAppliedEntries("Item Ledger Entry", TempItemLedgerEntry);
//                     "Item Ledger Entry"."Manufacturer Date" := "Item Ledger Entry"."Posting Date";
//                     "Item Ledger Entry".Modify();
//                 end;
//             end;
//         }

//         dataitem("Item Ledger Entry2"; "Item Ledger Entry")
//         {
//             RequestFilterFields = "Document No.", "Item No.";
//             DataItemTableView = sorting("Entry No.") where(Positive = filter(true),
//                                 "Manufacturer Date" = filter(0D));
//             trigger OnAfterGetRecord()
//             var
//                 TransferItemLedgEntry: Record "Item Ledger Entry";
//             begin
//                 DialogWindow.update(1, StrSubstNo(Processing, "Item Ledger Entry2"."Document No.", "Item Ledger Entry2"."Entry No."));
//                 FindAppliedEntries("Item Ledger Entry2", TempItemLedgerEntry);
//                 TempItemLedgerEntry.SetFilter("Manufacturer Date", '<>%1', 0D);
//                 if TempItemLedgerEntry.FindFirst() then begin
//                     "Item Ledger Entry2"."Manufacturer Date" := TempItemLedgerEntry."Manufacturer Date";
//                     "Item Ledger Entry2".Modify();
//                 end;
//             end;
//         }
//     }
//     trigger OnPostReport()
//     begin
//         DialogWindow.Close();
//     end;

//     trigger OnPreReport()
//     begin
//         DialogWindow.Open(UpdatingApplicationEntry);
//     end;


//     var
//         TempItemLedgerEntry: Record "Item Ledger Entry" temporary;
//         ItemLedgEntry: Record "Item Ledger Entry";
//         DialogWindow: Dialog;
//         UpdatingApplicationEntry: Label '#1#################################\\Updating Application \\#2###########';
//         Processing: Label 'Processing %1 %2';

//     procedure FindUpdateAppliedEntries(ItemLedgEntry: Record "Item Ledger Entry"; var TempItemLedgerEntry: Record "Item Ledger Entry" temporary)
//     var
//         ItemApplnEntry: Record "Item Application Entry";
//     begin
//         TempItemLedgerEntry.DeleteAll();

//         if ItemLedgEntry.Positive then begin
//             ItemApplnEntry.Reset();
//             ItemApplnEntry.SetCurrentKey("Inbound Item Entry No.", "Outbound Item Entry No.", "Cost Application");
//             ItemApplnEntry.SetRange("Inbound Item Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetFilter("Outbound Item Entry No.", '<>%1', 0);
//             ItemApplnEntry.SetRange("Cost Application", true);
//             if ItemApplnEntry.Find('-') then
//                 repeat
//                     UpdateManufacturerDateToAppliedEntries(ItemLedgEntry, ItemApplnEntry."Outbound Item Entry No.");
//                 until ItemApplnEntry.Next() = 0;
//         end else begin
//             ItemApplnEntry.Reset();
//             ItemApplnEntry.SetCurrentKey("Outbound Item Entry No.", "Item Ledger Entry No.", "Cost Application");
//             ItemApplnEntry.SetRange("Outbound Item Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetRange("Item Ledger Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetRange("Cost Application", true);
//             if ItemApplnEntry.Find('-') then
//                 repeat
//                     UpdateManufacturerDateToAppliedEntries(ItemLedgEntry, ItemApplnEntry."Inbound Item Entry No.");
//                 until ItemApplnEntry.Next() = 0;
//         end;
//     end;

//     procedure FindAppliedEntries(ItemLedgEntry: Record "Item Ledger Entry"; var TempItemLedgerEntry: Record "Item Ledger Entry" temporary)
//     var
//         ItemApplnEntry: Record "Item Application Entry";
//     begin
//         TempItemLedgerEntry.DeleteAll();

//         if ItemLedgEntry.Positive then begin
//             ItemApplnEntry.Reset();
//             ItemApplnEntry.SetCurrentKey("Inbound Item Entry No.", "Outbound Item Entry No.", "Cost Application");
//             ItemApplnEntry.SetRange("Inbound Item Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetFilter("Outbound Item Entry No.", '<>%1', 0);
//             ItemApplnEntry.SetRange("Cost Application", true);
//             if ItemApplnEntry.Find('-') then
//                 repeat
//                     InsertTempEntry(TempItemLedgerEntry, ItemApplnEntry."Outbound Item Entry No.");
//                 until ItemApplnEntry.Next() = 0;
//         end else begin
//             ItemApplnEntry.Reset();
//             ItemApplnEntry.SetCurrentKey("Outbound Item Entry No.", "Item Ledger Entry No.", "Cost Application");
//             ItemApplnEntry.SetRange("Outbound Item Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetRange("Item Ledger Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetRange("Cost Application", true);
//             if ItemApplnEntry.Find('-') then
//                 repeat
//                     InsertTempEntry(TempItemLedgerEntry, ItemApplnEntry."Inbound Item Entry No.");
//                 until ItemApplnEntry.Next() = 0;
//         end;
//     end;

//     local procedure UpdateManufacturerDateToAppliedEntries(parentItemLedgEntry: Record "Item Ledger Entry"; AppliedEntryNo: Integer)
//     var
//         ItemLedgEntry: Record "Item Ledger Entry";
//         TransferItemLedgEntry: Record "Item Ledger Entry";
//     begin
//         ItemLedgEntry.Get(AppliedEntryNo);
//         if ItemLedgEntry."Entry Type" = ItemLedgEntry."Entry Type"::Transfer then begin
//             TransferItemLedgEntry.SetRange("Entry Type", ItemLedgEntry."Entry Type");
//             TransferItemLedgEntry.SetRange("Document No.", ItemLedgEntry."Document No.");
//             TransferItemLedgEntry.SetRange("Item No.", ItemLedgEntry."Item No.");
//             TransferItemLedgEntry.SetRange("Lot No.", ItemLedgEntry."Lot No.");
//             TransferItemLedgEntry.ModifyAll("Manufacturer Date", parentItemLedgEntry."Posting Date");
//         end;

//         ItemLedgEntry.Reset();
//         ItemLedgEntry.SetRange("Entry No.", AppliedEntryNo);
//         ItemLedgEntry.SetRange("Manufacturer Date", 0D);
//         if ItemLedgEntry.FindFirst() then begin
//             ItemLedgEntry."Manufacturer Date" := parentItemLedgEntry."Posting Date";
//             ItemLedgEntry.Modify();
//         end;
//     end;


//     local procedure InsertTempEntry(var TempItemLedgerEntry: Record "Item Ledger Entry" temporary; EntryNo: Integer)
//     var
//         ItemLedgEntry: Record "Item Ledger Entry";
//     begin
//         ItemLedgEntry.Get(EntryNo);

//         if not TempItemLedgerEntry.Get(EntryNo) then begin
//             TempItemLedgerEntry.Init();
//             TempItemLedgerEntry := ItemLedgEntry;
//             TempItemLedgerEntry.Insert();
//         end;
//     end;
// }