report 99664 "Item Age Composition Qty-Value"
{
    ApplicationArea = Basic, Suite;
    Caption = '3KT Item Age Composition Qty / Value';
    UsageCategory = ReportsAndAnalysis;
    DataAccessIntent = ReadOnly;
    DefaultRenderingLayout = REP;
    dataset
    {
        dataitem(Header; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

            column(LocationCptnLbl; LocationCptnLbl)
            { }
            column(UOMCptnLbl; UOMCptnLbl)
            { }
            column(Dim1Caption; Dim1Caption)
            { }
            column(Dim2Caption; Dim2Caption)
            { }
            column(NewPagePerItem; NewPagePerItem)
            {
            }
            column(TodayFormatted; Format(Today, 0, 4))
            {
            }
            column(FormatEndingDate; StrSubstNo(Text006, Format(EndingDate, 0, 4)))
            {
            }
            column(QuantityCaptionLbl; QuantityCaptionLbl)
            { }
            column(ValueCaptionLbl; ValueCaptionLbl)
            { }
            column(CompanyName; COMPANYPROPERTY.DisplayName())
            {
            }
            column(ItemTableCaptItemFilter; TableCaption + ': ' + ItemFilter)
            {
            }
            column(PrintDetails; PrintDetails)
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
            column(PstngDateCptn; PstngDateCptnLbl)
            { }
            column(DocTypeCptn; DocTypeCptnLbl)
            {
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
            column(ItemFilter; ItemFilter)
            {
            }

            column(PrintLine; PrintLine)
            {
            }
            column(GrandTotal10CostAmt; GrandTotalValueEntry[10]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal9CostAmt; GrandTotalValueEntry[9]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal8CostAmt; GrandTotalValueEntry[8]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal7CostAmt; GrandTotalValueEntry[7]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal6CostAmt; GrandTotalValueEntry[6]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal5CostAmt; GrandTotalValueEntry[5]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal4CostAmt; GrandTotalValueEntry[4]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal3CostAmt; GrandTotalValueEntry[3]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal2CostAmt; GrandTotalValueEntry[2]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal1CostAmt; GrandTotalValueEntry[1]."Cost Amount (Actual)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal10ValueQty; GrandTotalValueEntry[10]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal9ValueQty; GrandTotalValueEntry[9]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal8ValueQty; GrandTotalValueEntry[8]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal7ValueQty; GrandTotalValueEntry[7]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal6ValueQty; GrandTotalValueEntry[6]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal5ValueQty; GrandTotalValueEntry[5]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal4ValueQty; GrandTotalValueEntry[4]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal3ValueQty; GrandTotalValueEntry[3]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal2ValueQty; GrandTotalValueEntry[2]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            column(GrandTotal1ValueQty; GrandTotalValueEntry[1]."Valued Quantity")
            {
                AutoFormatType = 1;
            }
            dataitem(Location; Location)
            {
                DataItemTableView = sorting("Code") where("Use As In-Transit" = const(false));
                RequestFilterFields = Code;
                column(Code; Location.Code)
                {

                }
                dataitem(Item; Item)
                {
                    DataItemTableView = sorting("No.") where(Type = const(Inventory));
                    RequestFilterFields = "No.", "Inventory Posting Group", "Statistics Group", "Location Filter";
                    PrintOnlyIfDetail = true;
                    column(Description_Item; Item.Description)
                    {
                    }
                    column(No_Item; Item."No.")
                    {
                    }
                    column(UOM_Item; Item."Base Unit of Measure")
                    { }

                    column(PageGroupNo; PageGroupNo)
                    {
                    }

                    dataitem("Item Ledger Entry"; "Item Ledger Entry")
                    {
                        DataItemLink = "Item No." = field("No."), "Variant Code" = field("Variant Filter"), "Global Dimension 1 Code" = field("Global Dimension 1 Filter"), "Global Dimension 2 Code" = field("Global Dimension 2 Filter");
                        DataItemTableView = sorting("Item No.", Open);//where(Open = const(true));
                        CalcFields = "Cost Amount (Actual)";
                        trigger OnAfterGetRecord()
                        begin
                            if "Remaining Quantity" = 0 then
                                CurrReport.Skip();

                            insertTemp("Item Ledger Entry");
                            CurrReport.Skip();
                        end;

                        trigger OnPreDataItem()
                        begin
                            "Item Ledger Entry".SetRange("Posting Date", 0D, EndingDate);
                            "Item Ledger Entry".SetFilter("Location Code", Location.Code);
                        end;
                    }
                    dataitem(tempItemloop; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        PrintOnlyIfDetail = true;
                        dataitem("Integer"; "Integer")
                        {
                            DataItemTableView = sorting(Number) where(Number = filter(1 ..));
                            column(Item_Desc; StrSubstNo(Text005, Item.Description))
                            {
                            }
                            column(VEDocType; Format(TempItemLedgerEntryEndingDate."Document No."))
                            {
                            }
                            column(VEPostingDate; Format(TempItemLedgerEntryEndingDate."Posting Date"))
                            {
                            }
                            column(AgedVendLedgEnt10ValQty; AgedValueEntry[10]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt9ValQty; AgedValueEntry[9]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt8ValQty; AgedValueEntry[8]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt7ValQty; AgedValueEntry[7]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt6ValQty; AgedValueEntry[6]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt5ValQty; AgedValueEntry[5]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt4ValQty; AgedValueEntry[4]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt3ValQty; AgedValueEntry[3]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt2ValQty; AgedValueEntry[2]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt1ValQty; AgedValueEntry[1]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt10RemAmt; AgedValueEntry[10]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt9RemAmt; AgedValueEntry[9]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt8RemAmt; AgedValueEntry[8]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt7RemAmt; AgedValueEntry[7]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt6RemAmt; AgedValueEntry[6]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt5RemAmt; AgedValueEntry[5]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt4RemAmt; AgedValueEntry[4]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt3RemAmt; AgedValueEntry[3]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt2RemAmt; AgedValueEntry[2]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedVendLedgEnt1RemAmt; AgedValueEntry[1]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt10RemAmt; TotalValueEntry[10]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt9RemAmt; TotalValueEntry[9]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt8RemAmt; TotalValueEntry[8]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt7RemAmt; TotalValueEntry[7]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt6RemAmt; TotalValueEntry[6]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt5RemAmt; TotalValueEntry[5]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt4RemAmt; TotalValueEntry[4]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt3RemAmt; TotalValueEntry[3]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt2RemAmt; TotalValueEntry[2]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt1RemAmt; TotalValueEntry[1]."Cost Amount (Actual)")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt10RemQty; TotalValueEntry[10]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt9RemQty; TotalValueEntry[9]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt8RemQty; TotalValueEntry[8]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt7RemQty; TotalValueEntry[7]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt6RemQty; TotalValueEntry[6]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt5RemQty; TotalValueEntry[5]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt4RemQty; TotalValueEntry[4]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt3RemQty; TotalValueEntry[3]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt2RemQty; TotalValueEntry[2]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(TotalValueEnt1RemQty; TotalValueEntry[1]."Valued Quantity")
                            {
                                AutoFormatType = 1;
                            }
                            column(AgedGloblDimCode1G; AgedGloblDimCode1G)
                            { }
                            column(AgedGloblDimCode2G; AgedGloblDimCode2G)
                            { }
                            column(AgedLocationCodeG; AgedLocationCodeG)
                            { }
                            column(AgedUOMG; AgedUOMG)
                            { }


                            trigger OnAfterGetRecord()
                            var
                                PeriodIndex: Integer;
                            begin
                                if Number = 1 then begin
                                    if not TempItemLedgerEntry.FindSet(false) then
                                        CurrReport.Break();
                                end else
                                    if TempItemLedgerEntry.Next() = 0 then
                                        CurrReport.Break();

                                CalcUnitCost(TempItemLedgerEntry);
                                TempItemLedgerEntryEndingDate := TempItemLedgerEntry;
                                TempItemLedgerEntryEndingDate.CalcFields("Cost Amount (Actual)");
                                PeriodIndex := CalcPeriodIndexWithRemainingQty(TempItemLedgerEntryEndingDate);
                                Clear(AgedValueEntry);
                                Clear(AgedGloblDimCode1G);
                                Clear(AgedGloblDimCode2G);
                                Clear(AgedLocationCodeG);
                                Clear(AgedUOMG);
                                if PeriodIndex <> NoOfPeriod + 2 then begin
                                    AgedValueEntry[PeriodIndex]."Valued Quantity" := TempItemLedgerEntryEndingDate."Remaining Quantity";
                                    TotalValueEntry[PeriodIndex]."Valued Quantity" += TempItemLedgerEntryEndingDate."Remaining Quantity";
                                    GrandTotalValueEntry[PeriodIndex]."Valued Quantity" += TempItemLedgerEntryEndingDate."Remaining Quantity";

                                    AgedValueEntry[PeriodIndex]."Cost Amount (Actual)" := TempItemLedgerEntryEndingDate."Remaining Quantity" * UnitCost;
                                    TotalValueEntry[PeriodIndex]."Cost Amount (Actual)" += TempItemLedgerEntryEndingDate."Remaining Quantity" * UnitCost;
                                    GrandTotalValueEntry[PeriodIndex]."Cost Amount (Actual)" += TempItemLedgerEntryEndingDate."Remaining Quantity" * UnitCost;
                                end;
                                AgedGloblDimCode1G := TempItemLedgerEntryEndingDate."Global Dimension 1 Code";
                                AgedGloblDimCode2G := TempItemLedgerEntryEndingDate."Global Dimension 2 Code";
                                AgedLocationCodeG := TempItemLedgerEntryEndingDate."Location Code";
                                AgedUOMG := TempItemLedgerEntryEndingDate."Unit of Measure Code";
                            end;

                            trigger OnPostDataItem()
                            var
                                AvgCostCurr: Decimal;
                                AvgCostCurrLCY: Decimal;
                            begin
                                if Item."Costing Method" = Item."Costing Method"::Average then begin
                                    Item.SetRange("Date Filter");
                                    ItemCostMgt.CalculateAverageCost(Item, AvgCostCurr, AvgCostCurrLCY);
                                    TotalInvtValue_Item := AvgCostCurr * RemainingQty;
                                    TotalInvtQty_Item := RemainingQty;
                                    TotalInvtValueRTC += TotalInvtValue_Item;
                                    TotalInvtQtyRTC += RemainingQty;
                                end;
                            end;


                            trigger OnPreDataItem()
                            begin
                                PageGroupNo := NextPageGroupNo;
                                if NewPagePerItem then
                                    NextPageGroupNo := PageGroupNo + 1;
                            end;
                        }
                        trigger OnAfterGetRecord()
                        begin
                            Clear(TotalValueEntry);
                            if Number = 1 then begin
                                if not tempItem.FindSet(false) then
                                    CurrReport.Break();
                            end else
                                if tempItem.Next() = 0 then
                                    CurrReport.Break();
                        end;
                    }
                    trigger OnAfterGetRecord()
                    var
                        GLSetup: Record "General Ledger Setup";
                        Dimension: Record Dimension;
                    begin
                        if "Costing Method" = "Costing Method"::Average then begin
                            for i := 2 to (NoOfPeriod + 1) do begin
                                SetRange("Date Filter", PeriodEndDate[i] + 1, PeriodEndDate[i + 1]);
                                ItemCostMgt.CalculateAverageCost(Item, AverageCost[i], AverageCostACY[i]);
                            end;

                            SetRange("Date Filter", 0D, PeriodEndDate[2]);
                            ItemCostMgt.CalculateAverageCost(Item, AverageCost[1], AverageCostACY[1]);
                        end;

                        PrintLine := false;
                        if NewPagePerItem then
                            PageGroupNo += 1;

                        tempItem.Reset();
                        tempItem.DeleteAll();
                        TempItemLedgerEntry.Reset();
                        TempItemLedgerEntry.DeleteAll();

                        GLSetup.Get();
                        if Dimension.Get(GLSetup."Global Dimension 1 Code") then
                            Dim1Caption := Dimension."Code Caption";
                        Dimension.Reset();
                        if Dimension.Get(GLSetup."Global Dimension 2 Code") then
                            Dim2Caption := Dimension."Code Caption";
                    end;
                }
            }
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
                    field(EndingDate; EndingDate)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Ending Date';
                        ToolTip = 'Specifies the end date of the report. The report calculates backwards from this date and sets up three periods of the length specified in the Period Length field.';

                        trigger OnValidate()
                        begin
                            if EndingDate = 0D then
                                Error(Text002);
                        end;
                    }
                    field(HeadingType; HeadingType)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Heading Type';
                        OptionCaption = 'Date Interval,Number of Days';
                        ToolTip = 'Specifies if the column heading for the three periods will indicate a date interval or the number of days overdue.';
                    }
                    field(PrintDetails; PrintDetails)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Print Details';
                        ToolTip = 'Specifies if you want the report to show the detailed entries that add up the total balance for each Item.';
                    }
                    field(NewPagePerItem; NewPagePerItem)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'New Page per Item';
                        ToolTip = 'Specifies if each Item''s information is printed on a new page if you have chosen two or more Item to be included in the report.';

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
        var
        //indlocSetup: Record "IND LOC Setup";
        begin
            if EndingDate = 0D then
                EndingDate := CalcDate('<CM>', WorkDate());

            PeriodEndDate[NoOfPeriod + 2] := EndingDate;
            if Format(PeriodLength) = '' then
                Evaluate(PeriodLength, '<1M>');

            // indlocSetup.Get();
            // if not indlocSetup."Enable Aging Report" then
            //     Error(permissionErr);
        end;
    }

    rendering
    {
        layout(REP)
        {
            Type = RDLC;
            LayoutFile = './AgingReport/layout/ItemAgeCompositionQtyValue.rdl';
        }
    }
    labels
    {
    }


    trigger OnPreReport()
    var
        NegPeriodLength: DateFormula;
    begin
        ItemFilter := Item.GetFilters();

        PeriodEndDate[NoOfPeriod + 3] := DMY2Date(31, 12, 9999);

        PageGroupNo := 1;
        NextPageGroupNo := 1;
        CalcDates();
        CreateHeadings();
    end;

    var
        ItemCostMgt: Codeunit ItemCostManagement;
        TempItemLedgerEntry: Record "Item Ledger Entry" temporary;
        TempItemLedgerEntryEndingDate: Record "Item Ledger Entry" temporary;
        GrandTotalValueEntry: array[10] of Record "Value Entry";
        TotalValueEntry: array[10] of Record "Value Entry";
        AgedValueEntry: array[10] of Record "Value Entry";

        AgedLocationCodeG: Code[20];
        AgedGloblDimCode1G: Code[20];
        AgedGloblDimCode2G: Code[20];
        AgedUOMG: Code[20];
        tempItem: Record Item temporary;
        NoOfPeriod: Integer;
        PeriodLength: DateFormula;
        PeriodLengthValue: array[8] of DateFormula;
        PeriodLengthValueVisible: array[8] of Boolean;
        PeriodLengthVisible1: Boolean;
        PeriodLengthVisible2: Boolean;
        PeriodLengthVisible3: Boolean;
        PeriodLengthVisible4: Boolean;
        PeriodLengthVisible5: Boolean;
        PeriodLengthVisible6: Boolean;
        PeriodLengthVisible7: Boolean;
        ItemFilter: Text;
        InvtValue: array[10] of Decimal;
        InvtValueRTC: array[10] of Decimal;
        InvtQtyRTC: array[10] of Decimal;
        InvtQty: array[10] of Decimal;
        UnitCost: Decimal;
        PeriodEndDate: array[10] of Date;
        i: Integer;
        TotalInvtValue_Item: Decimal;
        TotalInvtQty_Item: Decimal;
        TotalInvtValueRTC: Decimal;
        TotalInvtQtyRTC: Decimal;
        TotalInvtQty: Decimal;
        PrintLine: Boolean;
        AverageCost: array[9] of Decimal;
        AverageCostACY: array[9] of Decimal;
        Text002: Label 'Enter the ending date';
        Text003: Label 'days';
        ItemAgeCompositionValueCaptionLbl: Label 'Item Age Composition - Qty / Value';
        CurrReportPageNoCaptionLbl: Label 'Page';
        AfterCaptionLbl: Label 'After...';
        BeforeCaptionLbl: Label '...Before';
        InventoryValueCaptionLbl: Label 'Inventory Value';
        ItemDescriptionCaptionLbl: Label 'Description';
        ItemNoCaptionLbl: Label 'Item No.';
        TotalCaptionLbl: Label 'Total';
        Text006: Label 'Aged as of %1';
        QuantityCaptionLbl: Label 'Quantity';
        ValueCaptionLbl: Label 'Value';
        RemainingQty: Decimal;
        InvQty: array[10] of Decimal;
        HeaderText: array[10] of Text[30];
        permissionErr: Label 'You don''t have permission to run this report.';
        HeadingType: Option "Date Interval","Number of Days";
        PrintDetails: Boolean;
        EndingDate: Date;
        NewPagePerItem: Boolean;
        PageGroupNo: Integer;
        NextPageGroupNo: Integer;
        Text005: Label 'Total for %1';
        PstngDateCptnLbl: Label 'Posting Date';
        DocTypeCptnLbl: Label 'Document Type';
        LocationCptnLbl: Label 'Location';
        Dim1Caption: Text;
        Dim2Caption: Text;
        UOMCptnLbl: Label 'UOM';

    local procedure CalcDates()
    var
        PeriodLength2: DateFormula;
        i: Integer;
        ErrorText: Text;
        NegPeriodLength: DateFormula;
        Text027: Label '-%1', Comment = 'Negating the period length: %1 is the period length';
    begin
        for i := 1 to NoOfPeriod do begin
            if not Evaluate(NegPeriodLength, StrSubstNo(Text027, PeriodLengthValue[i])) then begin
                ErrorText := 'Period ' + Format(i) + ' should have value.';
                Error(ErrorText);
            end;
        end;

        for i := 1 to NoOfPeriod do begin
            Evaluate(NegPeriodLength, StrSubstNo('-%1', Format(PeriodLengthValue[i])));
            PeriodEndDate[(NoOfPeriod + 2) - i] := CalcDate(NegPeriodLength, PeriodEndDate[(NoOfPeriod + 3) - i]);
        end;
        PeriodEndDate[1] := 0D;
    end;


    local procedure CalcPeriodIndexWithRemainingQty(var TempItemLedgerEntryEndingDate: Record "Item Ledger Entry"): Integer
    begin
        for i := 1 to (NoOfPeriod + 2) do
            if (TempItemLedgerEntryEndingDate."Posting Date" > PeriodEndDate[i]) and
               (TempItemLedgerEntryEndingDate."Posting Date" <= PeriodEndDate[i + 1])
            then
                // if TempItemLedgerEntryEndingDate."Remaining Quantity" <> 0 then begin
                // InvtQty[i] := "Remaining Quantity";
                // InvQty[i] := "Remaining Quantity";
                exit(i);
        //  end;
    end;

    local procedure CalcUnitCost()
    var
        ValueEntry: Record "Value Entry";
    begin
        ValueEntry.SetRange("Item Ledger Entry No.", "Item Ledger Entry"."Entry No.");
        UnitCost := 0;

        if ValueEntry.Find('-') then
            repeat
                if ValueEntry."Partial Revaluation" then
                    SumUnitCost(UnitCost, ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)", ValueEntry."Valued Quantity")
                else
                    SumUnitCost(UnitCost, ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)", "Item Ledger Entry".Quantity);
            until ValueEntry.Next() = 0;
    end;

    local procedure CalcUnitCost(var ItemLedgerEntry: Record "Item Ledger Entry")
    var
        ValueEntry: Record "Value Entry";
    begin
        ValueEntry.SetRange("Item Ledger Entry No.", ItemLedgerEntry."Entry No.");
        UnitCost := 0;

        if ValueEntry.Find('-') then
            repeat
                if ValueEntry."Partial Revaluation" then
                    SumUnitCost(UnitCost, ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)", ValueEntry."Valued Quantity")
                else
                    SumUnitCost(UnitCost, ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)", ItemLedgerEntry.Quantity);
            until ValueEntry.Next() = 0;
    end;

    local procedure SumUnitCost(var UnitCost: Decimal; CostAmount: Decimal; Quantity: Decimal)
    begin
        UnitCost := UnitCost + CostAmount / Abs(Quantity);
    end;

    procedure InitializeRequest(NewEndingDate: Date; NewPeriodLength: DateFormula)
    begin
        PeriodEndDate[10] := NewEndingDate;
        PeriodLength := NewPeriodLength;
    end;

    local procedure CreateHeadings()
    var
        i: Integer;
    begin

        HeaderText[1] := BeforeCaptionLbl;

        for i := 2 to (NoOfPeriod + 1) do begin
            if HeadingType = HeadingType::"Date Interval" then
                HeaderText[i] := StrSubstNo('%1\..%2', PeriodEndDate[i] + 1, PeriodEndDate[i + 1])
            else
                HeaderText[i] :=
                  StrSubstNo('%1 - %2 %3', EndingDate - PeriodEndDate[i] + 1, EndingDate - PeriodEndDate[i + 1], Text003);
        end;

        //HeaderText[NoOfPeriod + 2] := AfterCaptionLbl; // StrSubstNo('%1 %2 %3', AfterCaptionLbl, EndingDate - PeriodStartDate[i - 1] + 1, Text003);
    end;

    local procedure InsertTemp(var itemLedgerEntry: Record "Item Ledger Entry")
    var
        Currency: Record Currency;
    begin
        if TempItemLedgerEntry.get(itemLedgerEntry."Entry No.") then
            exit;

        TempItemLedgerEntry := itemLedgerEntry;
        TempItemLedgerEntry.Insert();

        if tempItem.Get(TempItemLedgerEntry."Item No.") then
            exit;

        tempItem := Item;
        tempItem.Insert();
    end;

    local procedure GetPeriodIndex(Date: Date): Integer
    var
        i: Integer;
    begin
        for i := 2 to ArrayLen(PeriodEndDate) do
            if i <= NoOfPeriod + 3 then begin
                if (Date > PeriodEndDate[i]) and
                     (Date <= PeriodEndDate[i + 1])
                  then
                    exit(i);
            end;
    end;
}
