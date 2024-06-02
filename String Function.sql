#String function 
#ASCII 

Select ASCII("5All") As result ; #a-97,b-98,c-99 And A-65,B-66,C-67,  1-49,2-50


#Char length-to find length with space
select char_length("india")As result;


#Concat (Combine 2 String)
select concat("welcome", "-","india") As "Result";
select concat_ws("welcome","-","india") As "result";

#Format
select format(1000.6789,1)  As Result;
select format(1234.654,1) As result;

#insert (combine two string at any position)
select insert("google.com",1,0,"www.") As result ; ## Starting Postion 0-Without replace




#Lower
select lower("EXCELR");

#Upper
select upper("excelr");


#insert/Locate/Position (use Any One )

select instr("i live in india","live") As result; ##3 INSTR("String","Find String")
select locate("live", "i live in india") ;#3 Locate("Find Strig","String")
Select Locate("Live","I live in Pune");
Select position("live"in "i live in india"); #3 Position("Find String" IN "String")

#Trim/Ltrim/Rtrim

select Trim("             Ashwini Rathod      ") As Result ;    #Remove befor and After space 
select LTrim("             Ashwini Rathod      ") As Result;    #Left side space 
select RTrim("             Ashwini Rathod      ") As Result ;   #Right side space

#Left (No of character from left)
select Left ("united States of America",15) As Result;

#right(No of character from Right)
select right("united States of America",14)As Result ;

# Mid No of character from start postion to how many Characher
Select mid("United States of America",1,6) As Result;

# Replace (Replace the String with new string )
Select Replace("United States","States","Kingdom") As result;

# Reverse(Reverse Character)
Select Reverse("MySQL") As Result;
select reverse("Ashwini") As Ashwini; 

#substring 
select substring("www.gooogle.com",11) As result;
select substring("www.gooogle.com",1) As result;
select substring("www.gooogle.com",5) As result;

#substring index
select substring_index("www.google.com",".",1);
select substring_index("www.gooogle.com",".",-1) As result;
select substring_index("www.gooogle.com",".",-2) As result;
select substring_index("www.gooogle.com",".",2) As result;
select substring_index("www.gooogle.com",".",3) As result;
select substring_index("www.gooogle.com",".",-3) As result;