pageextension 99666 "Item Ledger Entries Ext" extends "Item Ledger Entries"
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
    actions
    {
        addlast("Ent&ry")
        {
            action("UndoManufacturerDate")
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    EventHandler: Codeunit "Event Handler";
                begin
                    EventHandler.UndoManufacturerDate();
                    Message('Manufacturer Date has been reset.');
                end;
            }
        }
    }
}
