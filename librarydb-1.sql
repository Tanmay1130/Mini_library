

CREATE DATABASE IF NOT EXISTS mini_library;
USE mini_library;

-- Members table
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(255)
);

-- Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL
);

-- Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author_id INT,
    genre VARCHAR(50),
    published_year YEAR,
    copies_available INT DEFAULT 1,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Borrow table
CREATE TABLE Borrow (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    due_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Returns table
CREATE TABLE Returns (
    return_id INT PRIMARY KEY AUTO_INCREMENT,
    borrow_id INT,
    return_date DATE,
    fine DECIMAL(6, 2),
    FOREIGN KEY (borrow_id) REFERENCES Borrow(borrow_id)
);

-- Sample INSERTs
INSERT INTO Authors (author_name) VALUES
('J.K. Rowling'),
('George Orwell'),
('Agatha Christie'),
('Dan Brown'),
('Jane Austen');

INSERT INTO Books (title, author_id, genre, published_year, copies_available) VALUES
('Harry Potter', 1, 'Fantasy', 1997, 5),
('1984', 2, 'Dystopian', 1949, 3),
('Murder on the Orient Express', 3, 'Mystery', 1934, 2),
('The Da Vinci Code', 4, 'Thriller', 2003, 4),
('Pride and Prejudice', 5, 'Romance', 1813, 1);

-- UPDATE example
UPDATE Members
SET phone = '9876543210'
WHERE name = 'Riya Mehta';

-- DELETE example
DELETE FROM Books
WHERE copies_available = 0;

-- NULL handling example
INSERT INTO Members (name, email)
VALUES ('Tejas Patil', NULL);