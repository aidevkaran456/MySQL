CREATE DATABASE Hospital;

USE Hospital;

CREATE TABLE Patients(
	patient_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dob DATE,
    gender VARCHAR(255),
    blood_group VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    registration_date DATE
);

INSERT INTO Patients
(patient_id, first_name, last_name, dob, gender, blood_group, phone, email, address, registration_date)
VALUES
(1, 'Rahul', 'Sharma', '2001-12-14', 'Male', 'B+', '9365873956', 'rahulsharma@gmail.com', 'Pune', '2026-1-1'),
(2, 'Karan', 'Parikh', '2002-9-15', 'Male', 'A+', '9008461235', 'karanparikh@gmail.com', 'Kolhapur','2026-1-2'),
(3, 'Dhruv', 'Parikh', '2003-6-25', 'Male', 'B+', '9146285638', 'dhruvparikh@gmail.com', 'Mumbai', '2026-1-5'),
(4, 'Pinky', 'Joshi', '2004-12-9', 'Female', 'A+', '9886623345', 'pinkyjoshi@gmail.com', 'Pune', '2026-2-1'),
(5, 'Tinky', 'Shah', '2005-5-10', 'Female', 'B+', '9112356879', 'tinkyshah@gmail.com', 'Nagpur', '2026-3-11'),
(6, 'Sameer', 'Joshi', '1996-3-17', 'Male', 'B+', '9812345670', 'sameerjoshi@gmail.com', 'Pune', '2026-9-19'),
(7, 'Riya', 'Deshmukh', '2000-6-28', 'Female', 'O+', '9923456781', 'riyadeshmukh@gmail.com', 'Mumbai', '2026-9-20'),
(8, 'Akash', 'Rao', '1994-10-5', 'Male', 'A+', '9734567892', 'akashrao@gmail.com', 'Bengaluru', '2026-9-20'),
(9, 'Nisha', 'More', '2002-1-19', 'Female', 'AB+', '9645678903', 'nishamore@gmail.com', 'Kolhapur', '2026-9-21'),
(10, 'Yash', 'Gupta', '1999-5-12', 'Male', 'B+', '9556789014', 'yashgupta@gmail.com', 'Nagpur', '2026-9-21');

SELECT *FROM Patients;

-- UPDATE
UPDATE Patients
SET address = 'Pune'
WHERE patient_id = 2;

UPDATE Patients
SET blood_group = 'A+',
	address = 'Mumbai'
WHERE patient_id = 5;

UPDATE Patients
SET address = 'Kolhapur City'
WHERE address = 'Kolhapur';



-- DELETE
DELETE FROM Patients
WHERE patient_id = 10;

DELETE FROM Patients
WHERE address = 'Mumbai';


CREATE TABLE Doctors(
	doctor_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    specialization VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    gender VARCHAR(255),
    qualification VARCHAR(255),
	department_id INT,
    availibility_status VARCHAR(255)
);

INSERT INTO Doctors
(doctor_id, first_name, last_name, specialization, phone, email, gender, qualification, department_id, availibility_status)
VALUES
(1, 'Amit', 'Desai', 'Cardiology', '9846582968', 'amitdesai@gmail.com', 'Male', 'MMBS, MD', 1, 'Available'),
(2, 'Neha', 'Kapoor', 'Neurology', '9562583957', 'nehakapoor@gmail.com', 'Female', 'MMBS, DM', 2, 'Available'),
(3, 'Rajesh', 'Patil', 'Orthopedics', '9346572067', 'rajeshpatil@gmail.com', 'Male', 'MMBS, MS', 3, 'Available'),
(4, 'Snehal', 'Joshi', 'Pediatrics', '9124568894', 'snehaljoshi@gmail.com', 'Female', 'MMBS, MD', 4, 'Available'),
(5, 'Arjun', 'Mehta', 'Dermatology', '9006634789', 'arjunmehta@gmail.com', 'Male', 'MMBS, MD', 5, 'Available');

SELECT *FROM Doctors;

CREATE TABLE Appointments(
	appointment_id INT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    reason VARCHAR(255),
    patient_status VARCHAR(255),
    notes VARCHAR(255)
);

