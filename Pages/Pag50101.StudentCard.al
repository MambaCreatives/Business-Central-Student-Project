page 50101 StudentCard
{
    ApplicationArea = All;
    Caption = 'StudentCard';
    PageType = Card;
    SourceTable = "Student Table";


    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Application No"; Rec."Application No")
                {
                    ToolTip = 'Specifies the value of the Application ID field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Second Name"; Rec."Second Name")
                {
                    ToolTip = 'Specifies the value of the Second Name field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
            }
            group("Personal Details")
            {
                Caption = 'Personal Details';
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }

                field("Courses "; Rec."Courses ")
                {
                    ToolTip = 'Specifies the value of the Courses  field.', Comment = '%';
                    TableRelation = "Course table"."Course Name";
                }
                field("KCSE Grade"; Rec."KCSE Grade")
                {

                    ToolTip = 'Specifies the value of the KCSE Grade field.', Comment = '%';
                }
                field(Nationality; Rec.Nationality)
                {
                    TableRelation = "Country/Region"."ISO Numeric Code";

                    ToolTip = 'Specifies the value of the Nationality field.', Comment = '%';
                }

                field("Phone Number"; Rec."Phone Number")
                {
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                }
                field("Education Level Completed"; Rec."Education Level Completed")
                {
                    ToolTip = 'Specifies the value of the Education Level Completed field.', Comment = '%';

                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender.', Comment = '%';


                }
            }
            group("Father's Details")
            {
                Caption = 'Father Details';
                field("Name of Father"; Rec."Name of Father")
                {
                    ToolTip = 'Specifies the value of the Name of Father field.', Comment = '%';
                }
                field("Fathers Phone Number"; Rec."Fathers Phone Number")
                {
                    ToolTip = 'Specifies the value of the Fathers Phone Number field.', Comment = '%';
                }
                field(Occupation; Rec.Occupation)
                {
                    ToolTip = 'Specifies the value of the Occupation field.', Comment = '%';
                }
                field(Deceased; Rec.Deceased)
                {
                    ToolTip = 'Specifies the value of the Deceased field.', Comment = '%';
                }

            }
            group("Mother's Details")
            {
                Caption = 'Mother Details';
                field("Name of Mother"; Rec."Name of Mother")
                {
                    ToolTip = 'Specifies the value of the Name of Mother field.', Comment = '%';
                }
                field("Mother's Occupation"; Rec."Mother's Occupation")
                {
                    ToolTip = 'Specifies the value of the Mother''s Occupation field.', Comment = '%';
                }
                field("Mother's Phone Number"; Rec."Mother's Phone Number")
                {
                    ToolTip = 'Specifies the value of the Mother''s Phone Number field.', Comment = '%';
                }
                field(DeceasedM; Rec.DeceasedM)
                {
                    ToolTip = 'Specifies the value of the Deceased field.', Comment = '%';
                }
            }

        }
    }
    actions
    {
        area(processing)
        {
            action(StudentEnroll)
            {
                Caption = 'Enroll Student';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    EnrollStudent();
                end;
            }
        }
    }
    var
        EnrolledApplications: Record "Enrolled Students";

    local procedure EnrollStudent()
    begin
        EnrolledApplications.Init();

        EnrolledApplications.SetRange("Course Application ID", Rec."Application No");

        if EnrolledApplications.FindFirst() then begin
            Message('Student %1 is already enrolled', Rec."Full Name");
            exit;
        end;

        EnrolledApplications."Course Application ID" := Rec."Application No";
        EnrolledApplications."Course applied" := Rec."Courses ";
        EnrolledApplications."Students  Name" := Rec."Full Name";
        EnrolledApplications.Insert();
        Message('Student %1 has been enrolled succesfully', EnrolledApplications."Students  Name");


    end;
}




















