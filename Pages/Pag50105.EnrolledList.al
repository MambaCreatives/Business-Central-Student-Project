page 50105 "Enrolled List"
{
    ApplicationArea = All;
    Caption = 'Enrolled List';
    PageType = List;
    SourceTable = "Enrolled Students";
    UsageCategory = Lists;
    CardPageId = "Enrolled Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Course Application ID"; Rec."Course Application ID")
                {
                    ToolTip = 'Specifies the value of the Course Application ID field.', Comment = '%';
                }
                field("Students  Name"; Rec."Students  Name")
                {
                    ToolTip = 'Specifies the value of the Students  Name field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }
}
