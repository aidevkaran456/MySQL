CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE customers(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    city VARCHAR(255)
);
INSERT INTO customers
(customer_id, first_name, last_name, email, phone, city)
VALUES
(1, 'Rahul', 'Sharma', 'rahulsharma@gmail.com', '9876543210', 'Pune'),
(2, 'Priya', 'Patel', 'priyapatel@yahool.com', '9823456712', 'Mumbai'),
(3, 'Amit', 'Mehta', 'amitmehta@gmail.com', '9765432189', 'Pune'),
(4, 'Sneha', 'Joshi', 'snehajoshi@gmail.com', '9898765432', 'Nashik'),
(5, 'Rohan', 'Deshmukh', 'rohandeshmukh@yahoo.com', '9123456780', 'Nagpur'),
(6, 'Ananya', 'Kulkarni', 'ananyakulkarni@yahoo.com', '9012345678', 'Pune'),
(7, 'Vikram', 'Singh', 'vikramsingh@gmail.com', '9345678901', 'Delhi'),
(8, 'Neha', 'Shah', 'nehashah@gmail.com', '9567890123', 'Mumbai'),
(9, 'Karan', 'Patil', 'karanpatil@yahoo.com', '9789012345', 'Kolhapur'),
(10, 'Pooja', 'Verma', 'poojaverma@gmail.com', '9234567890', 'Aurangabad');

SELECT *FROM customers;


CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(255),
    sub_category VARCHAR(255),
    price DECIMAL(10,2),
    stock_qty INT
);

INSERT INTO products
(product_id, product_name, category, sub_category, price, stock_qty)
VALUES
(1, 'Apple MacBook Pro', 'Technology', 'Laptops', 145000.00, 15),
(2, 'Dell Inspiron Laptop', 'Technology', 'Laptops', 65000.00, 20),
(3, 'HP LaserJet Printer', 'Technology', 'Printers', 22000.00, 12),
(4, 'Canon Wireless Printer', 'Technology', 'Printers', 18500.00, 18),
(5, 'Logitech Wireless Mouse', 'Technology', 'Accessories', 1200.00, 50),
(6, 'Logitech Keyboard', 'Technology', 'Accessories', 1800.00, 45),
(7, 'Office Chair Deluxe', 'Furniture', 'Chairs', 8500.00, 10),
(8, 'Executive Office Desk', 'Furniture', 'Tables', 15000.00, 8),
(9, 'Wooden Bookshelf', 'Furniture', 'Storage', 9500.00, 14),
(10, 'Glass Meeting Table', 'Furniture', 'Tables', 18000.00, 6),
(11, 'Ball Point Pen', 'Office Supplies', 'Stationary', 80.00, 200),
(12, 'Gel Pen Blue', 'Office Supplies', 'Stationary', 350.00, 150),
(13, 'A4 Copy Paper', 'Office Supplies', 'Stationary', 250.00, 100),
(14, 'Premium Notebook', 'Office Supplies', 'Stationary', 250.00, 120),
(15, 'Stapler Heavy Duty', 'Office Supplies', 'Stationary', 450.00, 75),
(16, 'Wireless Headphones', 'Technology', 'Accessories', 3500.00, 30),
(17, 'Samsung LED Monitor', 'Technolgy', 'Monitors', 12500.00, 22),
(18, 'LG UltraWide Monitor', 'Technology', 'Monitors', 28000.00, 16),
(19, 'Wooden Office Chair', 'Furniture', 'Chairs', 6500.00, 12),
(20, 'Office Storage Cabinet', 'Furniture', 'Storage', 11000.00, 9);

SELECT *FROM products;

CREATE TABLE orders(
	order_id INT,
    customer_id INT,
    order_date DATE,
    total_amount INT,
    address VARCHAR(255),
    order_status VARCHAR(255)
);

