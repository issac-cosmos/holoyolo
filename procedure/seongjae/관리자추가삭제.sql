--관리자 추가
DELIMITER //
create procedure 관리자추가(in inputName varchar(255), inputEmail varchar(255), inputPassword varchar(255))
begin
    insert into admin(name,email,password) values (inputName,inputEmail,inputPassword);
end
// DELIMITER ;

--관리자 삭제
create procedure 관리자삭제(in inputAdminID bigint)
begin
    update admin set del = 'Y' where admin_id=inputAdminID;
end
// DELIMITER ;