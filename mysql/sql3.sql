CREATE DATABASE School;

USE School;

CREATE TABLE students(
	student_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dob DATE,
    gender VARCHAR(255),
    roll_number VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    parent_name VARCHAR(255),
    parent_phone VARCHAR(255)
);

INSERT INTO students
(student_id, first_name, last_name, dob, gender, roll_number, email, address, parent_name, parent_phone)
VALUES
(1, 'Aarav', 'Sharma', '2010-4-12', 'Male', 1, 'aaravsharma@gmail.com', 'Pune', 'Rajesh Sharma', '9375628467'),
(2, 'Ananya', 'Patel', '2010-7-25', 'Female', 2, 'ananyapatel@gmail.com', 'Mumbai', 'Amit Patel', '9823401122'),
(3, 'Rohan', 'Mehta', '2009-11-18', 'Male', 3, 'rohanmehta@gmail.com', 'Nashik', 'Suresh Mehta', '9765409876'),
(4, 'Sneha', 'Joshi', '2009-2-8', 'Female', 4, 'snehajoshi@gmail.com', 'Pune', 'Mahesh Joshi', '9898701234'),
(5, 'Pooja', 'Kulkarni', '2008-12-5', 'Female', 5, 'poojakulkarni@gmail.com', 'Kolhapur', 'Praksh Kulkarni', '9012309876');

SELECT *FROM students;

CREATE TABLE teachers(
	teacher_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender VARCHAR(255),
    qualification VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    department VARCHAR(255),
    salary VARCHAR(255)
);

INSERT INTO teachers
(teacher_id, first_name, last_name, gender, qualification, phone, email, department, salary)
VALUES
(1, 'Amit', 'Sharma', 'Male', 'M.Sc', '9876543210', 'amitsharma@gmail.com', 'Science', '55000'),
(2, 'Priya', 'Patel', 'Female', 'M.A', '9823456712', 'priyapatel@gmail.com', 'English', '52000'),
(3, 'Rahul', 'Mehta', 'Male', 'M.Sc', '9765432189', 'rahulmehta@gmail.com', 'Mathematics', '58000'),
(4, 'Sneha', 'Joshi', 'Female', 'M.A', '9898765432', 'snehajoshi@gmail.com', 'Hindi', '50000'),
(5, 'Rajesh', 'Patil', 'Male', 'M.Ed', '9123456780', 'rajeshpatil@gmail.com', 'Social Science', '54000');

SELECT *FROM teachers;

CREATE TABLE classes(
	class_id INT,
    class_name VARCHAR(255),
    section VARCHAR(255),
    class_teacher_id INT,
    room_number INT,
    academic_year VARCHAR(255)
);

INSERT INTO classes
(class_id, class_name, section, class_teacher_id, room_number, academic_year)
VALUES
(1, 'Grade 8', 'A', 1, 101, '2026-27'),
(2, 'Grade 8', 'B', 3, 102, '2026-27'),
(3, 'Grade 9', 'A', 2, 201, '2026-27'),
(4, 'Grade 9', 'A', 3, 202, '2026-27'),
(5, 'Grade 10', 'B', 1, 301, '2026-27'),
(6, 'Grade 10', 'B', 4, 302, '2026-27'),
(7, 'Grade 11', 'B', 2, 401, '2026-27'),
(8, 'Grade 12', 'A', 4, 402, '2026-27');


SELECT *FROM classes;

CREATE TABLE subjects(
	subject_id INT,
    subject_name VARCHAR(255),
    subject_code VARCHAR(255),
    teacher_id INT,
    class_id INT,
    credits INT
);

INSERT INTO subjects
(subject_id, subject_name, subject_code, teacher_id, class_id, credits)
VALUES
(1, 'Mathematics', 'MATH101', 2, 1, 5),
(2, 'English', 'ENG101', 3, 1, 4),
(3, 'Science', 'SCI101', 4, 2, 5),
(4, 'Hindi', 'HIN101', 5, 4, 3),
(5, 'Social Science', 'SST101', 5, 5, 4);

SELECT *FROM subjects;

CREATE TABLE exams(
	exam_id INT,
    exam_name VARCHAR(255),
    subject_id INT,
    class_id INT,
    exam_date DATE,
    total_marks INT,
    passing_marks INT
);

INSERT INTO exams
(exam_id, exam_name, subject_id, class_id, exam_date, total_marks, passing_marks)
VALUES
(1, 'Unit Test 1', 1, 1, '2026-7-15', 50, 20),
(2, 'Unit Test 1', 2, 1, '2026-7-17', 50, 20),
(3, 'Unit Test 1', 3, 1, '2026-7-20', 50, 20),
(4, 'Mid-Term Test', 1, 2, '2026-9-10', 100, 40),
(5, 'Mid-Term Test', 2, 2, '2026-9-12', 100, 40),
(6, 'Mid-Term Test', 3, 2, '2026-9-15', 100, 40);

SELECT *FROM exams;

CREATE TABLE marks(
	marks_id INT,
    student_id INT,
    exam_id INT,
    marks_obtained INT,
    grade VARCHAR(255)
);

INSERT INTO marks
(marks_id, student_id, exam_id, marks_obtained, grade)
VALUES
(1, 1, 1, 42, 'A'),
(2, 1, 2, 38, 'B+'),
(3, 1, 3, 45, 'A+'),
(4, 2, 1, 35, 'B'),
(5, 2, 2, 40, 'A'),
(6, 2, 3, 32, 'B'),
(7, 3, 1, 38, 'B+'),
(8, 3, 2, 38, 'B+'),
(9, 3, 3, 42, 'A');

SELECT *FROM marks;

CREATE TABLE attendance(
	attendance_id INT,
    student_id INT,
    class_id INT,
    attendance_date DATE,
    student_status VARCHAR(255)
);

INSERT INTO attendance
(attendance_id, student_id, class_id, attendance_date, student_status)
VALUES
(1, 1, 1, '2026-09-01', 'Present'),
(2, 2, 1, '2026-09-01', 'Present'),
(3, 3, 2, '2026-09-01', 'Absent'),
(4, 4, 3, '2026-09-01', 'Present'),
(5, 5, 3, '2026-09-01', 'Absent');

SELECT *FROM attendance;




