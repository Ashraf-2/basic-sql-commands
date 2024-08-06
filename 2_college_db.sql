create database college;

use college;

create table student(
	id int primary key,
	std_name varchar(50),
	age int not null
);

insert into student values (1,'Aman', 26);
insert into student values (2,'Ridhi', 25);
insert into student values (3,'Red Hof', 23);
insert into student values (4,'Silstone', 22);
insert into student values (5,'Nidhi', 18);

select * from student;