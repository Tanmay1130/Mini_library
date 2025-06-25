# Mini_library
# 📚 Mini Library Management System - SQL Project

A simple SQL-based Library Management System designed for learning database design, schema creation, and data operations. This project is ideal for students, interns, or beginners exploring relational databases using MySQL or SQLite.

## 🗂 Project Overview

This project includes:
- Database schema creation for a library system
- Sample data for authors and books
- Core tables: Members, Authors, Books, Borrow, Returns
- Basic SQL operations: `INSERT`, `UPDATE`, `DELETE`
- Foreign key relationships and constraints

## 🛠 Technologies Used

- SQL (MySQL / SQLite)
- Command Line / SQL Client (e.g., MySQL Workbench, SQLite Studio)
- ER Diagram Tools (optional: dbdiagram.io, drawSQL)

## 🧱 Database Schema

### Tables

- **Members**  
  Stores library member details.

- **Authors**  
  List of book authors.

- **Books**  
  Book records with reference to authors.

- **Borrow**  
  Track borrowed books by members.

- **Returns**  
  Handles book return data and fines.

### Entity Relationships

- One author can write many books.
- One member can borrow many books.
- Each borrow record may have a corresponding return record.

## 📋 Sample SQL Operations

- Insert new members, authors, and books
- Borrow and return books
- Update member details
- Delete books with no available copies
- Insert members with null values (email optional)

## 🧪 Sample Queries

```sql
-- Update phone number for a member
UPDATE Members
SET phone = '9876543210'
WHERE name = 'Riya Mehta';

-- Delete books with no copies available
DELETE FROM Books
WHERE copies_available = 0;

-- Insert a member without email (null handling)
INSERT INTO Members (name, email)
VALUES ('Tejas Patil', NULL);
