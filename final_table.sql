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

insert into consumer(name,phone_number,email,password) values ("임성재", "010-9557-1379", "99dlatjdwo@naver.com","tjdwo99");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김철수", "010-1234-5678", "chulsoo@example.com", "password1");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("이영희", "010-8765-4321", "younghee@example.com", "password2");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("박민수", "010-1111-2222", "minsoo@example.com", "password3");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("최지현", "010-3333-4444", "jihyun@example.com", "password4");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("정하늘", "010-5555-6666", "haneul@example.com", "password5");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김하나", "010-7777-8888", "hana@example.com", "password6");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("홍길동", "010-9999-0000", "gildong@example.com", "password7");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("이준호", "010-1212-3434", "junho@example.com", "password8");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("박서준", "010-5656-7878", "seojoon@example.com", "password9");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김지수", "010-9090-1010", "jisoo@example.com", "password10");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김민정", "010-2020-3030", "minjung@example.com", "password11");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("이수연", "010-4040-5050", "sooyeon@example.com", "password12");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("박재현", "010-6060-7070", "jaehyun@example.com", "password13");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김현우", "010-8080-9090", "hyunwoo@example.com", "password14");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("장민호", "010-1111-2223", "minho@example.com", "password15");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("최은지", "010-3333-4445", "eunji@example.com", "password16");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("이현수", "010-5555-6667", "hyunsu@example.com", "password17");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("박지훈", "010-7777-8889", "jihoon@example.com", "password18");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김태영", "010-9999-0001", "taeyoung@example.com", "password19");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("이서영", "010-1212-3435", "seoyoung@example.com", "password20");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("박지성", "010-5656-7879", "jisung@example.com", "password21");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김지훈", "010-9090-1011", "jihoon2@example.com", "password22");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("이정훈", "010-2020-3031", "junghoon@example.com", "password23");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("박재민", "010-4040-5051", "jaemin@example.com", "password24");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김민서", "010-6060-7071", "minseo@example.com", "password25");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("이서준", "010-8080-9091", "seojoon2@example.com", "password26");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("박정우", "010-1111-2224", "jungwoo@example.com", "password27");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("김서현", "010-3333-4446", "seohyun@example.com", "password28");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("이수현", "010-5555-6668", "soohyun@example.com", "password29");
INSERT INTO consumer(name, phone_number, email, password) VALUES ("박현민", "010-7777-8890", "hyunmin@example.com", "password30");

CREATE TABLE seller (
    seller_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    quit enum('Y', 'N') DEFAULT 'N'
);

