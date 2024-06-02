#/This is Used To Create Database ,table,insert,Records into it/
create Database Ashwini;
use Ashwini;
Drop database Ashwini;
create table Employee(
EmpID int,
Name varchar(50),
Age int check(Age>0),
city varchar(25)
);
Drop Table Employee;
Insert into Employee
values(1,"Ashwini", 21 ,"Pune"),
      (2,"Durga", 20,"Nagpur"),
      (3, "Shruti", 22, "mumbai"),
      (4,"Payal",25, "Bhopal");
 select * from Ashwini.Employee;     
 select Name, city from Employee;
 Select city,Name from Employee;
 insert into Employee (Empid ,Name)
 values(5,"Sneha"),(6,"Priya");
 insert into Employee
 values(7,"juhi",24,null);
 
 
 #Not Null - Null valuesCan not be Added#
 create table Employee1(
EmpID int not Null,
Name varchar(50),
Age int,
city varchar(25)
);
Drop Table Employee1;
Insert into Employee1
values(1,"Ashwini", 21 ,null),
      (2,"Durga", 20,"Nagpur"),
      (null, "Shruti", 22, "mumbai"),
      (4,"Payal",25, "Bhopal");
 select * from Ashwini.Employee1; 
 insert into Employee1
 value(1,"ashu",18,"ymt");
 truncate Employee1;
 
 
 # UniQue - Can not Add Duplicates
 create table Employee2(
EmpID int Unique,
Name varchar(50),
Age int,
city varchar(25)
);
Drop Table Employee2;
Insert into Employee2
values(1,"Ashwini", 18 ,"Pune"),
      (2,"Durga", 20,"Nagpur"),
      (3, "Shruti", 22, "mumbai"),
      (4,"Payal",25, "Bhopal");
 select * from Ashwini.Employee2;
 insert into Employee2
 value(5,"ashu",18,"ymt");
 insert into employee2
 value (1,"Ashu", 10,"ymt");
 
 
 # NOT NULL AND UNIQUE values Not to be Added #
 create table Employee3(
EmpID int Unique not null,
Name varchar(50),
Age int unique,
city varchar(25)
);
Drop Table Employee3;
Insert into Employee3
values(1,"Ashwini", 18 ,"Pune"),
      (2,"Durga", 20,"Nagpur"),
      (3, "Shruti", 22, "mumbai"),
      (4,"Payal",25, "Bhopal");
 select * from Ashwini.Employee3;
 insert into Employee3
 value(5,"ashu",19,"ymt");
 
 
 #TRUNCATE delete Records drop used to delete Table #
  truncate table employee ;
 select * from Employee ;
 drop table employee;
 
 
 
 #ENUM it will accept only valeus which are available in the Enaum condition 
 
create table Employee(
EmpID int,
Name varchar(50),
Age int,
city varchar(25),
Gender enum ("male", "female") 
);
Drop Table Employee;
Insert into Employee
values(1,"Ashwini", 21 ,"Pune" ,"female"),
      (2,"Durga", 20,"Nagpur","female"),
      (3, "Shruti", 22, "mumbai","female"),
      (4,"Paya",25, "Bhopal","male");
 select * from Ashwini.Employee; 
 insert into Employee
 value(5,"anvay",1,"UKD","male");
 
 
 #Default

create table Employee(
EmpID int,
Name varchar(50),
Age int,
city varchar(25),
Gender enum ("male", "female"),
Country varchar(50), default ("-")
);
Drop Table Employee;
Insert into Employee
values(1,"Ashwini", 21 ,"Pune" ,"female"),
      (2,"Durga", 20,"Nagpur","female"),
      (3, "Shruti", 22, "mumbai","female"),
      (4,"Paya",25, "Bhopal","male");
 select * from Ashwini.Employee; 
 insert into Employee
 value(5,"anvay",1,"UKD","m");

 
 
 #Alter
 
create table Employee4(
EmpID int,
Name varchar(50),
Age int,
city varchar(25)
);
Drop Table Employee4;
Insert into Employee4
values(1,"Ashwini", 21 ,"Pune" ),
      (2,"Durga", 20,"Nagpur"),
      (3, "Shruti", 22, "mumbai"),
      (4,"Payal",25, "Bhopal");
 select * from Ashwini.Employee4;  
 Alter table Employee4
 Add country1 varchar (50) default("india");
 #add new clounm in Exsiting table
 
 Alter table Employee4
 drop country;
 #drop remove colunm in exsiting table
 Alter table employeed
 rename employee;
 
      #describe TO SEE DETAIL INFORMATION
 describe EMPLOYEE4;
 
 #MODIFY
 Alter table Employee4 
 modify Empid int not null unique;
 alter table employee 
 modify country varchar(25) default"india";
 Alter table employee
rename column EmpID to ID;
Alter table Employee
rename column name to EmName;
select * from Ashwini.Employee; 


