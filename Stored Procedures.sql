select distinct(status)
from orders;
where	Status="shipped"



#Stored procedure to Avoid Repeated task
DELIMITER // 
CREATE	procedure getordercount1 (In Para_Status varchar(50), out total int)
begin
select distinct count(*) into Total 
from orders
where Status=para_Status;
End//
call getordercount ("shipped", @abc);
select @abc;
drop procedure getordercount1;



DELIMITER //
create procedure country(In Para_country varchar(50))
Begin 
select customername,Country
from customers
where country in (para_country)
order by country;
End //
call country ("Germany");
drop procedure Country;


#procedure INOUT
DELIMITER //
create procedure Calculation(inout A int ,B int)
begin
set A=A+B;
End//
Set @abc=3;
call calculation(@abc,9);
select @abc;

#-------------------------------------------------------------1/12/23-------------------------------------------------------------------------------------

#view

create view Customersplacedorders As
select customernumber, Customername 
from Customers
inner join Orders
using (customerNumber);

Select*from CustomersPlacedorders
group by customernumber;
Drop view CustomersPlacedorders;

#create view for  top 5 customers on basis of creditlimit fron customers

create view Top5customers As 
select creditlimit, customername 
from customers;
drop view Top5customer;
Alter view Top5customers As 
select Customername ,creditlimit
from customers
order by Creditlimit Desc
limit 5 ;
Alter view Top5customers As
select customername ,creditlimit 
from customers
order by creditlimit Desc
limit 3;
select * from top5customers;

#----------------------------------------------------------------------------------------------------------------------------------------------
#INDEX
select count(*) As Total_Row from Customers ;
select count(*) As total_row from products;
select count(*) As total_Row from customers where country="USA";
select count(*) As Total_Row from products where quantityinstock;
Explain select * from customers where country = "USA";
Explain select * from products;

# clustered - primary key auto created , Clustered Indexes Manually created 

show indexes from customers;
show indexes from products;
create index Ashwini on customers(country);
create index Dell on customers(city);
Explain select *from customers where country ="Norway";
create index iot on products(quantityinstock);
Explain select *from products where quantityinstock;
drop index iot on products;

#-----------------------------------------------------------------------4/12/23---sub Query--------------
#sub Query 
# show customer who placed order using subQuery 
select distinct(customernumber) , customername  from customers ;
inner join orders
using (customernumber)
group by customernumber;

select distinct(customernumber),customername from customers
where customernumber  in (select customernumber from orders);
 
  #Show ordernumber with total quantity ordered
  
select ordernumber, max(quantityordered), customernumber from orderdetails
inner join orders
using (ordernumber)
group by ordernumber;

select ordernumber , max(quantityordered)  from orderdetails
where ordernumber in (select ordernumber from orders)
group by ordernumber;

#-----------------------Sum function are use ------
select ordernumber, sum(quantityordered),customernumber from orderdetails
inner join orders
using (ordernumber)
group by ordernumber;
 

select ordernumber , sum(quantityordered) from orderdetails
where ordernumber in (select ordernumber from orders)
group by ordernumber;

 #Show Ordernumber with max quantyordered
 
 select ordernumber , max(quantityordered) from orderdetails
 group by ordernumber
 order by max(quantityordered) desc
 limit 1;
 
 select ordernumber , max(quantityordered) from orderdetails
 where quantityordered = (select max(quantityordered) from orderdetails)
 group by ordernumber;
 
 Select ordernumber,sum(quantityordered) from orderdetails
group by ordernumber
order by sum(quantityordered) DESC
limit 1;

select ordernumber ,sum(quantityordered) from orderdetails
where quantityordered =(select sum(quantityordered) from orderdetails)
group by ordernumber;
 
 # Like all the ordernumber whose quantity ordered value is more than the average quatity
 
 Select ordernumber, quantityordered from orderdetails
 where quantityordered > (select Avg(quantityordered) from orderdetails)
 order by quantityordered;
 #--------------------------------------------------------------------------------------------------------------
 # Auto Increment
 use Ashwini 
 create table Train  (
 Train_No int primary key auto_increment ,
 train_Name varchar(50),
 station varchar(50)
 );
 
 insert into train 
 value(102,"Rajdani","pune");
 insert into Train (train_Name ,station) 
 value ("vandebharat" , "mumbai");
 insert into Train 
 value(null , "cityexpress" ,"nashik");
 insert into train 
 value (101,"rajdani" ,"pune");
 select * from train;
 delete from train 
 where train_No =101;
 
 #--------------------------------------------------------------------------05-12-23-----------------------------------------------------
 #function
 
 use Ashwini 
 create table candidate1(
 emp_ID int primary key,
 Emp_nam varchar (10),
 salary int ,
 DOB date 
 );
 drop table candidate1;
 truncate TABLE CANDIDATE1;
 insert into candidate1
 values ( 1,"A", 10000,"2000-01-23") ,( 2,"B",20000,"2001-06-14") ,( 3,"C",30000,"1998-11-21");
 select * from candidate1;
 
 DELIMITER //
 CREATE FUNCTION CALCULATEAGE(xyz date )
 returns int
 deterministic 
 
 begin
 declare todaysdate date;
 select current_date into todaysdate;
 return year(todaysdate)-year(xyz);
  end //
  drop function calculateAge;
 


 select emp_ID,emp_nam,salary,DOB,calculateAge(DOB) as age from candidate1;
 select * from candidate1;
 
 
#create function to find cost of product from orderdetails.
 SELECT * FROM Orderdetails;
 DELIMITER //
 create function cost(x int,Y int)
 returns int 
 deterministic
 
 begin
 declare totalcost int;
 set totalcost=x*y;
 return totalcost;
 end //
 
 select ORDERNUMBER, quantityordered,priceeach, cost(quantityordered,priceeach) from orderdetails;
  drop function cost;
 
 

  