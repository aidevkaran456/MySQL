CREATE DATABASE Library;

USE Library;

CREATE TABLE books(
    book_id INT,
    title VARCHAR(255),
    isbn VARCHAR(255),
    author VARCHAR(255),
    category VARCHAR(255),
    publisher VARCHAR(255),
    price INT
);

INSERT INTO books
(book_id, title, isbn, author, category, publisher, price)
VALUES
(1, 'The Alchemist', '9780062315007', 'Paulo Coelho', 'Fiction', 'HarperCollins', 399),
(2, '1984', '9780451524935', 'George Orwell', 'Fiction', 'Penguin Books', 299),
(3, 'Harry Potter and the Philosopher\'s Stone', '9780747532699', 'J.K. Rowling', 'Fantasy', 'Bloomsbury', 499),
(4, 'Atomic Habits', '9780735211292', 'James Clear', 'Self-Help', 'Avery', 599),
(5, 'The Psychology of Money', '9780857197689', 'Morgan Housel', 'Finance', 'Harriman House', 499),
(6, 'Wings of Fire', '9788173711466', 'A.P.J. Abdul Kalam', 'Biography', 'Universities Press', 350),
(7, 'Rich Dad Poor Dad', '9781612680194', 'Robert Kiyosaki', 'Finance', 'Plata Publishing', 450),
(8, 'The Hobbit', '9780547928227', 'J.R.R. Tolkien', 'Fantasy', 'Houghton Mifflin', 550),
(9, 'Think and Grow Rich', '9781585424337', 'Napoleon Hill', 'Self-Help', 'TarcherPerigee', 399),
(10, 'Ikigai', '9780143130727', 'Hector Garcia', 'Lifestyle', 'Penguin Books', 399);

SELECT *FROM books;

CREATE TABLE members(
	member_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    gender VARCHAR(255),
    dob DATE,
    phone VARCHAR(255),
    membership_status VARCHAR(255)
);

INSERT INTO members
(member_id, first_name, last_name, gender, dob, phone, membership_status)
VALUES
(1, 'Rahul', 'Sharma', 'Male', '2001-5-14', '9876543210', 'Active'),
(2, 'Priya', 'Patel', 'Female', '2002-8-22', '9823456712', 'Active'),
(3, 'Amit', 'Mehta', 'Male', '1999-2-10', '9765432189', 'Active'),
(4, 'Sneha', 'Joshi', 'Female', '2003-11-30', '9898765432', 'Active'),
(5, 'Rahul', 'Deshmukh', 'Male', '2000-7-18', '9123456780', 'Active');

SELECT *FROM members;

CREATE TABLE borrowings(
	borrowing_id INT,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    due_date DATE,
    return_status VARCHAR(255),
    fine_amount INT
);

INSERT INTO borrowings
(borrowing_id, member_id, book_id, borrow_date, due_date, return_status, fine_amount)
VALUES
(1, 1, 3, '2026-09-01', '2026-09-15', 'Returned', 0),
(2, 1, 1, '2026-09-02', '2026-09-16', 'Borrowed', 20),
(3, 3, 5, '2026-09-03', '2026-09-17', 'Returned', 0),
(4, 5, 7, '2026-09-05', '2026-09-19', 'Returned', 50),
(5, 5, 9, '2026-09-07', '2026-09-21', 'Returned', 0);

SELECT *FROM borrowings;

