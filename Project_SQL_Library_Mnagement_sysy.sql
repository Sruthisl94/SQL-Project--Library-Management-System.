create database Library;
use Library;
create table Branch(Branch_no int PRIMARY KEY, 
Manager_Id  int,
Branch_address varchar(30),  
Contact_no bigint);
insert into Branch values(1,111,'123MG Road Kochi',1234567),
(2,112,'234Nh Trivandrum',1234580),
(3,113,'324Gandi Nagar Kottayam',2234567),
(4,114,'Banerji Road Kochi',1454567),
(5,114,'123Thrissur Road',1234500),
(6,115,'Civil Line Kozhikode',1256567),
(7,116,'Ashram Road, Kollam',1234807),
(8,117,'Eastfort, Trivandrum',1277567),
(9,118,'JNU Stadium, Kochi',1334567),
(10,119,'Manachira,Kozhikode',1444567);

select * from branch;
create table Employee(Emp_Id int PRIMARY KEY,  
Emp_name varchar(20),
Position  varchar(20),
Salary decimal(10,2),
Branch_no int,
foreign key (Branch_no) references Branch(Branch_no)
);
insert into Employee (Emp_Id,Emp_name,Position,Salary,Branch_no) values
(201, 'Anil Kumar', 'Manager', 75000.00, 1),
(202, 'Ravi Nair', 'Clerk', 30000.00, 2),
(203, 'Sheela Devi', 'Assistant', 40000.00, 2),
(204, 'Suresh Menon', 'Manager', 80000.00, 2),
(205, 'Lakshmi Pillai', 'Clerk', 32000.00, 3),
(206, 'Manoj Varma', 'Assistant', 45000.00, 4),
(207, 'Rajesh Pillai', 'Manager', 85000.00, 4),
(208, 'Kavita Nair', 'Clerk', 31000.00, 4),
(209, 'Vijay Kumar', 'Assistant', 42000.00, 5),
(210, 'Divya Iyer', 'Manager', 90000.00, 10);
select * from employee;

create table Books(ISBN int PRIMARY KEY,  
Book_title  varchar(50),
Category  varchar(20),
Rental_Price float,  
Status varchar(3) ,
Author  varchar(30),
Publisher varchar(30));


