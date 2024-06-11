report 50100 "Student Report "
{
    ApplicationArea = All;
    Caption = 'Student Report ';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'layouts/StudentsReport.RDL';

    dataset
    {
        dataitem(StudentTable; "Student Table")
        {
            column(ApplicationNo; "Application No")
            {
            }
            column(FirstName; "First Name")
            {
            }
            column(SecondName; "Second Name")
            {
            }
            column(FullName; "Full Name")
            {
            }
            column(Nationality; Nationality)
            {
            }
            column(PhoneNumber; "Phone Number")
            {
            }
            column(Email; Email)
            {
            }
            column(Courses; "Courses ")
            {
            }
            column(DateofBirth; "Date of Birth")
            {
            }
            column(Deceased; Deceased)
            {
            }
            column(DeceasedM; DeceasedM)
            {
            }
            column(EducationLevelCompleted; "Education Level Completed")
            {
            }
            column(FathersPhoneNumber; "Fathers Phone Number")
            {
            }
            column(Gender; Gender)
            {
            }
            column(KCSEGrade; "KCSE Grade")
            {
            }
            column(MothersOccupation; "Mother's Occupation")
            {
            }
            column(MothersPhoneNumber; "Mother's Phone Number")
            {
            }
            column(NameofFather; "Name of Father")
            {
            }
            column(NameofMother; "Name of Mother")
            {
            }
            column(Occupation; Occupation)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
