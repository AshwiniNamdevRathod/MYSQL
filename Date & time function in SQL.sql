#Date/time  function yyy-mm-dd, HH:MM:SS 2023-11-24
 
 select ('2023-11-24  12:50:10') as result;
 select (2023-11-24) as Result;
 select date('2023-11-24  12:50:10') as result;
 select time('2023-11-24  12:50:10') as result;
 
 #current DATE / Current TIME  / currenttime Stamp 
 Select current_date() As result;
 select current_time() As Result;
 select current_timestamp() As result;
 
 #now 
 select now() As Result;
 
  #DateAdd 
  # DateAdd + for Next - for previous  Year Month Quarter Day
  
  select date_add('2023-01-01',interval 5 year ) As Result;
  select date_add('2023-01-01',interval -5 year ) As Result;
  select date_add('2023-01-01',interval 5 month ) As Result;
  select date_add('2023-01-01',interval -5 month ) As Result;
  select date_add('2023-01-01',interval 1 quarter ) As Result;
  select date_add('2023-01-01',interval 1 day ) As Result;
  select date_add('2023-01-01 00:00:00',interval 5 hour ) As Result;
  select date_add('2023-01-01 00:00:00',interval 45 second ) As Result;
  Select date_add('2023-01-01 00:00:00',Interval 2.45 Hour_Minute) As Result;
  
  
  #dateDiff
   select datediff(year,'2023-01-01','2020-01-01' ) As Result;
   Select timestampdiff(year,'2023-01-01','2020-01-01') As result ; # Difference in terms of Year  quarter Month Day Hour Minute Sec
   
   
   #date_format
   Select date_format(now() ,"%d-%M-%Y"); #M full form of month name
   Select date_format(now() ,"%d-%m-%Y"); #m  Small form of month name
   Select date_format(now() ,"%d-%b-%Y"); #b short form of Date
   Select date_format(now() ,"%d-%m-%y"); # All Sames  or last 2 digit of year  small
   
   
   
