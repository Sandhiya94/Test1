
create table library (
    bookid int primary key,
    title varchar(100),
    author varchar(50),
    genre varchar(50),
    publishyear int default 2022,
);


insert into library (bookid, title, author, genre, publishyear) values
    (1, 'The God of Small Things', 'Arundhati Roy', 'Fiction', 1997),
    (2, 'A Suitable Boy', 'Vikram Seth', 'Drama', 1993),
    (3, 'The Namesake', 'Jhumpa Lahiri', 'Drama', 2003),
    (4, 'The White Tiger', 'Aravind Adiga', 'Crime', 2008),
    (5, 'The Guide', 'R.K. Narayan', 'Fiction', 1958);


	update library set publishyear = 1998 where bookid = 1;

	delete from library where genre = 'Crime';

	select * from library order	by title asc;

	select distinct author from library;


   CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Instructor VARCHAR(50)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students (StudentID, Name, Age, Gender)
VALUES 
    (1, 'A', 20, 'Female'),
    (2, 'B', 22, 'Male'),
    (3, 'C', 21, 'Male'),
    (4, 'D', 23, 'Female'),
    (5, 'E', 20, 'Female');

INSERT INTO Courses (CourseID, CourseName, Instructor)
VALUES 
    (101, 'Math', 'Prof. X'),
    (102, 'Science', 'Prof. Y'),
    (103, 'History', 'Prof. Z'),
    (104, 'English', 'Prof. W');

	INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID)
VALUES 
    (1, 1, 101),
    (2, 2, 102),
    (3, 3, 103),
    (4, 4, 104),
    (5, 5, 101);


SELECT Students.Name, Courses.CourseName
FROM Students
INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID;


SELECT Students.Name, Courses.CourseName
FROM Students
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
LEFT JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

SELECT Students.Name, Courses.CourseName
FROM Students
RIGHT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
RIGHT JOIN Courses ON Enrollments.CourseID = Courses.CourseID;


SELECT Students.Name, Courses.CourseName
FROM Students
FULL JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
FULL JOIN Courses ON Enrollments.CourseID = Courses.CourseID;


SELECT Students.Name, Courses.CourseName
FROM Students
CROSS JOIN Courses;

SELECT 
    s1.Name AS Student1, 
    s2.Name AS Student2, 
    s1.Age AS Age
FROM 
    Students s1
INNER JOIN 
    Students s2 ON s1.Age = s2.Age AND s1.StudentID < s2.StudentID;

select * from employee

SELECT department_id, COUNT(employee_id) AS num
FROM employee
GROUP BY department_id
HAVING COUNT(employee_id) > 10;







	

