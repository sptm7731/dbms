comand line...
create database name_of_database;

use name_of_database;

create table table_name(
ID int,
LastName varchar(50),
FirstName varchar(50),
address varchar(50),
city varchar(50));

insert into table_name
values(1,'mobin','shakibul islam','bashabo','dhaka');

select * from table_name;

--select * into table_name_2 from table_name
--select p_id, firstname into table_name_2 from table_name
--drop table table_name

Foreign_key!!!----------------------------------------------
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);

alter table table_name
alter column column_name change_anything

create table empl(
eid int,
name varchar(50),
age varchar(100),
salary int,
dept varchar(50))
select * from empl

insert into empl values
( 2,'john',28,2000,'hr')

insert into empl values
( 3,'abdul',23,3000,'sales')

insert into empl values
( 4,'rahim',24,2500,'account')

insert into empl values
( 5,'adam',26,8500,'sales')

insert into empl values
( 6,'rayhan',25,5100,'account')

update empl set salary=120000 where eid=1
--UPDATE table_name
--SET column1 = value1, column2 = value2, ...
--WHERE condition;

select top 3 name from empl order by salary

select age from empl where salary between 5000 and 10000

select eid from empl where dept ='saled' or dept='account' and salary > 2500

select name from empl where name like '%m'

select name from empl where dept='account' or dept='sales' or dept='hr'--or we can use
--SELECT * FROM Customers
--WHERE Country IN ('Germany', 'France');

select name from empl where salary like '______'
--SELECT * FROM Customers
--WHERE CustomerName LIKE 'a%';



--Wildcard Characters in SQL Server
--Symbol	Description	Example
--%	Represents zero or more characters	bl% finds bl, black, blue, and blob
--_	Represents a single character	h_t finds hot, hat, and hit
--[]	Represents any single character within the brackets	h[oa]t finds hot and hat, but not hit
--^	Represents any character not in the brackets	h[^oa]t finds hit, but not hot and hat
---	Represents any single character within the specified range	c[a-b]t finds cat and cbt


SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);


Check_________________________--------------------------
CREATE TABLE Persons (
    ID int IDENTITY(1,1) NOT NULL,--auto increment
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
);

DEFAULT-----------------------------------------------------
CREATE TABLE Persons (
    ID int  IDENTITY(1,1) NOT NULL,--auto increment
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

delete_------------------------------------------
DROP DATABASE testDB;
DROP table testTB;
DROP column testCOLUMN;