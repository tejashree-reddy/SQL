
CREATE DATABASE Employees

CREATE TABLE Employee(
Emp_ID INT PRIMARY KEY,
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Mgr_ID INT NOT NULL,
Dept_No INT NOT NULL,
Salary INT NOT NULL
);


/*  Insert new record in employee table with following values
Emp_id = 1009, First_Name = ‘Riccky’ , Last_Name = ‘Lawrence’ , mgr_id = 1005, depno = 40 ,salary = 50,000
*/
INSERT INTO Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1001,'NATHANIEL','FORD',1002,35,65000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1002,'GARY','JIMENEZ',1002,35,60000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1003,'ALBERT','PARDINI',1002,35,70000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1004,'CHRISTOPHER','CHONG',1003,38,50000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1005,'PATRICK','GARDNER',1003,38,55000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1006,'DAVID','SULLIVAN',1003,38,65000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1007,'ALSON','LEE',1004,42,80000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1008,'DAVID','KUSHNER',1004,42,65000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1009,'Riccky','Lawrence',1005,40,70000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1010,'ARTHUR','KENNEY',1005,40,75000);

INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1011,'BRYAN','FUBENSTEIN',1006,45,40000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1012,'JAMES','DUDLEY',1006,45,35000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1013,'KEVIN','CASHMAN',1006,45,30000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1014,'ANNA','BROWN',1007,46,25000);
INSERT INTO  Employee(Emp_ID,First_Name,Last_Name,Mgr_ID,Dept_No,Salary)
VALUES(1015,'ROBERT','POSTEL',1007,46,35000);



UPDATE Employee
SET Mgr_ID=1004, Dept_No=40
WHERE Emp_ID=1005;

/* Update First_Name and Last_Name in employee table
where emp_id = 1005 and mgr_id = 1004*/

UPDATE Employee
SET Mgr_ID=1003, Dept_No=38
WHERE Emp_ID=1005;

Select * from employee
order by Emp_ID

CREATE TABLE Department(
Dept_No INT PRIMARY KEY,
Dept_Name VARCHAR(50),
Mgr_ID INT,
Mgr_Name VARCHAR(50)
);

SELECT DISTINCT Dept_No, Mgr_ID
From employee
order by Dept_No

INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(35,'HR',1002,'Nihit Kumar');
INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(38,'Finance',1003,'Abdul Muqueem');
INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(40,'IT',1005,'Prasad');
INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(42,'Facilities',1004,'Mohan Kumar');
INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(45,'Transport',1006,'Rambabu');
INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(46,'LC',1007,'Vikash Somani');

INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(47,'IBD',1008,'Bharat Rawal');
INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(48,'IC',1009,'Santhosh Sutrave');
INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(49,'Presentations',1010,'Gautam Modi');
INSERT INTO  Department(Dept_No,Dept_Name,Mgr_ID,Mgr_Name)
VALUES(50,'Support Functions',1011,'Sirisha Dasari');



ALTER TABLE Employee
ADD FOREIGN KEY (Dept_No) 
REFERENCES Department(Dept_No);

--Retrieve data from table using self-join

Select * from employee as E1
Select * from employee as E2

Select E1.first_name , E2.last_name 
From Employee E1,Employee E2
where E1.emp_id=E2.emp_id;


Select E1.first_name , E2.Mgr_ID 
From Employee E1,Employee E2
where E1.emp_id=E2.emp_id;


Select CONCAT(E1.first_name ,' ', E2.last_name) as Emp_Name
From Employee E1,Employee E2
where E1.emp_id=E2.emp_id;

--Retrieve data from employee and departmenttable using inner Join

Select Emp_id, First_name, Employee.Dept_no, Department.Mgr_Name
From Employee
Inner Join  Department on Employee.Dept_no=Department.Dept_no


--Retrieve data from employee and department table using left join

Select emp_id,CONCAT(first_name,' ',last_name)
from employee
left join department on Employee.mgr_iD=Department.mgr_iD


Select emp_id,CONCAT(first_name,' ',last_name)
from Department
left join employee on Employee.mgr_iD=Department.mgr_iD


--Retrieve data from employee and department table using right join

Select emp_id,mgr_name
from employee
right join department on Employee.mgr_iD=Department.mgr_iD


Select emp_id,mgr_name
from Department
right join employee on Employee.mgr_iD=Department.mgr_iD

-- Join two table using cross join

SELECT *
From employee
cross join department

