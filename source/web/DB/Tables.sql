create user college identified by college;
grant create session to college;
grant DBA to college;
alter user college quota unlimited on system;
connect college/college;

drop table students;
create table students(
sid number(4),
sname varchar2(40),
spass varchar2(40),
syear int,
sdob date,
sbranch varchar2(20),
sphone varchar2(20),
semail varchar2(30)
);

--Date: 10-Mar-1995

drop table administrator;
create table administrator(
username varchar2(20),
 password varchar2(20)
);

insert into administrator values('admin','admin');

commit;


create table feedues(sid number(4), cid number(4), branch varchar2(20),bus number(6),library number(6),tutionfee number(6), totalfee number(8),feeissues varchar2(40),councellorfeedback varchar2(40),status varchar2(30),paidstatus varchar2(20));

create table counselor(cid number(4),username varchar2(20),password varchar2(20),email varchar2(20),phone number(15),branch varchar(20));

insert into counselor(cid,username,password,email,phone,branch) values(1,'siva','siva','siva@gmail.com',9874653210,'CSE');

