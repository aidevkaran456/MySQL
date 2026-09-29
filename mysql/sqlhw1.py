CREATE DATABASE DiwaliShopping;

USE DiwaliShopping;

CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR (50),
    email VARCHAR(100)
);

INSERT INTO customers
(customer_id, customer_name, city, state, email)
VALUES
(1, 'Amit Patil', 'Kolhapur', 'Maharashtra', 'amit@gmail.com'),
(2, 'Sneha Joshi', 'Pune', 'Maharashtra', 'sneha@gmail.com'),
(3, 'Rahul Sharma', 'Mumbai', 'Maharashtra', 'rahul@yahoo.com'),
(4, 'Priya Deshmukh', 'Nashik', 'Maharashtra', 'priya@gmail.com'),
(5, 'Rohan Kulkarni', 'Nagpur', 'Maharashtra', 'rohan@hotmail.com'),
(6, 'Neha More', 'Kolhapur', 'Maharashtra', 'neha@yahoo.com'),
(7, 'Vijay Patil', 'Sangli', 'Maharashtra', 'vijay@gmail.com'),
(8, 'Pooja Jadhav', 'Pune', 'Maharashtra', 'pooja@gmail.com'),
(9, 'Sagar Shah', 'Mumbai', 'Maharashtra', 'sagar@outlook.com'),
(10, 'Anita Shinde', 'Satara', 'Maharashtra', 'anita@gmail.com'),
(11, 'Karan Mehta', 'Ahmedabad', 'Gujrat', 'karan@gmail.com'),
(12, 'Meera Rao', 'Bangalore', 'Karnataka', 'meera@yahoo.com'),
(13, 'Arjun Singh', 'Delhi', 'Delhi', 'arjun@gmail.com'),
(14, 'Kavita Verma', 'Jaipur', 'Rajasthan', 'kavita@hotmail.com'),
(15, 'Nikhil Gupta', 'Surat', 'Gujrat', 'nikhil@gmail.com');

SELECT *FROM customers;

CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products
(product_id, product_name, category, sub_category, price)
VALUES
(1, 'Lakshmi Ganesh Idol', 'Puja Items', 'Idols', 850.00),
(2, 'Decorative Diya Set', 'Decorations', 'Diyas', 450.00),
(3, 'Clay Diya Pack', 'Decorations', 'Diyas', 180.00),
(4, 'LED Diwali Lights', 'Decorations', 'Lights', 750.00),
(5, 'Golden String Lights', 'Decorations', 'Lights', 1200.00),
(6, 'Rangoli Colors Pack', 'Decorations', 'Rangoli', 250.00),
(7, 'Rangoli Stencil Set', 'Decorations', 'Rangoli', 350.00),
(8, 'Silver Puja Thali', 'Puja Items', 'Puja Thali', 1500.00),
(9, 'Brass Puja Thali', 'Puja Items', 'Puja Thali', 2200.00),
(10, 'Kaju Katli Box', 'Sweets', 'Dry Fruits Sweets', 950.00),
(11, 'Motichoor Ladoo Box', 'Sweets', 'Ladoo', 650.00),
(12, 'Besan Ladoo Box', 'Sweets', 'Ladoo', 550.00),
(13, 'Dry Fruit Gift Box', 'Gifts', 'Dry Fruits', 1800.00),
(14, 'Premium Chocolate Box', 'Gifts', 'Chocolates', 1250.00),
(15, 'Diwali Gift Hamper', 'Gifts', 'Gift Hampers', 2500.00),
(16, 'Silk Saree', 'Clothing', 'Sarees', 5500.00),
(17, 'Designer Kurta', 'Clothing', 'Kurtas', 2800.00),
(18, 'Kids Ethnic Wear', 'Clothing', 'Kids Wear', 2200.00),
(19, 'Traditional Dress Set', 'Clothing', 'Ethnic Wear', 3500.00),
(20, 'Decorative Lantern', 'Decorations', 'Lanterns', 900.00);

SELECT *FROM products;

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
	product_name VARCHAR(100),
    city VARCHAR(50),
    payment_method VARCHAR(30)
);

INSERT INTO orders
(order_id, customer_name, product_name, city, payment_method)
VALUES
(101, 'Amit Patil', 'Lakshmi Ganesh Idol', 'Kolhapur', 'UPI'),
(102, 'Sneha Joshi', 'Decorative Diya Set', 'Pune', 'Credit Card'),
(103, 'Rahul Sharma', 'LED Diwali Lights', 'Mumbai', 'UPI'),
(104, 'Priya Deshmukh', 'Kaju Katli Box', 'Nashik', 'Cash'),
(105, 'Rohan Kulkarni', 'Dry Fruit Gift Box', 'Nagpur', 'UPI'),
(106, 'Neha More', 'Rangoli Colors Pack', 'Kolhapur', 'Debit Card'),
(107, 'Vijay Patil', 'Silk Saree', 'Sangli', 'UPI'),
(108, 'Pooja Jadhav', 'Designer Kurta', 'Pune', 'Credit Card'),
(109, 'Sagar Shah', 'Premium Chocolate Box', 'Mumbai', 'UPI'),
(110, 'Anita Shinde', 'Brass Puja Thali', 'Satara', 'Cash'),
(111, 'Karan Mehta', 'Diwali Gift Hamper', 'Ahmedabad', 'UPI'),
(112, 'Meera Rao', 'Decorative Lantern', 'Bangalore', 'Credit Card'),
(113, 'Arjun Singh', 'Traditional Dress Set', 'Delhi', 'UPI'),
(114, 'Kavita Verma', 'Motichoor Ladoo Box', 'Jaipur', 'Cash'),
(115, 'Nikhil Gupta', 'Golden String Lights', 'Surat', 'UPI');

SELECT *FROM orders;

-- answers
-- 1
SELECT *FROM customers
WHERE customer_name LIKE 'A%';

-- 2
SELECT *FROM customers
WHERE customer_name LIKE 'P%';

-- 3
SELECT *FROM customers
WHERE customer_name LIKE '%Patil';

-- 4
SELECT *FROM customers
WHERE customer_name LIKE '%Sh%'; -- is this case sensitive?

-- 5
SELECT *FROM customers
WHERE customer_name LIKE '%a%';

-- 6
SELECT *FROM products
WHERE product_name LIKE 'Diwali%';

-- 7 
SELECT *FROM products
WHERE product_name LIKE '%Diya%';

-- 8
SELECT *FROM products
WHERE product_name LIKE '%Rangoli%';

-- 9
SELECT *FROM products
WHERE product_name LIKE '%Box';

-- 10
SELECT *FROM products
WHERE product_name LIKE '%Gift%';

-- 11
SELECT *FROM customers
WHERE customer_name LIKE '_a%';

-- 12
SELECT *FROM customers
WHERE customer_name LIKE '_o%';

-- 13
SELECT *FROM customers
WHERE customer_name LIKE '__h%';

-- 14
SELECT *FROM products
WHERE product_name LIKE 'L%';

-- 15
SELECT *FROM products
WHERE product_name LIKE '_a%';

-- 16
SELECT *FROM customers
WHERE email LIKE '%@gmail.com';

-- 17
SELECT *FROM customers
WHERE email LIKE '%@yahoo.com';

-- 18
SELECT *FROM customers
WHERE email LIKE 'amit%';

-- 19
SELECT *FROM customers
WHERE email LIKE '%@outlook.com%';

-- 20
SELECT *FROM customers
WHERE email NOT LIKE '%@gmail.com%';


