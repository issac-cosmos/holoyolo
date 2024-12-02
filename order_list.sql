-- 주문 테이블 생성
create table order_list(
order_id bigint auto_increment not null primary key,
consumer_id bigint not null,
order_time datetime not null default current_timestamp(),
cancel enum ('Y','N') not null default 'N',
foreign key(consumer_id) references consumer(consumer_id)
);

-- 주문 데이터 입력
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