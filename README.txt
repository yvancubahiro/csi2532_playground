Numero 1 : https://github.com/yvancubahiro/csi2532_playground/blob/lab4/exercice%201.png

SQL Code:

CREATE TABLE Professors (ssn  int PRIMARY KEY);
CREATE TABLE Courses (courseid  int PRIMARY KEY);
CREATE TABLE Teaches (ssn int REFERENCES Professors(ssn),
					 courseid int REFERENCES Courses(courseid) ,
					 semesterid int);
          
-----------------------------------------------------------------------------------------------

Numero 3 : https://github.com/yvancubahiro/csi2532_playground/blob/lab4/exercice%203.png

SQL CODE :

CREATE TABLE Professors (ssn  int PRIMARY KEY);
CREATE TABLE Courses (courseid  int PRIMARY KEY);
CREATE TABLE Teaches (ssn int REFERENCES Professors(ssn),
					 courseid int);
           
------------------------------------------------------------------------------------------------

Numero 5 : https://github.com/yvancubahiro/csi2532_playground/blob/lab4/exercice%205.png

SQL CODE :


CREATE TABLE Professors(ssn int PRIMARY KEY);
CREATE TABLE Courses (courseid int PRIMARY KEY);
CREATE TABLE Semesters(semesterid int PRIMARY KEY);
CREATE TABLE Teaches(ssn int REFERENCES Professors(ssn),
					courseid int REFERENCES Courses(courseid),
					semesterid int REFERENCES Semesters(semesterid));
          
------------------------------------------------------------------------------------------------

Numero 6 : https://github.com/yvancubahiro/csi2532_playground/blob/lab4/exercice%206.png

SQL CODE:

CREATE TABLE Professors (ssn  int PRIMARY KEY);
CREATE TABLE Courses (courseid  int PRIMARY KEY);
CREATE TABLE InstructorGroup(instructorGroupid int PRIMARY KEY); 
CREATE TABLE MemberOf (instructorGroupid int REFERENCES InstructorGroup(instructorGroupid),
					  ssn int REFERENCES Professors(ssn));

CREATE TABLE Teaches (instructorGroupid int REFERENCES InstructorGroup(instructorGroupid),
					 courseid int REFERENCES Courses(courseid) ,
					 semesterid int);