INSERT INTO seller (name, phone_number, email, password, quit) VALUES
('김민수', '010-1234-5678', 'kimminsu@example.com', 'password123', 'N'),
('이철수', '010-2345-6789', 'leechulsoo@example.com', 'password123', 'N'),
('박지현', '010-3456-7890', 'parkjihyun@example.com', 'password123', 'N'),
('최영훈', '010-4567-8901', 'choiyounghoon@example.com', 'password123', 'N'),
('정미숙', '010-5678-9012', 'jeongmisook@example.com', 'password123', 'N'),
('한상철', '010-6789-0123', 'hansangcheol@example.com', 'password123', 'N'),
('윤아름', '010-7890-1234', 'yoonareum@example.com', 'password123', 'N'),
('김수진', '010-8901-2345', 'kimsujin@example.com', 'password123', 'N'),
('박영수', '010-9012-3456', 'parkyoungsoo@example.com', 'password123', 'N'),
('이성희', '010-0123-4567', 'leesunghui@example.com', 'password123', 'N'),
('고지훈', '010-1234-5679', 'gojihun@example.com', 'password123', 'N'),
('배서연', '010-2345-6780', 'baeseoyeon@example.com', 'password123', 'N'),
('최진영', '010-3456-7891', 'choijinyoung@example.com', 'password123', 'N'),
('장민정', '010-4567-8902', 'jangminjeong@example.com', 'password123', 'N'),
('조승환', '010-5678-9013', 'joseunghwan@example.com', 'password123', 'N'),
('신은지', '010-6789-0124', 'shineunji@example.com', 'password123', 'N'),
('이현수', '010-7890-1235', 'leehyunsu@example.com', 'password123', 'N'),
('김지민', '010-8901-2346', 'kimjimin@example.com', 'password123', 'N'),
('정은수', '010-9012-3457', 'jeongeunsu@example.com', 'password123', 'N'),
('박시은', '010-0123-4568', 'parksieun@example.com', 'password123', 'N'),
('한지혜', '010-1234-5680', 'hanjihae@example.com', 'password123', 'N'),
('강지원', '010-2345-6790', 'kangjiwon@example.com', 'password123', 'N'),
('유선아', '010-3456-7892', 'yuseona@example.com', 'password123', 'N'),
('김정훈', '010-4567-8903', 'kimjeonghoon@example.com', 'password123', 'N'),
('박소영', '010-5678-9014', 'parksoyeong@example.com', 'password123', 'N'),
('이하은', '010-6789-0125', 'leehahyun@example.com', 'password123', 'N'),
('조현석', '010-7890-1236', 'johyunsuk@example.com', 'password123', 'N'),
('정지은', '010-8901-2347', 'jeongjieun@example.com', 'password123', 'N'),
('한유진', '010-9012-3458', 'hanyujin@example.com', 'password123', 'N'),
('이동훈', '010-0123-4569', 'leedonghoon@example.com', 'password123', 'N'),
('홍석영', '010-1234-5678', 'tjrdud@naver.com', '1234', 'N');

CREATE TABLE admin (
    admin_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    del enum ('Y', 'N') Not Null default 'N'
);

INSERT INTO admin ( name, email, password) VALUES
( 'John Doe', 'john.doe@example.com', 'password123'),
( 'Jane Smith', 'jane.smith@example.com', 'securePass1'),
( 'Alice Johnson', 'alice.johnson@example.com', 'alice123'),
( 'Bob Brown', 'bob.brown@example.com', 'bobSecure456'),
( 'Charlie Davis', 'charlie.davis@example.com', 'charliePass789'),
( 'Emily Clark', 'emily.clark@example.com', 'emilySecure321'),
( 'Frank White', 'frank.white@example.com', 'frankPass654'),
( 'Grace Hall', 'grace.hall@example.com', 'graceSecure987'),
('Henry Adams', 'henry.adams@example.com', 'henryPass456'),
( 'Ivy Wilson', 'ivy.wilson@example.com', 'ivySecure123');

CREATE TABLE address (
    address_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    consumer_id BIGINT NOT NULL,
    FOREIGN KEY (consumer_id) REFERENCES consumer(consumer_id),
    address_city VARCHAR(255) NOT NULL,
    address_line1 VARCHAR(255) NOT NULL,
    address_line2 VARCHAR(255) NOT NULL,
    address_type VARCHAR(3000) NOT NULL
);