INSERT INTO orders
(order_id, customer_id, order_date, total_amount, address, order_status)
VALUES
(1, 1, '2026-09-01', 2499, '12 MG Road, Pune', 'Delivered'),
(2, 2, '2026-09-02', 1999, '45 Station Road, Mumbai', 'Delivered'),
(3, 3, '2026-09-04', 4999, '23 FC Road, Pune', 'Shipped'),
(4, 4, '2026-09-05', 1499, '12 MG Road, Pune', 'Delivered'),
(5, 5, '2026-09-07', 2999, '15 Main Road, Nagpur', 'Processing'),
(6, 6, '2026-09-09', 1598, '34 Shivaji Nagar, Pune', 'Delivered'),
(7, 7, '2026-09-10', 4999, '56 Civil Lines, Delhi', 'Shipped'),
(8, 8, '2026-09-12', 2598, '89 Linking Road, Mumbai', 'Processing'),
(9, 9, '2026-09-14', 1499, '21 Market Road, Kolhapur', 'Cancelled'),
(10, 10, '2026-09-15', 4498, '67 Civil Road, Aurangabad', 'Delivered');

SELECT *FROM orders;

-- MySQL Wildcards
-- used to find speacial patterns in text

SELECT *FROM products
WHERE product_name LIKE 'Office%'; -- products starting with office

SELECT *FROM products
WHERE product_name LIKE '%Printer'; -- products ending with printer

SELECT *FROM products
WHERE product_name LIKE '%Wireless%'; -- products containing wireless

SELECT *FROM customers
WHERE first_name LIKE 'A%';

SELECT *FROM customers
WHERE last_name LIKE '%Patil';

SELECT *FROM customers
WHERE first_name LIKE '%a%';

-- one charachter search
SELECT *FROM customers
WHERE first_name LIKE '_a%'; -- names where second charachter is a

SELECT *FROM customers
WHERE first_name LIKE '__a%'; -- third pos

SELECT *FROM customers
WHERE first_name LIKE '_____'; -- first names with exactly 5 charachters

SELECT *FROM products
WHERE product_name LIKE 'L%';

SELECT *FROM products
WHERE product_name LIKE 'L%Monitor';

SELECT *FROM products
WHERE product_name LIKE '%Pro%';

-- search by category
SELECT *FROM products
WHERE category LIKE 'Tech%';

SELECT *FROM products
WHERE sub_category LIKE '%Stationary%';

-- wildcard + AND
-- finding technology products containing wireless
SELECT *FROM products
WHERE category = 'Technology'
AND product_name LIKE '%Wireless%';

-- wildcard + OR
-- finding products starting with apple or samsung
SELECT *FROM products
WHERE product_name LIKE 'Apple%'
OR product_name LIKE 'Samsung%';

-- wildcard + ORDER BY
-- find products containing office and sort by price
SELECT *FROM products
WHERE product_name LIKE '%Office%'
ORDER BY price DESC;

-- wildcard + COUNT
-- count products containing office
SELECT COUNT(*) AS total_products
FROM products
WHERE product_name LIKE '%Office%';

-- wilcard + GROUP BY
-- count products by category where product name contains office
SELECT category, COUNT(*) as total_products
FROM products
WHERE product_name LIKE '%Office%'
GROUP BY category;

-- wildcard  + HAVING
-- find categories having more than 1 product containing office
SELECT category, COUNT(*) AS total_products
FROM products
WHERE product_name LIKE '%Office%'
GROUP BY category
HAVING COUNT(*)>1;

-- wildcards with email
-- find customers using gmail
SELECT *FROM customers
WHERE email LIKE '%@gmail.com';

SELECT *FROM customers
WHERE email LIKE '%@yahoo.com';

-- email staring with rahul
SELECT *FROM customers
WHERE email LIKE 'rahul%';

-- products not containing office
SELECT *FROM products
WHERE product_name NOT LIKE '%Office%';

-- customers whose email is not gmail
SELECT *FROM customers
WHERE email NOT LIKE '%@gmail.com';