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

-------- 상품단일조회(검색)

DELIMITER //
CREATE procedure 상품단일조회(
in input_Pname varchar(255)
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '검색실패' AS message;
    END;

    select * from product
    where product_name like CONCAT('%', inputPname, '%');

end
//DELIMITER ;

-------- 상품수정

DELIMITER //
CREATE procedure 상품수정(
in input_Pid bigint,
in input_Pname varchar(255),
in input_Price bigint,
in input_Sid bigint,
in input_Pcon varchar(3000),
in input_Ppic varchar(3000)
)

begin

    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '수정실패' AS message;
    END;

    update product 
    set product_name = input_Pname, 
        price = input_Price,
        product_contents = input_Pcon,
        picture = input_Ppic
    where product_id = input_Pid and seller_id = input_Sid;

    SELECT '수정성공' AS message;
end
//DELIMITER ;


-------- 게시글 삭제

DELIMITER //
CREATE procedure 게시글삭제(
in input_Bid bigint,
in input_Cid bigint
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '삭제실패' AS message;
    END;

    update board 
    set del = 'Y'
    where board_id = input_Bid and consumer_id = input_Cid;

    SELECT '삭제성공' AS message;
end
//DELIMITER ;

-------- 댓글등록

DELIMITER //
CREATE procedure 댓글등록(
in input_Bid bigint,
in input_Bcon varchar(3000)
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '댓글등록실패' AS message;
    END;

    insert into comment(board_id, contents)
    values(input_Bid, input_Bcon);

    SELECT '댓글등록성공' AS message;
end
//DELIMITER ;

-------- 댓글수정

DELIMITER //
CREATE procedure 댓글수정(
in input_Cid bigint,
in input_Pass bigint,
in input_Bcon varchar(3000)
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '댓글수정실패' AS message;
    END;

    update comment set contents = input_Bcon
    where comment_id = input_Cid and password = input_Pass;

    SELECT '댓글수정성공' AS message;
end
//DELIMITER ;

-------- 댓글삭제

DELIMITER //
CREATE procedure 댓글삭제(
in input_Cid bigint,
in input_Pass bigint
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '댓글삭제실패' AS message;
    END;

    update comment set del = 'Y'
    where comment_id = input_Cid and password = input_Pass;

    SELECT '댓글삭제성공' AS message;
end
//DELIMITER ;

-------- 게시글 등록

DELIMITER //
CREATE procedure 게시글등록(
in input_Btitle varchar(255),
in input_Bcon varchar(3000),
in input_Pid bigint,
in input_Cid bigint
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '등록실패' AS message;
    END;

    insert into board(board_title, board_contents, product_id, consumer_id)
    values(input_Btitle, input_Bcon, input_Pid, input_Cid);

    SELECT '등록성공' AS message;
end
//DELIMITER ;