--소비자와 판매자가 문의글을 올린다.
-- 소비자id or 판매자id
DELIMITER //
create procedure RegisterInquiry(in order_detail_id, in consumer_id, in seller_id ,in division, in complaint_contents)
begin
    insert into complaint(order_detail_id, consumer_id, seller_id, division, complaint_contents) values(order_detail_id,consumer_id,division,complaint_contents);
    select '문의 등록' as message;
end
// DELIMITER ;

call RegisterInquiry(2,3,null,'배송문의','배송이 너무 늦어요');


--문의 등록
DELIMITER //
create procedure RegisterInquiry(in order_detail_id bigint, in consumer_id bigint, in seller_id bigint,in division varchar(255),
 in complaint_contents varchar(3000))
begin
    insert into complaint(order_detail_id, consumer_id, seller_id, division, complaint_contents) 
    values(order_detail_id,consumer_id, null,division,complaint_contents);
    select '문의 등록' as message;
end
// DELIMITER ;

call RegisterInquiry(2,3,null,"상품문의","상품이 변질됐어요");


--문의글 전체조회
DELIMITER //
create procedure ViewAllPosts()
begin
    select * from complaint;
end
// DELIMITER ;

call ViewAllPosts();



-- 문의글 단일 조회
DELIMITER //
create procedure 게시글id단건조회(in postid bigint)
begin
    select * from complaint where complaint_id = postid;
end
// DELIMITER ;

call 게시글id단건조회(1);


-- 문의글 수정
DELIMITER //
create procedure 문의글수정(in post_id bigint, in complaint_contents varchar(3000))
begin
    IF NOT EXISTS (SELECT * FROM complaint WHERE complaint_id = complaint_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'complaint does not exist.';
    END IF;
    UPDATE complaint
    SET complaint_contents = COALESCE(complaint_contents, complaint_contents), 
        created_time = CURRENT_TIMESTAMP  WHERE complaint_id = post_id;
    select "문의글이 성공적으로 문의되었습니다." as message;
end
// DELIMITER ;

call 문의글수정(1, '상품이 마음에 들지 않아서 교환할 수 있나요?');


-- 문의글 삭제
DELIMITER //
create procedure 글삭제(in complaintId bigint,in inputconsumerid bigint)
begin
    declare complainpostdel bigint;
    select complaint_id into complainpostdel from complaint 
    where complaint_id = complaintId and consumer_id = inputconsumerid limit 1;
    if complainpostdel = complaintId then
		update complaint
        set del = 'y'
        where complaint_id = complaintId and consumer_id = inputconsumerid;
        select '글삭제에 성공했습니다.' as message;
	else
		select '글삭제에 실패했습니다.' as message;
    end if;
end
// DELIMITER ;

-- 성공 
call 글삭제(1,30);
-- 실패
call 글삭제(1,29);


-- 답변 조회

DELIMITER //
CREATE PROCEDURE 답변조회 (
    IN inputconsumerid BIGINT, 
    IN complaintid BIGINT
)
BEGIN
    DECLARE complaint_id_cnt BIGINT;
    DECLARE answerid BIGINT;

    SELECT COUNT(*) INTO complaint_id_cnt FROM complaint WHERE complaint_id = complaintid;

    IF complaint_id_cnt >= 1 THEN
        SELECT answer_id INTO answerid FROM answer WHERE complaint_id = complaintid LIMIT 1;
        IF answerid IS NOT NULL THEN
            SELECT answer FROM answer WHERE complaint_id = complaintid;
        ELSE
            SELECT "답변이 존재하지 않습니다" AS message;
        END IF;
    ELSE
        SELECT "등록된 글이 없습니다" AS message;
    END IF;
END;
//
DELIMITER ;

--성공
call 답변조회(1,1);
--실패
call 답변조회(1,2)


-- QA등록
DELIMITER //

CREATE PROCEDURE QA등록 (
    IN inputanswerid BIGINT, 
    IN inputcomplaintid BIGINT,
    IN adminid BIGINT
)
BEGIN
    DECLARE answercheck BIGINT;

    SELECT COUNT(*) 
    INTO answercheck 
    FROM answer 
    WHERE answer_id = inputanswerid;

    IF answercheck = 0 THEN
        INSERT INTO answer(answer_id, complaint_id, admin_id ,answer) 
        VALUES (inputanswerid, inputcomplaintid, adminid ,"힘들어요");
        select * from answer;
    ELSE
        SELECT "이미 존재하는 Answer ID 입니다." AS message;
    END IF;
END;
//
DELIMITER ;
--성공
call QA등록(30,30,10); --complaint 30,30데이터 삭제 필수
--실패
call QA등록(32,32,1);


--QA전체조회
DELIMITER //
create procedure 관리자QA조회(in complaintid bigint, in adminid bigint)
begin
select answer from answer a left join admin ad on a.admin_id = ad.admin_id where complaint_id = complaintid;
end;
// DELIMITER ;

call 관리자QA조회(1,4);

--QA단일 조회
DELIMITER //

CREATE PROCEDURE 관리자QA단일조회 (
    IN complaintid BIGINT, 
    IN adminid BIGINT, 
    IN answerid BIGINT
)
BEGIN
    DECLARE answercheck VARCHAR(255);

    -- 조건에 맞는 answer 조회
    SELECT a.answer 
    INTO answercheck
    FROM answer a
    LEFT JOIN admin ad ON a.admin_id = ad.admin_id
    WHERE a.complaint_id = complaintid
      AND a.answer_id = answerid
      AND ad.admin_id = adminid
    LIMIT 1;

    -- 조건에 따라 결과 출력
    IF answercheck IS NOT NULL THEN
        SELECT answercheck AS Answer;
    ELSE
        SELECT "조회할 수 없습니다" AS Message;
    END IF;
END;
//
DELIMITER ;
