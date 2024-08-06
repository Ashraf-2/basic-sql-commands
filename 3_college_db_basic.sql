use college
select * from student

insert into student(id, std_name, age) values (7,'Ruhit',20),(8,'Rumana', 22);

select std_name from student

use sample_db
select * from manushjon

insert into manushjon values(6,'Roki Rockstar','Alabama',12000)

select * from manushjon

select distinct City from manushjon 

select Salary,EmpName from manushjon where Salary <10000;

use college
select * from student

select * from student where age <20

select * from student where age >20

select * from student where std_name = 'Ridhi'

select * from student where age <=20

select * from student order by age

select * from student order by age desc

select * from student order by age, id desc

select * from student where std_name = 'Nidhi' AND age = 18 
select * from student where std_name = 'Nidhi' OR age < 20 
select * from student where std_name = 'Nidhi' or std_name = 'Ridhi'

select * from student where not age  = 25 and not age = 22

select * from student where age in (25,22,26)
select * from student where std_name not in ('Aman','Ridhi')

-- use of 'between'; works like range
select * from student  where  age between 18 and 22 
select * from student  where  age between 18 and 22 order by age
select * from student  where  age between 18 and 22 order by age desc
select * from student  where  age between 18 and 22 order by std_name 

-- specified character
-- task: find out data where student name starts with 'R' only 
select * from student where std_name like 'R%' --data where name starts with 'R'
select * from student where std_name like '_u%'
select * from student where std_name like '__m%'
select * from student where std_name not like 'R%' -- except name starts with 'R' will get.

-- max() funciton 
select max(age) from  student  -- get the maximum age
select min(age) from student -- get minumum age
select max(age) as Result from student -- get max age as named as Result 

-- use of sum() function 
select sum(age) as 'TOTAL AGE' from student 
select sum(age) as 'TOTAL AGE' from student where age <20

-- use of avg() function 
select avg(age) as 'Avarage AGE' from student

-- use of count() function 
select count(std_name) from student -- get total number of student 
select count(std_name) from student where age <20 -- get total number of students who are have age bellow 20

-- use of Alter Table statement ( it is use to add a new column in existing database)
alter table student add Dept varchar(20);
select * from student
-- remove a column
alter table student drop column Dept -- to remove a column 

--Update / add data in column (dept) 
insert into student(id, std_name, age) values (9,'Biplob',23),(10,'Harun',27);
update student set Dept = 'PSci' where id = 10
update student set Dept = 'CSE' where id in (1,2,3)
update student set Dept = 'EEE' where id in (5,8)
update student set Dept = 'ME' where id in (4,6)
update student set Dept = 'Math' where id in (7,9)
select * from student

-- how many student is studying on 'CSE' Dept?
select count('std_name') from student where Dept = 'CSE'
select count('std_name') from student where Dept = 'ME'
select count(std_name) from student where age <20

insert into student(id, std_name, age) values (11,'Mosharrof',47),(12,'Rajib',27);
update student set Dept = 'Theatre' where id = 11
update student set Dept = 'ELit' where id = 12

-- use of check function 

-----


-- update scholarship of 1k for student id =1 
update student set Scholarship = 1000 where id = 1
select * from student

-- copy a table 
select * from student
select id,age,Dept into Std_copy from student -- copy these columns. also you can copy whole table. 
select * from Std_copy

-- use of 'select top'
select * from student
select top 5 * from student 
select top 60 percent * from student
select top 2 * from student where age < 23

-- backup database (incomplete)

----------


-- create a view
create view [cse_student] as select std_name,Dept from student where Dept = 'CSE';
select * from [cse_student]

create view [EEE_student] as select std_name,Dept from student where Dept = 'EEE';
select * from [EEE_student]

-- number of tables in a sql database. 
SELECT COUNT(*)
FROM information_schema.tables
WHERE table_type = 'BASE TABLE' 
AND table_catalog = 'college';

select * from EmpAddress

-- drop a table 
-- sql command: drop table EmpAddress

select * from employee where EmpName like 'Ma%'

select distinct City from employee

select City, sum(Salary) from employee group by City