INSERT INTO address (consumer_id, address_city, address_line1, address_line2, address_type) VALUES
(1, '서울특별시 강북구', '도봉로 183', '**동 ***호', '부모님 집'),
(2, '서울특별시 노원구', '한글비석로 212길 10', '**동 ***호', '회사'),
(3, '서울특별시 성북구', '삼선교로 44', '**동 ***호', '언니네'),
(4, '서울특별시 강동구', '명일로 161-1', '**동 ***호', '회사'),
(5, '서울특별시 도봉구', '도봉로 180길 77', '**동 ***호', '집'),
(6, '서울특별시 강남구', '테헤란로 152', '**동 ***호', '누나네'),
(7, '서울특별시 강동구', '명일로 161-1', '**동 ***호', '회사'),
(8, '경기도 포천시', '호국로 201', '**동 ***호', '회사'),
(9, '강원도 홍천군', '홍천로4길 26', '**동 ***호', '집'),
(10, '경기도 인천시 미추홀구', '미추홀대로 486-32', '**동 ***호', '집'),
(11, '강원도 춘천시', '중앙로 135', '**동 ***호', '회사'),
(12, '서울특별시 강남구', '테헤란로 28', '**동 ***호', '언니네'),
(13, '경기도 인천시 중구', '서소문로 20', '**동 ***호', '동생네'),
(14, '경기도 인천시 중구', '서소문로 20', '**동 ***호', '회사'),
(15, '전라북도 전주시 덕진구', '첨성길 28', '**동 ***호', '부모님 집'),
(16, '서울특별시 강동구', '명일로 161-1', '**동 ***호', '회사'),
(17, '서울특별시 성북구', '삼선교로 44', '**동 ***호', '언니네'),
(18, '경기도 안산시 상록구', '첨성길 28', '**동 ***호', '집'),
(19, '충청북도 청주시 서원구', '청남로2064번길 90', '**동 ***호', '부모님 집'),
(20, '충청남도 천안시 서북구', '두정공원2길 23-21', '**동 ***호', '집'),
(21, '서울특별시 송파구', '가락로 111', '**동 ***호', '집'),
(22, '경기도 의정부시', '가능로 99', '**동 ***호', '집'),
(23, '서울특별시 마포구', '월드컵로 82', '**동 ***호', '회사'),
(24, '서울특별시 강서구', '마곡중앙2로', '**동 ***호', '집'),
(25, '서울특별시 강서구', '마곡중앙2로', '**동 ***호', '집'),
(26, '경기도 시흥시', '서해로 324', '**동 ***호', '집'),
(27, '서울특별시 강남구', '역삼로 151', '**동 ***호', '회사'),
(28, '경상남도 부산광역시 해운대', '첨성길 28', '**동 ***호', '회사'),
(29, '경상남도 부산광역시 해운대', '첨성길 28', '**동 ***호', '회사'),
(30, '충청남도 천안시', '천안로 123', '**동 ***호', '회사'),
(31, '전라남도 담양군', '첨성길 28', '**동 ***호', '집');


INSERT INTO address (consumer_id, address_city, address_line1, address_line2, address_type) VALUES
(1, '서울특별시 강북구', '도봉로 192', '**동 ***호', '자취집'), 
(2, '서울특별시 노원구', '한글비석로 210길 5', '**동 ***호', '집'),   
(3, '서울특별시 성북구', '삼선교로 50', '**동 ***호', '집'),        
(6, '서울특별시 강남구', '테헤란로 145', '**동 ***호', '자취집'),   
(9, '강원도 홍천군', '홍천로4길 30', '**동 ***호', '회사'),       
(10, '경기도 인천시 미추홀구', '미추홀대로 500-15', '**동 ***호', '회사'), 
(13, '경기도 인천시 중구', '서소문로 50', '**동 ***호', '집'),      
(16, '서울특별시 강동구', '명일로 170', '**동 ***호', '집'),        
(19, '충청북도 청주시 서원구', '청남로2064번길 95', '**동 ***호', '부모님 집'), 
(22, '경기도 의정부시', '가능로 89', '**동 ***호', '회사');         

