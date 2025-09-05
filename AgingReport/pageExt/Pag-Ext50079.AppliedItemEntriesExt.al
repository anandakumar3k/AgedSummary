pageextension 99662 AppliedItemEntriesExt extends "Applied Item Entries"
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