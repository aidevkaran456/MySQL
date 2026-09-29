-- CREATE DATABASE
CREATE DATABASE Students;

-- USING THE DATABASE
USE Students;

-- CREATE TABLE
CREATE TABLE Student(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    course VARCHAR(50),
    city VARCHAR(50),
    marks INT
);

-- READ THE TABLE
SELECT *FROM Student;

-- PUTTING DATA IN TABLE
INSERT INTO Student
(student_id, student_name, age, gender, course, city, marks)
VALUES
(1, 'Rahul Sharma', 20, 'Male', 'BCA', 'Mumbai', 85),
(2, 'Priya Patil', 21, 'Female', 'BCA', 'Pune', 92),
(3, 'Amit Joshi', 20, 'Male', 'BSc CS', 'Kolhapur', 78),
(4, 'Sneha Deshmukh', 22, 'Female', 'MCA', 'Nashik', 88),
(5, 'Rohit Kulkarni', 21, 'Male', 'BCA', 'Mumbai', 67);