desc Books;
select * from Books;
INSERT INTO Books  (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
(2315007, 'The Catcher in the Rye', 'Fiction', 13.99,'No', 'J.D. Salinger', 'Back Bay Books'),
(310786, 'The Great Gatsby', 'Fiction', 15.99, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
(807292, 'Pride and Prejudice', 'Classic Literature', 11.99, 'yes', 'Jane Austen', 'Bantam Classics'),
(477459, 'The Da Vinci Code', 'Mystery', 16.99, 'yes', 'Dan Brown', 'Anchor'),
(6027328, 'Life of Pi', 'Adventure', 14.99, 'yes', 'Yann Martel', 'Mariner Books'),
(9023577, 'The Hobbit', 'Fantasy', 29.99, 'no', 'J.R.R. Tolkien', 'Mariner Books'),
(98682, 'Sapiens', 'History', 17.99, 'yes', 'Yuval Noah Harari', 'Harper Perennial'),
(036537, 'Guns, Germs, and Steel', 'History', 19.99, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
(1120084, 'The Kite Runner', 'Fiction', 14.99, 'yes', 'Khaled Hosseini', 'Riverhead Books'),
(743539, 'Educated: A Memoir', 'Autobiography', 26.99, 'yes', 'Tara Westover', 'Random House');



select * from Books;

create table Customer(Customer_Id int PRIMARY KEY, 
Customer_name  varchar(30),
Customer_address  varchar(50), 
Reg_date date);

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(55, 'Akhil Ramesh', '123 MG Road, Ernakulam, Kerala', '2021-01-15'),
(56, 'Lekshmi Menon', '45 Lighthouse Beach, Kovalam, Kerala', '2023-02-10'),
(57, 'Arjun Nair', '78 Hill View, Munnar, Kerala', '2023-03-05'),
(58, 'Meera Krishnan', '23 Marine Drive, Kochi, Kerala', '2019-04-20'),
(59, 'Suresh Kumar', '56 Vellayani Lake, Thiruvananthapuram, Kerala', '2023-05-15'),
(60, 'Divya Pillai', '34 Beach Road, Varkala, Kerala', '2017-06-25'),
(61, 'Nikhil Joseph', '89 Fort Road, Palakkad, Kerala', '2018-07-10'),
(62, 'Anjali Varma', '12 Rose Street, Kozhikode, Kerala', '2023-08-01'),
(63, 'Vishnu Prasad', '65 Pepper Avenue, Wayanad, Kerala', '2022-09-12'),
(64, 'Aishwarya Rajan', '30 Pine Valley, Idukki, Kerala', '2023-10-18');

select * from Customer;

create table IssueStatus(Issue_Id int PRIMARY KEY , 
Issued_cust int,  
Issued_book_name varchar(30),
Issue_date date,
Isbn_book int, 
 FOREIGN KEY(Issued_cust)  references Customer (Customer_id),
FOREIGN KEY (Isbn_book) references books (ISBN));


insert into IssueStatus (Issue_Id,Issued_cust,Issued_book_name,Issue_date,Isbn_book) values
(101,56,'Educated: A Memoir','2024-03-03',743539),
(102,55, 'The Hobbit','2023-08-31',9023577),
(103,57, 'The Catcher in the Rye','2024-02-02',2315007),
(104,60, 'Guns, Germs, and Steel','2023-09-30',036537),
(105,58, 'Pride and Prejudice','2024-05-06',807292),
(106,64, 'The Catcher in the Rye','2024-04-05',2315007),
(107,59,'Life of Pi','2024-06-02',6027328),
(108,61,'Pride and Prejudice','2024-06-30',807292),
(109,62, 'Pride and Prejudice','2024-05-20',807292),
(110,63,'The Hobbit','2024-03-17',9023577);

select * from IssueStatus;

create table ReturnStatus(Return_Id int PRIMARY KEY, 
Return_cust varchar(20),
Return_book_name  varchar(30),
Return_date  date,
Isbn_book2 int,
 FOREIGN KEY (Isbn_book2) references books(isbn));
 

 insert into ReturnStatus (Return_Id,Return_cust,Return_book_name,Return_date,Isbn_book2) values
 (1071,'Akhil Ramesh','Life of Pi','2024-06-20',6027328),
(1082,'Divya Pillai','Pride and Prejudice','2024-07-07',807292),
(1093,'Nikhil Joseph', 'Pride and Prejudice','2024-06-20',807292),
(1104,'Anjali Varma','The Hobbit','2024-04-30',9023577);

select * from ReturnStatus;

#1. Retrieve the book title, category, and rental price of all available books.
 
select Book_title,Category,Rental_Price from Books;
 
# 2. List the employee names and their respective salaries in descending order of salary. 

select Emp_name,Salary from Employee  order by  Salary desc;

# 3. Retrieve the book titles and the corresponding customers who have issued those books.
select i.issued_book_name,c.customer_name from issuestatus i 
inner join customer c on c.customer_id=i.issued_cust;

# 4. Display the total count of books in each category. 

select count(Category),Category from Books group by Category;

# 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 

select Emp_name,position from Employee where Salary>50000;

# 6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 

select c.Customer_name ,i.issued_cust from Customer c 
 inner join Issuestatus i on c.Customer_id=i.Issued_cust
 where c.Reg_date <'2022-01-01';
 
 # 7. Display the branch numbers and the total count of employees in each branch. 
 
 select branch_no, count(*) as Total_count_employees from Employee group by branch_no;

# 8. Display the names of customers who have issued books in the month of June 2023.

select c.Customer_name from Customer c
inner join Issuestatus s on c.customer_id=s.issued_cust 
where year(s.issue_date)=2023 and month(s.issue_date)=6;

select * from Issuestatus;

# 9. Retrieve book_title from book table containing history. 

select book_title from books where Category='History';

/*10.Retrieve the branch numbers along with the 
count of employees for branches having more than 5 employees*/

select Branch_no,count(*) as count from employee 
group by branch_no having count(*)>5;

/* 11. Retrieve the names of employees 
who manage branches and their respective branch addresses.*/

select e.emp_name,b.branch_address from employee e inner join 
branch b on e.branch_no=b.branch_no;

/*12.  Display the names of customers who have issued books with a rental price 
higher than Rs. 25.*/

select c.customer_name from customer c inner join issuestatus i
on c.customer_id=i.issued_cust
inner join books b on b.book_title=i.issued_book_name
where b.rental_price>25;

