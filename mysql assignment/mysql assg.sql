create database college;
use college;
create table Student (
    id int ,
    name varchar(50),
    age int,
    department varchar(50),
    mark int
);
insert into Student (id, name, age, department, mark)values
(1, "Arun", 20, "CSE", 85),
(2, "Priya", 21, "ECE", 92),
(3, "Kavin", 20, "IT", 75),
(4, "Divya", 22, "CSE", 88),
(5, "Rahul", 21, "MECH", 65);
set sql_safe_updates=0 ;
update student set mark=99 where id=1;
delete from student where id=5;
select * from student where mark>=80;

-- 2.employee management table

create table employee(
    empid int primary key,
    empname varchar(50),
    salary int,
    department varchar(50),
    city varchar(50)
);
insert into Employee (empid, empname, salary, department, city)values
(1, 'Arun', 25000, "IT", "Chennai"),
(2, 'Priya', 35000, "HR", "Coimbatore"),
(3, 'Kavin', 40000, "IT", "Bangalore"),
(4, 'Divya', 28000, "Finance", "Chennai"),
(5, 'Rahul', 45000, "Sales", "Madurai");
select * from employee;
update employee set salary=40000 where id=2;
delete from employee where city="chennai";
select * from employee where salary>30000;

-- product management table

create table product (
    product_id int primary key,
    product_name varchar(50),
    price int,
    quantity int,
    category varchar(50)
);
insert into Product (product_id, product_name, price, quantity, category)values
(1, "Laptop", 45000, 10, "Electronics"),
(2, "Mouse", 500, 25, "Accessories"),
(3, "Keyboard", 800, 15, "Accessories"),
(4, "Mobile", 20000, 12, "Electronics"),
(5, "Notebook", 100, 50, "Stationery");
select* from product;
update product set price=600 where product_id=2;
delete from product where product_id=5;
select * from product where price<1000;



