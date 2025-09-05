// report 99665 "Stock Aging Qty-Value"
// {
//     ApplicationArea = Basic, Suite;
//     Caption = 'Stock Aging Qty / Value';
//     UsageCategory = ReportsAndAnalysis;
//     DataAccessIntent = ReadOnly;
//     DefaultRenderingLayout = REP;

//     dataset
//     {
//         dataitem(Header; "Integer")
//         {
//             DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

//             column(LocationCptnLbl; LocationCptnLbl) { }
//             column(UOMCptnLbl; UOMCptnLbl) { }
//             column(Dim1Caption; Dim1Caption) { }
//             column(Dim2Caption; Dim2Caption) { }
//             column(NewPagePerItem; NewPagePerItem) { }
//             column(TodayFormatted; Format(Today, 0, 4)) { }
//             column(FormatEndingDate; StrSubstNo(Text006, Format(EndingDate, 0, 4))) { }
//             column(QuantityCaptionLbl; QuantityCaptionLbl) { }
//             column(ValueCaptionLbl; ValueCaptionLbl) { }
//             column(CompanyName; COMPANYPROPERTY.DisplayName()) { }
//             column(ItemTableCaptItemFilter; TableCaption + ': ' + ItemFilter) { }
//             column(PrintDetails; PrintDetails) { }
//             column(HeaderText10; HeaderText[10]) { }
//             column(HeaderText9; HeaderText[9]) { }
//             column(HeaderText8; HeaderText[8]) { }
//             column(HeaderText7; HeaderText[7]) { }
//             column(HeaderText6; HeaderText[6]) { }
//             column(HeaderText5; HeaderText[5]) { }
//             column(HeaderText4; HeaderText[4]) { }
//             column(HeaderText3; HeaderText[3]) { }
//             column(HeaderText2; HeaderText[2]) { }
//             column(HeaderText1; HeaderText[1]) { }
//             column(PstngDateCptn; PstngDateCptnLbl) { }
//             column(DocTypeCptn; DocTypeCptnLbl) { }
//             column(ItemAgeCompositionValueCaption; ItemAgeCompositionValueCaptionLbl) { }
//             column(CurrReportPageNoCaption; CurrReportPageNoCaptionLbl) { }
//             column(AfterCaption; AfterCaptionLbl) { }
//             column(BeforeCaption; BeforeCaptionLbl) { }
//             column(InventoryValueCaption; InventoryValueCaptionLbl) { }
//             column(ItemDescriptionCaption; ItemDescriptionCaptionLbl) { }
//             column(ItemNoCaption; ItemNoCaptionLbl) { }
//             column(TotalCaption; TotalCaptionLbl) { }
//             column(ItemFilter; ItemFilter) { }
//             column(PrintLine; PrintLine) { }
//             column(GrandTotal10CostAmt; GrandTotalValueEntry[10]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal9CostAmt; GrandTotalValueEntry[9]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal8CostAmt; GrandTotalValueEntry[8]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal7CostAmt; GrandTotalValueEntry[7]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal6CostAmt; GrandTotalValueEntry[6]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal5CostAmt; GrandTotalValueEntry[5]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal4CostAmt; GrandTotalValueEntry[4]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal3CostAmt; GrandTotalValueEntry[3]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal2CostAmt; GrandTotalValueEntry[2]."Cost Amount (Actual)") { AutoFormatType = 1; }
//             column(GrandTotal1CostAmt; GrandTotalValueEntry[1]."Cost Amount (Actual)") { AutoFormatType = 1; }

//             column(GrandTotal10ValueQty; GrandTotalValueEntry[10]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal9ValueQty; GrandTotalValueEntry[9]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal8ValueQty; GrandTotalValueEntry[8]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal7ValueQty; GrandTotalValueEntry[7]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal6ValueQty; GrandTotalValueEntry[6]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal5ValueQty; GrandTotalValueEntry[5]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal4ValueQty; GrandTotalValueEntry[4]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal3ValueQty; GrandTotalValueEntry[3]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal2ValueQty; GrandTotalValueEntry[2]."Valued Quantity") { AutoFormatType = 1; }
//             column(GrandTotal1ValueQty; GrandTotalValueEntry[1]."Valued Quantity") { AutoFormatType = 1; }

