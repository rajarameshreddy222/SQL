create table student(name varchar(20) null,city varchar(10) null ,gender varchar(10) null,s1 int null,s2 int  null)

truncate table student 

drop table student
 
select * from student
 
insert into student values ('raja','hyd','male',98,99)
insert into student values ('srk','knl','male',88,89)
insert into student values ('aaa','hyd','female',50,79)
insert into student values ('bbb','bglr','female',68,89)
insert into student values ('ccc','bglr','male',90,99)
insert into student values ('ddd','hyd','female',49,90)
insert into student values ('rrr','hyd','female',99)



drop table student

Retrieving Data Using the SQL SELECT Statement
	1. selecting All Columns
	2. selecting specific Columns
	3. Arithmetic Expressions
	4. Using Column Aliases

  select * from student
  select name, s1,s2 from student
  select name, s1+s2 as  total_marks from student
  select name, (s1+s2)/2 as  avg_marks from student  
   select name, s1+s2 as  total_marks from student
  select name,avg(s1+s2) as avg_marks from student group by name


 Restricting and Sorting Data
RELATIONAL OPERATORS (>,<,=,>=,<=)
select * from student where s1>=50 
select * from student where s1<=50

LOGICAL OPERATORS (AND , OR)
select * from student where s1>50 and s2>50 
select * from student where s1>50 or s2<50
select * from student where s1>50 or s2>50 
select * from student where s1<50 or s2<50


RANGE OPERATORS :-
(BETWEEN ,NOT BETWEEN)
select * from student where s1 between '50' and '99'
select * from student where s1 not between '50' and '99'


IN AND NOT IN
select * from student where city in ('hyd','bglr') 
select * from student where city not in ('hyd','bglr')

PATTERNS
LIKE
select * from student where name like 'r%'
select * from student where name like '%r'
select * from student where name like '%a'
select * from student where name like 'a%'

select * from student where name like '_j%a'
select * from student where name LIKE '[^A-X]%'
select * from student where name like '[a-r]%'
select * from student where name like '[ab]%'
select * from student where name like '[cd]%'
select * from student where name like '__j%'
NOT LIKE
select * from student where name not like '[a]%'
select * from student where name not like '[a-b]%'
select * from student where name not like  '[a-c]%'
select * from student where name not like '[d-z]%'

GROUPING_FUNCTIONS:-

SELECT MIN(S1)AS MIN_MARKS FROM STUDENT 
SELECT MIN(S1)AS MIN_S1_MARKS,MIN(S2)AS MIN_S2_MARKS FROM STUDENT
SELECT MIN(S1)AS MIN_MARKS FROM STUDENT 
 
SELECT MAX(S1)AS MAX_MARKS FROM STUDENT
SELECT MAX(S1)AS MAX_S1_MARKS ,MAX(S2)AS MAX_S2_MARKS FROM STUDENT
SELECT MAX(S1+S2)AS MAX_MARKS FROM STUDENT 
 
SELECT SUM(S1)AS TOTAL FROM STUDENT
SELECT SUM(S1)AS S1_TOTAL ,SUM(S2)AS S2_TOTAL FROM STUDENT
SELECT SUM(S1+S2) AS TOTAL FROM STUDENT 


select * from student 
SELECT AVG(S1)AS TOTAL FROM STUDENT
SELECT AVG(S1)AS S1_TOTAL, AVG(S2) AS S2_TOTAL FROM STUDENT

SELECT COUNT(*) FROM STUDENT

SELECT CITY,COUNT(*) FROM STUDENT GROUP BY CITY
SELECT NAME,MIN(S1)AS MIN_MARKS FROM STUDENT GROUP BY NAME,S1
SELECT NAME,CITY,GENDER,SUM(s1+S2)FROM STUDENT GROUP BY NAME,CITY,GENDER

SELECT NAME,CITY,GENDER,SUM(s1+S2)FROM STUDENT GROUP BY NAME,CITY,GENDER  HAVING SUM(S1+S2)>150
SELECT NAME,CITY,GENDER,SUM(s1+S2)FROM STUDENT GROUP BY NAME,CITY,GENDER  HAVING CITY='HYD'


SELECT NAME,SUM(s1+S2)FROM STUDENT GROUP BY NAME ORDER BY SUM(S1+S2) ASC
SELECT NAME,SUM(s1+S2)FROM STUDENT GROUP BY NAME ORDER BY SUM(S1+S2) DESC



SELECT DISTINCT(CITY) FROM STUDENT
SELECT DISTINCT(NAME) FROM STUDENT
SELECT DISTINCT(S1+S2) FROM STUDENT

SELECT count(DISTINCT(CITY)) FROM STUDENT

SELECT CITY,COUNT(CITY) ,SUM(S1+S2) FROM STUDENT GROUP BY CITY
SELECT DISTINCT(CITY), COUNT(CITY)AS COUNT ,SUM(S1+S2)AS TOTAL FROM STUDENT GROUP BY CITY
SELECT DISTINCT(GENDER), COUNT(GENDER)AS COUNT ,SUM(S1+S2)AS TOTAL FROM STUDENT GROUP BY GENDER
SELECT  gender, COUNT(GENDER)AS COUNT ,SUM(S1+S2)AS TOTAL FROM STUDENT GROUP BY GENDER

SELECT *FROM STUDENT ORDER BY S1

RANKING FUNCTIONS
TOP
SELECT TOP(2)*FROM STUDENT ORDER BY S1
SELECT TOP(2)*FROM STUDENT ORDER BY GENDER
SELECT TOP(6)*FROM STUDENT ORDER BY GENDER  

