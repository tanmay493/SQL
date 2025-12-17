create table st1(rollno int,name varchar(10),class varchar(10));
insert into st1 values(111,'ravi','bca');
insert into st1 values(112,'sanju','mca');
insert into  st1 values(113,'rohan','mba');
insert into st1 values(114,'sandeep','mcom');
select * from st1;

create table st2(rollno int,marks int,grade varchar(10),result varchar(10));
insert into st2 values(111,670,'A','pass');
insert into st2 values(112,230,'D','fail');
insert into st2 values(115,560,'B','pass');
insert into st2 values(116,450,'C','fail');
select * from st2;
delete from st2  where rollno = 112 and result='pass';

set sql_safe_updates =0;
select * from st2;
create table st3(rollno int,marks int,grade varchar(10),result varchar(10));
insert into st3 values(111,670,'A','pass');
insert into st3 values(112,230,'D','fail');
insert into st3 values(115,560,'B','pass');
insert into st3 values(116,450,'C','fail');
select * from st3;

select st1.rollno,st1.name,st1.class,st2.rollno,st2.marks,st2.grade,st2.result from st1 inner  join st2 on(st1.rollno=st2.rollno);