//             dataitem(Item; Item)
//             {
//                 DataItemTableView = sorting("No.") where(Type = const(Inventory));
//                 RequestFilterFields = "No.", "Inventory Posting Group", "Statistics Group", "Location Filter";
//                 PrintOnlyIfDetail = true;
//                 column(Description_Item; Item.Description) { }
//                 column(No_Item; Item."No.") { }
//                 column(UOM_Item; Item."Base Unit of Measure") { }
//                 column(PageGroupNo; PageGroupNo) { }

//                 dataitem(tempItemloop; "Integer")
//                 {
//                     DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
//                     PrintOnlyIfDetail = true;
//                     dataitem("Integer"; "Integer")
//                     {
//                         DataItemTableView = sorting(Number) where(Number = filter(1 ..));

//                         column(Item_Desc; StrSubstNo(Text005, Item.Description)) { }
//                         column(VEDocType; Format(TempItemLedgerEntry."Document No.")) { }
//                         column(VEPostingDate; Format(TempItemLedgerEntry."Posting Date")) { }

//                         // Bucket Qty columns
//                         column(AgedVendLedgEnt10ValQty; AgedValueEntry[10]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt9ValQty; AgedValueEntry[9]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt8ValQty; AgedValueEntry[8]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt7ValQty; AgedValueEntry[7]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt6ValQty; AgedValueEntry[6]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt5ValQty; AgedValueEntry[5]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt4ValQty; AgedValueEntry[4]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt3ValQty; AgedValueEntry[3]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt2ValQty; AgedValueEntry[2]."Valued Quantity") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt1ValQty; AgedValueEntry[1]."Valued Quantity") { AutoFormatType = 1; }

//                         // Bucket Value columns
//                         column(AgedVendLedgEnt10RemAmt; AgedValueEntry[10]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt9RemAmt; AgedValueEntry[9]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt8RemAmt; AgedValueEntry[8]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt7RemAmt; AgedValueEntry[7]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt6RemAmt; AgedValueEntry[6]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt5RemAmt; AgedValueEntry[5]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt4RemAmt; AgedValueEntry[4]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt3RemAmt; AgedValueEntry[3]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt2RemAmt; AgedValueEntry[2]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(AgedVendLedgEnt1RemAmt; AgedValueEntry[1]."Cost Amount (Actual)") { AutoFormatType = 1; }
//                         column(TotalValueEnt10RemAmt; TotalValueEntry[10]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt9RemAmt; TotalValueEntry[9]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt8RemAmt; TotalValueEntry[8]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt7RemAmt; TotalValueEntry[7]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt6RemAmt; TotalValueEntry[6]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt5RemAmt; TotalValueEntry[5]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt4RemAmt; TotalValueEntry[4]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt3RemAmt; TotalValueEntry[3]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt2RemAmt; TotalValueEntry[2]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt1RemAmt; TotalValueEntry[1]."Cost Amount (Actual)")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt10RemQty; TotalValueEntry[10]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt9RemQty; TotalValueEntry[9]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt8RemQty; TotalValueEntry[8]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt7RemQty; TotalValueEntry[7]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt6RemQty; TotalValueEntry[6]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt5RemQty; TotalValueEntry[5]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt4RemQty; TotalValueEntry[4]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt3RemQty; TotalValueEntry[3]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt2RemQty; TotalValueEntry[2]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(TotalValueEnt1RemQty; TotalValueEntry[1]."Valued Quantity")
//                         {
//                             AutoFormatType = 1;
//                         }
//                         column(AgedGloblDimCode1G; AgedGloblDimCode1G)
//                         { }
//                         column(AgedGloblDimCode2G; AgedGloblDimCode2G)
//                         { }
//                         column(AgedLocationCodeG; AgedLocationCodeG)
//                         { }
//                         column(AgedUOMG; AgedUOMG)
//                         { }


//                         trigger OnAfterGetRecord()
//                         var
//                             PeriodIndex: Integer;
//                         begin
//                             Clear(AgedValueEntry);
//                             Clear(AgedGloblDimCode1G);
//                             Clear(AgedGloblDimCode2G);
//                             Clear(AgedLocationCodeG);
//                             Clear(AgedUOMG);
//                             Clear(TotalInvtQty);

