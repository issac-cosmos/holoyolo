DELIMITER //
create procedure 주문취소(in inputOrderId bigint)
begin
    update order_list set cancel = 'Y' where order_id=inputOrderId; 
end
// DELIMITER ;