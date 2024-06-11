table 50100 "Student Table"
{
    Caption = 'Student Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application No"; Code[20])
        {
            Caption = 'Application No';
            Editable = false;
        }
        field(21; "No Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No Series';
            TableRelation = "No. Series";
        }

        field(2; "First Name"; Text[15])
        {
            Caption = 'First Name';
            trigger OnValidate()
            begin
                UpdateFullName();
            end;
        }
        field(22; "Second Name"; Text[15])
        {
            Caption = 'Second Name';
            trigger OnValidate()
            begin
                UpdateFullName();
            end;
        }
        field(3; "Full Name"; Text[30])
        {
            Editable = false;
            Caption = 'Full Name';
        }
        field(4; Nationality; Text[20])
        {
            Caption = 'Nationality';
        }
        field(5; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }


        field(8; "Phone Number"; code[15])
        {
            Caption = 'Phone Number';
            trigger OnValidate()
            var
                Publisher: Codeunit MyPublishers;
            begin
                Publisher.OnChangePhoneNumberField(Rec."Phone Number");
            end;


        }
        field(9; Email; Text[30])
        {
            Caption = 'Email';

        }
        field(10; "Name of Father"; Text[20])
        {
            Caption = 'Name of Father';
        }
        field(11; "Fathers Phone Number"; Text[15])
        {
            Caption = 'Phone Number';
            trigger OnValidate()
            var
                Publisher: Codeunit MyPublishers;
            begin
                Publisher.OnChangePhoneNumberField(Rec."Fathers Phone Number");
            end;
        }
        field(12; Occupation; Text[20])
        {
            Caption = 'Occupation';
        }
        field(13; DeceasedM; Boolean)
        {
            Caption = 'Deceased';
        }
        field(14; "Name of Mother"; Text[20])
        {
            Caption = 'Name of Mother';
        }
        field(15; "Mother's Phone Number"; Text[15])
        {
            Caption = 'Phone Number';
        }
        field(16; "Mother's Occupation"; Text[20])
        {
            Caption = 'Occupation';
        }
        field(17; Deceased; Boolean)
        {
            Caption = 'Deceased';
        }
        field(18; "KCSE Grade"; Option)
        {
            OptionMembers = A,"A-","B+",B,"B-",C,"C+","D+","D","D-","E";
            DataClassification = ToBeClassified;
            Caption = 'KCSE Grade';
        }
        field(19; "Courses "; Text[20])
        {
            Caption = 'Courses ';
        }
        field(20; "Education Level Completed"; Option)
        {
            OptionMembers = "Primary School","Secondary School","College Level","University Level";
            Caption = 'Education Level Completed';
        }
        field(23; Gender; Option)
        {
            Caption = 'Gender';
            OptionMembers = Male,Female,"Prefer not to say";
        }
    }
    keys
    {
        key(PK; "Application No")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "Application No" = '' then begin
            NoSeriesMgt.InitSeries('APL', xRec."No Series", 0D, "Application No", "No Series");
        end;
        UpdateFullName();
    end;

    trigger OnModify()
    begin
        UpdateFullName();
    end;

    procedure UpdateFullName()
    begin
        "Full Name" := "First Name" + ' ' + "Second Name";
    end;
}