create table order_list(
order_id bigint auto_increment not null primary key,
consumer_id bigint not null,
order_time datetime not null default current_timestamp(),
cancel enum ('Y','N') not null default 'N',
foreign key(consumer_id) references consumer(consumer_id)
);
INSERT INTO order_list(consumer_id) VALUES (3);
INSERT INTO order_list(consumer_id) VALUES (15);
INSERT INTO order_list(consumer_id) VALUES (7);
INSERT INTO order_list(consumer_id) VALUES (22);
INSERT INTO order_list(consumer_id) VALUES (11);
INSERT INTO order_list(consumer_id) VALUES (18);
INSERT INTO order_list(consumer_id) VALUES (5);
INSERT INTO order_list(consumer_id) VALUES (31);
INSERT INTO order_list(consumer_id) VALUES (24);
INSERT INTO order_list(consumer_id) VALUES (8);
INSERT INTO order_list(consumer_id) VALUES (29);
INSERT INTO order_list(consumer_id) VALUES (10);
INSERT INTO order_list(consumer_id) VALUES (21);
INSERT INTO order_list(consumer_id) VALUES (14);
INSERT INTO order_list(consumer_id) VALUES (2);
INSERT INTO order_list(consumer_id) VALUES (6);
INSERT INTO order_list(consumer_id) VALUES (19);
INSERT INTO order_list(consumer_id) VALUES (12);
INSERT INTO order_list(consumer_id) VALUES (27);
INSERT INTO order_list(consumer_id) VALUES (1);
INSERT INTO order_list(consumer_id) VALUES (20);
INSERT INTO order_list(consumer_id) VALUES (4);
INSERT INTO order_list(consumer_id) VALUES (9);
INSERT INTO order_list(consumer_id) VALUES (28);
INSERT INTO order_list(consumer_id) VALUES (17);
INSERT INTO order_list(consumer_id) VALUES (3);
INSERT INTO order_list(consumer_id) VALUES (25);
INSERT INTO order_list(consumer_id) VALUES (16);
INSERT INTO order_list(consumer_id) VALUES (7);
INSERT INTO order_list(consumer_id) VALUES (22);

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


INSERT INTO product (product_name, seller_id, price, product_contents, picture, approve, approve_admin_id, del) VALUES
('1kg 쌀 소포장', 1, 3000, '소량 포장된 신선한 쌀, 1인 가구에 적합', '/images/rice_small.jpg', 'y',3,'N'),
('200g 한우 정육', 2, 15000, '200g 소포장 한우, 신선하고 간편한 요리에 추천', '/images/beef.jpg', 'y',7,'N'),
('1L 우유', 6, 1500, '1L 소포장 신선 우유, 개인 소비에 적합', '/images/milk.jpg', 'y',9,'N'),
('5개입 계란', 10, 2500, '소량 포장된 신선한 계란, 낭비 없는 사용', '/images/eggs.jpg', 'y', 6,'N'),
('소포장 김치 500g', 20, 4000, '신선하고 깔끔한 소량 포장 김치', '/images/kimchi.jpg', 'y',8,'N'),
('혼밥용 된장찌개 양념', 18, 2000, '1인분 간편 된장찌개 양념, 간편한 조리', '/images/doenjang.jpg', 'y',1,'N'),
('250ml 생수', 14, 500, '1회용 생수 병, 캠핑과 여행에도 적합', '/images/water.jpg', 'y',2,'N'),
('1인용 냉동 피자', 22, 7000, '혼밥에 딱 맞는 크기의 냉동 피자', '/images/pizza.jpg', 'y',5,'N'),
('1인용 컵라면', 12, 1200, '혼자 먹기 좋은 소량 컵라면', '/images/cup_ramen.jpg', 'y',4,'N'),
('500g 바나나', 10, 3000, '소량 포장된 신선한 바나나, 1인 가구에 적합', '/images/banana.jpg', 'y',7,'N'),
('200g 닭가슴살', 9, 5000, '헬스와 다이어트에 적합한 소포장 닭가슴살', '/images/chicken_breast.jpg', 'y',6,'N'),
('혼밥용 카레 1인분', 7, 2000, '1인분 간편 레토르트 카레', '/images/curry.jpg', 'y',2,'N'),
('소량 포장 두부', 6, 1500, '요리하기 딱 좋은 소량 포장 두부', '/images/tofu.jpg', 'y',4,'N'),
('혼밥용 스파게티 소스', 5, 3000, '1인분 스파게티 소스, 간편한 요리에 적합', '/images/spaghetti_sauce.jpg', 'y',1,'N'),
('소량 포장 샐러드', 1, 4000, '신선한 소량 포장 샐러드, 건강한 식사', '/images/salad.jpg', 'y',2,'N'),
('혼밥용 삼겹살 200g', 6, 8000, '간단히 구워 먹기 좋은 소량 삼겹살', '/images/samgyeopsal.jpg', 'y',4,'N'),
('혼밥용 소시지 3개', 1, 2500, '1인분 간편 조리 소시지', '/images/sausages.jpg', 'y',6,'N'),
('소량 포장 식빵 4조각', 14, 1500, '혼자서도 낭비 없는 식빵 소량 포장', '/images/bread.jpg', 'y',3,'N'),
('혼밥용 즉석밥 1개', 27, 1500, '전자레인지로 간편하게 조리할 수 있는 즉석밥', '/images/instant_rice.jpg', 'y',2,'N'),
('소량 포장 감자칩', 24, 2000, '혼자서 먹기 좋은 소량 포장 감자칩', '/images/potato_chips.jpg', 'y',5,'N');

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


