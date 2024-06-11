table 50101 "Course table"
{
    Caption = 'Course table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course ID"; Integer)
        {
            Caption = 'Course ID';
            AutoIncrement = true;
        }
        field(2; "Course Name"; Code[50])
        {
            Caption = 'Course Name';
        }
    }
    keys
    {
        key(PK; "Course ID", "Course Name")
        {
            Clustered = true;
        }
    }
}
