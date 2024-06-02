#-----------------------------------------TP2---------------------------------------------------
create table student(
ID int,
Name varchar(50),
Grade varchar(25)
);
Drop Table student;
Insert into student
values(1,"Ashwini" ,"A+"),
      (2,"Durga", "B+"),
      (3, "Shruti",  "A+"),
      (4,"Payal", "B-");
truncate student;
select *from student;
#stored Procedures
#input parameters

DELIMITER //
CREATE procedure ashwini.getstudentdata(In stu_id int)
begin
select* from student
where ID = stu_id;

End //

call getstudentdata (3);
drop procedure getstudentdata;

#How to create stored procedure using OUT parameter-
#Out parameter

DELIMITER &&
CREATE procedure ashwini.GetTopperCount ( OUT totalTopper INT)
begin
select count(id)into totalTopper
from student
where Grade = "A+";

End &&

call GetTopperCount(@totalTopper);
select @totalTopper;
drop procedure GetTopperCount ;

#InOut parameter

DELIMITER //
create procedure Calculation1(inout A int ,B int)
begin
set A=A*B;
End//
Set @abc=5;
call calculation1(@abc,4);
select @abc;

drop procedure calculation1;




DELIMITER //
CREATE procedure ashwini.GetstudentID(INOUT name varchar(100), id int)

begin
select id into name
from student
where Name = Name;

End //


Set @name = "Ashwini";
call GetstudentID(@name);
select @name;
drop procedure GetstudentID;






#----------------------------------------------------------------------------------------------------TP1-------------------------------------------------------------

# unique 
create database Presentation;
use presentation;
 create table Employee_1(
 iD int  unique,
 Name Varchar (20) ,
 Emailid varchar (20) unique,
 city varchar (20)
 );
 drop table employee_1;
  insert into Employee_1
  value (1,"Ashwini", "ashwini@gmail.com", "pune");
  select*from employee_1;
  describe employee_1;
  insert into employee_1
  value (2,"Pooja", "Pooja@gmail.com", "Sangli");
  
  #Not Null 
  
  create table Employee_2(
  id int not null,
  Name varchar(10),
  mobile int ,
  location varchar (50)
  );
  drop table employee_2;
  insert into employee_2
  value(3,"Payal",123,"Bhopal");
  select*from employee_2;
  describe employee_2;
  insert into employee_2
  value(4,"Anvay",456,"mumbai");
  
  #default
  
  create table Employee_3(
  id int not null,
  Name varchar(15),
  PanNo int ,
  country varchar (20) default"India"
  );
  
  drop table employee_3;
  Select * from Employee_3;
  describe employee_3;
  insert into employee_3(id,Name,PanNo)
  value(5,"Tina",789),
       (6,"Priya",147);