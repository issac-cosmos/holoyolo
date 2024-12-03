DELIMITER //
CREATE PROCEDURE RegisterAnswer(
    IN p_complaint_id BIGINT,
    IN p_admin_id BIGINT,
    IN p_answer VARCHAR(3000)
)
BEGIN
    INSERT INTO answer (complaint_id, admin_id, answer, created_time)
    VALUES (p_complaint_id, p_admin_id, p_answer, CURRENT_TIMESTAMP);
    select "답변이 등록되었습니다" as message;
END
//DELIMITER ;

CALL RegisterAnswer(1, 10, '이 문제는 해결되었습니다. 감사합니다.');

-- 답변수정
DELIMITER //
CREATE PROCEDURE UpdateAnswer(
    IN p_answer_id BIGINT,
    IN p_admin_id BIGINT,
    IN p_new_answer VARCHAR(3000))
BEGIN
    UPDATE answer
    SET answer = p_new_answer, created_time = CURRENT_TIMESTAMP()
    WHERE 
        answer_id = p_answer_id
        AND admin_id = p_admin_id;
        select "수정되었습니다." as message; END// DELIMITER ;
CALL UpdateAnswer(10, 11, '수정된 답변 내용입니다.');

-- 답변삭제
DELIMITER //
CREATE procedure 답변삭제(
in input_answer_id bigint,
in input_consumer_id bigint
) begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '삭제실패' AS message;
    END;
    update board 
    set del = 'Y'
    where answer_id = input_answer_id and consumer_id = input_consumer_id;
    SELECT '삭제성공' AS message;
end
//DELIMITER ;

call 답변삭제(1,1);