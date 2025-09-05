report 99666 "Stock Aging Report "
{
    ApplicationArea = All;
    Caption = 'Stock Aging Report';
    DefaultRenderingLayout = CombinedStockReport;

    UsageCategory = ReportsAndAnalysis;
    DataAccessIntent = ReadOnly;
    dataset
    {
        dataitem(Item; Item)
        {
            //DataItemTableView = where(Type = const(Inventory));
            RequestFilterFields = "No.", "Inventory Posting Group", "Statistics Group", "Global Dimension 1 Filter";
            CalcFields = Inventory;
            column(Description_Item; Item.Description)
            {
            }
            column(No_Item; Item."No.")
            {
            }
            column(Item_Category_Code; "Item Category Code")
            { }
            column(TodayFormatted; Format(Today, 0, 4))
            {
            }
            column(CompanyName; COMPANYPROPERTY.DisplayName())
            {
            }
            column(ItemTableCaptItemFilter; TableCaption + ': ' + ItemFilter)
            {
            }
            column(ItemFilter; ItemFilter)
            {
            }
            column(OpeningBalCaptionLbl; OpeningBalCaptionLbl)
            { }
            column(StartingDate; Format(StartingDate, 0, '<Day,2>/<Month,2>/<Year4>'))
            { }
            column(EndingDate; Format(EndingDate, 0, '<Day,2>/<Month,2>/<Year4>'))
            { }
            column(VarDocTittle; VarDocTittle)
            { }
            column(LocationCptnLbl; LocationCptnLbl)
            { }
            column(UOMCptnLbl; UOMCptnLbl)
            { }
            column(HeaderText10; HeaderText[10])
            {
            }
            column(HeaderText9; HeaderText[9])
            {
            }
            column(HeaderText8; HeaderText[8])
            {
            }
            column(HeaderText7; HeaderText[7])
            {
            }
            column(HeaderText6; HeaderText[6])
            {
            }
            column(HeaderText5; HeaderText[5])
            {
            }
            column(HeaderText4; HeaderText[4])
            {
            }
            column(HeaderText3; HeaderText[3])
            {
            }
            column(HeaderText2; HeaderText[2])
            {
            }
            column(HeaderText1; HeaderText[1])
            {
            }
            column(PrintLine; PrintLine)
            {
            }
            column(InvtValueRTC1; InvtValueRTC[1])
            {
            }
            column(InvtValueRTC2; InvtValueRTC[2])
            {
            }
            column(InvtValueRTC5; InvtValueRTC[5])
            {
            }
            column(InvtValueRTC4; InvtValueRTC[4])
            {
            }
            column(InvtValueRTC3; InvtValueRTC[3])
            {
            }
            column(TotalInvtValueRTC; TotalInvtValueRTC)
            {
            }
            column(InvtValue1_Item; InvtValue[1])
            {
                AutoFormatType = 1;
            }
            column(InvtValue2_Item; InvtValue[2])
            {
                AutoFormatType = 1;
            }
            column(InvtValue3_Item; InvtValue[3])
            {
                AutoFormatType = 1;
            }
            column(InvtValue4_Item; InvtValue[4])
            {
                AutoFormatType = 1;
            }
            column(InvtValue5_Item; InvtValue[5])
            {
                AutoFormatType = 1;
            }
            column(InvtValue6_Item; InvtValue[6])
            {
                AutoFormatType = 1;
            }
            column(InvtValue7_Item; InvtValue[7])
            {
                AutoFormatType = 1;
            }
            column(InvtValue8_Item; InvtValue[8])
            {
                AutoFormatType = 1;
            }
            column(InvtQty1_Item; InvtQty[1])
            {
                AutoFormatType = 1;
            }
            column(InvtQty2_Item; InvtQty[2])
            {
                AutoFormatType = 1;
            }
            column(InvtQty3_Item; InvtQty[3])
            {
                AutoFormatType = 1;
            }
            column(InvtQty4_Item; InvtQty[4])
            {
                AutoFormatType = 1;
            }
            column(InvtQty5_Item; InvtQty[5])
            {
                AutoFormatType = 1;
            }
            column(InvtQty6_Item; InvtQty[6])
            {
                AutoFormatType = 1;
            }
            column(InvtQty7_Item; InvtQty[7])
            {
                AutoFormatType = 1;
            }
            column(InvtQty8_Item; InvtQty[8])
            {
                AutoFormatType = 1;
            }
            column(TotalInvtValue_Item; TotalInvtValue_Item)
            {
                AutoFormatType = 1;
            }
            column(ItemAgeCompositionValueCaption; ItemAgeCompositionValueCaptionLbl)
            {
            }
            column(CurrReportPageNoCaption; CurrReportPageNoCaptionLbl)
            {
            }
            column(AfterCaption; AfterCaptionLbl)
            {
            }
            column(BeforeCaption; BeforeCaptionLbl)
            {
            }
            column(InventoryValueCaption; InventoryValueCaptionLbl)
            {
            }
            column(ItemDescriptionCaption; ItemDescriptionCaptionLbl)
            {
            }
            column(ItemNoCaption; ItemNoCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(OpeningBalance; OpeningBalance)
            { }
            column(ClosingBalQty; ClosingBalQty)
            { }
            column(SoldQty; SoldQty)
            { }
            column(SampleQty; SampleQty)
            { }
            column(PurchQty; PurchQty)
            { }
            column(SalesReturn; SalesReturn)
            { }
            column(PurchaseReturn; PurchaseReturn)
            { }
            column(PositiveAdjmt; PositiveAdjmt)
            { }
            column(NegativeAdjmt; NegativeAdjmt)
            { }
            column(RemainingQty; RemainingQty)
            { }
            column(ClosingBalValue; ClosingBalValue)
            { }
            column(TotalclosingQtyperBucketStartDate1; TotalclosingQtyperBucketStartDate[1])
            {
            }
            column(TotalclosingQtyperBucketStartDate2; TotalclosingQtyperBucketStartDate[2])
            {
            }
            column(TotalclosingQtyperBucketStartDate3; TotalclosingQtyperBucketStartDate[3])
            {
            }
            column(TotalclosingQtyperBucketStartDate4; TotalclosingQtyperBucketStartDate[4])
            {
            }
            column(TotalclosingQtyperBucketStartDate5; TotalclosingQtyperBucketStartDate[5])
            {
            }
            column(TotalclosingQtyperBucketStartDate6; TotalclosingQtyperBucketStartDate[6])
            {
            }
            column(TotalclosingQtyperBucketStartDate7; TotalclosingQtyperBucketStartDate[7])
            {
            }
            column(TotalclosingQtyperBucketStartDate8; TotalclosingQtyperBucketStartDate[8])
            {
            }
            column(TotalclosingQtyperBucketStartDate9; TotalclosingQtyperBucketStartDate[9])
            {
            }
            column(TotalclosingQtyperBucketStartDate10; TotalclosingQtyperBucketStartDate[10])
            {
            }
            column(TotalclosingValueperBucketStartDate1; TotalclosingValueperBucketStartDate[1])
            {
            }
            column(TotalclosingValueperBucketStartDate2; TotalclosingValueperBucketStartDate[2])
            {
            }
            column(TotalclosingValueperBucketStartDate3; TotalclosingValueperBucketStartDate[3])
            {
            }
            column(TotalclosingValueperBucketStartDate4; TotalclosingValueperBucketStartDate[4])
            {
            }
            column(TotalclosingValueperBucketStartDate5; TotalclosingValueperBucketStartDate[5])
            {
            }
            column(TotalclosingValueperBucketStartDate6; TotalclosingValueperBucketStartDate[6])
            {
            }
            column(TotalclosingValueperBucketStartDate7; TotalclosingValueperBucketStartDate[7])
            {
            }
            column(TotalclosingValueperBucketStartDate8; TotalclosingValueperBucketStartDate[8])
            {
            }
            column(TotalclosingValueperBucketStartDate9; TotalclosingValueperBucketStartDate[9])
            {
            }
            column(TotalclosingValueperBucketStartDate10; TotalclosingValueperBucketStartDate[10])
            {
            }
            column(TotalUnitCost; TotalUnitCost)
            {
                AutoFormatType = 1;
            }
            trigger OnPreDataItem()
            begin
                clear(TotalclosingQtyperBucketStartDate);
                Clear(TotalclosingValueperBucketStartDate);
                Clear(InvtValue);
                Clear(TotalInvtValue_Item);
            end;

            trigger OnAfterGetRecord()
            var
                ItemCostMgt: Codeunit ItemCostManagement;
            begin
                Clear(OpeningBalance);
                Clear(ClosingBalQty);
                Clear(SoldQty);
                Clear(PurchQty);
                Clear(SalesReturn);
                Clear(PurchaseReturn);
                Clear(SampleQty);
                Clear(ClosingBalValue);
                clear(TotalclosingQtyperBucketStartDate);
                Clear(TotalclosingValueperBucketStartDate);
                Clear(TotalUnitCost);

                if "Costing Method" = "Costing Method"::Average then begin
                    for i := 1 to NoOfPeriod do begin
                        SetRange("Date Filter", PeriodStartDate[i] + 1, PeriodStartDate[i + 1]);
                        ItemCostMgt.CalculateAverageCost(Item, AverageCost[i], AverageCostACY[i]);
                    end;

                    SetRange("Date Filter", 0D, PeriodStartDate[2]);
                    ItemCostMgt.CalculateAverageCost(Item, AverageCost[1], AverageCostACY[1]);
                end;

                ItemLedEntry.Reset();
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", 0D, StartingDate - 1);
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity, "Remaining Quantity");

                OpeningBalance := ItemLedEntry.Quantity;

                ItemLedEntry.Reset();
                ItemLedEntry.SetAutoCalcFields("Sales Amount (Actual)");
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", StartingDate, EndingDate);
                ItemLedEntry.SetRange("Entry Type", ItemLedEntry."Entry Type"::Sale);
                ItemLedEntry.SetFilter(Quantity, '<%1', 0);
                ItemLedEntry.SetFilter("Sales Amount (Actual)", '%1', 0);
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity);
                SampleQty := Abs(ItemLedEntry.Quantity);

                ItemLedEntry.Reset();
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", StartingDate, EndingDate);
                ItemLedEntry.SetRange("Entry Type", ItemLedEntry."Entry Type"::Sale);
                ItemLedEntry.SetFilter("Document Type", '<>%1', ItemLedEntry."Document Type"::"Sales Credit Memo");
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity);
                SoldQty := Abs(ItemLedEntry.Quantity) - SampleQty;

                ItemLedEntry.Reset();
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", StartingDate, EndingDate);
                ItemLedEntry.SetRange("Entry Type", ItemLedEntry."Entry Type"::Purchase);
                ItemLedEntry.SetFilter("Document Type", '<>%1', ItemLedEntry."Document Type"::"Purchase Credit Memo");
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity);
                PurchQty := Abs(ItemLedEntry.Quantity);

                ItemLedEntry.Reset();
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", StartingDate, EndingDate);
                ItemLedEntry.SetRange("Document Type", ItemLedEntry."Document Type"::"Sales Credit Memo");
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity);
                SalesReturn := Abs(ItemLedEntry.Quantity);

                ItemLedEntry.Reset();
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", StartingDate, EndingDate);
                ItemLedEntry.SetRange("Document Type", ItemLedEntry."Document Type"::"Purchase Credit Memo");
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity);
                PurchaseReturn := Abs(ItemLedEntry.Quantity);

                ItemLedEntry.Reset();
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", StartingDate, EndingDate);
                ItemLedEntry.SetFilter("Entry Type", '%1', ItemLedEntry."Entry Type"::"Positive Adjmt.");
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity);
                PositiveAdjmt := Abs(ItemLedEntry.Quantity);

                ItemLedEntry.Reset();
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", StartingDate, EndingDate);
                ItemLedEntry.SetRange("Entry Type", ItemLedEntry."Entry Type"::"Negative Adjmt.");
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity);
                NegativeAdjmt := Abs(ItemLedEntry.Quantity);

                ItemLedEntry.Reset();
                ItemLedEntry.SetRange("Item No.", "No.");
                ItemLedEntry.SetRange("Posting Date", 0D, EndingDate);
                CopyFiltersFromItem(ItemLedEntry);
                ItemLedEntry.CalcSums(Quantity, "Remaining Quantity");
                ClosingBalQty := ItemLedEntry.Quantity;

                ValueEntry.Reset();
                ValueEntry.SetRange("Item No.", "No.");
                ValueEntry.SetRange("Posting Date", 0D, EndingDate);
                CopyValueFiltersFromItem(ValueEntry);
                ValueEntry.CalcSums("Cost Amount (Actual)", "Cost Amount (Expected)");
                ClosingBalValue := ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)";

                if ClosingBalQty <> 0 then
                    TotalUnitCost := ClosingBalValue / ClosingBalQty;

                // if ShowAgingDetail then
                CalculateClosingQtyValueOnBucketStartDate("No.");
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(StartingDate; StartingDate)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Start Date';
                        ToolTip = 'Specifies the date that you want the aging calculated from.';

                        trigger OnValidate()
                        begin
                            if StartingDate = 0D then
                                Error(Text002, 'Start Date');
                        end;
                    }
                    field(EndingDate; EndingDate)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'End Date';
                        ToolTip = 'Specifies the date that you want the aging calculated to';

                        trigger OnValidate()
                        begin
                            if EndingDate = 0D then
                                Error(Text002, 'End Date');
                        end;
                    }
                    field(ShowAgingDetail; ShowAgingDetail)
                    {
                        Visible = false;
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Aging Detail';
                    }
                    field(HeadingType; HeadingType)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Heading Type';
                        OptionCaption = 'Date Interval,Number of Days';
                        ToolTip = 'Specifies if the column heading for the three periods will indicate a date interval or the number of days overdue.';
                    }
                    field(PeriodLength; PeriodLength)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Period Length';
                        ToolTip = 'Specifies the length of the three periods in the report.';
                        Visible = false;
                        trigger OnValidate()
                        begin
                            if Format(PeriodLength) = '' then
                                Evaluate(PeriodLength, '<0D>');
                        end;
                    }
                    field(NoOfPeriod; NoOfPeriod)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Period Length';
                        trigger OnValidate()
                        var
                            myInt: Integer;
                        begin
                            Clear(PeriodLengthValueVisible);
                            Clear(PeriodLengthValue);
                            for myInt := 1 to NoOfPeriod do
                                PeriodLengthValueVisible[myInt] := true;

                            PeriodLengthVisible1 := PeriodLengthValueVisible[1];
                            PeriodLengthVisible2 := PeriodLengthValueVisible[2];
                            PeriodLengthVisible3 := PeriodLengthValueVisible[3];
                            PeriodLengthVisible4 := PeriodLengthValueVisible[4];
                            PeriodLengthVisible5 := PeriodLengthValueVisible[5];
                            PeriodLengthVisible6 := PeriodLengthValueVisible[6];
                            PeriodLengthVisible7 := PeriodLengthValueVisible[7];
                        end;
                    }
                    field(PeriodLengthValue1; PeriodLengthValue[1])
                    {
                        ApplicationArea = Basic, Suite;
                        Enabled = PeriodLengthVisible1;
                        Caption = 'Period 1';
                        ToolTip = 'Specifies the period for which data is shown in the report. For example, enter "1M" for one month, "30D" for thirty days, "3Q" for three quarters, or "5Y" for five years.';
                    }
                    field(PeriodLengthValue2; PeriodLengthValue[2])
                    {
                        ApplicationArea = Basic, Suite;
                        Enabled = PeriodLengthVisible2;
                        Caption = 'Period 2';
                        ToolTip = 'Specifies the period for which data is shown in the report. For example, enter "1M" for one month, "30D" for thirty days, "3Q" for three quarters, or "5Y" for five years.';
                    }
                    field(PeriodLengthValue3; PeriodLengthValue[3])
                    {
                        ApplicationArea = Basic, Suite;
                        Enabled = PeriodLengthVisible3;
                        Caption = 'Period 3';
                        ToolTip = 'Specifies the period for which data is shown in the report. For example, enter "1M" for one month, "30D" for thirty days, "3Q" for three quarters, or "5Y" for five years.';
                    }
                    field(PeriodLengthValue4; PeriodLengthValue[4])
                    {
                        ApplicationArea = Basic, Suite;
                        Enabled = PeriodLengthVisible4;
                        Caption = 'Period 4';
                        ToolTip = 'Specifies the period for which data is shown in the report. For example, enter "1M" for one month, "30D" for thirty days, "3Q" for three quarters, or "5Y" for five years.';
                    }
                    field(PeriodLengthValue5; PeriodLengthValue[5])
                    {
                        ApplicationArea = Basic, Suite;
                        Enabled = PeriodLengthVisible5;
                        Caption = 'Period 5';
                        ToolTip = 'Specifies the period for which data is shown in the report. For example, enter "1M" for one month, "30D" for thirty days, "3Q" for three quarters, or "5Y" for five years.';
                    }
                    field(PeriodLengthValue6; PeriodLengthValue[6])
                    {
                        ApplicationArea = Basic, Suite;
                        Enabled = PeriodLengthVisible6;
                        Caption = 'Period 6';
                        ToolTip = 'Specifies the period for which data is shown in the report. For example, enter "1M" for one month, "30D" for thirty days, "3Q" for three quarters, or "5Y" for five years.';
                    }
                    field(PeriodLengthValue7; PeriodLengthValue[7])
                    {
                        ApplicationArea = Basic, Suite;
                        Enabled = PeriodLengthVisible7;
                        Caption = 'Period 7';
                        ToolTip = 'Specifies the period for which data is shown in the report. For example, enter "1M" for one month, "30D" for thirty days, "3Q" for three quarters, or "5Y" for five years.';
                    }
                }
            }
        }


        trigger OnOpenPage()
        begin
            if EndingDate = 0D then
                EndingDate := CalcDate('<CM>', WorkDate());

            if Format(PeriodLength) = '' then
                Evaluate(PeriodLength, '<1M>');
        end;
    }
    rendering
    {
        layout(CombinedStockReport)
        {
            Type = RDLC;
            LayoutFile = './AgingReport/layout/ItemStockAgingReport.rdl';

        }
    }
    labels
    {
    }
    trigger OnPreReport()
    begin
        ItemFilter := Item.GetFilters();

        if StartingDate = 0D then
            Error('Start Date must have a value.');

        if EndingDate = 0D then
            Error('End Date must have a value.');

        //if ShowAgingDetail then
        if NoOfPeriod = 0 then
            Error('Period Length must have a value.');

        PageGroupNo := 1;
        NextPageGroupNo := 1;
        // if ShowAgingDetail then begin
        CalcDates();
        CreateHeadings();
        // end;

        VarDocTittle := StrSubstNo(ReportTitleCaptionLbl, Format(StartingDate), Format(EndingDate));
        OpeningBalCaptionLbl := 'Op. Bal ' + Format(StartingDate - 1);
    end;

    var

        AgingBy: Option "Posting Date","Manufacturer Date";
        TotalAppliedInvtQty: Decimal;
        ShowAgingDetail: Boolean;
        ItemLedEntry: Record "Item Ledger Entry";
        TempItemLedgerEntry: Record "Item Ledger Entry" temporary;
        ValueEntry: Record "Value Entry";
        PeriodLength: DateFormula;
        InvtValue: array[13] of Decimal;
        InvtValueRTC: array[13] of Decimal;
        InvtQty: array[13] of Decimal;
        TotalInvtValue_Item: Decimal;
        TotalInvtValueRTC: Decimal;
        PrintLine: Boolean;

