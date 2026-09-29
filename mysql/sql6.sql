CREATE DATABASE College;

USE College;

CREATE TABLE students(
	student_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dob DATE,
    gender VARCHAR(255),
    address VARCHAR(255),
    department_id INT,
    course_id INT
);

INSERT INTO students
(student_id, first_name, last_name, dob, gender, address, department_id, course_id)
VALUES
(1, 'Aarav', 'Sharma', '2005-04-12', 'Male', 'Pune', 1, 101),
(2, 'Ananya', 'Patel', '2004-07-25', 'Female', 'Mumbai', 2, 102),
(3, 'Rohan', 'Mehta', '2005-11-18', 'Male', 'Nashik', 3, 103),
(4, 'Sneha', 'Joshi', '2004-02-08', 'Female', 'Pune', 1, 101),
(5, 'Karan', 'Patil', '2005-09-20', 'Male', 'Kolhapur', 4, 104),
(6, 'Pooja', 'Kulkarni', '2004-12-05', 'Female', 'Pune', 2, 102),
(7, 'Aditya', 'Singh', '2005-05-14', 'Male', 'Delhi', 5, 105),
(8, 'Neha', 'Shah', '2004-08-30', 'Female', 'Mumbai', 3, 103),
(9, 'Rahul', 'Verma', '2005-03-22', 'Male', 'Pune', 4, 104),
(10, 'Isha', 'Desai', '2004-10-11', 'Female', 'Satara', 5, 105);

SELECT *FROM students;

CREATE TABLE faculty(
	faculty_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender VARCHAR(255),
    qualification VARCHAR(255),
    department_id INT,
    designation VARCHAR(255),
    salary INT
);

INSERT INTO faculty
(faculty_id, first_name, last_name, gender, qualification, department_id, designation, salary)
VALUES
(1, 'Amit', 'Sharma', 'Male', 'M.Tech', 1, 'Professor', 85000),
(1, 'Priya', 'Patel', 'Female', 'Ph.D.', 2, 'Associate Professor', 78000),
(1, 'Rahul', 'Mehta', 'Male', 'M.Tech', 3, 'Assistant Professor', 65000),
(1, 'Sneha', 'Joshi', 'Female', 'M.E', 1, 'Assistant Professor', 62000),
(1, 'Rajesh', 'Patil', 'Male', 'Ph.D.', 4, 'Professor', 90000);

SELECT *FROM faculty;

CREATE TABLE courses(
	course_id INT,
    course_name VARCHAR(255),
    department_id INT,
    duration_years INT,
    total_seats INT
);

INSERT INTO courses
(course_id, course_name, department_id, duration_years, total_seats)
VALUES
(101, 'Computer Engineering', 1, 4, 120),
(102, 'Electronics and Telecommunication Engineering', 2, 4, 180),
(103, 'Information Technology', 3, 4, 120),
(104, 'Mechanical Engineering', 4, 4, 90),
(105, 'Electrical Engineering', 5, 4, 60);

SELECT *FROM courses;

CREATE TABLE departments(
	department_id INT,
    department_name VARCHAR(255),
    department_code VARCHAR(255),
    head_of_department VARCHAR(255)
);

INSERT INTO departments
(department_id, department_name, department_code, head_of_department)
VALUES
(1, 'Computer Engineering', 'COMP', 'Amit Sharma'),
(2, 'Electronics and Telecommunication Engineering', 'ExTC', 'Priya Patel'),
(3, 'Information Technology', 'IT', 'Rahul Mehta'),
(4, 'Mechanical Engineering', 'MECH', 'Rajesh Patil'),
(5, 'Electrical Engineering', 'ELEC', 'Vikram Singh');

SELECT *FROM departments;

CREATE TABLE results(
	result_id INT,
    student_id INT,
    course_id INT,
    subject_name VARCHAR(255),
    marks_obtained INT,
    total_marks INT,
    grade VARCHAR(255)
);
DROP TABLE results;
INSERT INTO results
(result_id, student_id, course_id, subject_name, marks_obtained, total_marks, grade)
VALUES
(1, 1, 101, 'Programming in C', 85, 100, 'A'),
(2, 2, 102, 'Digital Electronics', 78, 100, 'B+'),
(3, 3, 103, 'Database Management', 92, 100, 'A+'),
(4, 4, 101, 'Mathematics', 88, 100, 'A'),
(5, 5, 104, 'Engineering Mechanics', 74, 100, 'B+'),
(6, 6, 102, 'Network Theory', 81, 100, 'A'),
(7, 7, 105, 'Electrical Circuits', 69, 100, 'B'),
(8, 8, 103, 'Web Programming', 95, 100, 'A+'),
(9, 9, 104, 'Thermodynamics', 76, 100, 'B+'),
(10, 10, 105, 'Power Systems', 83, 100, 'A');

SELECT *FROM results;





