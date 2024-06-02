#Trigger 
show triggers
/*triggers
types of trigger
before After 
insert delete update
1 before insert 
2 After insert 
3 Before Delete
4 After Delete
5 Before Update
6 After  Update*/ ;
#before insert trigger

Create  table Emp (
emp_ID int primary key,
 Emp_nam varchar (10),
 salary int ,
 working_date date,
 working_hour int 
 );
 DROP TABLE EMP;
 insert into emp 
 values  (1001,"A",10000,"2023-12-01",12),(1002,"B",2000,"2023-12-01",10),(1003,"C",30000,"2023-12-01",11);
 select * FROM EMP;
 insert into emp 
 value(1,"D",15000,"2025-03-05",-15);
 
	DELIMITER //
    CREATE trigger Before_insert_emp_working_hour
    before insert
    on Emp for each row
    begin 
    if new.working_hour<0 then set 
    new.working_hour=-new.working_hour;
    end if;
    End //
    insert into emp 
    value ( 2,"S",80000,"2026-05-08",-9);
    show triggers;
    drop trigger before_insert_emp_working_hour;
    
    
    #After Trigger 
    
    create table EmpAfter(
    EmployeeID int primary key,
    Name varchar ),
    Age int);
    create table Emp_Audit(
    ID int primary key Auto_increment,
    Audit_Discuription varchar(500));
    drop table EmpAfter;
    drop table Emp_Audit;
    
DELIMITER //
CREATE trigger After_insert
after insert
on EmpAfter for Each row
begin
insert into Emp_Audit 
values (null,concat 
             
             
             
             
             
             
             
		
        
        