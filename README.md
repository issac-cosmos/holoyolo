# be11-1st-2team-holoyolo
![HOLOYOLO_](https://github.com/user-attachments/assets/a4895d9f-4f23-477e-a28c-65f9f4b95ca2)
<br>
<br>
<hr>

##😄 팀원 소개

<table>  
  <tbody>
    <tr>
      <td align="center"><a href="https://github.com/issac-cosmos"><img src="https://github.com/user-attachments/assets/4b3bf3b1-723f-4051-bb67-4727194e6e14" width="150px" height="150px" alt=""/><br /><sub><b>팀장 : 경수혁 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/ghdtjrdud"><img src="https://github.com/user-attachments/assets/ab4bebe9-8e2b-4095-b594-1cc5c7b0e729" width="150px" height="150px" alt=""/><br /><sub><b>팀원 : 홍석영 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/LSJ0621"><img src="https://github.com/user-attachments/assets/8d42a2d6-30ff-489a-a5f0-ac9a2085695b" width="150px" height="150px" alt=""/><br /><sub><b>팀원 : 임성재 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/leejaeseok-98"><img src="https://github.com/user-attachments/assets/3c5e647d-f998-44bc-9066-201c8e39cfef" width="150px" height="150px" alt=""/><br /><sub><b>팀원 : 이재석 </b></sub></a><br /></td>
    </tr>
  </tbody>
</table>
<br>
<hr> 
<br>

## 💡 프로젝트 소개 
![chart506501_1Img](https://github.com/user-attachments/assets/34df2469-95f3-4c9f-b94f-823746ea3eb1)
<br>
<br>
<hr> 

1인 가구의 비율은 매년 증가하며, 2030년에는 전체 가구의 절반에 이를 것으로 예상됩니다. 

그러나 대량 구매 중심의 기존 유통 구조는 1인 가구의 니즈를 충족시키지 못하고 있습니다. 

"holoyolo"는 소량 구매를 통해 1인 가구의 삶을 더 간편하고 경제적으로 만들어주는 쇼핑몰입니다.

또한 상품에 대한 궁금증이나 후기를 게시판을 통해 소통하며 

다양한 생필품과 식료품을 손쉽게 탐색하고 구매할 수 있는 경험을 할 수 있게 됩니다.

효율적이고 경제적인 쇼핑 경험을 제공하는 Holoyolo를 통해서 합리적인 소비를 실현하시기 바랍니다.




## 📅 WBS (Work Breakdown Structure)
[[WBS 바로가기]](https://docs.google.com/spreadsheets/d/1I-X2Yt3x4-TamI248LvcQSrOWK3tgOYOPnZZxJbMf00/edit?gid=0#gid=0)<Br> 
<br> 
![last1](https://github.com/user-attachments/assets/14f66dd5-5744-404b-b435-5cb79100707e)
<br>
<br>
<hr>


## 📝 요구사항정의서
[요구사항 정의서 바로가기](https://docs.google.com/spreadsheets/d/1I-X2Yt3x4-TamI248LvcQSrOWK3tgOYOPnZZxJbMf00/edit?gid=1715097840#gid=1715097840)<Br>
<br>
![222](https://github.com/user-attachments/assets/bf80eea3-d95e-4576-8e9c-9c70a9844542)
<br>
<br>
<hr>


## 🎨 ERD
[ERD 바로가기](https://www.erdcloud.com/d/w3vjmKXswS97NNjpX)<Br>
<br>
![last 2](https://github.com/user-attachments/assets/2bfe6a41-088c-4d40-8478-3a390ee3ac4f)
<br>
<br>
<hr>


## 📑 DDL
<details>
	<summary>🖇️ 자세히</summary>
	<br> 
 
 ```sql  
CREATE DATABASE shopping;
use shopping;
ALTER DATABASE shopping DEFAULT CHARACTER SET = utf8mb4;

create table consumer(
consumer_id BIGINT auto_increment primary key not null, 
name varchar(255) not null, 
phone_number varchar(255) not null,
email varchar(255) not null,
password varchar(255) not null,
created_time datetime not null default current_timestamp(),
quit enum('Y','N') not null default 'N'
 );

  alter table consumer modify column email varchar(255) not null unique;

CREATE TABLE seller (
    seller_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    quit enum('Y', 'N') DEFAULT 'N'
);

CREATE TABLE admin (
    admin_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    del enum ('Y', 'N') Not Null default 'N'
);

CREATE TABLE address (
    address_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    consumer_id BIGINT NOT NULL,
    FOREIGN KEY (consumer_id) REFERENCES consumer(consumer_id),
    address_city VARCHAR(255) NOT NULL,
    address_line1 VARCHAR(255) NOT NULL,
    address_line2 VARCHAR(255) NOT NULL,
    address_type VARCHAR(3000) NOT NULL
);

create table order_list(
order_id bigint auto_increment not null primary key,
consumer_id bigint not null,
order_time datetime not null default current_timestamp(),
cancel enum ('Y','N') not null default 'N',
foreign key(consumer_id) references consumer(consumer_id)
);

CREATE TABLE product (
    product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price BIGINT NOT NULL,
    seller_id bigint not null,
    approve_admin_id bigint  null,
    FOREIGN KEY (approve_admin_id) REFERENCES admin(admin_id),
    FOREIGN KEY (seller_id) REFERENCES seller(seller_id),
    product_contents VARCHAR(3000) NOT NULL,
    picture VARCHAR(3000) NOT NULL,
    approve ENUM('y', 'n') NOT NULL DEFAULT 'y',
    del enum ('Y', 'N') Not Null default 'N'
);

CREATE TABLE board (
    board_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    board_title VARCHAR(255) NOT NULL,
    board_contents VARCHAR(3000) NOT NULL,
    created_time DATETIME NOT NULL default current_timestamp(),
    product_id BIGINT NOT NULL,
    consumer_id BIGINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (consumer_id) REFERENCES consumer(consumer_id),
    del enum ('Y', 'N') Not Null default 'N'
);

CREATE TABLE order_detail (
    order_detail_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES order_list(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    quantity BIGINT NOT NULL,
    requests VARCHAR(255) NULL
);

create table comment(
comment_id BIGINT auto_increment primary key not null,
board_id bigint not null,
contents varchar(3000),
created_time datetime not null default current_timestamp(),
FOREIGN KEY (board_id) REFERENCES board(board_id),
del enum ('Y', 'N') Not Null default 'N',
password bigint not null
);

create table complaint(
    complaint_id bigint primary key auto_increment,
    order_detail_id bigint null,
    seller_id bigint null,
    consumer_id bigint null,
    division enum("주문취소", "상품문의") default "상품문의",
    complaint_contents varchar(3000) not null,
    created_time datetime default current_timestamp,
    foreign key(order_detail_id) references order_detail(order_detail_id),
    foreign key(seller_id) references seller(seller_id),
    foreign key(consumer_id) references consumer(consumer_id),
    del enum ('Y', 'N') Not Null default 'N'
);

create table answer(
answer_id BIGINT auto_increment primary key not null,
complaint_id bigint not null,
admin_id bigint not null,
answer varchar(3000),
created_time datetime not null default current_timestamp(),
FOREIGN KEY (complaint_id) REFERENCES complaint(complaint_id),
FOREIGN KEY (admin_id) REFERENCES admin(admin_id),
del enum ('Y', 'N') Not Null default 'N'
 );
```

</details> 


## 🖥️ 프로시저
<details>
	<summary>🖇️ 프로시저 테스트</summary>
	<br> 
	✔️ 회원 가입 프로시저 <br> 
	
 ```sql  
DELIMITER //
CREATE procedure PROCEDURE 회원가입(
in inputName varchar(255), 
in inputPhone varchar(255),
in inputEmail varchar(255),
in inputPass varchar(255)
 )
BEGIN
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '가입실패' AS message;
    END;
    
    -- 회원가입 처리
    INSERT INTO consumer(name, phone_number, email, password)
    VALUES(inputName, inputPhone, inputEmail, inputPass);

    -- 성공 시 메시지 출력
    SELECT '가입성공' AS message;
END
//DELIMITER ;
```
![회원가입-소비자](https://github.com/user-attachments/assets/f0e49c13-f2c1-4828-804a-36c7610fcb31)
![회원가입결과-소비자](https://github.com/user-attachments/assets/4eaf27b6-c44f-4a89-bf1c-469636034ca2)

	✔️ 회원 정보 조회 프로시저 <br> 
	
 ```sql  
DELIMITER //
CREATE procedure 회원정보조회(
in inputName varchar(255)
)

begin

    select * from consumer where name = inputName;
end
//DELIMITER ;
```
![회원조회-소비자](https://github.com/user-attachments/assets/d9410f52-24ce-47ae-87a2-4bf11d5f0240)
![회원조회결과-소비자](https://github.com/user-attachments/assets/76b3111e-1350-4798-adf6-27b65ac0c105)


	✔️ 회원 정보 수정 프로시저 <br> 
	
 ```sql  
DELIMITER //
CREATE procedure 회원정보수정(
in inputId bigint,
in inputPhone varchar(255),
in inputPass varchar(255)
)

begin
    
    update consumer set phone_number = inputPhone, password = inputPass 
    where consumer_id = inputId;

end
//DELIMITER ;
```
![회원정보수정](https://github.com/user-attachments/assets/1c62d419-2221-417f-8b28-03faa4c1570e)
![회원정보수정결과](https://github.com/user-attachments/assets/66223584-996d-4963-aff2-0e536f92a82a)

	✔️ 상품 등록 프로시저 <br> 
	
 ```sql  
DELIMITER //
CREATE procedure 상품등록(
in input_Pname varchar(255),
in input_price bigint,
in input_Sid bigint,
in input_Aid bigint,
in input_Pcon varchar(3000),
in input_Pic varchar(3000)
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '등록실패' AS message;
    END;

    insert into product(product_name, price, seller_id,approve_admin_id, product_contents, picture)
    values(input_Pname, input_price, input_Sid, input_Aid, input_Pcon, input_Pic);

    SELECT '등록성공' AS message;
end
//DELIMITER ;
```
![상품등록](https://github.com/user-attachments/assets/2481fedc-4356-4afb-96c6-01dbde58f8c0)
![상품등록결과](https://github.com/user-attachments/assets/43ad85f2-2eb3-4592-b04f-43c2095f6639)

	✔️ 관리자 상품 승인 프로시저 <br> 
	
 ```sql  
DELIMITER //
CREATE procedure 상품승인(
in input_Pid bigint,
in input_Aid bigint
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '승인실패' AS message;
    END;

    update product set approve = 'y', approve_admin_id = input_Aid 
    where product_id = input_Pid;

    SELECT '승인성공' AS message;
end
//DELIMITER ;
```
![상품승인](https://github.com/user-attachments/assets/47860283-720e-492b-8f25-5d49d10fa546)
![상품승인결과](https://github.com/user-attachments/assets/4dda4ee6-51c2-40f6-8b50-4af47ff7f6c6)
![상품승인메세지](https://github.com/user-attachments/assets/b79f8424-e76b-45bd-857b-dd5a6805d93d)

	✔️ 소비자 구매 프로시저 <br> 
	
 ```sql  
DELIMITER //
create procedure 상품구매(in inputCustomerId bigint,inputOrderId bigint,inputProduct_id bigint,inputQuantity bigint,inputRequest varchar(255))
begin
    insert into order_list(consumer_id) values (inputCustomerId);
    insert into order_detail(order_id,product_id,quantity,requests) values (inputOrderId,inputProduct_id,inputQuantity,inputRequest);
end
// DELIMITER ;
```
![1](https://github.com/user-attachments/assets/c06c0f27-8933-48fe-b2ad-4128bf5721c1)
![orderDetail](https://github.com/user-attachments/assets/14edd10a-9b02-4c88-9698-dd33fcf4b69c)

	✔️ 소비자 문의 남기기 프로시저 <br> 
	
 ```sql  
DELIMITER //
create procedure 소비자문의남기기(in inputOrderDetailId bigint,inputConsumerId bigint,inputDevision varchar(255), inputContents varchar(255))
begin
    insert into complaint(order_detail_id,consumer_id,division,complaint_contents) values (inputOrderDetailId,inputConsumerId,inputDevision,inputContents);
end
// DELIMITER ;
```
![1](https://github.com/user-attachments/assets/31dcf31a-1d09-4dfb-8548-760aa45fedb1)
![2](https://github.com/user-attachments/assets/f9836493-4d0e-4bc6-8c02-2a2373c062e7)

	✔️ 주문 전체 조회 프로시저 <br> 
	
 ```sql  
DELIMITER //
create procedure 주문전체조회(in inputConsumerId bigint)
begin
    select ol.order_id,c.consumer_id,c.name,product_name from consumer c inner join order_list ol on c.consumer_id = ol.consumer_id 
    inner join order_detail od on ol.order_id = od.order_id 
    inner join product p on p.product_id = od.product_id where c.consumer_id = inputConsumerId;
end
// DELIMITER ;
```
![1](https://github.com/user-attachments/assets/87e5b86c-0b70-4260-884b-45030598dfa4)
![2](https://github.com/user-attachments/assets/9e24f5c6-d0e2-4554-a149-effaa1b7cd17)

	✔️ 게시글 댓글 등록 조회 프로시저 <br> 
	
 ```sql  
DELIMITER //
CREATE procedure 댓글등록(
in input_Bid bigint,
in input_Bcon varchar(3000)
)

begin
    DECLARE exit HANDLER FOR SQLEXCEPTION
    BEGIN
        -- 예외 발생 시 실패 메시지 출력
        SELECT '댓글등록실패' AS message;
    END;

    insert into comment(board_id, contents)
    values(input_Bid, input_Bcon);

    SELECT '댓글등록성공' AS message;
end
//DELIMITER ;
```
![댓글등록](https://github.com/user-attachments/assets/ea2599cd-8251-47f2-88f3-8eb809f0c63f)
![댓글등록결과](https://github.com/user-attachments/assets/a77463c1-30bd-4167-ad49-820f65ba3135)

	✔️ 상품 삭제 프로시저 <br> 
	
 ```sql  
ELIMITER //
create procedure 상품삭제(in inputProductId bigint)
begin
    update product set del = 'Y' where product_id=inputProductId;
end
// DELIMITER ;
```
![1](https://github.com/user-attachments/assets/ec514a7a-84a0-4cf2-ab70-27b681265311)
![2](https://github.com/user-attachments/assets/ab6320ae-f8bd-418c-a061-dc64bcb4014e)

</details> 

## 🎉 회고

### -홍석영 

미니프로젝트, db프로젝트라고 해서 좀 쉽게 봤던 경향이 있는 것 같습니다. 

강사님께서 부담안갖고 프로젝트 시작날 해도 된다고 하셨는데 제 능력이 부족했던거 같습니다....

생각하고 테이블을 만들어도 데이터 추가나 프로시저 생성 시 계속 오류를 마주쳐서

drop을 몇번했는지도 기억이 안납니다.. 처음부터 완벽할 수는 없으니 보다 미리 준비해서

이런 오류를 적게 하는것이 방법이라고  생각하게 되었습니다.

---
### -이재석

나의 부주의함의 끝을 보았고 잦은 실수로 팀원들에게 고통을 드린 점 사과드리고

앞으로는 더 집중하도록 하며 프로젝트를 해야겠다고 생각했습니다. db설계보다

구축이 중요하다고 생각했는데 설계에 집중하고 많은 것을 고려해야 한다는 것을 느꼈습니다. 

중간의 수정사항이 생기고 바꾸면서 다른 것에 영향을 끼치는 부분도 생각해야 한다고 느꼈습니다.

---
### -임성재

DB는 인생과도 같다는 것을 깨달았습니다. 제 생각처럼 진행되어주지 않는 점에서 매우 유사했습니다. 

ERD로 DB를 구상하고 나서 MYSQL bench에서 테이블을 만들때와 procedure을 만들때, 

계속해서 미흡한 점이 드러나 테이블과 ERD를 수정했습니다.

이 과정에서 앞으로 DB를 구상할 때 어떻게 해야 더 효율적으로 만들수  있는지, 어떻게 만들면 안되는지를 뼈저리게 배웠습니다.

---
### -경수혁

아... 종이칼 들고 만주 정벌에 나선 느낌이였습니다.

끊임 없이 계속찾아보고 생각해보면서 뭐가 옳은지 뭐가 그른지

같이 있는 팀들끼리 열정있게 회의도 해보고 어떤것은 더해보고 어떤것은 포기해가며 팀프로젝트의 재미를 느꼈습니다.

좋은 팀원을 만나 수월하게 프로젝트를 완료 할 수 있었습니다.  

---