#pragma warning disable AA0074
        Text002: Label 'Enter the %1';
#pragma warning restore AA0074
        ItemAgeCompositionValueCaptionLbl: Label 'Item Age Composition - Value';
        CurrReportPageNoCaptionLbl: Label 'Page';
        AfterCaptionLbl: Label 'After...';
        BeforeCaptionLbl: Label '...Before';
        InventoryValueCaptionLbl: Label 'Inventory Value';
        ItemDescriptionCaptionLbl: Label 'Description';
        ItemNoCaptionLbl: Label 'Item No.';
        TotalCaptionLbl: Label 'Total';
        RemainingQty: Decimal;
        OpeningBalance: Decimal;
        ClosingBalQty: Decimal;
        ClosingBalValue: Decimal;
        SampleQty: Decimal;
        SoldQty: Decimal;
        PurchQty: Decimal;
        SalesReturn: Decimal;
        PurchaseReturn: Decimal;
        PositiveAdjmt: Decimal;
        NegativeAdjmt: Decimal;
        EndingDate: Date;
        StartingDate: Date;
        NextPageGroupNo: Integer;
        PageGroupNo: Integer;
        OpeningBalCaptionLbl: Text;
        LocationCptnLbl: Label 'Location';
        ReportTitleCaptionLbl: Label 'DETAILS OF STOCK FROM %1 To %2';
        UOMCptnLbl: Label 'UOM';
        ItemFilter: Text;
        VarDocTittle: Text;
        HeaderText: array[13] of Text[30];
        i: Integer;
        AverageCost: array[13] of Decimal;
        AverageCostACY: array[13] of Decimal;
        PeriodLengthValue: array[12] of DateFormula;
        PeriodLengthValueVisible: array[12] of Boolean;
        PeriodLengthVisible1: Boolean;
        PeriodLengthVisible2: Boolean;
        PeriodLengthVisible3: Boolean;
        PeriodLengthVisible4: Boolean;
        PeriodLengthVisible5: Boolean;
        PeriodLengthVisible6: Boolean;
        PeriodLengthVisible7: Boolean;
        NoOfPeriod: Integer;
        HeadingType: Option "Date Interval","Number of Days";
        AfterTok: Label 'After';
        BeforeTok: Label 'Before';
        PeriodStartDate: array[13] of Date;
        PeriodEndDate: array[13] of Date;
        Text032Txt: Label '-%1', Comment = 'Negating the period length: %1 is the period length';
        Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        Text003: Label 'days';
        TotalclosingQtyperBucketStartDate: array[13] of Decimal;
        TotalclosingValueperBucketStartDate: array[13] of Decimal;
        TotalUnitCost: Decimal;


    local procedure CopyFiltersFromItem(var ItemLedEntry: Record "Item Ledger Entry")
    begin
        if item.GetFilter("Location Filter") <> '' then
            ItemLedEntry.SetRange("Location Code", item.GetFilter("Location Filter"));

        if Item.GetFilter("Variant Filter") <> '' then
            ItemLedEntry.SetRange("Variant Code", Item.GetFilter("Variant Filter"));

        if item.GetFilter("Global Dimension 1 Filter") <> '' then
            ItemLedEntry.SetRange("Global Dimension 1 Code", item.GetFilter("Global Dimension 1 Filter"));

        if item.GetFilter("Global Dimension 2 Filter") <> '' then
            ItemLedEntry.SetRange("Global Dimension 2 Code", item.GetFilter("Global Dimension 2 Filter"));
    end;


    local procedure CopyValueFiltersFromItem(var ValueEntry: Record "Value Entry")
    begin
        if item.GetFilter("Location Filter") <> '' then
            ValueEntry.SetRange("Location Code", item.GetFilter("Location Filter"));

        if Item.GetFilter("Variant Filter") <> '' then
            ValueEntry.SetRange("Variant Code", Item.GetFilter("Variant Filter"));

        if item.GetFilter("Global Dimension 1 Filter") <> '' then
            ValueEntry.SetRange("Global Dimension 1 Code", item.GetFilter("Global Dimension 1 Filter"));

        if item.GetFilter("Global Dimension 2 Filter") <> '' then
            ValueEntry.SetRange("Global Dimension 2 Code", item.GetFilter("Global Dimension 2 Filter"));
    end;

    local procedure CalcDates()
    var
        PeriodLength2: DateFormula;
        DateIntervalInt: Integer;
        ErrorText: Text;
    begin
        for DateIntervalInt := 1 to NoOfPeriod do begin
            if not Evaluate(PeriodLength2, StrSubstNo(Text032Txt, PeriodLengthValue[DateIntervalInt])) then begin
                ErrorText := 'Period ' + Format(DateIntervalInt) + ' should have value.';
                Error(ErrorText);
            end;
        end;

        PeriodEndDate[1] := EndingDate;
        PeriodStartDate[1] := CalcDate(StrSubstNo(Text032Txt, PeriodLengthValue[1]), EndingDate + 1);

        for DateIntervalInt := 2 to ArrayLen(PeriodEndDate) do begin
            if DateIntervalInt <= NoOfPeriod then begin
                PeriodEndDate[DateIntervalInt] := PeriodStartDate[DateIntervalInt - 1] - 1;
                PeriodStartDate[DateIntervalInt] := CalcDate(StrSubstNo(Text032Txt, PeriodLengthValue[DateIntervalInt]), PeriodEndDate[DateIntervalInt] + 1);
            end else
                break;
        end;

        PeriodEndDate[DateIntervalInt] := PeriodStartDate[DateIntervalInt - 1] - 1;
        PeriodStartDate[DateIntervalInt] := 0D;

        for DateIntervalInt := 1 to ArrayLen(PeriodEndDate) do begin
            if DateIntervalInt > NoOfPeriod then
                break;
            if PeriodEndDate[DateIntervalInt] < PeriodStartDate[DateIntervalInt] then
                Error(Text010, PeriodLength);
        end;
    end;

    local procedure CreateHeadings()
    var
        HeaderTextInt: Integer;
    begin
        for HeaderTextInt := 1 to NoOfPeriod do begin
            if HeadingType = HeadingType::"Date Interval" then
                HeaderText[HeaderTextInt] := StrSubstNo('%1\..%2', PeriodStartDate[HeaderTextInt], PeriodEndDate[HeaderTextInt])
            else
                HeaderText[HeaderTextInt] :=
                  StrSubstNo('%1 - %2 %3', EndingDate - PeriodEndDate[HeaderTextInt] + 1, EndingDate - PeriodStartDate[HeaderTextInt] + 1, Text003);
        end;

        HeaderTextInt := HeaderTextInt + 1;
        if HeadingType = HeadingType::"Date Interval" then
            HeaderText[HeaderTextInt] := StrSubstNo('%1 %2', BeforeTok, PeriodStartDate[HeaderTextInt - 1])
        else
            HeaderText[HeaderTextInt] := StrSubstNo('%1 %2 %3', AfterTok, EndingDate - PeriodStartDate[NoOfPeriod] + 1, Text003);

        CompressArray(HeaderText);
    end;


    local procedure CalculateClosingQtyValueOnBucketStartDate(ItemNo: Code[20])
    var
        ItemLedEntry: Record "Item Ledger Entry";
        TotalInvtQty: Decimal;
        PeriodIndex: Integer;
    begin
        for PeriodIndex := 1 to NoOfPeriod do begin
            Clear(TotalInvtQty);
            ItemLedEntry.Reset();
            ItemLedEntry.SetRange("Item No.", ItemNo);
            ItemLedEntry.SetRange("Positive", true);
            ItemLedEntry.SetRange("Posting Date", PeriodStartDate[PeriodIndex], PeriodEndDate[PeriodIndex]);

            CopyFiltersFromItem(ItemLedEntry);
            if ItemLedEntry.FindSet() then begin
                repeat
                    Clear(TotalAppliedInvtQty);
                    if ItemLedEntry.Quantity <> ItemLedEntry."Remaining Quantity" then
                        FindAppliedEntries(ItemLedEntry, TempItemLedgerEntry, PeriodIndex);

                    TotalInvtQty += ItemLedEntry.Quantity + TotalAppliedInvtQty;
                until ItemLedEntry.Next() = 0;
            end;


            TotalclosingQtyperBucketStartDate[PeriodIndex] += TotalInvtQty;
            TotalclosingValueperBucketStartDate[PeriodIndex] += TotalInvtQty * TotalUnitCost;
            TotalclosingQtyperBucketStartDate[NoOfPeriod + 1] += TotalclosingQtyperBucketStartDate[PeriodIndex];
            TotalclosingValueperBucketStartDate[NoOfPeriod + 1] += TotalclosingValueperBucketStartDate[PeriodIndex];
        end;

        TotalclosingQtyperBucketStartDate[NoOfPeriod + 1] := ClosingBalQty - TotalclosingQtyperBucketStartDate[NoOfPeriod + 1];
        TotalclosingValueperBucketStartDate[NoOfPeriod + 1] := ClosingBalValue - TotalclosingValueperBucketStartDate[NoOfPeriod + 1];
    end;

    procedure FindAppliedEntries(ItemLedgEntry: Record "Item Ledger Entry"; var TempItemLedgerEntry: Record "Item Ledger Entry" temporary; PeriodIndex: Integer)
    var
        ItemApplnEntry: Record "Item Application Entry";
    begin
        TempItemLedgerEntry.DeleteAll();
        if ItemLedgEntry.Positive then begin
            ItemApplnEntry.Reset();
            ItemApplnEntry.SetCurrentKey("Inbound Item Entry No.", "Outbound Item Entry No.", "Cost Application");
            ItemApplnEntry.SetRange("Inbound Item Entry No.", ItemLedgEntry."Entry No.");
            ItemApplnEntry.SetFilter("Outbound Item Entry No.", '<>%1', 0);
            ItemApplnEntry.SetRange("Cost Application", true);
            if ItemApplnEntry.Find('-') then
                repeat
                    InsertTempEntry(TempItemLedgerEntry, ItemApplnEntry."Outbound Item Entry No.", ItemApplnEntry.Quantity, PeriodIndex);
                until ItemApplnEntry.Next() = 0;
        end else begin
            ItemApplnEntry.Reset();
            ItemApplnEntry.SetCurrentKey("Outbound Item Entry No.", "Item Ledger Entry No.", "Cost Application");
            ItemApplnEntry.SetRange("Outbound Item Entry No.", ItemLedgEntry."Entry No.");
            ItemApplnEntry.SetRange("Item Ledger Entry No.", ItemLedgEntry."Entry No.");
            ItemApplnEntry.SetRange("Cost Application", true);
            if ItemApplnEntry.Find('-') then
                repeat
                    InsertTempEntry(TempItemLedgerEntry, ItemApplnEntry."Inbound Item Entry No.", -ItemApplnEntry.Quantity, PeriodIndex);
                until ItemApplnEntry.Next() = 0;
        end;

        if TempItemLedgerEntry.FindSet() then
            repeat
                TotalAppliedInvtQty += TempItemLedgerEntry.Quantity;
            until TempItemLedgerEntry.Next() = 0;
    end;

    local procedure InsertTempEntry(var TempItemLedgerEntry: Record "Item Ledger Entry" temporary; EntryNo: Integer; AppliedQty: Decimal; PeriodIndex: Integer)
    var
        ItemLedgEntry: Record "Item Ledger Entry";
    begin
        ItemLedgEntry.Get(EntryNo);

        if ItemLedgEntry."Posting Date" in [PeriodStartDate[PeriodIndex] .. PeriodEndDate[1]] then begin

            if AppliedQty * ItemLedgEntry.Quantity < 0 then
                exit;

            if not TempItemLedgerEntry.Get(EntryNo) then begin
                TempItemLedgerEntry.Init();
                TempItemLedgerEntry := ItemLedgEntry;
                TempItemLedgerEntry.Quantity := AppliedQty;
                TempItemLedgerEntry.Insert();
            end else begin
                TempItemLedgerEntry.Quantity := TempItemLedgerEntry.Quantity + AppliedQty;
                TempItemLedgerEntry.Modify();
            end;
        end;

    end;
}