//                             if Number = 1 then begin
//                                 if not TempItemLedgerEntry.FindSet(false) then
//                                     CurrReport.Break();
//                             end else
//                                 if TempItemLedgerEntry.Next() = 0 then
//                                     CurrReport.Break();

//                             if AgingBy = AgingBy::"Posting Date" then
//                                 PeriodIndex := GetPeriodIndex(TempItemLedgerEntry."Posting Date")
//                             else
//                                 PeriodIndex := GetPeriodIndex(TempItemLedgerEntry."Manufacturer Date");

//                             Clear(TotalAppliedInvtQty);
//                             if (TempItemLedgerEntry.Quantity <> TempItemLedgerEntry."Remaining Quantity") then
//                                 FindAppliedEntries(TempItemLedgerEntry, TempItemLedgerEntryEndingDate, PeriodIndex);

//                             TotalInvtQty := TempItemLedgerEntry.Quantity + TotalAppliedInvtQty;

//                             if TotalInvtQty = 0 then
//                                 CurrReport.Skip();

//                             CalcUnitCost(TempItemLedgerEntry);

//                             AgedValueEntry[PeriodIndex]."Valued Quantity" := TotalInvtQty;
//                             TotalValueEntry[PeriodIndex]."Valued Quantity" += TotalInvtQty;
//                             GrandTotalValueEntry[PeriodIndex]."Valued Quantity" += TotalInvtQty;

//                             AgedValueEntry[PeriodIndex]."Cost Amount (Actual)" := TotalInvtQty * UnitCost;
//                             TotalValueEntry[PeriodIndex]."Cost Amount (Actual)" += TotalInvtQty * UnitCost;
//                             GrandTotalValueEntry[PeriodIndex]."Cost Amount (Actual)" += TotalInvtQty * UnitCost;

//                             AgedGloblDimCode1G := TempItemLedgerEntry."Global Dimension 1 Code";
//                             AgedGloblDimCode2G := TempItemLedgerEntry."Global Dimension 2 Code";
//                             AgedLocationCodeG := TempItemLedgerEntry."Location Code";
//                             AgedUOMG := TempItemLedgerEntry."Unit of Measure Code";
//                         end;


//                         trigger OnPreDataItem()
//                         begin
//                             // Bound the integer loop length to the number of entries
//                             TempItemLedgerEntry.Reset();
//                             SetRange(Number, 1, TempItemLedgerEntry.Count);

//                             PageGroupNo := NextPageGroupNo;
//                             if NewPagePerItem then
//                                 NextPageGroupNo := PageGroupNo + 1;
//                         end;
//                     }
//                     trigger OnAfterGetRecord()
//                     begin
//                         Clear(TotalValueEntry);
//                         if Number = 1 then begin
//                             if not tempItem.FindSet(false) then
//                                 CurrReport.Break();
//                         end else
//                             if tempItem.Next() = 0 then
//                                 CurrReport.Break();
//                     end;
//                 }
//                 trigger OnAfterGetRecord()
//                 var
//                     GLSetup: Record "General Ledger Setup";
//                     Dimension: Record Dimension;
//                 begin
//                     if "Costing Method" = "Costing Method"::Average then begin
//                         for i := 2 to (NoOfPeriod + 1) do begin
//                             SetRange("Date Filter", PeriodEndDate[i] + 1, PeriodEndDate[i + 1]);
//                             ItemCostMgt.CalculateAverageCost(Item, AverageCost[i], AverageCostACY[i]);
//                         end;
//                         SetRange("Date Filter", 0D, PeriodEndDate[2]);
//                         ItemCostMgt.CalculateAverageCost(Item, AverageCost[1], AverageCostACY[1]);
//                     end;

//                     PrintLine := false;
//                     if NewPagePerItem then
//                         PageGroupNo += 1;

//                     tempItem.Reset();
//                     tempItem.DeleteAll();
//                     TempItemLedgerEntry.Reset();
//                     TempItemLedgerEntry.DeleteAll();

//                     GLSetup.Get();
//                     if Dimension.Get(GLSetup."Global Dimension 1 Code") then
//                         Dim1Caption := Dimension."Code Caption";
//                     Dimension.Reset();
//                     if Dimension.Get(GLSetup."Global Dimension 2 Code") then
//                         Dim2Caption := Dimension."Code Caption";