INSERT INTO board (board_title, board_contents, created_time, product_id, consumer_id, del) VALUES
('만족스러운 쌀 구매', '소포장이 정말 편리하고 신선해요. 보관하기 딱 좋습니다!', '2024-01-15 10:30:00', 1, 1,'N'),
('신선한 한우!', '고기가 정말 부드럽고 신선합니다. 1인분씩 포장되어 너무 좋아요.', '2024-02-10 14:20:00', 2, 2,'N'),
('깔끔한 김치 맛있어요', '포장도 깔끔하고 1인 가구에게 딱 맞는 양입니다.', '2024-03-05 09:15:00', 5, 3,'N'),
('샐러드 최고예요', '양도 적당하고 신선해서 매번 구매하고 싶습니다.', '2024-04-22 18:00:00', 15, 4,'N'),
('삼겹살 품질 좋아요', '고기가 신선하고 구워 먹기 딱 좋은 양이에요. 너무 맛있었어요.', '2024-05-12 20:45:00', 16, 5,'N'),
('쌀 양이 부족해요', '1kg 포장이 조금 적은 것 같아요. 두세 끼면 없어져요.', '2024-01-25 11:10:00', 1, 6,'N'),
('계란 품질이 아쉬워요', '계란 중 몇 개가 껍데기가 얇아서 깨졌습니다.', '2024-03-18 16:40:00', 4, 7,'N'),
('피자가 너무 작아요', '혼자 먹기에 적당하지만 가격 대비 양이 너무 적습니다.', '2024-04-03 12:50:00', 8, 8,'N'),
('소시지가 별로였어요', '소시지가 너무 짜고 퀄리티가 기대 이하였습니다.', '2024-05-28 15:30:00', 17, 9,'N'),
('감자칩 양이 너무 적어요', '맛은 괜찮은데 양이 적어서 아쉬워요.', '2024-06-02 09:05:00', 20, 10,'N'),
('쌀 사용 후기', '소포장 쌀을 써봤는데, 보관이 편하고 품질도 괜찮아요!', '2024-01-18 08:20:00', 1, 11,'N'),
('한우 추천드립니다', '혼자 요리해서 먹기 딱 좋은 양입니다. 다음에도 구매하려고요.', '2024-03-15 19:30:00', 2, 12,'N'),
('김치 활용 팁', '요리할 때 간편하게 꺼내 쓸 수 있어 좋아요. 찌개용으로 추천합니다.', '2024-04-05 13:25:00', 5, 13,'N'),
('샐러드 유지 팁', '냉장 보관 시 2~3일 신선함이 유지됩니다. 드레싱 추가 추천!', '2024-05-01 09:50:00', 15, 14,'N'),
('삼겹살 요리 후기', '혼자서 구워 먹기 좋은 양이고, 고기 질이 좋아 만족했어요.', '2024-06-15 18:40:00', 16, 15,'N');

