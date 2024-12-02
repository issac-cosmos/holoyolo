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