INSERT INTO Appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason, patient_status, notes)
VALUES
(1, 1, 1, '2026-9-11', 10, 'Chest pain', 'Completed', 'ECG advised'),
(2, 2, 3, '2026-9-12', 11, 'Regular checkup', 'Scheduled', 'Follow up needed'),
(3, 3, 1, '2026-10-1', 10, 'Knee pain', 'Completed', '-'),
(4, 4, 5, '2026-10-1', 12, 'Fever', 'Completed', 'Blood test needed'),
(5, 5, 4, '2026-10-2', 10, 'Chest pain', 'Completed', 'ECG advised'),
(6, 6, 2, '2026-10-12', 9, 'Skin rash', 'Scheduled', 'Follow up needed'),
(7, 7, 4, '2026-10-22', 9, 'Eye irritation', 'Completed', 'Eye drops needed'),
(8, 8, 1, '2026-10-24', 11, 'Anxiety', 'Completed', 'Medicine needed'),
(9, 9, 3, '2026-11-12', 11, 'Migrane', 'Scheduled', 'Follow up needed'),
(10, 10, 3, '2026-11-12', 12, 'Headache', 'Scheduled', 'Follow up needed');

SELECT *FROM Appointments;	

UPDATE Appointments
SET reason = 'Viral fever'
WHERE patient_id = 3;

DELETE FROM Appointments
WHERE reason = 'Anxiety';

CREATE TABLE Medicines(
	medicine_id INT,
    medicine_name VARCHAR(255),
    category VARCHAR(255),
    manufacturer VARCHAR(255),
    dosage VARCHAR(255),
    price VARCHAR(255),
    stock_quantity VARCHAR(255),
    expiry_date DATE
);

INSERT INTO Medicines
(medicine_id, medicine_name, category, manufacturer, dosage, price, stock_quantity, expiry_date)
VALUES
(1, 'Paracetamol', 'Painkiller', 'Cipla', '500 mg', '2.5', '500', '2028-5-31'),
(2, 'Amoxicilin', 'Antibiotic', 'Sun Pharma', '500 mg', '8', '300', '2029-8-31'),
(3, 'Diclofenac', 'Painkiller', 'Novartis', '50 mg', '4', '225', '2028-4-30'),
(4, 'Pantoprazole', 'Antacid', 'Alkem', '40 mg', '7', '275', '2027-10-31'),
(5, 'Amlodiphine', 'Antihypertensive', 'Torent Pharma', '5 mg', '3', '300', '2028-3-31');

SELECT *FROM Medicines;


CREATE TABLE Bills(
	bill_id INT,
    patient_id INT,
    appointment_id INT,
    bill_date DATE,
    consultation_fee VARCHAR(255),
    medicine_charges VARCHAR(255),
    test_charges VARCHAR(255),
    other_charges VARCHAR(255),
    total_amount VARCHAR(255),
    payment_status VARCHAR(255),
    payment_method VARCHAR(255)
);

INSERT INTO Bills
(bill_id, patient_id, appointment_id, bill_date, consultation_fee, medicine_charges, test_charges, other_charges, total_amount, payment_status, payment_method)
VALUES
(1, 1, 1, '2026-9-11', 800, 250, 500, 0, 1550, 'Paid', 'Cash'),
(2, 3, 3, '2026-10-1', 600, 150, 0, 0, 750, 'Paid', 'Cash'),
(3, 5, 5, '2026-10-2', 700, 250, 300, 400, 1650, 'Paid', 'Cash');

SELECT *FROM Bills;





-- GROUP BY using count
SELECT address, COUNT(*) AS total_patients
FROM Patients
GROUP BY address;

SELECT reason, COUNT(*) AS total_patients
FROM Appointments
GROUP BY reason;

-- GROUP BY using avg
SELECT reason, AVG(appointment_time) AS avg_time
FROM Appointments
GROUP BY reason;

-- GROUP BY using min max
SELECT reason, MIN(appointment_time) AS earliest_time,
			   MAX(appointment_time) AS most_late_time
FROM Appointments
GROUP BY reason;
-- add an age comlumn and check the indentation as well.

SELECT gender, COUNT(*) AS total_patients
FROM patients
GROUP BY gender;



-- HAVING(to filter thr group created by group by)
SELECT reason, COUNT(*) AS total_patients
FROM Appointments
GROUP BY reason
HAVING COUNT(*) >= 2;

SELECT address, COUNT(*) AS total_patients
FROM Patients
GROUP BY address
HAVING COUNT(*) > 3;

SELECT gender, COUNT(*) AS total_patients
FROM Patients
GROUP BY gender
HAVING COUNT(*) > 3;

-- WHERE, GROUP BY, HAVING
SELECT blood_group, COUNT(*) AS male_patients
FROM Patients
WHERE gender = 'Male'
GROUP BY blood_group
HAVING COUNT(*) >= 2;
