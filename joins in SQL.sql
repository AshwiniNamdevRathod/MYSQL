#joins --------------------------------------22-11-23--------------------
# 1 Inner Join   2 Left Join  3 Right Join  4 Full outer 5 Self Join 6 Cross Join

use Ashwini;
create table Employee(
Emp_id int primary key ,
name varchar (10)
);
 insert into employee 
 values (1,"A") ,(2, "B") ,(3, "C" );
 insert into employee
 value (10,"W");
  create table Department (
  Dept_Id int primary key,
  name varchar (10),
  Emp_id int );
  
  insert into department
  values(101,"sales" ,1) ,(102, "TDM",2) ,(103, "marketing",3 ),(104,"finance",4);
  insert into department
  value (108,"HR",7);
  select* from employee;
  select*from Department;
   drop table employee;
   drop table department;
   
   select* from employee
   inner join department on employee.Emp_Id = department. Emp_Id ;
    select* from employee
   left join department on employee.Emp_Id = department. Emp_Id ;
    select* from employee
   right join department on employee.Emp_Id = department. Emp_Id ;
   select * from employee
   inner join department
   using(Emp_id); #this is used for same common name
   
   #----------------------------------------------------------23-11-23------------------
   
   #full outer join = left + right Union 
   
   select employee.*,department.name ,department.Dept_Id from employee
   left join department
   using(emp_id)
   union
   select employee.*,department.name,department.Dept_Id from employee
   right join department
   using (emp_id);
   # cross join 
   select* from employee
   full join department;
   
   # top 5 customer 2 place order 
  select customernumber ,customername , sum(priceeach*quantityordered )as cost
  from customers
  inner join orders
  using (customernumber)
  Inner join orderdetails
  using(ordernumber)
  group by customerNumber
  order by cost desc
  limit 5;
  
  use Ashwini;
  create table Laptop(
  name varchar (50)
  );
  insert into Laptop 
  value("lenova"),("Apple");
  create table colour (
  colourname varchar(50)
  );
  insert into colour
  value ("back"),("silver"),("Golden");
  select *from Laptop ;
  select*from colour;
  select * from laptop 
  cross join colour 
  order by laptop.name;
  drop table colour;
  
#--------------------------------------------------------------24-11-23------------------------------------------------------  
  #Self join 
  use ashwini;
  create table School(
  RollNo int primary key ,
  student_name varchar (10) ,
  Age int ,
  teacher_id int ,
  teacher_name varchar (100)
  );
  insert into school 
  values( 1, "Ashwini",18,42,"dipti"),(2,"priya",11,110,"priydarshani"),
  (3,"Anita",30,1,"leena"),
  (4,"namrata",19,10,"vivek");
  Select*from school;
  drop table School;
  truncate table School;
  select
  T1.Rollno,
  T2.teacher_id,
  T1.Student_name,
  T2.teacher_name
  from School As T1
	join School As T2
 on T1.RollNo=T2.Teacher_Id;
 #----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 #Date function
 
 select ('2023-11-24  12:50:10') as result;
 select (2023-11-24) as Result;
 select date('2023-11-24  12:50:10') as result;
 select time('2023-11-24  12:50:10') as result;
 
 #current 
 Select current_date() As result;
 select current_time() As Result;
 select current_timestamp() As result;
 
 #now 
 select now() As Result;
  #DateAdd 
  select date_add('2023-01-01',interval 5 year ) As Result;
  select date_add('2023-01-01',interval -5 year ) As Result;
  select date_add('2023-01-01',interval 5 month ) As Result;
  select date_add('2023-01-01',interval -5 month ) As Result;
  select date_add('2023-01-01',interval 1 quarter ) As Result;
  select date_add('2023-01-01',interval 1 day ) As Result;
  select date_add('2023-01-01 00:00:00',interval 5 hour ) As Result;
  select date_add('2023-01-01 00:00:00',interval 45 second ) As Result;
  
  
  #dateDiff
   select datediff(year,'2023-01-01','2020-01-01' ) As Result;
   
   Select date_format(now() ,"%d-%M-%Y"); #M full form of month name
   Select date_format(now() ,"%d-%m-%Y"); #m  Small form of month name
   Select date_format(now() ,"%d-%b-%Y"); #b short form of Date
   Select date_format(now() ,"%d-%m-%y"); # All Same 