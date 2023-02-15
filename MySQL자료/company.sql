alter user 'root'@'localhost' identified with mysql_native_password by '1234';

flush privileges;

create database company; 

use company; 

create table products ( 
   id int not null auto_increment primary key,
    name varchar(50) not null,
    modelnumber varchar(15) not null,
    series varchar(30) not null
) default character set utf8 collate utf8_general_ci;

select * from products;

insert into products (name, modelnumber, series)
values ('Eric','0112223333','Artist');

insert into products (name, modelnumber, series)
values ('Jeff','0113335555','Artist');

insert into products (name, modelnumber, series)
values ('American','0115556666','American Deluxe');

insert into products (name, modelnumber, series)
values ('American','0116667777','American Deluxe');

commit;

select * from products
where series = 'Artist';

select * from products LIMIT 5;
select * from products LIMIT 2,2;

select * from products
order by id asc limit 2;

-- drop table 테이블 이름;
-- drop database 데이터베이스 이름;

SET SQL_SAFE_UPDATES = 0;
