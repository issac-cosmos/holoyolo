create table answer(
answer_id BIGINT auto_increment primary key not null,
complaint_id bigint not null,
admin_id bigint not null,
answer varchar(30000),
created_time datetime not null default current_timestamp(),
FOREIGN KEY (complaint_id) REFERENCES complaint(complaint_id),
FOREIGN KEY (admin_id) REFERENCES admin(admin_id)
 );