//                     ItemLedEntry.Reset();
//                     ItemLedEntry.SetRange("Item No.", "No.");
//                     ItemLedEntry.SetRange("Posting Date", 0D, EndingDate);
//                     CopyFiltersFromItem(ItemLedEntry);
//                     ItemLedEntry.CalcSums(Quantity, "Remaining Quantity");
//                     ClosingBalQty := ItemLedEntry.Quantity;

//                     ValueEntry.Reset();
//                     ValueEntry.SetRange("Item No.", "No.");
//                     ValueEntry.SetRange("Posting Date", 0D, EndingDate);
//                     CopyValueFiltersFromItem(ValueEntry);
//                     ValueEntry.CalcSums("Cost Amount (Actual)", "Cost Amount (Expected)");
//                     ClosingBalValue := ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)";

//                     if ClosingBalQty <> 0 then
//                         TotalUnitCost := ClosingBalValue / ClosingBalQty;

//                     CalculateClosingQtyValueOnBucketStartDate("No.");

//                 end;
//             }
//         }
//     }


//     requestpage
//     {
//         SaveValues = true;
//         layout
//         {
//             area(content)
//             {
//                 group(Options)
//                 {
//                     Caption = 'Options';
//                     field(EndingDate; EndingDate)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Ending Date';
//                         ToolTip = 'Specifies the end date of the report. The report calculates backwards from this date and sets up periods of the chosen lengths.';
//                         trigger OnValidate()
//                         begin
//                             if EndingDate = 0D then
//                                 Error(Text002);
//                         end;
//                     }
//                     field(HeadingType; HeadingType)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Heading Type';
//                         OptionCaption = 'Date Interval,Number of Days';
//                         ToolTip = 'Choose date interval or number-of-days headings.';
//                     }
//                     field(PrintDetails; PrintDetails)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Print Details';
//                         ToolTip = 'Show detailed entries per document.';
//                     }
//                     field(AgingBy; AgingBy)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Aging By';
//                         ToolTip = 'Specifies the date that you want the aging calculated by.';
//                         OptionCaption = 'Posting Date,Manufacturer Date';
//                     }
//                     field(NewPagePerItem; NewPagePerItem)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'New Page per Item';
//                         ToolTip = 'Print each item on a new page.';
//                     }
//                     field(PeriodLength; PeriodLength)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Period Length';
//                         ToolTip = 'Base period length.';
//                         Visible = false;
//                         trigger OnValidate()
//                         begin
//                             if Format(PeriodLength) = '' then
//                                 Evaluate(PeriodLength, '<0D>');
//                         end;
//                     }
//                     field(NoOfPeriod; NoOfPeriod)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'No. of Periods';
//                         trigger OnValidate()
//                         var
//                             myInt: Integer;
//                         begin
//                             Clear(PeriodLengthValueVisible);
//                             Clear(PeriodLengthValue);
//                             for myInt := 1 to NoOfPeriod do
//                                 PeriodLengthValueVisible[myInt] := true;

//                             PeriodLengthVisible1 := PeriodLengthValueVisible[1];
//                             PeriodLengthVisible2 := PeriodLengthValueVisible[2];
//                             PeriodLengthVisible3 := PeriodLengthValueVisible[3];
//                             PeriodLengthVisible4 := PeriodLengthValueVisible[4];
//                             PeriodLengthVisible5 := PeriodLengthValueVisible[5];
//                             PeriodLengthVisible6 := PeriodLengthValueVisible[6];
//                             PeriodLengthVisible7 := PeriodLengthValueVisible[7];
//                         end;
//                     }
//                     field(PeriodLengthValue1; PeriodLengthValue[1])
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Enabled = PeriodLengthVisible1;
//                         Caption = 'Period 1';
//                     }
//                     field(PeriodLengthValue2; PeriodLengthValue[2])
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Enabled = PeriodLengthVisible2;
//                         Caption = 'Period 2';
//                     }
//                     field(PeriodLengthValue3; PeriodLengthValue[3])
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Enabled = PeriodLengthVisible3;
//                         Caption = 'Period 3';
//                     }
//                     field(PeriodLengthValue4; PeriodLengthValue[4])
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Enabled = PeriodLengthVisible4;
//                         Caption = 'Period 4';
//                     }
//                     field(PeriodLengthValue5; PeriodLengthValue[5])
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Enabled = PeriodLengthVisible5;
//                         Caption = 'Period 5';
//                     }
//                     field(PeriodLengthValue6; PeriodLengthValue[6])
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Enabled = PeriodLengthVisible6;
//                         Caption = 'Period 6';
//                     }
//                     field(PeriodLengthValue7; PeriodLengthValue[7])
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Enabled = PeriodLengthVisible7;
//                         Caption = 'Period 7';
//                     }
//                 }
//             }
//         }

