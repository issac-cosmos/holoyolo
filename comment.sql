-- 댓글 테이블 추가
create table comment(
comment_id BIGINT auto_increment primary key not null,
board_id bigint not null,
contents varchar(3000),
created_time datetime not null default current_timestamp(),
FOREIGN KEY (board_id) REFERENCES board(board_id)
);

-- 댓글 데이터 입력
INSERT INTO comment(board_id, contents) VALUES (3, "김치 저는 맛이 없던데요");
INSERT INTO comment(board_id, contents) VALUES (7, "배송이 너무 느려요.");
INSERT INTO comment(board_id, contents) VALUES (1, "이 제품 정말 좋네요!");
INSERT INTO comment(board_id, contents) VALUES (12, "포장 상태가 엉망이었어요.");
INSERT INTO comment(board_id, contents) VALUES (5, "친절한 고객 서비스에 감사드립니다.");
INSERT INTO comment(board_id, contents) VALUES (9, "다시 구매할 의향이 없습니다.");
INSERT INTO comment(board_id, contents) VALUES (4, "색상이 화면과 달라요.");
INSERT INTO comment(board_id, contents) VALUES (14, "사이즈가 딱 맞아요!");
INSERT INTO comment(board_id, contents) VALUES (6, "품질이 기대 이상이에요.");
INSERT INTO comment(board_id, contents) VALUES (11, "제품 설명이 부족합니다.");
INSERT INTO comment(board_id, contents) VALUES (10, "추천합니다!");
INSERT INTO comment(board_id, contents) VALUES (15, "재구매 의향 있어요.");
INSERT INTO comment(board_id, contents) VALUES (8, "사용법이 어려워요.");
INSERT INTO comment(board_id, contents) VALUES (2, "디자인이 마음에 들어요.");
INSERT INTO comment(board_id, contents) VALUES (13, "가격이 조금 비싸요.");
INSERT INTO comment(board_id, contents) VALUES (1, "배송이 빨라서 좋았어요.");
INSERT INTO comment(board_id, contents) VALUES (3, "다른 색상도 있었으면 좋겠어요.");
INSERT INTO comment(board_id, contents) VALUES (7, "반품 절차가 복잡해요.");
INSERT INTO comment(board_id, contents) VALUES (12, "지인에게 추천했어요.");
INSERT INTO comment(board_id, contents) VALUES (5, "포장이 너무 예뻤어요.");
INSERT INTO comment(board_id, contents) VALUES (9, "할인 기간에 사서 좋았어요.");
INSERT INTO comment(board_id, contents) VALUES (4, "사용한 지 오래되지 않았는데 고장났어요.");
INSERT INTO comment(board_id, contents) VALUES (14, "설명서가 너무 복잡해요.");
INSERT INTO comment(board_id, contents) VALUES (6, "고객 서비스가 친절해요.");
INSERT INTO comment(board_id, contents) VALUES (11, "품질 대비 가격이 비싸요.");
INSERT INTO comment(board_id, contents) VALUES (10, "기대했던 것보다 좋아요.");
INSERT INTO comment(board_id, contents) VALUES (15, "배송 상태가 정말 나빴어요.");
INSERT INTO comment(board_id, contents) VALUES (8, "제품이 설명과 달라요.");
INSERT INTO comment(board_id, contents) VALUES (2, "친구들에게 추천했어요.");
INSERT INTO comment(board_id, contents) VALUES (13, "저는 만족스럽지 않아요.");
