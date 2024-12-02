--주문상세 테이블 삽입
CREATE TABLE order_detail (
    order_detail_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (consumer_id) REFERENCES consumer(consumer_id),
    FOREIGN KEY (order_id) REFERENCES order(order_id),
    quantity BIGINT NOT NULL,
    requests VARCHAR(255) NULL
);

-- 데이터 삽입
INSERT INTO order_detail (product_id, consumer_id, order_id,quantity,requests) VALUES
(1,1, 1234, 1, '문앞에 놔주세요'),
(2,2, 1234, 2, '경비실에 놔주세요'),
(3,3, 1234, 1, '무인 사물함에 놔주세요'),
(4,4, 1234, 3, '문앞에 놔주세요'),
(5,5, 1234 , 1, '부재시 문앞에 놔주세요'),
(6,6, 1234, 5, '무인 사물함에 놔주세요'),
(7,7, 1234, 4, '문앞에 놔주세요'),
(8,8, 1234, 6, '경비실에 놔주세요'),
(9,9, 1234, 7, '문앞에 놔주세요'),
(10,10, 1234, 5, '무인 사물함에 놔주세요'),
(11,11, 1234, 2, '깨지기 쉬우니 조심해주세요'),
(12,12, 1234, 1, '초인종 눌러주세요'),
(13,13, 1234, 2, '배송 후 사진찍어주세요'),
(14,14, 1234, 3, '경비실에 놔주세요'),
(15,15, 1234, 5, '깨지기 쉬우니 조심해주세요'),
(16,16, 1234, 2, '배송 후 사진찍어주세요'),
(17,17, 1234, 4, '문앞에 놔주세요'),
(18,18, 1234, 6, '무인 사물함에 놔주세요'),
(19,19, 1234, 2, '문앞에 놔주세요'),
(20,20, 1234, 1, '문앞에 놔주세요');