//         trigger OnOpenPage()
//         begin
//             if EndingDate = 0D then
//                 EndingDate := CalcDate('<CM>', WorkDate());

//             PeriodEndDate[NoOfPeriod + 2] := EndingDate;
//             if Format(PeriodLength) = '' then
//                 Evaluate(PeriodLength, '<1M>');
//         end;
//     }

//     rendering
//     {
//         layout(REP)
//         {
//             Type = RDLC;
//             LayoutFile = './AgingReport/layout/StockAgingQtyValue.rdl';
//         }
//     }

//     labels
//     {
//     }

//     trigger OnPreReport()
//     begin
//         ItemFilter := Item.GetFilters();
//         PeriodEndDate[NoOfPeriod + 3] := DMY2Date(31, 12, 9999);
//         PageGroupNo := 1;
//         NextPageGroupNo := 1;
//         CalcDates();
//         CreateHeadings();
//     end;

//     var
//         AgingBy: Option "Posting Date","Manufacturer Date";
//         TotalUnitCost: Decimal;
//         ClosingBalQty: Decimal;
//         ClosingBalValue: Decimal;
//         ItemLedEntry: Record "Item Ledger Entry";
//         ValueEntry: Record "Value Entry";
//         ItemCostMgt: Codeunit ItemCostManagement;
//         TempItemLedgerEntry: Record "Item Ledger Entry" temporary;
//         TempItemLedgerEntryEndingDate: Record "Item Ledger Entry" temporary;
//         GrandTotalValueEntry: array[10] of Record "Value Entry";
//         TotalValueEntry: array[10] of Record "Value Entry";
//         AgedValueEntry: array[10] of Record "Value Entry";

//         AgedLocationCodeG: Code[20];
//         AgedGloblDimCode1G: Code[20];
//         AgedGloblDimCode2G: Code[20];
//         AgedUOMG: Code[20];
//         tempItem: Record Item temporary;
//         NoOfPeriod: Integer;
//         PeriodLength: DateFormula;
//         PeriodLengthValue: array[8] of DateFormula;
//         PeriodLengthValueVisible: array[8] of Boolean;
//         PeriodLengthVisible1: Boolean;
//         PeriodLengthVisible2: Boolean;
//         PeriodLengthVisible3: Boolean;
//         PeriodLengthVisible4: Boolean;
//         PeriodLengthVisible5: Boolean;
//         PeriodLengthVisible6: Boolean;
//         PeriodLengthVisible7: Boolean;
//         ItemFilter: Text;
//         InvtValue: array[10] of Decimal;
//         InvtValueRTC: array[10] of Decimal;
//         InvtQtyRTC: array[10] of Decimal;
//         InvtQty: array[10] of Decimal;
//         UnitCost: Decimal;
//         PeriodEndDate: array[10] of Date;
//         i: Integer;
//         TotalInvtValue_Item: Decimal;
//         TotalInvtQty_Item: Decimal;
//         TotalInvtValueRTC: Decimal;
//         TotalInvtQtyRTC: Decimal;
//         TotalInvtQty: Decimal;
//         PrintLine: Boolean;
//         AverageCost: array[9] of Decimal;
//         AverageCostACY: array[9] of Decimal;
//         Text002: Label 'Enter the ending date';
//         Text003: Label 'days';
//         ItemAgeCompositionValueCaptionLbl: Label 'Item Age Composition - Qty / Value';
//         CurrReportPageNoCaptionLbl: Label 'Page';
//         AfterCaptionLbl: Label 'After.';
//         BeforeCaptionLbl: Label '.Before';
//         InventoryValueCaptionLbl: Label 'Inventory Value';
//         ItemDescriptionCaptionLbl: Label 'Description';
//         ItemNoCaptionLbl: Label 'Item No.';
//         TotalCaptionLbl: Label 'Total';
//         Text006: Label 'Aged as of %1';
//         QuantityCaptionLbl: Label 'Quantity';
//         ValueCaptionLbl: Label 'Value';
//         RemainingQty: Decimal;
//         InvQty: array[10] of Decimal;
//         HeaderText: array[10] of Text[30];
//         permissionErr: Label 'You don''t have permission to run this report.';
//         HeadingType: Option "Date Interval","Number of Days";
//         PrintDetails: Boolean;
//         EndingDate: Date;
//         NewPagePerItem: Boolean;
//         PageGroupNo: Integer;
//         NextPageGroupNo: Integer;
//         Text005: Label 'Total for %1';
//         PstngDateCptnLbl: Label 'Posting Date';
//         DocTypeCptnLbl: Label 'Document Type';
//         LocationCptnLbl: Label 'Location';
//         Dim1Caption: Text;
//         Dim2Caption: Text;
//         UOMCptnLbl: Label 'UOM';
//         TotalAppliedInvtQty: Decimal;
//         AfterTok: Label 'After';
//         BeforeTok: Label 'Before';
//         PeriodStartDate: array[13] of Date;
//         Text032Txt: Label '-%1', Comment = 'Negating the period length: %1 is the period length';
//         Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';


