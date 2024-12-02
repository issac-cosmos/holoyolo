create table comment(
comment_id BIGINT auto_increment primary key not null,
board_id bigint not null,
contents varchar(3000),
created_time datetime not null default current_timestamp(),
FOREIGN KEY (board_id) REFERENCES board(board_id),
 );