create table answer(
answer_id BIGINT auto_increment primary key not null,
complaint_id bigint not null,
admin_id bigint not null,
answer varchar(3000),
created_time datetime not null default current_timestamp(),
FOREIGN KEY (complaint_id) REFERENCES complaint(complaint_id),
FOREIGN KEY (admin_id) REFERENCES admin(admin_id)
 );

INSERT INTO answer(complaint_id, admin_id, answer) VALUES (1, 4, "죄송합니다, 환불해드리겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (2, 3, "불편을 드려 죄송합니다. 해당 문제를 바로 해결하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (3, 5, "고객님의 의견을 반영하여 개선하겠습니다. 감사합니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (4, 2, "문제 해결을 위해 추가 정보가 필요합니다. 고객센터로 연락 부탁드립니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (5, 1, "해당 상품의 재고 문제로 불편을 드려 죄송합니다. 빠른 시일 내에 재입고하도록 하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (6, 6, "고객님께서 요청하신 내용을 확인하였으며, 처리 완료되었습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (7, 7, "문의해주셔서 감사합니다. 더 나은 서비스를 위해 최선을 다하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (8, 8, "해당 문제는 시스템 오류로 발생한 것으로 확인되었습니다. 다시 시도해주시기 바랍니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (9, 9, "불편을 드려 죄송합니다. 관련 부서에 전달하여 개선하도록 하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (10, 10, "고객님의 불편 사항을 접수하였으며, 곧 해결해드리겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (11, 1, "문의해주셔서 감사합니다. 해당 사항에 대해 조치 완료하였습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (12, 2, "죄송합니다, 상품 교환을 진행해드리겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (13, 3, "고객님의 요청에 따라 조치를 취하였습니다. 감사합니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (14, 4, "해당 문제에 대해 검토 중입니다. 빠른 시일 내에 해결하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (15, 5, "고객님께 불편을 끼쳐드려 죄송합니다. 서비스 개선에 반영하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (16, 6, "문의 주신 사항에 대해 답변 드리겠습니다. 고객센터로 연락 주시면 자세히 안내해드리겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (17, 7, "고객님의 의견을 소중히 여겨 반영하도록 하겠습니다. 감사합니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (18, 8, "불편을 드려 죄송합니다. 신속히 처리하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (19, 9, "고객님께서 요청하신 내용을 확인하였으며, 즉시 조치하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (20, 10, "해당 문제는 이미 해결되었습니다. 추가 문제가 있으시면 연락 부탁드립니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (21, 1, "문의를 주셔서 감사합니다. 더 나은 서비스를 제공하기 위해 노력하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (22, 2, "해당 사항에 대해 조사 중이며, 곧 답변 드리겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (23, 3, "고객님의 불편 사항을 확인하였으며, 빠른 시일 내에 해결하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (24, 4, "문의하신 내용에 대해 답변 드리겠습니다. 고객님의 요청을 처리 중입니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (25, 5, "고객님의 의견에 따라 서비스 개선을 진행하겠습니다. 감사합니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (26, 6, "해당 문제는 현재 해결 중입니다. 불편을 드려 죄송합니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (27, 7, "고객님의 요청에 따라 조치를 취하였습니다. 문의해주셔서 감사합니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (28, 8, "불편을 드려 죄송합니다. 신속히 해결하겠습니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (29, 9, "고객님의 의견을 소중히 여겨 반영하겠습니다. 감사합니다.");
INSERT INTO answer(complaint_id, admin_id, answer) VALUES (30, 10, "문제 해결을 위해 노력하겠습니다. 감사합니다.");
