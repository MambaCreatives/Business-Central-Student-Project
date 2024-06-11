table 50102 "Enrolled Students"
{
    Caption = 'Enrolled Students';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Application ID"; Code[20])
        {
            Caption = 'Course Application ID';
        }
        field(2; "Students  Name"; Text[50])
        {
            Caption = 'Students  Name';
        }
        field(3; "Course applied"; Text[50])
        {
            Caption = 'Course applied';
        }
        field(4; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Approved,Pending;
        }
    }
    keys
    {
        key(PK; "Course Application ID")
        {
            Clustered = true;
        }
    }
}
