
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
SET First_Name='Andrew', Last_Name='Carnegie'
WHERE Emp_ID=1005 AND Mgr_ID=1004;


/*Select the record from employee whose last name starts with ‘B’ or ‘F’
*/


select * 
from employee
where Last_Name LIKE 'B%' OR Last_Name LIKE 'F%';

/*Delete record from employee where salary >= 40000*/

DELETE FROM Employee WHERE salary>=40000;

Select * From employee



