-- DROP DATABASE IF EXISTS IT1;
CREATE DATABASE IF NOT EXISTS IT1;
USE IT1;

ALTER TABLE StudentsCourses
DROP FOREIGN KEY fk_courses,
DROP FOREIGN KEY fk_students;

DROP TABLE if EXISTS Students;

CREATE TABLE Students(
    StudentId INT PRIMARY KEY,
    FirstName varchar(25),
    LastName varchar(25),
    DOB date,
    Gender varchar(10),
    Email varchar(100)
);

INSERT INTO Students(StudentId,FirstName,LastName,DOB,Gender,Email)
VALUES
(1,"John","Doe",'1999-12-13',"Male","johndoe@mail.com"),
(2,"Jane","Ged",'2000-01-03',"Female","jnedoe@doe.com"),
(3,"Peter","Brown",'2000-02-14','Male','peter@mail.com'),
(4,"Mark","Jerry",'1999-12-31','Male',"jerry@jerry.com"),
(6,"Antony","Mary","2000-01-31",'Female','mary@m.com');


DROP TABLE IF EXISTS Courses;
CREATE TABLE Courses (
    CourseId INT PRIMARY KEY,
    CourseName varchar (30) UNIQUE,
    Instructor varchar (30),
    Units INT
);

INSERT INTO Courses(CourseId,CourseName,Instructor,Units)
VALUES
(1,'COM101','John Mat',4),
(2,'SPA302','Mary Jane',5),
(3,'COM342','Jodep J',5),
(4,'SPA201','Maze Jes',4);

DROP TABLE IF EXISTS StudentsCourses;

CREATE TABLE StudentsCourses (
    RegID SERIAL PRIMARY KEY,
    StudentId INT,
    CourseId INT,
    RegDate DATE,
    CONSTRAINT fk_students FOREIGN KEY (StudentId) REFERENCES Students(StudentId) ON DELETE CASCADE,
    CONSTRAINT fk_courses FOREIGN KEY (CourseId) REFERENCES Courses(CourseId) ON DELETE CASCADE
);

INSERT INTO StudentsCourses (StudentId,CourseId,RegDate)
VALUES
(1,1,'2022-06-01'),
(2,1,"2022-06-01"),
(3,1,"2022-06-02"),
(1,2,"2022-06-02"),
(2,3,"2022-06-02"),
(3,4,"2022-06-01"),
(4,4,"2022-06-03"),
(6,4,"2022-06-01"),
(6,3,"2022-06-02"),
(4,3,"2022-06-03");

SELECT Students.FirstName,Students.LastName,Courses.CourseName FROM Students
JOIN StudentsCourses ON Students.StudentId = StudentsCourses.StudentId
JOIN Courses on Courses.CourseId =StudentsCourses.CourseId;

-- SELECT * FROM Students

-- -- ALTER TABLE StudentsCourses
-- -- DROP FOREIGN KEY fk_courses,
-- -- DROP FOREIGN KEY fk_students;
-- /home/bwaks/Desktop/sql/j2.session.sql