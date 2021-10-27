/* Create Table with Predefine Columns */

CREATE TABLE Subjects( 
SID INT,
SName Varchar(20),
SAge INT,
SGender Varchar(7),
SSubjects VARCHAR(20)
);

INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(1,'Ani',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(2,'Bob',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(3,'Cloe',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(4,'Dan',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(5,'Eric',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(6,'Fila',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(7,'Genie',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(8,'Hards',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(9,'Irie',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(10,'Joe',15,'F','Maths');
INSERT INTO Subjects(SID,SName,SAge,SGender,SSubjects) VALUES(11,'Ken',15,'F','Maths');


/*Add New Column in Existing Table*/

ALTER TABLE Subjects
ADD Marks INT;

/*ALTER TABLE*/

ALTER TABLE Subjects ADD SNO INT UNIQUE;
ALTER TABLE Subjects DROP COLUMN marks;
ALTER TABLE Subjects ALTER COLUMN SID SET NOT NULL;




/* Check the constraints on a table*/
UPDATE Subjects
SET SNO = 202001
WHERE SID = 1;
UPDATE Subjects
SET SNO = 202002
WHERE SID = 2;
UPDATE Subjects
SET SNO = 202003
WHERE SID = 3;
UPDATE Subjects
SET SNO = 202004
WHERE SID = 4;
UPDATE Subjects
SET SNO = 202005
WHERE SID = 5;
UPDATE Subjects
SET SNO = 202006
WHERE SID = 6;
UPDATE Subjects
SET SNO = 202007
WHERE SID = 7;
UPDATE Subjects
SET SNO = 202008
WHERE SID = 8;
UPDATE Subjects
SET SNO = 202009
WHERE SID = 9;
UPDATE Subjects
SET SNO = 202010
WHERE SID = 10;

ALTER TABLE Subjects RENAME COLUMN SNO TO SRollNumber;
ALTER TABLE Subjects RENAME COLUMN SID TO SNO;
ALTER TABLE Subjects ALTER COLUMN Sname SET NOT NULL;

SELECT * FROM Subjects;


UPDATE Subjects
SET srollnumber = 202011
WHERE sno = 11;

UPDATE Subjects
SET sage = 16, sgender= 'F',ssubjects = 'MPC'
WHERE srollnumber = 202001;
UPDATE Subjects
SET sage = 16, sgender= 'M',ssubjects = 'BPC'
WHERE srollnumber = 202002;
UPDATE Subjects
SET sage = 15, sgender= 'F',ssubjects = 'CEC'
WHERE srollnumber = 202003;
UPDATE Subjects
SET sage = 16, sgender= 'M',ssubjects = 'HEC'
WHERE srollnumber = 202004;
UPDATE Subjects
SET sage = 15, sgender= 'M',ssubjects = 'MPC'
WHERE srollnumber = 202005;
UPDATE Subjects
SET sage = 15, sgender= 'F',ssubjects = 'CEC'
WHERE srollnumber = 202006;
UPDATE Subjects
SET sage = 16, sgender= 'F',ssubjects = 'BPC'
WHERE srollnumber = 202007;
UPDATE Subjects
SET sage = 15, sgender= 'M',ssubjects = 'MPC'
WHERE srollnumber = 202008;
UPDATE Subjects
SET sage = 15, sgender= 'F',ssubjects = 'CEC'
WHERE srollnumber = 202009;
UPDATE Subjects
SET sage = 15, sgender= 'M',ssubjects = 'CEC'
WHERE srollnumber = 202010;
UPDATE Subjects
SET sage = 16, sgender= 'M',ssubjects = 'MPC'
WHERE srollnumber = 202011;

SELECT * FROM Subjects;

/*Add Primary and Foriegn Key*/

ALTER TABLE Subjects
ADD PRIMARY KEY (Sno);
ALTER TABLE Subjects
ADD UNIQUE(srollnumber);

CREATE TABLE SMarks(
srollnumber INT PRIMARY KEY,
Total INT NOT NULL,
Grade VARCHAR(10) NOT NULL
)


INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202001,95,'A');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202002,80,'A');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202003,75,'B');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202004,65,'B');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202005,58,'C');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202006,42,'C');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202007,35,'D');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202008,26,'D');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202009,75,'B');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202010,83,'A');
INSERT INTO SMarks(Srollnumber,Total,Grade) VALUES(202011,98,'A');

/*
ALTER TABLE Subjects
ADD FOREIGN KEY (srollnumber) REFERENCES SMarks(srollnumber);
*/

ALTER TABLE Subjects
ADD CONSTRAINT fsrollnumber FOREIGN KEY (srollnumber) REFERENCES SMarks(srollnumber);

/* Remove Constraints
ALTER TABLE Subjects DROP FOREIGN KEY srollnumber;
ALTER TABLE Subjects DROP CONSTRAINT  srollnumber;

ALTER TABLE Subjects ALTER COLUMN srollnumber DROP FOREIGN KEY;


ALTER TABLE subjects
DROP CONSTRAINT fsrollnumber FOREIGN KEY (srollnumber) REFERENCES SMarks(srollnumber);

*/

/* ALTER TABLE Subjects
ALTER COLUMN SNO DROP INDEX UNIQUE; */





