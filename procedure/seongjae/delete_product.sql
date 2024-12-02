--상품삭제
DELIMITER //
create procedure 상품삭제(in inputTitle varchar(255), inputContents varchar(255),inputEmail varchar(255))
begin
   declare authorId bigint;
   declare postId bigint;
   insert into post(title,contents) values(inputTitle, inputContents);
   select id into postId from post order by id desc limit 1;
   select id into authorId from author where email = inputEmail;
   insert into author_post(author_id, post_id) values(authorId,postId);
end
// DELIMITER ;

DELIMITER //
create procedure 상품삭제(in inputProductId bigint, inputSellerId bigint)
begin
    if seller_id = inputSellerId then
      delete from product where product_id = inputProductId
    end if;
end
// DELIMITER ;