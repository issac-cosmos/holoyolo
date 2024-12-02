DELIMITER //
create procedure 글쓰기(in inputTitle varchar(255), in inputContents varchar(255), in inputEmail varchar(255)
begin
    declare authorId bigint;
    declare postId bigint;
    insert into post(title, contents) valuse(inputTitle, inputContents);
    select id into postId from post order by id desc limit 1;
    select id into authorId from author where email = inputEmail;
    insert into author_post(author_id, post_id) values(authorId,postId);
end
//DELIMITER ;

--------------회원가입
DELIMITER //
CREATE procedure PROCEDURE 회원가입(
in inputName varchar(255), 
in inputPhone varchar(255),
in inputEmail varchar(255),
in inputPass varchar(255)
 )
BEGIN
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '가입실패' AS message;
    END;
    
    -- 회원가입 처리
    INSERT INTO consumer(name, phone_number, email, password)
    VALUES(inputName, inputPhone, inputEmail, inputPass);

    -- 성공 시 메시지 출력
    SELECT '가입성공' AS message;
END
//DELIMITER ;


-------- 회원정보 조회

DELIMITER //
create procedure 회원정보조회(in inputTitle varchar(255), in inputContents varchar(255), in inputEmail varchar(255)
begin
    declare authorId bigint;
    declare postId bigint;
    insert into post(title, contents) valuse(inputTitle, inputContents);
    select id into postId from post order by id desc limit 1;
    select id into authorId from author where email = inputEmail;
    insert into author_post(author_id, post_id) values(authorId,postId);
end
//DELIMITER ;