--관리자 문의 삭제
DELIMITER //
create procedure 관리자문의삭제(in inputComplaintId bigint)
begin
    update complaint set del = 'Y' where complaint_id = inputComplaintId;
end
// DELIMITER ;