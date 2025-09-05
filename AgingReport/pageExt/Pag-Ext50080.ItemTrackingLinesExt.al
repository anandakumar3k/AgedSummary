pageextension 99663 ItemTrackingLinesExt extends "Item Tracking Lines"
{
    layout
    {
        addlast(Control1)
        {
            field("Manufacturer Date"; Rec."Manufacturer Date")
            {
                ApplicationArea = All;
                Caption = 'Manufacturer Date';
                ToolTip = 'Manufacturer Date';
                Editable = ExpirationDateEditable;
            }
        }
    }
}