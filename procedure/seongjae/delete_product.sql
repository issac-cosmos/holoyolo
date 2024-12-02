--상품삭제
ELIMITER //
create procedure 상품삭제(in inputProductId bigint)
begin
    update product set del = 'Y' where product_id=inputProductId;
end
// DELIMITER ;