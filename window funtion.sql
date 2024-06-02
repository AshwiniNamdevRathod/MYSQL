#window funtion 
#Que. show the total quantityordered for each order number
#---------------------------------------------------------Aggregate function , sum ,Avg ,min,max, count, distinct count---

select ordernumber ,count(quantityordered) As Tatal_Qty
from orderdetails
group by orderNumber;

select ordernumber ,sum(quantityordered) over() as total_qty
from orderdetails;
select distinct(ordernumber),sum(quantityordered) over(partition by ordernumber) As total_qty
from orderdetails
order by total_qty Desc
limit 5;
select sum(quantityordered) as result 
from orderdetails;

#--------------------------------------------------Ranking------------------------------------------
#Row_Number

Select row_number() over() as Row_No,
ordernumber from orderdetails
order by orderNumber;

select row_number()over(partition by orderNumber order by quantityOrdered desc)As Row_no,
orderNumber,quantityOrdered
from orderdetails;
#----------------------------------------------------------------------------------------------Rank-----------------------
#Rank
Select rank() over(order by orderNumber) as Row_No,
ordernumber from orderdetails
order by orderNumber;
 
select 
rank()over(partition  by  quantityOrdered order by orderNumber ) As ranking,
quantityOrdered , ordernumber from orderdetails;
#------------------------------------------------------------------------------------------Dense_Rank----------------------
#Dense rank 

select dense_rank()over(order by ordernumber desc ) As ranking,
ordernumber from orderdetails;
#------------------------------------------------------------------------with partition----------------------------
select 
row_number()over (partition by ordernumber ) As Row_no,
rank() over (order by ordernumber ) As ranking ,
dense_rank() over(order by ordernumber ) As denseranking ,
ordernumber
from orderdetails;
#--------------------------------------------------------------with order by--------------------------------
select Row_number()over (order by orderNumber) As Row_no,
rank()over(order by orderNumber ) As ranking,
dense_rank()over(order by ordernumber) As denserank,
ordernumber from orderdetails;

#------------------------------------------------------------------------------------percent_rank--------------
#percent rank  destribution between 0-1

Select percent_rank() over(order by orderNumber) as Row_No,
ordernumber from orderdetails
order by orderNumber;


select percent_rank() over(partition by quantityOrdered order by orderNumber ) as percentranking,
quantityOrdered,orderNumber
from orderdetails;

#-------------------------------------------------------------------------------------------------Cume_dist----------------
#Cume_dist

Select cume_dist() over(order by quantityOrdered) as C,
quantityordered from orderdetails 
order by quantityordered;

select cume_dist() over(partition by quantityOrdered order by orderNumber ) as cume_disranking,
quantityordered, ordernumber 
from orderdetails;
 
 #--------------------------------------------------------------------------Ntile-----------------------
 #Ntile divide the entire data w.r.t our own requirement
 
 select row_number() Over(order by Ordernumber) As Rownumber,
 ntile(4) over (order by ordernumber) As Ntileop,
orderNumber,quantityOrdered
from orderdetails;

#---------------------------------------------------------------with partition-----------------------
select row_number() over() As Rownumber,
ntile(4) over (partition by ordernumber)As Ntileop,
ordernumber , quantityordered
from orderdetails;

#------------------------------------------------------------lag=previous values
select lag(quantityordered,1)over(partition by ordernumber )As previous_value,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;

select lag(quantityordered,1)over( )As previous_value,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;

#-----------------------------------------------------------------------lead=next values-----------
select lead(quantityOrdered,1)over()As Next_value,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;


select lead(priceEach,1)over(partition by ordernumber )As Next_value,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;
#-----------------------------------------------------------------------------first values
select first_value(quantityordered)over( )As firstvalue,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;

select first_value(quantityordered)over(partition by ordernumber )As firstvalue,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;
#--------------------------------------------------------------------------------last values
select last_value(quantityordered)over(partition by ordernumber )As lastvalue,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;

select last_value(quantityordered)over()As lastvalue,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;
#------------------------------------------------------------------------------------Nth values
select nth_value(quantityordered,2)over( )As Nthvalue,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;

select nth_value(quantityordered,3)over(partition by ordernumber )As Nthvalue,
ordernumber,quantityordered,productcode , priceEach ,ordernumber
from orderdetails;