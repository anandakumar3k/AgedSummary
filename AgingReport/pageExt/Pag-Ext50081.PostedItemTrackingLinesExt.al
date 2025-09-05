pageextension 99664 PostedItemTrackingLinesExt extends "Posted Item Tracking Lines"
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
            }
        }
    }
}