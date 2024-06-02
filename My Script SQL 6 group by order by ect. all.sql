Use Classicmodels;

#where To See Specific Country 

select customerNumber, customerName ,Country
From customers
where country = "Uk";
select customerNumber, customerName ,Country
From customers;

#where with in two or more than 2

select customerNumber, customerName ,Country
From customers
where country IN("UK","Canada");

#OrderBy - In Specific Order 

select customerNumber , customerName ,Country
From customers
where country In("uk" ,"Canada")
order by Country desc  ; 

select count(city)As Total_City 
From Customers where
City is Not Null;
Select Count(Distinct(city ))As Total_city 
from Customers where 
city is Not null;
select count(city)As Total_city
from customers where
City is Null;
select Count(Distinct(City))As ToTal_City
from Customers where
city is Null;

#-------------------------------------------------------------------------13/11/23----------------------------------------------------------------------------------------
#Aggregate Function 
#Show Order Number for which Total Quantity is More Than 600

Select*from orderdetails;
select Ordernumber ,Sum(quantityordered) As Total_Quantity
from OrderDetails
group by Ordernumber 
having Total_Quantity >700
order by Total_Quantity desc;

Select	Ordernumber , Sum(quantityordered) As Total_Quantity
from Orderdetails
group by Ordernumber
Order by Total_quantity;

#limit
#top 2 Quantity 
#Bottom 2 quantity
Select	Ordernumber , Sum(quantityordered) As Total_Quantity
from Orderdetails
group by Ordernumber
Order by Total_quantity 
limit  2;

Select	Ordernumber , Sum(quantityordered) As Total_Quantity
from Orderdetails
group by Ordernumber
Order by Total_quantity desc
limit 2;

Select	Ordernumber , Sum(quantityordered) As Total_Quantity
from Orderdetails
group by Ordernumber
Order by Total_quantity
limit 4,2; # position



# Like
# Country Name contaions A
select Customername , Country from
Customers where Country Like "%A%";
# Not Like
# Country Name does contaions A



# Notlike 
select Customername , Country from
Customers where Country Not Like "%A%";
 #operator AND OR NOT 
 # Country Name starting A,B,C
 select Customername,country from 
 customers where country Like "A%"
 or country Like "B%"
 Or country like  "C%"
 order by country desc ;
 
 
# Country Name not starting A,B,C
Select Customername,Country from
customers where country NOt LIke "A%" 
AND country Not LIke "B%" 
AND country Not LIke "C%" 
Order by country Desc ;
#----------------------------------------------------------------------14/11/23------------------------------------------------------------------------------------------------
#Aggregate Funtion 

select sum(quantityordered)As TotalSales,
avg(quantityordered)As AverageSales,
max(quantityordered) As MaximumSAles,
min(quantityordered) As minmumSales,
Count(quantityordered) As countSales,
count(distinct(quantityordered))As DistinctCountofSales
from orderdetails;
#------------------------------------------------------Between---------------------------------------------

select ordernumber ,quantityordered
from orderdetails
where quantityOrdered between 30 and 35
order by quantityOrdered ;
#----------------------------------------------------not Between---------------------------------------------------------
 
 select orderNumber, quantityordered
 from orderdetails
 where quantityOrdered not between 30 And 35 
 order by quantityordered;
 #------------------------------------------------------------------
 select* from orders;
 select ordernumber, orderdate 
 from orders
 where orderdate between '2005-03-1' And '2005-04-1'
 order by orderDate;
 #----------------------------------------------------------------------------------
 
 
 
 
 
 
 #------------------------------------------------------------------TCL----------
 
 use Ashwini;
 create table Students(
 Roll_No int Primary key,
 Name varchar(50),
 Age int);
 select*from Students;
 Start transaction;
 
 insert into Students
 Values(1,"Ashwini",21) ,(2,"Rani", 22),( 3 ,"sunju",23);
 
 update Students
 set Age =30
 where Roll_No=3;
 
 delete from Students
 where Roll_No=3;
 
 rollback;
 
 