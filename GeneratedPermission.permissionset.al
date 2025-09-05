permissionset 99657 "AgingReport"
{
    Assignable = true;
    Permissions = report "3KT Aged Accounts Payable" = X,
        report "3KT Aged Accounts Receivable" = X,
        report "Item Age Composition Qty-Value" = X,
        report "Stock Aging Report " = X,
        codeunit "Event Handler" = X,
        report "Stock Aging Qty-Value" = X,
        report "Update ILE Manufacturer Date" = X;
}