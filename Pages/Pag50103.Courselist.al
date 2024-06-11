page 50103 Courselist
{
    ApplicationArea = All;
    Caption = 'Courselist';
    PageType = List;
    SourceTable = "Course table";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Course ID"; Rec."Course ID")
                {
                    ToolTip = 'Specifies the value of the Course ID field.', Comment = '%';
                }
                field("Course Name"; Rec."Course Name")
                {
                    ToolTip = 'Specifies the value of the Course Name field.', Comment = '%';
                }
            }
        }
    }
}
