create database insight;
use insight;

create table t_board(
	board_idx int(11) not null auto_increment comment '글번호',
    title varchar(300) not null comment '제목',
    contents text not null comment '내용',
    hit_cnt smallint not null default '0' comment '조회수',
    created_datetime datetime not null comment '작성시간',
    creator_id varchar(50) not null comment '작성자',
    updated_datetime datetime default null comment '수정시간',
    updater_id varchar(50) default null comment '수정자',
    deleted_yn char(1) not null default 'N' comment '삭제여부',
    primary key(board_idx)
    );
    
    insert into t_board
    values(1,'a','a',1,now(),'1',now(),'1','n');
    
    select * from t_board;