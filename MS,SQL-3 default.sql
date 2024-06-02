create table Employee(
EmpID int,
Name varchar(50),
Age int,
city varchar(25),
country varchar (50) default("India")
);
Drop Table Employee;
Insert into Employee(Empid,name,Age,city)
values(1,"Ashwini", 21 ,"Pune"),
      (2,"Durga", 20,"Nagpur"),
      (3, "Shruti", 22, "mumbai"),
      (4,"Payal",25, "Bhopal");
 select * from Ashwini.Employee; 
 insert into employee(empID,name,Age,city,country)
 value(1,"Arav",2,"anadnagar","pk");
 
 Alter table employee
 Add id varchar(50);
 Alter table employee
 Add Geneder Enum ("M","F");
 alter table employee
 drop country ;
 
 
 