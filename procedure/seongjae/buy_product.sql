-- 상품 구매
DELIMITER //
create procedure 상품구매(in inputCustomerId bigint,inputProduct_id bigint,inputQuantity bigint,inputRequest varchar(255))
begin
    insert into order_list(consumer_id) values (inputCustomerId)
    insert into order_detail() values 
end
// DELIMITER ;