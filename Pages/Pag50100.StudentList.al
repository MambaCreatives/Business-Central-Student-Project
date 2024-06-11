page 50100 StudentList
{
    ApplicationArea = All;
    Caption = 'StudentList';
    PageType = List;
    SourceTable = "Student Table";
    UsageCategory = Lists;
    CardPageId = StudentCard;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Application No"; Rec."Application No")
                {
                    ToolTip = 'Specifies the value of the Application ID field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';

                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
            }
        }
    }
}