//     local procedure CalcDates()
//     var
//         PeriodLength2: DateFormula;
//         DateIntervalInt: Integer;
//         ErrorText: Text;
//     begin
//         for DateIntervalInt := 1 to NoOfPeriod do begin
//             if not Evaluate(PeriodLength2, StrSubstNo(Text032Txt, PeriodLengthValue[DateIntervalInt])) then begin
//                 ErrorText := 'Period ' + Format(DateIntervalInt) + ' should have value.';
//                 Error(ErrorText);
//             end;
//         end;

//         PeriodEndDate[1] := EndingDate;
//         PeriodStartDate[1] := CalcDate(StrSubstNo(Text032Txt, PeriodLengthValue[1]), EndingDate + 1);

//         for DateIntervalInt := 2 to ArrayLen(PeriodEndDate) do begin
//             if DateIntervalInt <= NoOfPeriod then begin
//                 PeriodEndDate[DateIntervalInt] := PeriodStartDate[DateIntervalInt - 1] - 1;
//                 PeriodStartDate[DateIntervalInt] := CalcDate(StrSubstNo(Text032Txt, PeriodLengthValue[DateIntervalInt]), PeriodEndDate[DateIntervalInt] + 1);
//             end else
//                 break;
//         end;

//         PeriodEndDate[DateIntervalInt] := PeriodStartDate[DateIntervalInt - 1] - 1;
//         PeriodStartDate[DateIntervalInt] := 0D;

//         for DateIntervalInt := 1 to ArrayLen(PeriodEndDate) do begin
//             if DateIntervalInt > NoOfPeriod then
//                 break;
//             if PeriodEndDate[DateIntervalInt] < PeriodStartDate[DateIntervalInt] then
//                 Error(Text010, PeriodLength);
//         end;
//     end;

//     local procedure CreateHeadings()
//     var
//         HeaderTextInt: Integer;
//     begin
//         for HeaderTextInt := 1 to NoOfPeriod do begin
//             if HeadingType = HeadingType::"Date Interval" then
//                 HeaderText[HeaderTextInt] := StrSubstNo('%1\..%2', PeriodStartDate[HeaderTextInt], PeriodEndDate[HeaderTextInt])
//             else
//                 HeaderText[HeaderTextInt] :=
//                   StrSubstNo('%1 - %2 %3', EndingDate - PeriodEndDate[HeaderTextInt] + 1, EndingDate - PeriodStartDate[HeaderTextInt] + 1, Text003);
//         end;

//         HeaderTextInt := HeaderTextInt + 1;
//         if HeadingType = HeadingType::"Date Interval" then
//             HeaderText[HeaderTextInt] := StrSubstNo('%1 %2', BeforeTok, PeriodStartDate[HeaderTextInt - 1])
//         else
//             HeaderText[HeaderTextInt] := StrSubstNo('%1 %2 %3', AfterTok, EndingDate - PeriodStartDate[NoOfPeriod] + 1, Text003);

//         CompressArray(HeaderText);
//     end;


