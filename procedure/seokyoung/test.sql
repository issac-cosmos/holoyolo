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
CREATE procedure 회원정보조회(
in inputName varchar(255)
)

begin

    select * from consumer where name = inputName;
end
//DELIMITER ;

-------- 회원정보 수정

DELIMITER //
CREATE procedure 회원정보수정(
in inputId bigint,
in inputPhone varchar(255),
in inputPass varchar(255)
)

begin
    
    update consumer set phone_number = inputPhone, password = inputPass 
    where consumer_id = inputId;

end
//DELIMITER ;

-------- 회원탈퇴

DELIMITER //
CREATE procedure 회원탈퇴(
in inputId bigint
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '탈퇴실패' AS message;
    END;

    update consumer set quit = "Y" where consumer_id = inputId;

    SELECT '탈퇴성공' AS message;
end
//DELIMITER ;

-------- 상품등록

DELIMITER //
CREATE procedure 상품등록(
in input_Pname varchar(255),
in input_price bigint,
in input_Sid bigint,
in input_Aid bigint,
in input_Pcon varchar(3000),
in input_Pic varchar(3000)
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '등록실패' AS message;
    END;

    insert into product(product_name, price, seller_id,approve_admin_id, product_contents, picture)
    values(input_Pname, input_price, input_Sid, input_Aid, input_Pcon, input_Pic);

    SELECT '등록성공' AS message;
end
//DELIMITER ;

-------- 상품승인

DELIMITER //
CREATE procedure 상품승인(
in input_Pid bigint,
in input_Aid bigint
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '승인실패' AS message;
    END;

    update product set approve = 'y', approve_admin_id = input_Aid 
    where product_id = input_Pid;

    SELECT '승인성공' AS message;
end
//DELIMITER ;