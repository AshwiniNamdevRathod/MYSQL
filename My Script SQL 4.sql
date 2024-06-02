#primary Key 

create table Employee(
EmpID int primary key,
Name varchar(50),
Age int,
city varchar(25)
);
Drop Table Employee;
Insert into Employee
values(1,"Ashwini", 21 ,"Pune"),
      (2,"Durga", 20,"Nagpur"),
      (3, "Shruti", 22, "mumbai"),
      (4,"Payal",25, "Bhopal");
 select * from Ashwini.Employee; 
 Insert into Employee
values(11,"Ashwini", 21 ,"Pune");

truncate table employee;
describe  Department;


create table department(
Dept_ID int primary key,
Name varchar(50),
EmpID int,
foreign key(EmpID)
References Employee(EmpID)
On delete cascade   #Delete from both Parent And Child 
On Update Cascade   #Update From Both Parent And Child
);
insert into Department
value (101,"HR",4),(102,"Marketing",2),(103,"Sakes",10);
select*from Department ;
insert into Department
value (108,"Finances",11);
drop table Department;
select* from department;
Select*from employee;

#delete from both table

 delete from Employee where
 EmpID =4;
 
 
 #Update in both table
 
 Update employee Set EmpID=1
 where EmpID=2;
