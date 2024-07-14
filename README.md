# SQL-Project--Library-Management-System.
### This project is a Library Management System that keeps track of all information about books in the library, their cost, status and total number of books available in the library. Tge project involves creating dataase 'Library' and several tables to manage different aspecrts of the library system.
## Database and Tables
The database consists of the following tables:

Branch

Branch_no (PRIMARY KEY)
Manager_Id
Branch_address
Contact_no
Employee

Emp_Id (PRIMARY KEY)
Emp_name
Position
Salary
Branch_no (FOREIGN KEY references Branch_no in Branch table)
Books

ISBN (PRIMARY KEY)
Book_title
Category
Rental_Price
Status (YES if the book is available, NO if not available)
Author
Publisher
Customer

Customer_Id (PRIMARY KEY)
Customer_name
Customer_address
Reg_date
IssueStatus

Issue_Id (PRIMARY KEY)
Issued_cust (FOREIGN KEY references Customer_Id in Customer table)
Issued_book_name
Issue_date
Isbn_book (FOREIGN KEY references ISBN in Books table)
ReturnStatus

Return_Id (PRIMARY KEY)
Return_cust
Return_book_name
Return_date
Isbn_book2 (FOREIGN KEY references ISBN in Books table)

## SQL Queries
By using various SQL queries important informations are retrieved from the table. The queries used includes
* SELECT
* ORDER BY
* GROUP BY
* JOINS
* SUBQUERIES
* Aggregate Functions

  ## Conclusions
  This Library Management System helps in efficiently managing the information about books, customers, and employees in a library. By using SQL queries, we can easily retrieve and manipulate data as needed for effective library management.


  
