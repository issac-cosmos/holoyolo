--판매자 전체문의 조회
DELIMITER //
create procedure 판매자전체문의조회(in inputSellerId bigint)
begin
    select * from complaint where seller_id = inputSellerId;
end
// DELIMITER ;

--소비자 전체문의 조회
DELIMITER //
create procedure 소비자전체문의조회(in inputConsumerId bigint)
begin
    select * from complaint where consumer_id = inputConsumerId;
end
// DELIMITER ;

--판매자 단일문의 조회
DELIMITER //
create procedure 판매자단일문의조회(in inputConsumerId bigint, inputComplaintId bigint)
begin
    select * from complaint where seller_id = inputConsumerId and complaint_id = inputComplaintId;
end
// DELIMITER ;

--소비자 단일문의 조회
DELIMITER //
create procedure 소비자단일문의조회(in inputConsumerId bigint,inputComplaintId bigint)
begin
    select * from complaint where consumer_id = inputConsumerId and complaint_id = inputComplaintId;
end
// DELIMITER ;