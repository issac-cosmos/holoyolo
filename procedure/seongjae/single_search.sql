-- 단일조회
DELIMITER //
create procedure 주문단일조회(in inputConsumerId bigint, inputOrderId bigint)
begin
    select ol.order_id,c.consumer_id,c.name,product_name from consumer c inner join order_list ol on c.consumer_id = ol.consumer_id 
    inner join order_detail od on ol.order_id = od.order_id 
    inner join product p on p.product_id = od.product_id where c.consumer_id = inputConsumerId and ol.order_id = inputOrderId;
end
// DELIMITER ;