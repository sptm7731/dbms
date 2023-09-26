use ex

--select * from employee

--1
--select [function] from job

--2
--select * from department join employee on department.departmentID = employee.departmentId where name='sales'
--3

--select * from department join location on department.locationID = location.locationID 
--join employee on department.departmentID = employee.departmentId where regionalgroup='dhaka'

--4
--select * from department join location on department.locationID = location.locationID 
--join employee on department.departmentID = employee.departmentId 

--5

--select count(*) as total_number_of_emp, name from department  
--join employee on department.departmentID = employee.departmentId group by name

--6
--select count(*) as x, name from department  
--join employee on department.departmentID = employee.departmentId group by name having count(*)>3 order by name