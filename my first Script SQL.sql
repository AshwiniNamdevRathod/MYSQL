create Database Ashwini;
use Ashwini;
Drop database Ashwini;
create table Employee(
EmpID int,
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
      
