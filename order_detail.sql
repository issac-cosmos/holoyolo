--주문상세 테이블 삽입
CREATE TABLE order_detail (
    order_detail_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    seller_id BIGINT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES order_list(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (seller_id) REFERENCES seller(seller_id),
    FOREIGN KEY (admin_id) REFERENCES admin(admin_id),
    quantity BIGINT NOT NULL,
    requests VARCHAR(255) NULL
);

-- 데이터 삽입
INSERT INTO order_detail (order_id,product_id, seller_id, quantity, requests) VALUES
(1,1, 20, 1, 1,'문앞에 놔주세요'),
(2,2, 19, 2, 2,'경비실에 놔주세요'),
(3,3, 18, 1, 3,'무인 사물함에 놔주세요'),
(4,4, 17, 3, 4,'문앞에 놔주세요'),
(5,5, 16 , 1, 5,'부재시 문앞에 놔주세요'),
(6,6, 15, 5, 6,'무인 사물함에 놔주세요'),
(7,7, 14, 4, 7,'문앞에 놔주세요'),
(8,8, 13, 6, 8,'경비실에 놔주세요'),
(9,9, 12, 7, 9,'문앞에 놔주세요'),
(10,10, 11, 5, 10,'무인 사물함에 놔주세요'),
(11,11, 10, 2, 1,'깨지기 쉬우니 조심해주세요'),
(12,12, 9, 1, 2,'초인종 눌러주세요'),
(13,13, 8, 2, 3,'배송 후 사진찍어주세요'),
(14,14, 7, 3, 4,'경비실에 놔주세요'),
(15,15, 6, 5, 5,'깨지기 쉬우니 조심해주세요'),
(16,16, 5, 2, 6,'배송 후 사진찍어주세요'),
(17,17, 4, 4, 7,'문앞에 놔주세요'),
(18,18, 3, 6, 8,'무인 사물함에 놔주세요'),
(19,19, 2, 2, 9,'문앞에 놔주세요'),
(20,20, 1, 1, 10,'문앞에 놔주세요');

--추가 데이터
INSERT INTO order_detail (order_id, product_id, seller_id, admin_id, quantity, requests) 
VALUES
(10, 3, 11, 1, 2, '포장 잘 부탁드립니다.'),
(20, 2, 12, 2, 1, '빠른 배송 요청합니다.'),
(30, 4, 20, 3, 3, NULL),
(14, 10, 21, 4, 5, '선물용 포장 부탁드립니다.'),
(15, 15, 25, 5, 2, '배송 시간을 오전 중으로 부탁드립니다.'),
(16, 16, 23, 6, 1, NULL),
(17, 17, 27, 7, 4, '직접 수령 예정입니다.'),
(18, 18, 18, 8, 2, '깨지지 않도록 주의해주세요.'),
(19, 19, 9, 9, 3, NULL),
(25, 11, 10, 0, 6, '최대한 신선하게 부탁드립니다.');

