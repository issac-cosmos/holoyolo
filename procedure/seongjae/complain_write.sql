-- 판매자 문의 남기기
DELIMITER //
create procedure 판매자문의남기기(in inputSellerId bigint,inputDevision varchar(255), inputContents varchar(255))
begin
    insert into complaint(seller_id,division,complaint_contents) values (inputSellerId,inputDevision,inputContents);
end
// DELIMITER ;

--소비자 문의 남기기
DELIMITER //
create procedure 소비자문의남기기(in inputOrderDetailId bigint,inputConsumerId bigint,inputDevision varchar(255), inputContents varchar(255))
begin
    insert into complaint(order_detail_id,consumer_id,division,complaint_contents) values (inputOrderDetailId,inputConsumerId,inputDevision,inputContents);
end
// DELIMITER ;