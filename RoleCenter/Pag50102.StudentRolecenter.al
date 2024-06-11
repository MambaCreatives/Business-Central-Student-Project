page 50102 "Student Rolecenter"
{
    ApplicationArea = All;
    Caption = 'Student Rolecenter';
    PageType = RoleCenter;
    SourceTable = "Student Table";

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(part1; "Approvals Activities")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group("Application Form")
            {


                action("StudentList")
                {
                    ApplicationArea = All;
                    RunObject = page "StudentList";

                }
                action("Course table")
                {
                    ApplicationArea = All;
                    RunObject = page "Courselist";

                }
                action("Enrolled Students")
                {
                    ApplicationArea = All;
                    RunObject = page "Enrolled List";

                }



            }
        }
        area(Reporting)
        {
            action("Student Report")
            {
                ApplicationArea = All;
                RunObject = Report "Student Report ";
            }

        }
    }
}
profile MyProfile
{
    ProfileDescription = 'Sample Profile';
    RoleCenter = "Student Rolecenter";
    Caption = 'My Profile';
}