//     local procedure CopyFiltersFromItem(var ItemLedEntry: Record "Item Ledger Entry")
//     begin
//         if item.GetFilter("Location Filter") <> '' then
//             ItemLedEntry.SetRange("Location Code", item.GetFilter("Location Filter"));

//         if Item.GetFilter("Variant Filter") <> '' then
//             ItemLedEntry.SetRange("Variant Code", Item.GetFilter("Variant Filter"));

//         if item.GetFilter("Global Dimension 1 Filter") <> '' then
//             ItemLedEntry.SetRange("Global Dimension 1 Code", item.GetFilter("Global Dimension 1 Filter"));

//         if item.GetFilter("Global Dimension 2 Filter") <> '' then
//             ItemLedEntry.SetRange("Global Dimension 2 Code", item.GetFilter("Global Dimension 2 Filter"));
//     end;

//     local procedure CopyValueFiltersFromItem(var ValueEntry: Record "Value Entry")
//     begin
//         if item.GetFilter("Location Filter") <> '' then
//             ValueEntry.SetRange("Location Code", item.GetFilter("Location Filter"));

//         if Item.GetFilter("Variant Filter") <> '' then
//             ValueEntry.SetRange("Variant Code", Item.GetFilter("Variant Filter"));

//         if item.GetFilter("Global Dimension 1 Filter") <> '' then
//             ValueEntry.SetRange("Global Dimension 1 Code", item.GetFilter("Global Dimension 1 Filter"));

//         if item.GetFilter("Global Dimension 2 Filter") <> '' then
//             ValueEntry.SetRange("Global Dimension 2 Code", item.GetFilter("Global Dimension 2 Filter"));
//     end;

//     local procedure CalculateClosingQtyValueOnBucketStartDate(ItemNo: Code[20])
//     var
//         ItemLedEntry: Record "Item Ledger Entry";
//         valueEntry: Record "Value Entry";
//         TotalInvtQty: Decimal;
//         PeriodIndex: Integer;
//     begin
//         Clear(TotalInvtQty);
//         ItemLedEntry.Reset();
//         ItemLedEntry.SetRange("Item No.", ItemNo);
//         ItemLedEntry.SetRange("Positive", true);
//         // ItemLedEntry.SetFilter("Entry Type", '%1|%2|%3|%4',
//         //             ItemLedEntry."Entry Type"::"Purchase",
//         //             ItemLedEntry."Entry Type"::"Positive Adjmt.",
//         //             ItemLedEntry."Entry Type"::Output,
//         //             ItemLedEntry."Entry Type"::"Assembly Output");
//         //if AgingBy = AgingBy::"Posting Date" then
//         ItemLedEntry.SetRange("Posting Date", 0D, EndingDate);
//         // else
//         //     ItemLedEntry.SetRange("Manufacturer Date", 0D, EndingDate);
//         CopyFiltersFromItem(ItemLedEntry);
//         if ItemLedEntry.FindSet() then begin
//             repeat
//                 InsertTemp(ItemLedEntry);
//             until ItemLedEntry.Next() = 0;
//         end;
//     end;


//     local procedure InsertTemp(var ItemLedgerEntry: Record "Item Ledger Entry")
//     begin
//         if TempItemLedgerEntry.Get(ItemLedgerEntry."Entry No.") then
//             exit;

//         TempItemLedgerEntry := ItemLedgerEntry;
//         TempItemLedgerEntry.Insert();

//         if tempItem.Get(TempItemLedgerEntry."Item No.") then
//             exit;

//         tempItem := Item;
//         tempItem.Insert();
//     end;

//     local procedure GetPeriodIndex(BucketDate: Date): Integer
//     var
//         j: Integer;
//     begin
//         for j := 1 to ArrayLen(PeriodEndDate) do
//             if j <= NoOfPeriod + 1 then
//                 if BucketDate in [PeriodStartDate[j] .. PeriodEndDate[j]] then
//                     exit(j);
//     end;


//     local procedure CalcUnitCost(var ItemLedgerEntry: Record "Item Ledger Entry")
//     var
//         ValueEntry: Record "Value Entry";
//     begin
//         ValueEntry.SetRange("Item Ledger Entry No.", ItemLedgerEntry."Entry No.");
//         UnitCost := 0;
//         if ValueEntry.Find('-') then
//             repeat
//                 if ValueEntry."Partial Revaluation" then
//                     SumUnitCost(UnitCost, ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)", ValueEntry."Valued Quantity")
//                 else
//                     SumUnitCost(UnitCost, ValueEntry."Cost Amount (Actual)" + ValueEntry."Cost Amount (Expected)", ItemLedgerEntry.Quantity);
//             until ValueEntry.Next() = 0;
//     end;

