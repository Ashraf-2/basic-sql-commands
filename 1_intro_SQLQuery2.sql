create database sample_db;

use sample_db;

create table manushjon(
ID int,
EmpName varchar(255),
City varchar(255),
Salary int
);

insert into manushjon(ID,EmpName,City,Salary)
values('1','Tom','Mohanagar','7000');

select * from manushjon

insert into manushjon(ID,EmpName,City,Salary)
values('2','Jeniffer Witkinson','California','150000');


insert into manushjon(ID,EmpName,City,Salary)
values('3','Poristan Portia','Washington','19999910');

select * from manushjon

select ID, City from manushjon

select EmpName, City from manushjon

insert into manushjon(ID,EmpName,City,Salary)
values('3','Maria Kingstone','Washington','19999910');

select * from manushjon

select distinct City from manushjon

select EmpName, City from manushjon where Salary = 7000

select EmpName, Salary from manushjon where City = 'Washington'

select EmpName, Salary from manushjon where EmpName = 'Poristan Portia'

select EmpName, Salary from manushjon where Salary > 7000

select * from manushjon

insert into manushjon(ID,EmpName,City,Salary)
values('5','Alison Romanoft','Washington','10000');

select * from manushjon order by EmpName

select * from manushjon order by Salary

select * from manushjon order by Salary Desc

select EmpName,Salary from manushjon order by Salary 

