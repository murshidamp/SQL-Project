-- Library Management System
-- Create Database
Create Database LibraryData;
-- Use Database
Use LibraryData;
-- Create Branch Table
Create Table Branch(Branch_no int primary key,Manager_Id int not null,Branch_address varchar(200),Contact_no char(10));
-- Create Employee Table
Create Table Employee(Emp_id int primary key, Emp_name varchar(20),Position varchar(20),Salary int,Branch_no int,foreign key(Branch_no) references Branch(Branch_no));
-- Create Customer Table
Create Table Customer(Customer_id int primary key,Customer_name varchar(20),Customer_address varchar(20),Reg_date date);
-- Create Books Table
create Table Books(ISBN Varchar(20) primary key, Book_title varchar(30), Category varchar(30),Rental_Price int,Status enum('yes','no'),Author varchar(20),Publisher varchar(50));
-- Create IssueStatus Table
Create Table IssueStatus(Issue_id int primary key,Issued_cust int,foreign key(Issued_cust) references Customer(Customer_id),Issued_book_name varchar(30),Issue_date date,Isbn_book varchar(20) ,foreign key(Isbn_book) references Books(ISBN));
-- Create ReturnStatus Table
Create Table ReturnStatus(Return_id int primary key,Return_cust varchar(20),Return_book_name Varchar(30),Return_date date, Isbn_book2 varchar(20),foreign key(Isbn_book2) references Books (ISBN));
-- Inserting values into Branch table
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, 101, '123 Main St', '1234567890'),
(2, 102, '456 Elm St', '9876543210'),
(3, 103, '789 Oak St', '2345678901'),
(4, 104, '101 Pine St', '3456789012'),
(5, 105, '678 Maple St', '4567890123'),
(6, 106, '321 Cedar St', '5678901234'),
(7, 107, '876 Birch St', '6789012345'),
(8, 108, '543 Walnut St', '7890123456');
-- Inserting values into Employee table
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(201, 'John Doe', 'Manager', 60000, 1),
(202, 'Jane Smith', 'Assistant Manager', 45000, 1),
(203, 'Michael Johnson', 'Librarian', 40000, 2),
(204, 'Emily Brown', 'Clerk', 35000, 2),
(205, 'David Wilson', 'Assistant Librarian', 38000, 3),
(206, 'Sarah Lee', 'Clerk', 32000, 1),
(207, 'Christopher Davis', 'Assistant Librarian', 38000, 4),
(208, 'Jessica Martinez', 'Clerk', 32000, 4),
(209, 'Daniel Taylor', 'Manager', 60000, 5),
(210, 'Emma White', 'Assistant Manager', 45000, 1),
(211, 'Andrew Johnson', 'Librarian', 40000, 6),
(212, 'Olivia Brown', 'Clerk', 35000, 6),
(213, 'James Wilson', 'Assistant Librarian', 38000, 7),
(214, 'Sophia Lee', 'Clerk', 32000, 7),
(215, 'Matthew Davis', 'Assistant Librarian', 38000, 1),
(216, 'Ella Anderson', 'Manager', 60000, 2),
(217, 'Liam Taylor', 'Assistant Manager', 45000, 2),
(218, 'Ava Thomas', 'Librarian', 40000, 3),
(219, 'Noah Brown', 'Clerk', 35000, 1),
(220, 'Mia Wilson', 'Assistant Librarian', 38000, 1);
-- Inserting values into Customer table 
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(301, 'Alice Johnson', '789 Oak St', '2022-05-15'),
(302, 'Bob Williams', '101 Pine St', '2023-01-20'),
(303, 'Eva Brown', '456 Maple St', '2022-11-10'),
(304, 'Tom Wilson', '321 Elm St', '2023-03-05'),
(305, 'Sophia Martinez', '876 Cedar St', '2022-09-30'),
(306, 'Jack Davis', '543 Birch St', '2023-02-25'),
(307, 'Olivia Smith', '210 Walnut St', '2022-07-20'),
(308, 'Liam Johnson', '987 Pine St', '2023-04-10'),
(309, 'Emma Taylor', '123 Cherry St', '2021-12-15'),
(310, 'Noah Anderson', '876 Orange St', '2021-11-01'),
(311, 'Ava Thomas', '456 Peach St', '2022-06-10'),
(312, 'William Harris', '789 Plum St', '2023-03-15'),
(313, 'Mia Martin', '101 Apple St', '2021-09-05'),
(314, 'James Thompson', '234 Lemon St', '2023-04-20');
-- Inserting values into Books table
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('1234567890123', 'The Great Gatsby', 'Fiction', 5, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('9876543210987', 'To Kill a Mockingbird', 'Fiction', 4, 'yes', 'Harper Lee', 'J.B. Lippincott'),
('4567890123456', 'Pride and Prejudice', 'Classic', 6, 'yes', 'Jane Austen', 'T. Egerton, Whitehall'),
('7890123456789', '1984', 'Science Fiction', 4, 'yes', 'George Orwell', 'Secker & Warburg'),
('2345678901234', 'The Catcher in the Rye', 'Coming-of-Age', 5, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('5678901234567', 'Brave New World', 'Science Fiction', 6, 'no', 'Aldous Huxley', 'Chatto & Windus'),
('8901234567890', 'The Lord of the Rings', 'Fantasy', 7, 'no', 'J.R.R. Tolkien', 'George Allen & Unwin'),
('3456789012345', 'The Hobbit', 'Fantasy', 5, 'yes', 'J.R.R. Tolkien', 'George Allen & Unwin'),
('4561237890456', 'Crime and Punishment', 'Classic', 6, 'yes', 'Fyodor Dostoevsky', 'The Russian Messenger'),
('9876543210345', 'The Odyssey', 'Epic', 7, 'yes', 'Homer', 'Penguin Classics'),
('3456789123409', 'Moby-Dick', 'Adventure', 6, 'no', 'Herman Melville', 'Richard Bentley'),
('6543210987654', 'The Brothers Karamazov', 'Classic', 6, 'yes', 'Fyodor Dostoevsky', 'The Russian Messenger'),
('9087654321098', 'The Picture of Dorian Gray', 'Gothic', 5, 'no', 'Oscar Wilde', 'Lippincott’s Monthly Magazine'),
('1230987654321', 'The Grapes of Wrath', 'Historical Fiction', 6, 'yes', 'John Steinbeck', 'The Viking Press'),
('3210987654321', 'The Great Expectations', 'Classic', 5, 'no', 'Charles Dickens', 'Chapman & Hall'),
('5678901234098', 'Les Misérables', 'Historical Fiction', 7, 'yes', 'Victor Hugo', 'A. Lacroix, Verboeckhoven & Cie.'),
('9876543219876', 'Anna Karenina', 'Classic', 6, 'no', 'Leo Tolstoy', 'The Russian Messenger'),
('8765432109876', 'Wuthering Heights', 'Gothic', 5, 'yes', 'Emily Brontë', 'Thomas Cautley Newby'),
('9876543212345', 'War and Peace', 'Historical Fiction', 8, 'no', 'Leo Tolstoy', 'The Russian Messenger'),
('6789012345678', 'Jane Eyre', 'Gothic', 5, 'yes', 'Charlotte Brontë', 'Smith, Elder & Co.');
-- Inserting values into IssueStatus table
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(401, 301, 'The Great Gatsby', '2023-03-01', '1234567890123'),
(402, 302, 'To Kill a Mockingbird', '2023-06-10', '9876543210987'),
(403, 303, 'Pride and Prejudice', '2023-03-15', '4567890123456'),
(404, 304, '1984', '2023-03-20', '7890123456789'),
(405, 305, 'The Catcher in the Rye', '2023-03-25', '2345678901234'),
(406, 306, 'Brave New World', '2023-03-30', '5678901234567'),
(407, 307, 'The Lord of the Rings', '2023-06-05', '8901234567890'),
(408, 308, 'The Hobbit', '2023-04-10', '3456789012345');
-- Inserting values into ReturnStatus table
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(501, 301, 'The Great Gatsby', '2023-03-15', '1234567890123'),
(502, 302, 'To Kill a Mockingbird', '2023-03-20', '9876543210987'),
(503, 303, 'Pride and Prejudice', '2023-03-25', '4567890123456'),
(504, 304, '1984', '2023-03-30', '7890123456789'),
(505, 305, 'The Catcher in the Rye', '2023-04-05', '2345678901234'),
(506, 306, 'Brave New World', '2023-04-10', '5678901234567'),
(507, 307, 'The Lord of the Rings', '2023-04-15', '8901234567890'),
(508, 308, 'The Hobbit', '2023-04-20', '3456789012345');
-- 1) Retrieve the book title, category and rental price of all available books.
select Book_title, Category, Rental_Price from Books where Status='yes';
-- 2) List the employee names and their respective salaries in descending order of salary
select Emp_name, Salary from Employee order by Salary desc;
-- 3) Retrieve the book titles and the corresponding customers who have issued those books
select Books.Book_title , Customer.Customer_name from IssueStatus inner join Books on IssueStatus.Isbn_book = Books.ISBN join Customer on IssueStatus.Issued_cust = Customer.Customer_Id;
-- 4) Display the Total count of Books in each category
Select Category , count(*) as TotalBooks from Books group by Category;
-- 5) Retrieve the Employee name and their position for the Employees whose salaries are above 50,000
select Emp_name , Position from Employee where Salary>50000;
-- 6) List the customer names who registered before '2022-01-01' and have not issued any books yet
select Customer.Customer_name from Customer where Reg_date < '2022-01-01' and Customer_Id not in (select Issued_cust from IssueStatus);
-- 7) Display the branch number and total no of employees in each branch
select Branch_no , count(*) as TotalEmployees From Employee group by Branch_no;
-- 8) Display the names of Customers who have issued books in the month of june
Select Customer.Customer_name from IssueStatus inner join Customer on IssueStatus.Issued_cust = Customer.Customer_Id where Year(Issue_date)=2023 and Month(Issue_date)= 6;
-- 9) Retrieve the book title from Book table containing history
Select Book_title from Books where Category = 'Historical Fiction';
-- 10) Retrive the branch number along with the count of employees for branches having more than 5 employees
select Branch_no , count(*) as Employee_Count From Employee group by Branch_no having count(*)>5;