CREATE TABLE order_detail (
    order_detail_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES order_list(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    quantity BIGINT NOT NULL,
    requests VARCHAR(255) NULL
);

-- 데이터 삽입
INSERT INTO order_detail (order_id,product_id, quantity, requests) VALUES
(1,1,1,'문앞에 놔주세요'),
(2,2,2,'경비실에 놔주세요'),
(3,3,1, '무인 사물함에 놔주세요'),
(4,4,3,'문앞에 놔주세요'),
(5,5,1,'부재시 문앞에 놔주세요'),
(6,6,5, '무인 사물함에 놔주세요'),
(7,7,4, '문앞에 놔주세요'),
(8,8,6, '경비실에 놔주세요'),
(9,9,7, '문앞에 놔주세요'),
(10,10,5, '무인 사물함에 놔주세요'),
(11,11,2, '깨지기 쉬우니 조심해주세요'),
(12,12,1, '초인종 눌러주세요'),
(13,13,2, '배송 후 사진찍어주세요'),
(14,14,3, '경비실에 놔주세요'),
(15,15,5, '깨지기 쉬우니 조심해주세요'),
(16,16,2, '배송 후 사진찍어주세요'),
(17,17,4, '문앞에 놔주세요'),
(18,18,6, '무인 사물함에 놔주세요'),
(19,19,2, '문앞에 놔주세요'),
(20,20,1, '문앞에 놔주세요'),
(10, 3,1, '포장 잘 부탁드립니다.'),
(20, 2,2, '빠른 배송 요청합니다.'),
(30, 4,3, NULL),
(14, 10,4, '선물용 포장 부탁드립니다.'),
(15, 15,5, '배송 시간을 오전 중으로 부탁드립니다.'),
(16, 16,6, NULL),
(17, 17,7, '직접 수령 예정입니다.'),
(18, 18,8, '깨지지 않도록 주의해주세요.'),
(19, 19,9, NULL),
(25, 11,0, '최대한 신선하게 부탁드립니다.');

create table comment(
comment_id BIGINT auto_increment primary key not null,
board_id bigint not null,
contents varchar(3000),
created_time datetime not null default current_timestamp(),
FOREIGN KEY (board_id) REFERENCES board(board_id),
del enum ('Y', 'N') Not Null default 'N',
password bigint not null
);

INSERT INTO comment(board_id, contents, password) VALUES (3, "김치 저는 맛이 없던데요.", 4725);
INSERT INTO comment(board_id, contents, password) VALUES (7, "배송이 너무 느려요.", 3198);
INSERT INTO comment(board_id, contents, password) VALUES (1, "이 제품 정말 좋네요!", 5823);
INSERT INTO comment(board_id, contents, password) VALUES (12, "포장 상태가 엉망이었어요.", 7812);
INSERT INTO comment(board_id, contents, password) VALUES (5, "친절한 고객 서비스에 감사드립니다.", 2369);
INSERT INTO comment(board_id, contents, password) VALUES (9, "다시 구매할 의향이 없습니다.", 8475);
INSERT INTO comment(board_id, contents, password) VALUES (4, "색상이 화면과 달라요.", 6291);
INSERT INTO comment(board_id, contents, password) VALUES (14, "사이즈가 딱 맞아요!", 5186);
INSERT INTO comment(board_id, contents, password) VALUES (6, "품질이 기대 이상이에요.", 9832);
INSERT INTO comment(board_id, contents, password) VALUES (11, "제품 설명이 부족합니다.", 2034);
INSERT INTO comment(board_id, contents, password) VALUES (10, "추천합니다!", 1946);
INSERT INTO comment(board_id, contents, password) VALUES (15, "재구매 의향 있어요.", 5078);
INSERT INTO comment(board_id, contents, password) VALUES (8, "사용법이 어려워요.", 9503);
INSERT INTO comment(board_id, contents, password) VALUES (2, "디자인이 마음에 들어요.", 1427);
INSERT INTO comment(board_id, contents, password) VALUES (13, "가격이 조금 비싸요.", 3589);
INSERT INTO comment(board_id, contents, password) VALUES (1, "배송이 빨라서 좋았어요.", 2765);
INSERT INTO comment(board_id, contents, password) VALUES (3, "다른 색상도 있었으면 좋겠어요.", 6821);
INSERT INTO comment(board_id, contents, password) VALUES (7, "반품 절차가 복잡해요.", 4260);
INSERT INTO comment(board_id, contents, password) VALUES (12, "지인에게 추천했어요.", 3147);
INSERT INTO comment(board_id, contents, password) VALUES (5, "포장이 너무 예뻤어요.", 9654);
INSERT INTO comment(board_id, contents, password) VALUES (9, "할인 기간에 사서 좋았어요.", 8372);
INSERT INTO comment(board_id, contents, password) VALUES (4, "사용한 지 오래되지 않았는데 고장났어요.", 7398);
INSERT INTO comment(board_id, contents, password) VALUES (14, "설명서가 너무 복잡해요.", 4591);
INSERT INTO comment(board_id, contents, password) VALUES (6, "고객 서비스가 친절해요.", 3842);
INSERT INTO comment(board_id, contents, password) VALUES (11, "품질 대비 가격이 비싸요.", 7054);
INSERT INTO comment(board_id, contents, password) VALUES (10, "기대했던 것보다 좋아요.", 8209);
INSERT INTO comment(board_id, contents, password) VALUES (15, "배송 상태가 정말 나빴어요.", 6214);
INSERT INTO comment(board_id, contents, password) VALUES (8, "제품이 설명과 달라요.", 5298);
INSERT INTO comment(board_id, contents, password) VALUES (2, "친구들에게 추천했어요.", 6163);
INSERT INTO comment(board_id, contents, password) VALUES (13, "저는 만족스럽지 않아요.", 9571);

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


INSERT INTO complaint (order_detail_id, seller_id, consumer_id, division, complaint_contents,del) VALUES
(null, 1, null, '상품문의', '상품이 마음에 들지 않아서 교환할 수 있나요?','N'),
(4, null, 22, '주문취소', '결제 후 10분 내에 취소가 가능한가요?','N'),
(null, 6, null, '상품문의', '이 상품의 색상 옵션을 확인하고 싶습니다.','N'),
(13, null, 28, '상품문의', '상품이 잘못 배송되었습니다. 교환할 수 있나요?','N'),
(null, 7, null, '주문취소', '상품을 주문했는데 취소할 수 있나요?','N'),
(19, null, 11, '상품문의', '상품의 크기가 어떻게 되나요?','N'),
(null, 25, null, '상품문의', '상품이 언제 입고되나요?','N'),
(23, null, 30, '주문취소', '상품 취소 요청을 할 수 있나요?','N'),
(null, 3, null, '상품문의', '상품의 사용법을 알려주세요.','N'),
(7, null, 4, '상품문의', '상품 배송 상태를 확인하고 싶습니다.','N'),
(null, 16, null, '주문취소', '이미 결제를 했는데 취소 가능한가요?','N'),
(6, null, 17, '상품문의', '이 상품은 언제 재입고되나요?','N'),
(null, 10, null, '주문취소', '주문 후 취소가 가능할까요?','N'),
(20, null, 29, '상품문의', '이 상품의 품질 보증 기간을 확인하고 싶습니다.','N'),
(null, 20, null, '상품문의', '상품에 대해 더 알고 싶습니다.','N'),
(5, null, 26, '주문취소', '배송 전에 취소를 하고 싶습니다.','N'),
(null, 13, null, '상품문의', '상품이 어떤 재질로 만들어졌는지 궁금합니다.','N'),
(12, null, 16, '주문취소', '주문을 취소하고 싶습니다.','N'),
(null, 21, null, '상품문의', '상품이 품절인데 언제 다시 입고될까요?','N'),
(24, null, 9, '상품문의', '이 상품은 한정 판매인가요?','N'),
(null, 24, null, '주문취소', '상품을 취소할 수 있나요?','N'),
(16, null, 7, '상품문의', '이 상품의 사용법을 자세히 알고 싶습니다.','N'),
(null, 11, null, '상품문의', '상품의 크기가 맞지 않습니다. 교환이 가능한가요?','N'),
(22, null, 23, '주문취소', '배송 후 주문 취소가 가능한가요?','N'),
(null, 19, null, '상품문의', '상품의 색상 변경이 가능한가요?','N'),
(22, null, 1, '주문취소', '주문을 취소하고 싶은데 어떻게 하나요?','N'),
(null, 29, null, '상품문의', '이 상품은 언제 재입고 되나요?','N'),
(24, null, 2, '상품문의', '상품의 가격이 변경될 예정인가요?','N'),
(null, 28, null, '주문취소', '취소할 수 있는 상품이 무엇인가요?','N'),
(null, 28, null, '주문취소', '취소할 수 있는 상품이 무엇인가요?','N');


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

INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (1, 4, "죄송합니다, 환불해드리겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (2, 3, "불편을 드려 죄송합니다. 해당 문제를 바로 해결하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (3, 5, "고객님의 의견을 반영하여 개선하겠습니다. 감사합니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (4, 2, "문제 해결을 위해 추가 정보가 필요합니다. 고객센터로 연락 부탁드립니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (5, 1, "해당 상품의 재고 문제로 불편을 드려 죄송합니다. 빠른 시일 내에 재입고하도록 하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (6, 6, "고객님께서 요청하신 내용을 확인하였으며, 처리 완료되었습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (7, 7, "문의해주셔서 감사합니다. 더 나은 서비스를 위해 최선을 다하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (8, 8, "해당 문제는 시스템 오류로 발생한 것으로 확인되었습니다. 다시 시도해주시기 바랍니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (9, 9, "불편을 드려 죄송합니다. 관련 부서에 전달하여 개선하도록 하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (10, 10, "고객님의 불편 사항을 접수하였으며, 곧 해결해드리겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (11, 1, "문의해주셔서 감사합니다. 해당 사항에 대해 조치 완료하였습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (12, 2, "죄송합니다, 상품 교환을 진행해드리겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (13, 3, "고객님의 요청에 따라 조치를 취하였습니다. 감사합니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (14, 4, "해당 문제에 대해 검토 중입니다. 빠른 시일 내에 해결하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (15, 5, "고객님께 불편을 끼쳐드려 죄송합니다. 서비스 개선에 반영하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (16, 6, "문의 주신 사항에 대해 답변 드리겠습니다. 고객센터로 연락 주시면 자세히 안내해드리겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (17, 7, "고객님의 의견을 소중히 여겨 반영하도록 하겠습니다. 감사합니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (18, 8, "불편을 드려 죄송합니다. 신속히 처리하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (19, 9, "고객님께서 요청하신 내용을 확인하였으며, 즉시 조치하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (20, 10, "해당 문제는 이미 해결되었습니다. 추가 문제가 있으시면 연락 부탁드립니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (21, 1, "문의를 주셔서 감사합니다. 더 나은 서비스를 제공하기 위해 노력하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (22, 2, "해당 사항에 대해 조사 중이며, 곧 답변 드리겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (23, 3, "고객님의 불편 사항을 확인하였으며, 빠른 시일 내에 해결하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (24, 4, "문의하신 내용에 대해 답변 드리겠습니다. 고객님의 요청을 처리 중입니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (25, 5, "고객님의 의견에 따라 서비스 개선을 진행하겠습니다. 감사합니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (26, 6, "해당 문제는 현재 해결 중입니다. 불편을 드려 죄송합니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (27, 7, "고객님의 요청에 따라 조치를 취하였습니다. 문의해주셔서 감사합니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (28, 8, "불편을 드려 죄송합니다. 신속히 해결하겠습니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (29, 9, "고객님의 의견을 소중히 여겨 반영하겠습니다. 감사합니다.",'N');
INSERT INTO answer(complaint_id, admin_id, answer,del) VALUES (30, 10, "문제 해결을 위해 노력하겠습니다. 감사합니다.",'N');