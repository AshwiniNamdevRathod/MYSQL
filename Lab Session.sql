#day2
drop database ExcelR;
create database ExcelR;
Use ExcelR;
create table Emp(
Emp_ID int primary key auto_increment,
Emp_name varchar (100),
Age int check ( Age>18),
company varchar (100) default "ExcelR",
DoJ Date 
);
insert into emp
value(1,"A",20,"TCS", "2023-01-11"),
(2, "B", 21 , "infosys", "2023-02-12"),
(3, "c",25,"Tata", "2023-05-1");
insert into emp(emp_name ,Age , DoJ)
value("D",27,"2023-06-23"); #valid
insert into Emp(Emp_name ,Age,Doj)
value("e",10,"2023-6-21");
insert into Emp(emp_name ,Age,doj)
value("f",27,"2023-08-15");
drop table emp;
select* from emp;
#------------------------------------------------------------------------------------------------------------------------------------------------------------------

#day 3
select distinct(country) from customers
where country like "A%" or Country like "B%" or Country like "C%" 
order by country;

#------------------------------------------------------------------------------------------------------------------------------------------------------------

#Day4
Select customernumber ,creditlimit ,
case
when creditlimit > 100000 then "High"
when creditlimit between 25000 and 100000 then "medium"
else 
"low"
End as customerlevel
from customers
order by creditlimit desc;

#---------------------------------------------------------------------------------------------------------------------------------------------------

#Day5
select 
year(paymentdate) as "year",
MonthName( paymentdate) As "monthname",
sum(Amount)as"totalAmount"
from Payments
group by year(paymentdate),MonthName( paymentdate);
#-------------------------------------------------------------------------------------------------------------------------------------------
#Day6
create table student(Roll_No int primary key ,
Name varchar (100) not null ,
Age int check (Age between 5 and 18 ),
Parent_EmailID varchar(100) unique,
Adress Varchar (100) default "-"
);
insert into student 
value( 1, "rohit", 12, "rohit@gamil.com","02sevadas");
insert INTO student (roll_no,name,Age)
value (2, "saki",10);
select * from student ;


