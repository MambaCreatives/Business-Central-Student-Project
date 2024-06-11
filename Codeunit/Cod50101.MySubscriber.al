codeunit 50101 MySubscriber
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublishers, 'OnChangePhoneNumberField', '', false, false)]
    local procedure OnChangePhoneNumberFieldSubscriber(code: code[50])

    var
        ErrorMessage: Label 'Invalid phone, must begin with +, must be 13 dits';
    begin
        if not VaidatePhoneNumber(Code) then
            Error(ErrorMessage);
    end;


    local procedure VaidatePhoneNumber(PhoneNumber: code[20]): Boolean
    var
        i: Integer;
    begin
        if PhoneNumber[1] <> '+' then
            Error('Does not start with phone');


        for i := 2 to StrLen(PhoneNumber) do begin
            if not (PhoneNumber[i] in ['0' .. '9']) then
                exit(false);


        end;

        if StrLen(PhoneNumber) <> 13 then
            exit(false);

        exit(true);



    end;


}
