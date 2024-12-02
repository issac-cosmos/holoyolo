-- 상품 테이블 삽입
CREATE TABLE product (
    product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price BIGINT NOT NULL,
    FOREIGN KEY seller_id REFERENCES seller(seller_id),
    product_contents VARCHAR(3000) NOT NULL,
    picture VARCHAR(3000) NOT NULL
);

-- 데이터 삽입
INSERT INTO product (product_name, price, product_contents, picture) VALUES
('1kg 쌀 소포장', 3000, '소량 포장된 신선한 쌀, 1인 가구에 적합', '/images/rice_small.jpg'),
('200g 한우 정육', 15000, '200g 소포장 한우, 신선하고 간편한 요리에 추천', '/images/beef.jpg'),
('1L 우유', 1500, '1L 소포장 신선 우유, 개인 소비에 적합', '/images/milk.jpg'),
('5개입 계란', 2500, '소량 포장된 신선한 계란, 낭비 없는 사용', '/images/eggs.jpg'),
('소포장 김치 500g', 4000, '신선하고 깔끔한 소량 포장 김치', '/images/kimchi.jpg'),
('혼밥용 된장찌개 양념', 2000, '1인분 간편 된장찌개 양념, 간편한 조리', '/images/doenjang.jpg'),
('250ml 생수', 500, '1회용 생수 병, 캠핑과 여행에도 적합', '/images/water.jpg'),
('1인용 냉동 피자', 7000, '혼밥에 딱 맞는 크기의 냉동 피자', '/images/pizza.jpg'),
('1인용 컵라면', 1200, '혼자 먹기 좋은 소량 컵라면', '/images/cup_ramen.jpg'),
('500g 바나나', 3000, '소량 포장된 신선한 바나나, 1인 가구에 적합', '/images/banana.jpg'),
('200g 닭가슴살', 5000, '헬스와 다이어트에 적합한 소포장 닭가슴살', '/images/chicken_breast.jpg'),
('혼밥용 카레 1인분', 2000, '1인분 간편 레토르트 카레', '/images/curry.jpg'),
('소량 포장 두부', 1500, '요리하기 딱 좋은 소량 포장 두부', '/images/tofu.jpg'),
('혼밥용 스파게티 소스', 3000, '1인분 스파게티 소스, 간편한 요리에 적합', '/images/spaghetti_sauce.jpg'),
('소량 포장 샐러드', 4000, '신선한 소량 포장 샐러드, 건강한 식사', '/images/salad.jpg'),
('혼밥용 삼겹살 200g', 8000, '간단히 구워 먹기 좋은 소량 삼겹살', '/images/samgyeopsal.jpg'),
('혼밥용 소시지 3개', 2500, '1인분 간편 조리 소시지', '/images/sausages.jpg'),
('소량 포장 식빵 4조각', 1500, '혼자서도 낭비 없는 식빵 소량 포장', '/images/bread.jpg'),
('혼밥용 즉석밥 1개', 1500, '전자레인지로 간편하게 조리할 수 있는 즉석밥', '/images/instant_rice.jpg'),
('소량 포장 감자칩', 2000, '혼자서 먹기 좋은 소량 포장 감자칩', '/images/potato_chips.jpg');

-----------------------------------------------


-- board 테이블 생성
CREATE TABLE board (
    board_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    board_title VARCHAR(255) NOT NULL,
    board_contents VARCHAR(3000) NOT NULL,
    created_time DATETIME NOT NULL,
    product_id BIGINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (consumer_id) REFERENCES consumer(consumer_id)
);

-- board 데이터 삽입
INSERT INTO board (board_title, board_contents, created_time, product_id) VALUES
-- 긍정 리뷰
('만족스러운 쌀 구매', '소포장이 정말 편리하고 신선해요. 보관하기 딱 좋습니다!', '2024-01-15 10:30:00', 1),
('신선한 한우!', '고기가 정말 부드럽고 신선합니다. 1인분씩 포장되어 너무 좋아요.', '2024-02-10 14:20:00', 2),
('깔끔한 김치 맛있어요', '포장도 깔끔하고 1인 가구에게 딱 맞는 양입니다.', '2024-03-05 09:15:00', 5),
('샐러드 최고예요', '양도 적당하고 신선해서 매번 구매하고 싶습니다.', '2024-04-22 18:00:00', 15),
('삼겹살 품질 좋아요', '고기가 신선하고 구워 먹기 딱 좋은 양이에요. 너무 맛있었어요.', '2024-05-12 20:45:00', 16),

-- 불만족 리뷰
('쌀 양이 부족해요', '1kg 포장이 조금 적은 것 같아요. 두세 끼면 없어져요.', '2024-01-25 11:10:00', 1),
('계란 품질이 아쉬워요', '계란 중 몇 개가 껍데기가 얇아서 깨졌습니다.', '2024-03-18 16:40:00', 4),
('피자가 너무 작아요', '혼자 먹기에 적당하지만 가격 대비 양이 너무 적습니다.', '2024-04-03 12:50:00', 8),
('소시지가 별로였어요', '소시지가 너무 짜고 퀄리티가 기대 이하였습니다.', '2024-05-28 15:30:00', 17),
('감자칩 양이 너무 적어요', '맛은 괜찮은데 양이 적어서 아쉬워요.', '2024-06-02 09:05:00', 20),

-- 정보 공유 리뷰
('쌀 사용 후기', '소포장 쌀을 써봤는데, 보관이 편하고 품질도 괜찮아요!', '2024-01-18 08:20:00', 1),
('한우 추천드립니다', '혼자 요리해서 먹기 딱 좋은 양입니다. 다음에도 구매하려고요.', '2024-03-15 19:30:00', 2),
('김치 활용 팁', '요리할 때 간편하게 꺼내 쓸 수 있어 좋아요. 찌개용으로 추천합니다.', '2024-04-05 13:25:00', 5),
('샐러드 유지 팁', '냉장 보관 시 2~3일 신선함이 유지됩니다. 드레싱 추가 추천!', '2024-05-01 09:50:00', 15),
('삼겹살 요리 후기', '혼자서 구워 먹기 좋은 양이고, 고기 질이 좋아 만족했어요.', '2024-06-15 18:40:00', 16);

