create table seller(
    seller_id bigint primary key auto_increment,
    name varchar(255) not null,
    birth varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null,
    created_time datetime not null default current_timestamp
);

INSERT INTO seller (name, birth, email, password) VALUES
('김민수', '1990-05-15', 'minsu.kim@example.com', 'password123'),
('이영희', '1985-09-30', 'younghee.lee@example.com', 'password123'),
('박지훈', '1992-12-22', 'jihun.park@example.com', 'password123'),
('최지연', '1987-03-11', 'jiyeon.choi@example.com', 'password123'),
('정호진', '1983-06-05', 'hojin.jung@example.com', 'password123'),
('한지은', '1991-07-21', 'jieun.han@example.com', 'password123'),
('오세훈', '1994-01-17', 'sehoon.oh@example.com', 'password123'),
('강민지', '1993-11-27', 'minji.kang@example.com', 'password123'),
('임수정', '1990-04-12', 'soojung.lim@example.com', 'password123'),
('조한결', '1988-10-05', 'hankyul.jo@example.com', 'password123'),
('배수진', '1982-02-24', 'sujin.bae@example.com', 'password123'),
('문재영', '1995-08-03', 'jaeyoung.moon@example.com', 'password123'),
('유진아', '1990-10-13', 'jina.you@example.com', 'password123'),
('서지훈', '1994-01-02', 'jihun.seo@example.com', 'password123'),
('김예원', '1989-12-18', 'yewon.kim@example.com', 'password123'),
('이현수', '1986-04-06', 'hyunsu.lee@example.com', 'password123'),
('정상혁', '1992-07-25', 'sanghyuk.jung@example.com', 'password123'),
('박세희', '1990-05-10', 'sehee.park@example.com', 'password123'),
('한상미', '1987-09-23', 'sangmi.han@example.com', 'password123'),
('조민호', '1993-11-18', 'minho.jo@example.com', 'password123'),
('오하나', '1994-12-03', 'hana.oh@example.com', 'password123'),
('강수정', '1988-08-17', 'sujeong.kang@example.com', 'password123'),
('임성현', '1985-02-26', 'seonghyeon.lim@example.com', 'password123'),
('문채원', '1991-03-30', 'chaewon.moon@example.com', 'password123'),
('유지민', '1993-05-19', 'jimin.you@example.com', 'password123'),
('서지혜', '1990-06-21', 'jiye.seo@example.com', 'password123'),
('김유빈', '2000-01-15', 'yubin.kim@example.com', 'password123'),
('이태희', '2001-02-07', 'taehee.lee@example.com', 'password123'),
('정지원', '2002-09-14', 'jiwon.jung@example.com', 'password123'),
('박재원', '2000-11-28', 'jaewon.park@example.com', 'password123'),
('한지원', '2003-10-25', 'jiwon.han@example.com', 'password123'),
('조태희', '2004-07-14', 'taehee.jo@example.com', 'password123');

create table complain complaint(
    complaint_id bigint primary key auto_increment,
    consumer_id bigint not null,
    order_detail_id bigint not null,
    complaint_contents varchar(3000) not null,
    created_time datetime default current_timestamp,
    foreign key(consumer_id) references consumer(consumer_id),
    foreign key(order_detail_id) references order_detail(order_detail_id)
);

INSERT INTO complain (consumer_id, order_detail_id, complaint_contents) VALUES
(5, 12, '상품이 배송되지 않았습니다. 언제 도착할까요?'),
(3, 19, '구매한 상품의 색상이 사진과 다릅니다. 교환이 가능한지 확인 부탁드립니다.'),
(8, 24, '상품이 파손되어 왔습니다. 반품 절차를 안내해주세요.'),
(14, 3, '주문한 사이즈와 다른 사이즈가 배송되었습니다. 교환 부탁드립니다.'),
(7, 17, '배송이 너무 늦어졌습니다. 배송 상태를 확인해 주세요.'),
(20, 29, '제품에 스크래치가 있습니다. 새 제품으로 교환을 원합니다.'),
(12, 5, '배송 주소지가 잘못 기입되어 배송이 실패했다고 합니다. 주소 수정 부탁드립니다.'),
(2, 21, '상품의 품질이 예상보다 저조합니다. 환불을 원합니다.'),
(1, 15, '결제 오류로 인해 주문이 취소되었습니다. 환불 진행 상황을 확인해주세요.'),
(10, 9, '배송이 지연되고 있어 불편합니다. 빠른 배송을 요청합니다.'),
(25, 26, '상품에 설명이 부족하여 구매 결정을 내리기 어려웠습니다. 제품 설명을 보강해주세요.'),
(17, 28, '선택한 색상과 다른 색상이 왔습니다. 교환 절차를 알려주세요.'),
(4, 23, '상품이 잘못 배송되었습니다. 주문 확인을 부탁드립니다.'),
(11, 6, '교환 요청을 했으나 아직 처리되지 않았습니다. 진행 상황을 알려주세요.'),
(6, 16, '주문한 상품이 품절 상태입니다. 대체 상품으로 변경할 수 있나요?');