-- 소비자 테이블 생성
create table consumer(
consumer_id BIGINT auto_increment primary key not null, 
name varchar(255) not null, 
phone_number varchar(255) not null,
email varchar(255) not null,
password varchar(255) not null,
created_time datetime not null default current_timestamp(),
quit enum('Y','N') not null default 'N'
 );

 -- 소비자 데이터 입력
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