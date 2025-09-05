codeunit 99662 "Event Handler"
{
    Permissions = TableData "Item Ledger Entry" = rm;

    var
        ManufacturerDate: Date;


    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", OnRegisterChangeOnChangeTypeInsertOnBeforeInsertReservEntry, '', false, false)]
    local procedure "Item Tracking Lines_OnRegisterChangeOnChangeTypeInsertOnBeforeInsertReservEntry"(var TrackingSpecification: Record "Tracking Specification"; var OldTrackingSpecification: Record "Tracking Specification"; var NewTrackingSpecification: Record "Tracking Specification"; FormRunMode: Option)
    begin
        Clear(ManufacturerDate);
        ManufacturerDate := OldTrackingSpecification."Manufacturer Date";
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Create Reserv. Entry", OnAfterSetDates, '', false, false)]
    local procedure "Create Reserv. Entry_OnAfterSetDates"(var ReservationEntry: Record "Reservation Entry")
    begin
        ReservationEntry."Manufacturer Date" := ManufacturerDate;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Create Reserv. Entry", OnCreateReservEntryExtraFields, '', false, false)]
    local procedure "Create Reserv. Entry_OnCreateReservEntryExtraFields"(var InsertReservEntry: Record "Reservation Entry"; OldTrackingSpecification: Record "Tracking Specification"; NewTrackingSpecification: Record "Tracking Specification")
    begin
        InsertReservEntry."Manufacturer Date" := NewTrackingSpecification."Manufacturer Date";
    end;


    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", OnAfterEntriesAreIdentical, '', false, false)]
    local procedure "Item Tracking Lines_OnAfterEntriesAreIdentical"(ReservEntry1: Record "Reservation Entry"; ReservEntry2: Record "Reservation Entry"; var IdenticalArray: array[2] of Boolean)
    begin
        IdenticalArray[2] := IdenticalArray[2] and (ReservEntry1."Manufacturer Date" = ReservEntry2."Manufacturer Date");
    end;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", OnAfterCopyTrackingSpec, '', false, false)]
    local procedure "Item Tracking Lines_OnAfterCopyTrackingSpec"(var SourceTrackingSpec: Record "Tracking Specification"; var DestTrkgSpec: Record "Tracking Specification")
    begin
        DestTrkgSpec."Manufacturer Date" := SourceTrackingSpec."Manufacturer Date";
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Tracking Data Collection", OnTransferItemLedgToTempRecOnBeforeInsert, '', false, false)]
    local procedure "Item Tracking Data Collection_OnTransferItemLedgToTempRecOnBeforeInsert"(var TempGlobalReservEntry: Record "Reservation Entry" temporary; ItemLedgerEntry: Record "Item Ledger Entry"; TrackingSpecification: Record "Tracking Specification"; var IsHandled: Boolean)
    begin
        TempGlobalReservEntry."Manufacturer Date" := ItemLedgerEntry."Manufacturer Date";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Tracking Data Collection", OnAfterAssistEditTrackingNo, '', false, false)]
    local procedure "Item Tracking Data Collection_OnAfterAssistEditTrackingNo"(var TrackingSpecification: Record "Tracking Specification"; var TempGlobalEntrySummary: Record "Entry Summary" temporary; CurrentSignFactor: Integer; MaxQuantity: Decimal; var TempGlobalReservationEntry: Record "Reservation Entry" temporary; LookupMode: Enum "Item Tracking Type")
    begin
        TrackingSpecification."Manufacturer Date" := TempGlobalReservationEntry."Manufacturer Date";
    end;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", OnAfterMoveFields, '', false, false)]
    local procedure "Item Tracking Lines_OnAfterMoveFields"(var TrkgSpec: Record "Tracking Specification"; var ReservEntry: Record "Reservation Entry")
    begin
        ReservEntry."Manufacturer Date" := TrkgSpec."Manufacturer Date";
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", OnBeforeInsertSetupTempSplitItemJnlLine, '', false, false)]
    local procedure "Item Jnl.-Post Line_OnBeforeInsertSetupTempSplitItemJnlLine"(var TempTrackingSpecification: Record "Tracking Specification" temporary; var TempItemJournalLine: Record "Item Journal Line" temporary; var PostItemJnlLine: Boolean; var ItemJournalLine2: Record "Item Journal Line"; SignFactor: Integer; FloatingFactor: Decimal)
    begin
        TempItemJournalLine."Manufacturer Date" := TempTrackingSpecification."Manufacturer Date";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", OnAfterInitItemLedgEntry, '', false, false)]
    local procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; var ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer);
    begin
        NewItemLedgEntry."Manufacturer Date" := ItemJournalLine."Manufacturer Date";
    end;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", OnAfterLotNoAssistEditOnBeforeClearBinCode, '', false, false)]
    local procedure "Item Tracking Lines_OnAfterLotNoAssistEditOnBeforeClearBinCode"(var TrackingSpecification: Record "Tracking Specification"; var ForBinCode: Code[20])
    begin
        UpdateManufacturerDate(TrackingSpecification);
    end;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", OnBeforeAddToGlobalRecordSet, '', false, false)]
    local procedure "Item Tracking Lines_OnBeforeAddToGlobalRecordSet"(var TrackingSpecification: Record "Tracking Specification"; EntriesExist: Boolean; CurrentSignFactor: Integer; var TempTrackingSpecification: Record "Tracking Specification" temporary)
    begin
        UpdateManufacturerDate(TrackingSpecification);
    end;

    local procedure UpdateManufacturerDate(var TrackingSpecification: Record "Tracking Specification")
    var
        ItemLedgerEntry: Record "Item Ledger Entry";
    begin
        ItemLedgerEntry.Reset();
        ItemLedgerEntry.SetRange("Item No.", TrackingSpecification."Item No.");
        ItemLedgerEntry.SetRange("Lot No.", TrackingSpecification."Lot No.");
        ItemLedgerEntry.SetRange("Location Code", TrackingSpecification."Location Code");
        ItemLedgerEntry.SetRange(Positive, true);
        if ItemLedgerEntry.FindFirst() then
            TrackingSpecification."Manufacturer Date" := ItemLedgerEntry."Manufacturer Date";
    end;


    // [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", OnBeforeQueryClosePage, '', false, false)]
    // local procedure "Item Tracking Lines_OnBeforeQueryClosePage"(var TrackingSpecification: Record "Tracking Specification"; var TotalItemTrackingLine: Record "Tracking Specification"; var TempReservationEntry: Record "Reservation Entry" temporary; var UndefinedQtyArray: array[3] of Decimal; var SourceQuantityArray: array[5] of Decimal; var CurrentRunMode: Enum "Item Tracking Run Mode"; var IsHandled: Boolean)
    // begin
    //     if (TrackingSpecification."Lot No." <> '') or (TrackingSpecification."Serial No." <> '') then
    //         TrackingSpecification.TestField("Manufacturer Date");
    // end;


    procedure UndoManufacturerDate()
    var
        ItemLedgerEntry: Record "Item Ledger Entry";
    begin
        ItemLedgerEntry.SetFilter("Manufacturer Date", '<>%1', 0D);
        ItemLedgerEntry.ModifyAll("Manufacturer Date", 0D);
    end;

}