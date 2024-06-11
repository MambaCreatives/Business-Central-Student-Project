page 50104 "Enrolled Card"
{
    ApplicationArea = All;
    Caption = 'Enrolled Card';
    PageType = Card;
    SourceTable = "Enrolled Students";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Course Application ID"; Rec."Course Application ID")
                {
                    ToolTip = 'Specifies the value of the Course Application ID field.', Comment = '%';
                }
                field("Students  Name"; Rec."Students  Name")
                {
                    ToolTip = 'Specifies the value of the Students  Name field.', Comment = '%';
                }
                field("Course applied"; Rec."Course applied")
                {
                    ToolTip = 'Specifies the value of the Course applied field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }
}
