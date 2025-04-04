create database class7 ;

use class7 ;

show tables ;

create table if not exists student(rollno int, `name` varchar(20)) ;

insert into student values (1, "mayur") ;

insert into student values (2, "Rahul"),
(3, "chhaya"),
(4, "chetan"),
(5, "nilesh"),
(6, "vijay") ;

select * from student ;

alter table student
add column address varchar(20) ;

alter table student
add column dob varchar(10) after `name` ;

alter table student
add column `subject` varchar(20) first ;

describe student ;

alter table student
modify column dob date ;

alter table student
rename column dob to doa ;

update student
set address = "nagpur" ;

update student
set doa = "2025-01-15" where rollno = 1 ;

update student
set doa = "2025-01-17" where rollno in (2,3,4) ;

update student
set doa = "2025-01-19" where rollno in (5,6) ;

update student
set address = null where rollno = 4 ;

delete from student
where rollno = 3 ;

alter table student
drop column `subject` ;

rename table student to stds ;

truncate table stds ;

drop table stds ;

drop database class7 ;

select * from stds ;

insert into student values (7, "aarti", null) ;

insert into student (rollno, `name`) values (8, "mayur") ;