OFFSET FETCH
SELECT * FROM STUDENT ORDER BY NAME
SELECT * FROM STUDENT ORDER BY NAME  OFFSET 2 ROW FETCH FIRST 3 ROW ONLY
SELECT * FROM STUDENT ORDER BY NAME  OFFSET 3 ROW FETCH FIRST 2 ROW ONLY
SELECT * FROM STUDENT ORDER BY NAME  OFFSET 3 ROW FETCH FIRST 3 ROW ONLY
SELECT * FROM STUDENT ORDER BY NAME  OFFSET 3 ROW FETCH first 3 ROW ONLY
SELECT * FROM STUDENT order by name 


ROWNUM

SELECT *,ROW_NUMBER()OVER(ORDER BY CITY)AS ROMNUMBER FROM STUDENT 
SELECT *,RANK()OVER(ORDER BY city)AS rank FROM STUDENT
SELECT *,DENSE_RANK()OVER(ORDER BY CITY)AS denserank FROM STUDENT
select *, ntile(3) over(order by city ) from student

DML_OPERATIONS

UPDATE_RECORDS
UPDATE  STUDENT SET NAME='RRR' WHERE NAME='EEE'
SELECT * FROM STUDENT

insert into student values ('EEE','hyd','female', is NULL,is NULL)

UPDATE STUDENT SET S1=98 WHERE NAME='RRR'
UPDATE STUDENT SET S1=59 WHERE S1=49
UPDATE STUDENT SET S2=99 WHERE NAME='RRR'
UPDATE STUDENT SET GENDER='MALE'WHERE S1=98

DROP TABLE STUDENT

DELETE  STUDENT WHERE NAME= 'RRR'

TRUNCATE TABLE  STUDENT


DDL OPERTIONS 
1. create table
2. drop table
3. alter table: add column,drop coloumn, rename column, change data type,change data type size. 
4. primary key,not null, unique


ALTER TABLE 


alter table  student add email varchar(20) null

drop column
alter table student drop column email
alter table student alter column avg decimal
alter table student alter column email varchar(20)


SELECT * FROM STUDENT
update student set avg=(s1+s2)/2 where name ='raja'
update student set avg=(s1+s2)/2 where name ='srk'
update student set avg=(s1+s2)/2 , email='rrr22@gmail.com' where name ='aaa'

alter table student alter column email int 

update student set avg=(s1+s2)/2 , email='rrr22@gmail.com' where name ='bbb'

alter table student drop column email



update student set avg=(s1+s2)/2 , email=222 where name ='bbb'
alter table student alter column email varchar(20)
update student set avg=(s1+s2)/2 , email='rrr22@gmail.com' where name ='aaa'


alter table student  add change AVG total [int];

alter table student alter column email varchar(30)
alter table student alter column s2 varchar(20)
alter table student alter column email int
alter table student alter column name int


select * from student
alter table student drop column  email


STRING

select upper(name),city from student 
select lower(name),city from student 

select SUBSTRING(name,0,3) from student
select SUBSTRING(name,1,3) from student

select name,len(name)as length from student

select len(name),upper(name),upper(substring(name,0,2))as upper, lower(name),lower(substring(name,0,3)) from student


select name,upper(name)as up,lower(name)as low,len(name)as lennam ,substring(name,len(name)-2,len(name)) from student

 select len(name),name,substring(name,len(name)-1,len(name)) from student


select * from student

CREATE SCHEMA raja

create  table  raja.student(snum int primary key,sname varchar(20),city varchar(20))

select * from raja.student

drop table raja.student

drop schema raja


VIEWS

CREATE VIEW CITY AS SELECT * FROM STUDENT WHERE CITY='HYD'

SELECT * FROM STUDENT
SELECT * FROM CITY

CREATE VIEW GOODST as select * from student where s1 >=90

select * from goodst

drop view city
drop view goodst

select * from student


TRANSACTION
select * from student 
BEGIN TRAN 
UPDATE STUDENT SET S1=S1-50 WHERE NAME = 'RAJA'

commit tran

select * from student

ROLLBACK begin TRAN

BEGIN TRAN 
SAVE TRANSACTION S1
 UPDATE STUDENT SET S1=S1+50 WHERE NAME = 'RAJA'
SAVE TRANSACTION S2
 UPDATE STUDENT SET S1=S1+50 WHERE NAME = 'AAA'
SAVE TRANSACTION S3
 UPDATE STUDENT SET S1=S1+50 WHERE NAME = 'BBB'

SELECT * FROM STUDENT order by s1 desc
ROLLBACK TRAN s2

roll



DROP BEGIN TRAN


select * from student

create procedure p1 as 
begin

select * from student where city='bhel'
end

exec   p1
execute 
drop procedure p1

alter procedure p1 as 
begin
select * from student where city='hyd';
end;




create  procedure p2 (@city as varchar(20)) as
begin
 select * from student where city=@city;
end;

exec p2 knl;
exec p2 'hyd';




create  procedure p3 (@city as int) as
begin
select * from student where city=@city;
end;

exec p3 100;
drop procedure p1
drop procedure p4

update student set s1=98 where name='raja'

select * from student



alter table student add email varchar(20)

select * from student 


alter table student 

create synonym raja for student

select * from raja

select * from student where name is not null

insert into student values ('rrr','knl','male','34')



select * from sales s left join  customer c on s.snum=c.snum where cname is null
select * from sales s left join  customer c on s.snum=c.snum where cname is not null

select name+' '+'city is '+' '+ city as info from student
select upper(name)+'  native  is '+city+ '   and  human  is ' +gender as info from student

sp_rename student,students


sp_rename students,student

select *from students
select * from sales
select * from sales s right join customer c on s.snum=c.snum
select * from sales s left join customer c on s.snum=c.snum
select * from sales s full join customer c on s.snum=c.snum