//     local procedure SumUnitCost(var UnitCost: Decimal; CostAmount: Decimal; Quantity: Decimal)
//     begin
//         if Quantity <> 0 then
//             UnitCost := UnitCost + CostAmount / Abs(Quantity);
//     end;


//     local procedure FindAppliedEntries(ItemLedgEntry: Record "Item Ledger Entry"; var TempAtEndingDate: Record "Item Ledger Entry" temporary; PeriodIndex: Integer)
//     var
//         ItemApplnEntry: Record "Item Application Entry";
//     begin
//         // Clear per entry
//         TempAtEndingDate.DeleteAll();
//         if ItemLedgEntry.Positive then begin
//             ItemApplnEntry.Reset();
//             ItemApplnEntry.SetCurrentKey("Inbound Item Entry No.", "Outbound Item Entry No.", "Cost Application");
//             ItemApplnEntry.SetRange("Inbound Item Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetFilter("Outbound Item Entry No.", '<>%1', 0);
//             ItemApplnEntry.SetRange("Cost Application", true);
//             if ItemApplnEntry.Find('-') then
//                 repeat
//                     InsertTempEntry(TempAtEndingDate, ItemApplnEntry."Outbound Item Entry No.", ItemApplnEntry.Quantity, PeriodIndex);
//                 until ItemApplnEntry.Next() = 0;
//         end else begin
//             ItemApplnEntry.Reset();
//             ItemApplnEntry.SetCurrentKey("Outbound Item Entry No.", "Item Ledger Entry No.", "Cost Application");
//             ItemApplnEntry.SetRange("Outbound Item Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetRange("Item Ledger Entry No.", ItemLedgEntry."Entry No.");
//             ItemApplnEntry.SetRange("Cost Application", true);
//             if ItemApplnEntry.Find('-') then
//                 repeat
//                     InsertTempEntry(TempAtEndingDate, ItemApplnEntry."Inbound Item Entry No.", -ItemApplnEntry.Quantity, PeriodIndex);
//                 until ItemApplnEntry.Next() = 0;
//         end;

//         if TempAtEndingDate.FindSet() then
//             repeat
//                 TotalAppliedInvtQty += TempAtEndingDate.Quantity;
//             until TempAtEndingDate.Next() = 0;
//     end;

//     local procedure InsertTempEntry(var TempAtEndingDate: Record "Item Ledger Entry" temporary; EntryNo: Integer; AppliedQty: Decimal; PeriodIndex: Integer)
//     var
//         Src: Record "Item Ledger Entry";
//     begin
//         Src.Get(EntryNo);

//         if AppliedQty * Src.Quantity < 0 then
//             exit;

//         if AgingBy = AgingBy::"Posting Date" then
//             if Src."Posting Date" in [0D .. EndingDate] then begin

//                 if not TempAtEndingDate.Get(EntryNo) then begin
//                     TempAtEndingDate.Init();
//                     TempAtEndingDate := Src;
//                     TempAtEndingDate.Quantity := AppliedQty;
//                     TempAtEndingDate.Insert();
//                 end else begin
//                     TempAtEndingDate.Quantity := TempAtEndingDate.Quantity + AppliedQty;
//                     TempAtEndingDate.Modify();
//                 end;
//             end;

//         if AgingBy = AgingBy::"Manufacturer Date" then
//             if Src."Manufacturer Date" in [PeriodStartDate[PeriodIndex] .. EndingDate] then begin

//                 if not TempAtEndingDate.Get(EntryNo) then begin
//                     TempAtEndingDate.Init();
//                     TempAtEndingDate := Src;
//                     TempAtEndingDate.Quantity := AppliedQty;
//                     TempAtEndingDate.Insert();
//                 end else begin
//                     TempAtEndingDate.Quantity := TempAtEndingDate.Quantity + AppliedQty;
//                     TempAtEndingDate.Modify();
//                 end;
//             end;
//     end;
// }
