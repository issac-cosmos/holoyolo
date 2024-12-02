-- 상품 구매
DELIMITER //
create procedure 상품구매(in inputCustomerId bigint,inputOrderId bigint,inputProduct_id bigint,inputQuantity bigint,inputRequest varchar(255))
begin
    insert into order_list(consumer_id) values (inputCustomerId);
    insert into order_detail(order_id,product_id,quantity,requests) values (inputOrderId,inputProduct_id,inputQuantity,inputRequest);
end
// DELIMITER ;
