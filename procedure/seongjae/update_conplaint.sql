--소비자 문의글 수정
DELIMITER //
create procedure 소비자문의수정(in inputConsumerId bigint,inputComplaintId bigint,inputDivision varchar(255),inputComplaintContents varchar(255))
begin
    update complaint set division = inputDivision, complaint_contents = inputComplaintContents 
    where consumer_id=inputConsumerId and complaint_id = inputComplaintId; 
end
// DELIMITER ;

--판매자 문의글 수정
DELIMITER //
create procedure 판매자문의수정(in inputSellerId bigint,inputComplaintId bigint,inputDivision varchar(255),inputComplaintContents varchar(255))
begin
    update complaint set division = inputDivision, complaint_contents = inputComplaintContents 
    where Seller_id=inputSellerId and complaint_id = inputComplaintId; 
end
// DELIMITER ;

