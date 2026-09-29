CREATE DATABASE Bank;

USE BANK;

CREATE TABLE customers(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    dob DATE,
    gender VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255)
);



INSERT INTO customers
(customer_id, first_name, last_name, dob, gender, phone, email, address)
VALUES
(1, 'Rahul', 'Sharma', '1985-4-12', 'Male', '9876543210', 'rahulsharma@gmail.com', 'Pune'),
(2, 'Priya', 'Patel', '1990-8-25', 'Female', '9823456712', 'priyapatel@gmail.com', 'Mumbai'),
(3, 'Amit', 'Desai', '1982-11-18', 'Male', '9765432189', 'amitdesai@gmail.com', 'Pune'),
(4, 'Sneha', 'Joshi', '1995-2-8', 'Female', '9898765432', 'snehajoshi@gmail.com', 'Nashik'),
(5, 'Rohan', 'Mehta', '1988-5-12', 'Male', '9123456780', 'rohanmehta@gmail.com', 'Nagpur'),
(6, 'Anjali', 'Kulkarni', '1998-12-20', 'Female', '9012345678', 'anjalikulkarni@gmail.com', 'Pune'),
(7, 'Vikram', 'Singh', '1995-9-10', 'Male', '9345678901', 'vikramsingh@gmail.com', 'Delhi'),
(8, 'Neha', 'Shah', '1987-4-6', 'Female', '9567890123', 'nehashah@gmail.com', 'Mumbai'),
(9, 'Karan', 'Patil', '1988-7-7', 'Male', '9789012345', 'karanpatil@gmail.com', 'Kolhapur'),
(10, 'Pooja', 'Verma', '1996-9-12', 'Female', '9234567890', 'poojaverma@gmail.com', 'Aurangabad');

SELECT *FROM customers;

CREATE TABLE accounts(
	account_id INT,
    customer_id INT,
    account_number INT,
    account_type VARCHAR(255),
    balance INT,
    branch_id INT
);

INSERT INTO accounts
(account_id, customer_id, account_number, account_type, balance, branch_id)
VALUES
(1, 1, 1001001001, 'Savings', 45000, 1),
(2, 2, 1001001002, 'Current', 145000, 2),
(3, 3, 1001001003, 'Savings', 78000, 1),
(4, 4, 1001001004, 'Savings', 32000, 3),
(5, 5, 1001001005, 'Current', 210000, 4),
(6, 6, 1001001006, 'Savings', 56000, 1),
(7, 7, 1001001007, 'Savings', 92000, 5),
(8, 8, 1001001008, 'Current', 175000, 2),
(9, 9, 1001001009, 'Savings', 28500, 6),
(10, 10, 1001001010, 'Current', 64000, 3);

SELECT *FROM accounts;

CREATE TABLE transactions(
	transaction_id INT,
    account_id INT,
    transaction_type VARCHAR(255),
    amount INT,
    transaction_date DATE,
    balance_left INT
);

INSERT INTO transactions
(transaction_id, account_id, transaction_type, amount, transaction_date, balance_left)
VALUES
(1, 1, 'Deposit', 1000, '2026-9-1', 55000),
(2, 1, 'Withdrawal', 5000, '2026-9-3', 50000),
(3, 2, 'Deposit', 25000, '2026-9-2', 150000),
(4, 3, 'Withdrawal', 8000, '2026-9-4', 70000),
(5, 4, 'Deposit', 12000, '2026-9-5', 44000),
(6, 5, 'Withdrawal', 20000, '2026-9-6', 190000),
(7, 6, 'Deposit', 15000, '2026-9-7', 71000),
(8, 7, 'Withdrawal', 7000, '2026-9-8', 85000),
(9, 8, 'Deposit', 30000, '2026-9-9', 205000),
(10, 9, 'Withdrawal', 3500, '2026-9-10', 25000);

SELECT *FROM transactions;

CREATE TABLE loans(
	loan_id INT,
    customer_id INT,
    loan_type VARCHAR(255),
    loan_amount INT,
    interest_rate INT,
    emi INT,
    start_date DATE,
    end_date DATE,
    loan_status VARCHAR(255)
);

INSERT INTO loans
(loan_id, customer_id, loan_type, loan_amount, interest_rate, emi, start_date, end_date, loan_status)
VALUES
(1, 1, 'Home Loan', 2500000, 8, 21685, '2024-2-1', '2044-02-01', 'Active'),
(1, 3, 'Personal Loan', 500000, 11, 10987, '2024-3-15', '2029-03-15', 'Active'),
(1, 5, 'Car Loan', 900000, 9, 18742, '2024-4-10', '2029-4-10', 'Active'),
(1, 7, 'Education Loan', 700000, 8, 10909, '2024-5-20', '2031-5-20', 'Active'),
(1, 8, 'Business Loan', 1500000, 10, 25131, '2024-6-05', '2031-6-05', 'Closed');

SELECT *FROM loans;

CREATE TABLE branches (
    branch_id INT,
    branch_name VARCHAR(255),
    branch_code VARCHAR(255),
    city VARCHAR(255),
    manager_name VARCHAR(255),
    IFSC_code VARCHAR(255)
);

INSERT INTO branches
(branch_id, branch_name, branch_code, city, manager_name, IFSC_code)
VALUES
(1, 'Pune Branch', 'PUN001', 'Pune', 'Rajesh Sharma', 'BKID0001001'),
(2, 'Mumbai Branch', 'MUM002', 'Mumbai', 'Amit Patel', 'BKID0001002'),
(3, 'Nashik Branch', 'NSK003', 'Nashik', 'Suresh Joshi', 'BKID0001003'),
(4, 'Nagpur Branch', 'NGP004', 'Nagpur', 'Mahesh Mehta', 'BKID0001004'),
(5, 'Delhi Branch', 'DEL005', 'Delhi', 'Vikram Singh', 'BKID0001005'),
(6, 'Kolhapur Branch', 'KOP006', 'Kolhapur', 'Sanjay Patil', 'BKID0001006');

SELECT * FROM branches;
