report 99662 "3KT Aged Accounts Receivable"
{
    DefaultLayout = RDLC;
    RDLCLayout = './AgingReport/layout/AgedAccountsReceivable.rdl';
    ApplicationArea = Basic, Suite;
    Caption = '3KT Aged Accounts Receivable';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    DataAccessIntent = ReadOnly;

    dataset
    {
        dataitem(Header; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            column(CompanyName; CompanyDisplayName)
            {
            }
            column(FormatEndingDate; StrSubstNo(Text006, Format(EndingDate, 0, 4)))
            {
            }
            column(PostingDate; StrSubstNo(Text007, SelectStr(AgingBy + 1, Text009)))
            {
            }
            column(PrintAmountInLCY; PrintAmountInLCY)
            {
            }
            column(TableCaptnCustFilter; Customer.TableCaption + ': ' + CustFilter)
            {
            }
            column(CustFilter; CustFilter)
            {
            }
            column(AgingByDueDate; AgingBy = AgingBy::"Due Date")
            {
            }
            column(AgedbyDocumnetDate; StrSubstNo(Text004, SelectStr(AgingBy + 1, Text009)))
            {
            }
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
            column(PrintDetails; PrintDetails)
            {
            }
            column(AgedAccReceivableCptn; AgedAccReceivableCptnLbl)
            {
            }
            column(CurrReportPageNoCptn; CurrReportPageNoCptnLbl)
            {
            }
            column(AllAmtinLCYCptn; AllAmtinLCYCptnLbl)
            {
            }
            column(AgedOverdueAmtCptn; AgedOverdueAmtCptnLbl)
            {
            }
            column(CLEEndDateAmtLCYCptn; CLEEndDateAmtLCYCptnLbl)
            {
            }
            column(CLEEndDateDueDateCptn; CLEEndDateDueDateCptnLbl)
            {
            }
            column(CLEEndDateDocNoCptn; CLEEndDateDocNoCptnLbl)
            {
            }
            column(CLEEndDatePstngDateCptn; CLEEndDatePstngDateCptnLbl)
            {
            }
            column(CLEEndDateDocTypeCptn; CLEEndDateDocTypeCptnLbl)
            {
            }
            column(OriginalAmtCptn; OriginalAmtCptnLbl)
            {
            }
            column(TotalLCYCptn; TotalLCYCptnLbl)
            {
            }
            column(NewPagePercustomer; NewPagePercustomer)
            {
            }
            column(GrandTotalCLE10RemAmt; GrandTotalCustLedgEntry[10]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE9RemAmt; GrandTotalCustLedgEntry[9]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE8RemAmt; GrandTotalCustLedgEntry[8]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE7RemAmt; GrandTotalCustLedgEntry[7]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE6RemAmt; GrandTotalCustLedgEntry[6]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE5RemAmt; GrandTotalCustLedgEntry[5]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE4RemAmt; GrandTotalCustLedgEntry[4]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE3RemAmt; GrandTotalCustLedgEntry[3]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE2RemAmt; GrandTotalCustLedgEntry[2]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE1RemAmt; GrandTotalCustLedgEntry[1]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLEAmtLCY; GrandTotalCustLedgEntry[1]."Amount (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE1CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[1]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE2CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[2]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE3CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[3]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE4CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[4]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE5CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[5]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE6CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[6]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE7CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[7]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE8CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[8]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE9CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[9]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE10CustRemAmtLCY; Pct(GrandTotalCustLedgEntry[10]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE1AmtLCY; GrandTotalCustLedgEntry[1]."Amount (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE10PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[10]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE9PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[9]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE8PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[8]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE7PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[7]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE6PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[6]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE5PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[5]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE3PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[3]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE2PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[2]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE1PctRemAmtLCY; Pct(GrandTotalCustLedgEntry[1]."Remaining Amt. (LCY)", GrandTotalCustLedgEntry[1]."Amount (LCY)"))
            {
            }
            column(GrandTotalCLE10RemAmtLCY; GrandTotalCustLedgEntry[10]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE9RemAmtLCY; GrandTotalCustLedgEntry[9]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE8RemAmtLCY; GrandTotalCustLedgEntry[8]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE7RemAmtLCY; GrandTotalCustLedgEntry[7]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE6RemAmtLCY; GrandTotalCustLedgEntry[6]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE5RemAmtLCY; GrandTotalCustLedgEntry[5]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE4RemAmtLCY; GrandTotalCustLedgEntry[4]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE3RemAmtLCY; GrandTotalCustLedgEntry[3]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE2RemAmtLCY; GrandTotalCustLedgEntry[2]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            column(GrandTotalCLE1RemAmtLCY; GrandTotalCustLedgEntry[1]."Remaining Amt. (LCY)")
            {
                AutoFormatType = 1;
            }
            dataitem(Customer; Customer)
            {
                RequestFilterFields = "No.";
                column(PageGroupNo; PageGroupNo)
                {
                }
                column(CustomerPhoneNoCaption; FieldCaption("Phone No."))
                {
                }
                column(CustomerContactCaption; FieldCaption(Contact))
                {
                }
                dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
                {
                    DataItemLink = "Customer No." = FIELD("No.");
                    DataItemTableView = SORTING("Customer No.", "Posting Date", "Currency Code");

                    trigger OnAfterGetRecord()
                    var
                        CustLedgEntry: Record "Cust. Ledger Entry";
                    begin
                        CustLedgEntry.SetCurrentKey("Closed by Entry No.");
                        if "Closed by Entry No." <> 0 then
                            CustLedgEntry.SetFilter("Closed by Entry No.", '%1|%2', "Entry No.", "Closed by Entry No.")
                        else
                            CustLedgEntry.SetRange("Closed by Entry No.", "Entry No.");
                        CustLedgEntry.SetRange("Posting Date", 0D, EndingDate);
                        CopyDimFiltersFromCustomer(CustLedgEntry);
                        if CustLedgEntry.FindSet(false) then
                            repeat
                                InsertTemp(CustLedgEntry);
                            until CustLedgEntry.Next() = 0;

                        CustLedgEntry.Reset();
                        CustLedgEntry.SetRange("Entry No.", "Closed by Entry No.");
                        CustLedgEntry.SetRange("Posting Date", 0D, EndingDate);
                        CopyDimFiltersFromCustomer(CustLedgEntry);
                        if CustLedgEntry.FindSet(false) then
                            repeat
                                InsertTemp(CustLedgEntry);
                            until CustLedgEntry.Next() = 0;
                        CurrReport.Skip();
                    end;

                    trigger OnPreDataItem()
                    begin
                        SetRange("Posting Date", EndingDate + 1, DMY2Date(31, 12, 9999));
                        CopyDimFiltersFromCustomer("Cust. Ledger Entry");
                        Customer.CopyFilter("Currency Filter", "Currency Code");
                    end;
                }
                dataitem(OpenCustLedgEntry; "Cust. Ledger Entry")
                {
                    DataItemLink = "Customer No." = FIELD("No.");
                    DataItemTableView = SORTING("Customer No.", Open, Positive, "Due Date", "Currency Code");

                    trigger OnAfterGetRecord()
                    begin
                        InsertTemp(OpenCustLedgEntry);
                        CurrReport.Skip();
                    end;

                    trigger OnPreDataItem()
                    begin
                        if AgingBy = AgingBy::"Posting Date" then begin
                            SetRange("Posting Date", 0D, EndingDate);
                            SetRange("Date Filter", 0D, EndingDate);
                            SetAutoCalcFields("Remaining Amt. (LCY)");
                            SetFilter("Remaining Amt. (LCY)", '<>0');
                        end;
                        CopyDimFiltersFromCustomer(OpenCustLedgEntry);
                        Customer.CopyFilter("Currency Filter", "Currency Code");
                    end;
                }
                dataitem(CurrencyLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                    PrintOnlyIfDetail = true;
                    dataitem(TempCustLedgEntryLoop; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(Name1_Cust; Customer.Name)
                        {
                            IncludeCaption = true;
                        }
                        column(No_Cust; Customer."No.")
                        {
                            IncludeCaption = true;
                        }
                        column(CustomerPhoneNo; Customer."Phone No.")
                        {
                        }
                        column(CustomerContactName; Customer.Contact)
                        {
                        }
                        column(CLEEndDateRemAmtLCY; CustLedgEntryEndingDate."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE1RemAmtLCY; AgedCustLedgEntry[1]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE2RemAmtLCY; AgedCustLedgEntry[2]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE3RemAmtLCY; AgedCustLedgEntry[3]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE4RemAmtLCY; AgedCustLedgEntry[4]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE5RemAmtLCY; AgedCustLedgEntry[5]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE6RemAmtLCY; AgedCustLedgEntry[6]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE7RemAmtLCY; AgedCustLedgEntry[7]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE8RemAmtLCY; AgedCustLedgEntry[8]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE9RemAmtLCY; AgedCustLedgEntry[9]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(AgedCLE10RemAmtLCY; AgedCustLedgEntry[10]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(CLEEndDateAmtLCY; CustLedgEntryEndingDate."Amount (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(CLEEndDueDate; Format(CustLedgEntryEndingDate."Due Date"))
                        {
                        }
                        column(CLEEndDateDocNo; CustLedgEntryEndingDate."Document No.")
                        {
                        }
                        column(CLEDocType; Format(CustLedgEntryEndingDate."Document Type"))
                        {
                        }
                        column(CLEPostingDate; Format(CustLedgEntryEndingDate."Posting Date"))
                        {
                        }
                        column(AgedCLE10TempRemAmt; AgedCustLedgEntry[10]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE9TempRemAmt; AgedCustLedgEntry[9]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE8TempRemAmt; AgedCustLedgEntry[8]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE7TempRemAmt; AgedCustLedgEntry[7]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE6TempRemAmt; AgedCustLedgEntry[6]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE5TempRemAmt; AgedCustLedgEntry[5]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE4TempRemAmt; AgedCustLedgEntry[4]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE3TempRemAmt; AgedCustLedgEntry[3]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE2TempRemAmt; AgedCustLedgEntry[2]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(AgedCLE1TempRemAmt; AgedCustLedgEntry[1]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(RemAmt_CLEEndDate; CustLedgEntryEndingDate."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(CLEEndDate_ExtDocNo; CustLedgEntryEndingDate."External Document No.")
                        {

                        }
                        column(CLEEndDate; CustLedgEntryEndingDate.Amount)
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Name_Cust; StrSubstNo(Text005, Customer.Name))
                        {
                        }
                        column(TotalCLE1AmtLCY; TotalCustLedgEntry[1]."Amount (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE1RemAmtLCY; TotalCustLedgEntry[1]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE2RemAmtLCY; TotalCustLedgEntry[2]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE3RemAmtLCY; TotalCustLedgEntry[3]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE4RemAmtLCY; TotalCustLedgEntry[4]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE5RemAmtLCY; TotalCustLedgEntry[5]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE6RemAmtLCY; TotalCustLedgEntry[6]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE7RemAmtLCY; TotalCustLedgEntry[7]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE8RemAmtLCY; TotalCustLedgEntry[8]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE9RemAmtLCY; TotalCustLedgEntry[9]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalCLE10RemAmtLCY; TotalCustLedgEntry[10]."Remaining Amt. (LCY)")
                        {
                            AutoFormatType = 1;
                        }
                        column(CurrrencyCode; CurrencyCode)
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE10RemAmt; TotalCustLedgEntry[10]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE9RemAmt; TotalCustLedgEntry[9]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE8RemAmt; TotalCustLedgEntry[8]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE7RemAmt; TotalCustLedgEntry[7]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE6RemAmt; TotalCustLedgEntry[6]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE5RemAmt; TotalCustLedgEntry[5]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE4RemAmt; TotalCustLedgEntry[4]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE3RemAmt; TotalCustLedgEntry[3]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE2RemAmt; TotalCustLedgEntry[2]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE1RemAmt; TotalCustLedgEntry[1]."Remaining Amount")
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCLE1Amt; TotalCustLedgEntry[1].Amount)
                        {
                            AutoFormatExpression = CurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalCheck; CustFilterCheck)
                        {
                        }

                        trigger OnAfterGetRecord()
                        var
                            PeriodIndex: Integer;
                        begin
                            if Number = 1 then begin
                                if not TempCustLedgEntry.FindSet(false) then
                                    CurrReport.Break();
                            end else
                                if TempCustLedgEntry.Next() = 0 then
                                    CurrReport.Break();

                            CustLedgEntryEndingDate := TempCustLedgEntry;
                            DetailedCustomerLedgerEntry.SetRange("Cust. Ledger Entry No.", CustLedgEntryEndingDate."Entry No.");
                            OnTempCustLedgEntryGetRecordOnAfterSetDetailedEntryFilters(DetailedCustomerLedgerEntry);
                            if DetailedCustomerLedgerEntry.FindSet(false) then
                                repeat
                                    if (DetailedCustomerLedgerEntry."Entry Type" =
                                        DetailedCustomerLedgerEntry."Entry Type"::"Initial Entry") and
                                       (CustLedgEntryEndingDate."Posting Date" > EndingDate) and
                                       (AgingBy <> AgingBy::"Posting Date")
                                    then
                                        if CustLedgEntryEndingDate."Document Date" <= EndingDate then
                                            DetailedCustomerLedgerEntry."Posting Date" :=
                                              CustLedgEntryEndingDate."Document Date"
                                        else
                                            if (CustLedgEntryEndingDate."Due Date" <= EndingDate) and
                                               (AgingBy = AgingBy::"Due Date")
                                            then
                                                DetailedCustomerLedgerEntry."Posting Date" :=
                                                  CustLedgEntryEndingDate."Due Date";

                                    if (DetailedCustomerLedgerEntry."Posting Date" <= EndingDate) or
                                       (TempCustLedgEntry.Open and
                                        (AgingBy = AgingBy::"Due Date") and
                                        (CustLedgEntryEndingDate."Due Date" > EndingDate) and
                                        (CustLedgEntryEndingDate."Posting Date" <= EndingDate))
                                    then begin
                                        if DetailedCustomerLedgerEntry."Entry Type" in
                                           [DetailedCustomerLedgerEntry."Entry Type"::"Initial Entry",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Unrealized Loss",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Unrealized Gain",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Realized Loss",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Realized Gain",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Discount",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Discount (VAT Excl.)",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Discount (VAT Adjustment)",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Tolerance",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Discount Tolerance",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Tolerance (VAT Excl.)",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Tolerance (VAT Adjustment)",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Discount Tolerance (VAT Excl.)",
                                            DetailedCustomerLedgerEntry."Entry Type"::"Payment Discount Tolerance (VAT Adjustment)"]
                                        then begin
                                            CustLedgEntryEndingDate.Amount := CustLedgEntryEndingDate.Amount + DetailedCustomerLedgerEntry.Amount;
                                            CustLedgEntryEndingDate."Amount (LCY)" :=
                                              CustLedgEntryEndingDate."Amount (LCY)" + DetailedCustomerLedgerEntry."Amount (LCY)";
                                        end;
                                        if DetailedCustomerLedgerEntry."Posting Date" <= EndingDate then begin
                                            CustLedgEntryEndingDate."Remaining Amount" :=
                                              CustLedgEntryEndingDate."Remaining Amount" + DetailedCustomerLedgerEntry.Amount;
                                            CustLedgEntryEndingDate."Remaining Amt. (LCY)" :=
                                              CustLedgEntryEndingDate."Remaining Amt. (LCY)" + DetailedCustomerLedgerEntry."Amount (LCY)";
                                        end;
                                    end;
                                until DetailedCustomerLedgerEntry.Next() = 0;

                            if CustLedgEntryEndingDate."Remaining Amount" = 0 then
                                CurrReport.Skip();

                            case AgingBy of
                                AgingBy::"Due Date":
                                    PeriodIndex := GetPeriodIndex(CustLedgEntryEndingDate."Due Date");
                                AgingBy::"Posting Date":
                                    PeriodIndex := GetPeriodIndex(CustLedgEntryEndingDate."Posting Date");
                                AgingBy::"Document Date":
                                    begin
                                        if CustLedgEntryEndingDate."Document Date" > EndingDate then begin
                                            CustLedgEntryEndingDate."Remaining Amount" := 0;
                                            CustLedgEntryEndingDate."Remaining Amt. (LCY)" := 0;
                                            CustLedgEntryEndingDate."Document Date" := CustLedgEntryEndingDate."Posting Date";
                                        end;
                                        PeriodIndex := GetPeriodIndex(CustLedgEntryEndingDate."Document Date");
                                    end;
                            end;
                            Clear(AgedCustLedgEntry);
                            AgedCustLedgEntry[PeriodIndex]."Remaining Amount" := CustLedgEntryEndingDate."Remaining Amount";
                            AgedCustLedgEntry[PeriodIndex]."Remaining Amt. (LCY)" := CustLedgEntryEndingDate."Remaining Amt. (LCY)";
                            TotalCustLedgEntry[PeriodIndex]."Remaining Amount" += CustLedgEntryEndingDate."Remaining Amount";
                            TotalCustLedgEntry[PeriodIndex]."Remaining Amt. (LCY)" += CustLedgEntryEndingDate."Remaining Amt. (LCY)";
                            GrandTotalCustLedgEntry[PeriodIndex]."Remaining Amt. (LCY)" += CustLedgEntryEndingDate."Remaining Amt. (LCY)";
                            TotalCustLedgEntry[1].Amount += CustLedgEntryEndingDate."Remaining Amount";
                            TotalCustLedgEntry[1]."Amount (LCY)" += CustLedgEntryEndingDate."Remaining Amt. (LCY)";
                            GrandTotalCustLedgEntry[1]."Amount (LCY)" += CustLedgEntryEndingDate."Remaining Amt. (LCY)";
                            NumberOfLines += 1;
                        end;

                        trigger OnPostDataItem()
                        begin
                            if not PrintAmountInLCY then
                                UpdateCurrencyTotals();
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not PrintAmountInLCY then
                                if (TempCurrency.Code = '') or (TempCurrency.Code = GLSetup."LCY Code") then
                                    TempCustLedgEntry.SetFilter("Currency Code", '%1|%2', GLSetup."LCY Code", '')
                                else
                                    TempCustLedgEntry.SetRange("Currency Code", TempCurrency.Code);

                            PageGroupNo := NextPageGroupNo;
                            if NewPagePercustomer and (NumberOfCurrencies > 0) then
                                NextPageGroupNo := PageGroupNo + 1;
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        Clear(TotalCustLedgEntry);

                        if Number = 1 then begin
                            if not TempCurrency.FindSet(false) then begin
                                CurrReport.Break();
                                NumberOfLines -= 1;
                            end;
                        end else
                            if TempCurrency.Next() = 0 then begin
                                CurrReport.Break();
                                NumberOfLines -= 1;
                            end;

                        if TempCurrency.Code <> '' then
                            CurrencyCode := TempCurrency.Code
                        else
                            CurrencyCode := GLSetup."LCY Code";

                        NumberOfCurrencies := NumberOfCurrencies + 1;
                    end;

                    trigger OnPreDataItem()
                    begin
                        NumberOfCurrencies := 0;
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    if NewPagePercustomer then
                        PageGroupNo += 1;
                    TempCurrency.Reset();
                    TempCurrency.DeleteAll();
                    TempCustLedgEntry.Reset();
                    TempCustLedgEntry.DeleteAll();
                    NumberOfLines += 1;
                end;
            }
            dataitem(CurrencyTotals; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                column(CurrNo; Number = 1)
                {
                }
                column(TempCurrCode; TempCurrency2.Code)
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }

                column(AgedCLE1RemAmt; AgedCustLedgEntry[1]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE2RemAmt; AgedCustLedgEntry[2]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE3RemAmt; AgedCustLedgEntry[3]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE4RemAmt; AgedCustLedgEntry[4]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE5RemAmt; AgedCustLedgEntry[5]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE6RemAmt; AgedCustLedgEntry[6]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE7RemAmt; AgedCustLedgEntry[7]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE8RemAmt; AgedCustLedgEntry[8]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE9RemAmt; AgedCustLedgEntry[9]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(AgedCLE10RemAmt; AgedCustLedgEntry[10]."Remaining Amount")
                {
                    AutoFormatExpression = CurrencyCode;
                    AutoFormatType = 1;
                }
                column(CurrSpecificationCptn; CurrSpecificationCptnLbl)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if Number = 1 then begin
                        if not TempCurrency2.FindSet(false) then
                            CurrReport.Break();
                    end else
                        if TempCurrency2.Next() = 0 then
                            CurrReport.Break();

                    Clear(AgedCustLedgEntry);
                    TempCurrencyAmount.SetRange("Currency Code", TempCurrency2.Code);
                    if TempCurrencyAmount.FindSet(false) then
                        repeat
                            if TempCurrencyAmount.Date <> DMY2Date(31, 12, 9999) then
                                AgedCustLedgEntry[GetPeriodIndex(TempCurrencyAmount.Date)]."Remaining Amount" :=
                                  TempCurrencyAmount.Amount
                            else
                                AgedCustLedgEntry[8]."Remaining Amount" := TempCurrencyAmount.Amount;
                        until TempCurrencyAmount.Next() = 0;
                end;
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
                    field(AgedAsOf; EndingDate)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Aged As Of';
                        ToolTip = 'Specifies the date that you want the aging calculated for.';
                    }
                    field(Agingby; AgingBy)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Aging by';
                        OptionCaption = 'Due Date,Posting Date,Document Date';
                        ToolTip = 'Specifies if the aging will be calculated from the due date, the posting date, or the document date.';
                    }
                    field(AmountsinLCY; PrintAmountInLCY)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Print Amounts in LCY';
                        ToolTip = 'Specifies if you want the report to specify the aging per customer ledger entry.';
                    }
                    field(PrintDetails; PrintDetails)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Print Details';
                        ToolTip = 'Specifies if you want the report to show the detailed entries that add up the total balance for each customer.';
                    }
                    field(HeadingType; HeadingType)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Heading Type';
                        OptionCaption = 'Date Interval,Number of Days';
                        ToolTip = 'Specifies if the column heading for the three periods will indicate a date interval or the number of days overdue.';
                    }
                    field(perCustomer; NewPagePercustomer)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'New Page per Customer';
                        ToolTip = 'Specifies if each customer''s information is printed on a new page if you have chosen two or more customers to be included in the report.';
                    }
                    // field(PeriodLength; PeriodLength)
                    // {
                    //     ApplicationArea = Basic, Suite;
                    //     Caption = 'Period Length';
                    //     ToolTip = 'Specifies the period for which data is shown in the report. For example, enter "1M" for one month, "30D" for thirty days, "3Q" for three quarters, or "5Y" for five years.';
                    // }

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
        // indlocSetup: Record "IND LOC Setup";
        begin
            if EndingDate = 0D then
                EndingDate := WorkDate();
            if Format(PeriodLength) = '' then
                Evaluate(PeriodLength, '<1M>');
            // indlocSetup.Get();
            // if not indlocSetup."Enable Aging Report" then
            //     Error(permissionErr);
        end;
    }

    labels
    {
        BalanceCaption = 'Balance';

    }

    trigger OnPreReport()
    var
        FormatDocument: Codeunit "Format Document";
    begin
        StartDateTime := CurrentDateTime();
        CustFilter := FormatDocument.GetRecordFiltersWithCaptions(Customer);

        GLSetup.Get();

        CalcDates();
        CreateHeadings();

        PageGroupNo := 1;
        NextPageGroupNo := 1;
        CustFilterCheck := (CustFilter <> 'No.');

        CompanyDisplayName := COMPANYPROPERTY.DisplayName();
    end;

    trigger OnPostReport()
    begin
        FinishDateTime := CurrentDateTime();
        LogReportTelemetry(StartDateTime, FinishDateTime, NumberOfLines);
    end;

    var
        NoOfPeriod: Integer;
        PeriodLengthValue: array[8] of DateFormula;
        PeriodLengthValueVisible: array[8] of Boolean;
        PeriodLengthVisible1: Boolean;
        PeriodLengthVisible2: Boolean;
        PeriodLengthVisible3: Boolean;
        PeriodLengthVisible4: Boolean;
        PeriodLengthVisible5: Boolean;
        PeriodLengthVisible6: Boolean;
        PeriodLengthVisible7: Boolean;
        GLSetup: Record "General Ledger Setup";
        CustLedgEntryEndingDate: Record "Cust. Ledger Entry";
        TotalCustLedgEntry: array[10] of Record "Cust. Ledger Entry";
        GrandTotalCustLedgEntry: array[10] of Record "Cust. Ledger Entry";
        AgedCustLedgEntry: array[10] of Record "Cust. Ledger Entry";
        TempCurrency: Record Currency temporary;
        TempCurrency2: Record Currency temporary;
        TempCurrencyAmount: Record "Currency Amount" temporary;
        DetailedCustomerLedgerEntry: Record "Detailed Cust. Ledg. Entry";
        PeriodLength: DateFormula;
        PrintAmountInLCY: Boolean;
        EndingDate: Date;
        AgingBy: Option "Due Date","Posting Date","Document Date";
        HeadingType: Option "Date Interval","Number of Days";
        NewPagePercustomer: Boolean;
        PeriodStartDate: array[10] of Date;
        PeriodEndDate: array[10] of Date;
        HeaderText: array[10] of Text[30];
        Text000: Label 'Not Due';
        AfterTok: Label 'After';
        BeforeTok: Label 'Before';
        CurrencyCode: Code[10];
        Text002: Label 'days';
        Text004: Label 'Aged by %1';
        Text005: Label 'Total for %1';
        Text006: Label 'Aged as of %1';
        Text007: Label 'Aged by %1';
        NumberOfCurrencies: Integer;
        Text009: Label 'Due Date,Posting Date,Document Date';
        Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        PageGroupNo: Integer;
        NextPageGroupNo: Integer;
        CustFilterCheck: Boolean;
        Text032Txt: Label '-%1', Comment = 'Negating the period length: %1 is the period length';
        AgedAccReceivableCptnLbl: Label 'Aged Accounts Receivable';
        CurrReportPageNoCptnLbl: Label 'Page';
        AllAmtinLCYCptnLbl: Label 'All Amounts in LCY';
        AgedOverdueAmtCptnLbl: Label 'Aged Overdue Amounts';
        CLEEndDateAmtLCYCptnLbl: Label 'Original Amount ';
        CLEEndDateDueDateCptnLbl: Label 'Due Date';
        CLEEndDateDocNoCptnLbl: Label 'Document No.';
        CLEEndDatePstngDateCptnLbl: Label 'Posting Date';
        CLEEndDateDocTypeCptnLbl: Label 'Document Type';
        OriginalAmtCptnLbl: Label 'Currency Code';
        TotalLCYCptnLbl: Label 'Total (LCY)';
        CurrSpecificationCptnLbl: Label 'Currency Specification';
        CompanyDisplayName: Text;
        TelemetryCategoryTxt: Label 'Report', Locked = true;
        AgedARReportGeneratedTxt: Label 'Aged AR Report generated.', Locked = true;

        permissionErr: Label 'You don''t have permission to run this report.';

    protected var
        TempCustLedgEntry: Record "Cust. Ledger Entry" temporary;
        NumberOfLines: Integer;
        StartDateTime: DateTime;
        FinishDateTime: DateTime;
        CustFilter: Text;
        PrintDetails: Boolean;

    local procedure CalcDates()
    var
        PeriodLength2: DateFormula;
        i: Integer;
        ErrorText: Text;
    begin
        // if (NoOfPeriod < 4) or (NoOfPeriod > 7) then begin
        //     ErrorText := 'Period Length should be between 4 and 7';
        //     Error(ErrorText);
        // END;

        for i := 1 to NoOfPeriod do begin
            if not Evaluate(PeriodLength2, StrSubstNo(Text032Txt, PeriodLengthValue[i])) then begin
                ErrorText := 'Period ' + Format(i) + ' should have value.';
                Error(ErrorText);
            end;
        end;

        if AgingBy = AgingBy::"Due Date" then begin
            PeriodEndDate[1] := DMY2Date(31, 12, 9999);
            PeriodStartDate[1] := EndingDate + 1;
        end else begin
            PeriodEndDate[1] := EndingDate;
            PeriodStartDate[1] := CalcDate(StrSubstNo(Text032Txt, PeriodLengthValue[1]), EndingDate + 1);
        end;

        for i := 2 to ArrayLen(PeriodLengthValue) do begin
            if AgingBy = AgingBy::"Due Date" then begin
                if i <= NoOfPeriod + 1 then begin
                    PeriodEndDate[i] := PeriodStartDate[i - 1] - 1;
                    PeriodStartDate[i] := CalcDate(StrSubstNo(Text032Txt, PeriodLengthValue[i - 1]), PeriodEndDate[i] + 1);
                end;
            end else begin
                if i <= NoOfPeriod then begin
                    PeriodEndDate[i] := PeriodStartDate[i - 1] - 1;
                    PeriodStartDate[i] := CalcDate(StrSubstNo(Text032Txt, PeriodLengthValue[i]), PeriodEndDate[i] + 1);
                end;
            end;
        end;

        //PeriodStartDate[i] := 0D;

        for i := 1 to ArrayLen(PeriodLengthValue) do begin
            if i > NoOfPeriod then
                break;
            if PeriodEndDate[i] < PeriodStartDate[i] then
                Error(Text010, PeriodLength);
        end;
    end;

    local procedure CreateHeadings()
    var
        i: Integer;
    begin
        if AgingBy = AgingBy::"Due Date" then begin
            HeaderText[1] := Text000;
            i := 2;
        end else
            i := 1;

        while (i <= ArrayLen(PeriodLengthValue)) do begin
            if AgingBy = AgingBy::"Due Date" then begin
                if i <= NoOfPeriod + 1 then begin
                    if HeadingType = HeadingType::"Date Interval" then
                        HeaderText[i] := StrSubstNo('%1\..%2', PeriodStartDate[i], PeriodEndDate[i])
                    else
                        HeaderText[i] :=
                          StrSubstNo('%1 - %2 %3', EndingDate - PeriodEndDate[i] + 1, EndingDate - PeriodStartDate[i] + 1, Text002);
                end else
                    break;
            end else begin
                if i <= NoOfPeriod then begin
                    if HeadingType = HeadingType::"Date Interval" then
                        HeaderText[i] := StrSubstNo('%1\..%2', PeriodStartDate[i], PeriodEndDate[i])
                    else
                        HeaderText[i] :=
                          StrSubstNo('%1 - %2 %3', EndingDate - PeriodEndDate[i] + 1, EndingDate - PeriodStartDate[i] + 1, Text002);
                end else
                    break;
            end;
            i := i + 1;
        end;


        if AgingBy = AgingBy::"Due Date" then begin
            if HeadingType = HeadingType::"Date Interval" then
                HeaderText[i] := StrSubstNo('%1 %2', BeforeTok, PeriodStartDate[i - 1])
            else
                HeaderText[i] := StrSubstNo('%1 %2 %3', AfterTok, EndingDate - PeriodStartDate[i - 1] + 1, Text002);

            i := NoOfPeriod + 1;
            PeriodStartDate[i] := 0D;
        end else begin
            if HeadingType = HeadingType::"Date Interval" then
                HeaderText[i] := StrSubstNo('%1 %2', BeforeTok, PeriodStartDate[NoOfPeriod])
            else
                HeaderText[i] := StrSubstNo('%1 %2 %3', AfterTok, EndingDate - PeriodStartDate[NoOfPeriod] + 1, Text002);
            i := NoOfPeriod;
            PeriodStartDate[i] := 0D;
        end;
        CompressArray(HeaderText);
    end;

    local procedure InsertTemp(var CustLedgEntry: Record "Cust. Ledger Entry")
    var
        Currency: Record Currency;
    begin
        if TempCustLedgEntry.Get(CustLedgEntry."Entry No.") then
            exit;
        TempCustLedgEntry := CustLedgEntry;
        TempCustLedgEntry.Insert();
        if PrintAmountInLCY then begin
            Clear(TempCurrency);
            TempCurrency."Amount Rounding Precision" := GLSetup."Amount Rounding Precision";
            if TempCurrency.Insert() then;
            exit;
        end;
        if TempCurrency.Get(TempCustLedgEntry."Currency Code") then
            exit;
        if TempCurrency.Get('') and (TempCustLedgEntry."Currency Code" = GLSetup."LCY Code") then
            exit;
        if TempCurrency.Get(GLSetup."LCY Code") and (TempCustLedgEntry."Currency Code" = '') then
            exit;
        if TempCustLedgEntry."Currency Code" <> '' then
            Currency.Get(TempCustLedgEntry."Currency Code")
        else begin
            Clear(Currency);
            Currency."Amount Rounding Precision" := GLSetup."Amount Rounding Precision";
        end;
        TempCurrency := Currency;
        TempCurrency.Insert();
    end;

    local procedure GetPeriodIndex(Date: Date): Integer
    var
        i: Integer;
    begin
        for i := 1 to ArrayLen(PeriodEndDate) do
            if i <= NoOfPeriod + 1 then begin
                if Date in [PeriodStartDate[i] .. PeriodEndDate[i]] then
                    exit(i);
            end;
    end;

    local procedure Pct(a: Decimal; b: Decimal): Text[30]
    begin
        if b <> 0 then
            exit(Format(Round(100 * a / b, 0.1), 0, '<Sign><Integer><Decimals,2>') + '%');
    end;

    local procedure UpdateCurrencyTotals()
    var
        i: Integer;
    begin
        TempCurrency2.Code := CurrencyCode;
        if TempCurrency2.Insert() then;
        for i := 1 to ArrayLen(PeriodLengthValue) do begin
            if i <= NoOfPeriod then begin
                TempCurrencyAmount."Currency Code" := CurrencyCode;
                TempCurrencyAmount.Date := PeriodStartDate[i];
                if TempCurrencyAmount.Find() then begin
                    TempCurrencyAmount.Amount := TempCurrencyAmount.Amount + TotalCustLedgEntry[i]."Remaining Amount";
                    TempCurrencyAmount.Modify();
                end else begin
                    TempCurrencyAmount."Currency Code" := CurrencyCode;
                    TempCurrencyAmount.Date := PeriodStartDate[i];
                    TempCurrencyAmount.Amount := TotalCustLedgEntry[i]."Remaining Amount";
                    TempCurrencyAmount.Insert();
                end;
            end;
        end;
        TempCurrencyAmount."Currency Code" := CurrencyCode;
        TempCurrencyAmount.Date := DMY2Date(31, 12, 9999);
        if TempCurrencyAmount.Find() then begin
            TempCurrencyAmount.Amount := TempCurrencyAmount.Amount + TotalCustLedgEntry[1].Amount;
            TempCurrencyAmount.Modify();
        end else begin
            TempCurrencyAmount."Currency Code" := CurrencyCode;
            TempCurrencyAmount.Date := DMY2Date(31, 12, 9999);
            TempCurrencyAmount.Amount := TotalCustLedgEntry[1].Amount;
            TempCurrencyAmount.Insert();
        end;
    end;

    procedure InitializeRequest(NewEndingDate: Date; NewAgingBy: Option; NewPeriodLength: DateFormula; NewPrintAmountInLCY: Boolean; NewPrintDetails: Boolean; NewHeadingType: Option; NewPagePercust: Boolean)
    begin
        EndingDate := NewEndingDate;
        AgingBy := NewAgingBy;
        PeriodLength := NewPeriodLength;
        PrintAmountInLCY := NewPrintAmountInLCY;
        PrintDetails := NewPrintDetails;
        HeadingType := NewHeadingType;
        NewPagePercustomer := NewPagePercust;
    end;

    local procedure CopyDimFiltersFromCustomer(var CustLedgerEntry: Record "Cust. Ledger Entry")
    begin
        if Customer.GetFilter("Global Dimension 1 Filter") <> '' then
            CustLedgerEntry.SetFilter("Global Dimension 1 Code", Customer.GetFilter("Global Dimension 1 Filter"));
        if Customer.GetFilter("Global Dimension 2 Filter") <> '' then
            CustLedgerEntry.SetFilter("Global Dimension 2 Code", Customer.GetFilter("Global Dimension 2 Filter"));
    end;

    local procedure LogReportTelemetry(StartDateTime: DateTime; FinishDateTime: DateTime; NumberOfLines: Integer)
    var
        Dimensions: Dictionary of [Text, Text];
        ReportDuration: BigInteger;
    begin
        ReportDuration := FinishDateTime - StartDateTime;
        Dimensions.Add('Category', TelemetryCategoryTxt);
        Dimensions.Add('ReportStartTime', Format(StartDateTime, 0, 9));
        Dimensions.Add('ReportFinishTime', Format(FinishDateTime, 0, 9));
        Dimensions.Add('ReportDuration', Format(ReportDuration));
        Dimensions.Add('NumberOfLines', Format(NumberOfLines));
        Session.LogMessage('0000FJM', AgedARReportGeneratedTxt, Verbosity::Normal, DataClassification::SystemMetadata, TelemetryScope::ExtensionPublisher, Dimensions);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnTempCustLedgEntryGetRecordOnAfterSetDetailedEntryFilters(var DetailedCustLedgEntry: Record "Detailed Cust. Ledg. Entry")
    begin
    end;
}