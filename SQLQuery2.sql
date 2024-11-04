create database ayanfe_db

create table employee(
staffid varchar (255) not null,
firstname varchar (255) not null,
secondname varchar (255),
gender varchar (10),
date_of_birth date,
hiredate datetime,
primary key (staffid)
)

select*from employee

insert into Employee (staffid, firstname, secondname, gender, Date_of_Birth, hiredate)
values ( 'AB401', 'ayan', 'olakun', 'female', '1992-08-22', '2018-02-09'),
( 'AB212', 'okorie', 'mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB223', 'joshua', 'chukwuemeka', 'male','1980-10-09', '2022-02-09'),
( 'AB234', 'sanni', 'ibrahim', 'male','1958-10-09', '2019-09-23'),
( 'AB254', 'mercy', 'olanipekun', 'female','1982-10-09', '2020-02-09'),
( 'AB249', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB298', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB260', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB281', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09')

drop table employee

delete from employee
where staffid = 'ab281'

insert into employee
where staffid = 'ab281'

truncate table employee

,,,,,,,,,,,,,12/09/2024,,,,,,,,,,,,,,

--------identity in sql-----------

CREATE TABLE PERSON(
personid int identity (1,1) primary key not null,
personname varchar (255) not null,
age int
)

insert into PERSON (personname, age) 
values ('saidu', 45),
('adebanjo', 49),
('olorunda', 33),
('martha', 88),
('sandi', 100),
('jackson', 22),
('okunola', 19),
('esther', 45)

select*from person

--------insert more records into employee table-----

insert into [dbo].[Employee]
values ( 'AB200', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB405', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB282', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB278', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09'),
( 'AB240', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB299', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB268', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB286', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB270', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09')

select*from [dbo].[employee]

--------to create second table called salary table------

CREATE TABLE SALARY(
Salary_id int identity (1,1) not null,
staffid varchar (255),
firstname varchar (255),
lastname varchar (255),
department nvarchar(max),
salary decimal (10,3) ----10; precision, 3; scale)
)


select*from [dbo].[SALARY]

------INSERT RECORDS INTO SALARY TABLE-------

insert into salary (staffid, FirstName, lastname, Department, Salary)
values ( 'AB401', 'ayan', 'olakun', 'Information Tech.', 45000.45),
( 'AB212', 'okorie', 'mercy','Account',500000.99999),
( 'AB223', 'joshua', 'chukwuemeka', 'Human Resources',100560.9339999),
( 'AB234', 'sanni', 'ibrahim', 'Sales and Marketing',845688.99),
( 'AB254', 'mercy', 'olanipekun', 'Account',8889.999999),
( 'AB249', 'johnson', 'mercy', 'Information Tech.',234000.90909090),
( 'AB298', 'ayomide', 'halleluyah', 'Logistics', 678000.991999),
( 'AB260', 'deborah', 'justin', 'Logistics',900099.00697969),
( 'AB281', 'wale', 'olanipekun', 'Information Tech',873093.2344)


insert into [dbo].[Salary]
values ( 'AB200', 'ayomide', 'halleluyah', 'Human Resources',45699.8585),
( 'AB405', 'deborah', 'justin', 'Account',898349.900222),
( 'AB282', 'wale', 'olanipekun', 'Sales and Marketing',362636.564848),
( 'AB278', 'shukurat', 'lasisi', 'Logistics',100000.464647),
( 'AB240', 'johnson', 'mercy', 'Information Tech',3855590.9890093),
( 'AB299', 'ayomide', 'halleluyah', 'Account', 8585858.9292),
( 'AB268', 'deborah', 'justin', 'Human Resources',76767.93939)

----SUM, COUNT, MAX, MIN, AVERAGE-----------

SELECT SUM(SALARY) AS TOTALSALARY FROM SALARY(18110240.162)

SELECT AVG(SALARY) AS AVGSALARY FROM SALARY(1131890.010125)

SELECT COUNT(STAFFID) AS EMPLOYEECOUNT FROM EMPLOYEE(18)

SELECT COUNT(Staffid) AS NumberOfEmployee FROM Salary(16)

----UPDATE SALARY
SETSalary = 70456738.474
where staffid = 'AB401'

--------13/09/2024--------
-------update staffname-------

select* from [dbo].[employee]

update employee
set secondname = 'ENDURANCE'
where staffid = 'AB405'

--------UPDATE DEPARTMENT------

SELECT *FROM [dbo].[salary]

update salary
set department = 'information tech'
where staffid ='AB234'

update salary
set department =' information tech'
where staffid = 'AB240'

----CREATE ADDITIONAL COLUMN INTO EMPLOYEE TABLE-------

ALTER TABLE EMPLOYEE
ADD State_Of_Origin varchar (50)


SELECT*FROM EMPLOYEE


update employee
SET STATE_OF_ORIGIN ='Ekiti'
where staffid = 'AB268'