create database functions;
use functions;

create table Employers(Id int primary key,Name varchar(30),Age int,Department varchar(30),Salary int, Joining_Date date);
insert into Employers (Id,Name,Age,Department,Salary,Joining_date) values(1,'Sabarish',20,'IT',50000,'2026-01-15'),(2,'Lingesh',30,'MANAGER',45000,'2025-11-25'),(3,'MUTHUVEL',28,'HR',55000,'2026-03-23'),
(4,'Karthick',24,'MARKETING',30000,'2026-05-18'),(5,'Sakthivel',28,'FINANCE',40000,'2026-02-14');
select*from Employers;
select name,salary from Employers;
select*from employers where Department='IT';
select*from employers where Salary>40000;
select*from employers where Age<30;

select*from employers where salary between 30000 and 60000;
select*from employers where department ='HR' or department ='Finance';
select*from employers where name like'A%';
select*from employers where name like'%N';
select*from employers where not age = 25;
select*from employers order by salary;
select*from employers order by salary desc;
select*from employers order by salary asc,age asc;
select*from employers order by name asc;
select name,max(salary) from employers group by name;
select min(salary) from employers;
select avg(salary) from employers;
select sum(salary) from employers;
select count(*) from employers;
select Department,sum(salary) from employers group by Department;
select Department,avg(salary) from employers group by Department;
select Department,count(*) from employers group by Department;
select Department,max(salary) from employers group by Department;
select Department,min(salary) from employers group by Department;
select department,sum(salary) from employers group by department having sum(salary)>100000;
select department,count(*) from employers group by department having count(*)>3;
select department,avg(salary) from employers group by department having avg(salary)>40000;
select upper(name) from employers;
select lower(name) from employers;
select length(name) from employers;
select left(name,3)  as Letters from  employers;






