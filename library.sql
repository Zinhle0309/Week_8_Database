
-- Create authors table
CREATE TABLE authors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_date DATE
);

-- Create publishers table
CREATE TABLE publishers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) UNIQUE,
    address VARCHAR(255),
    phone VARCHAR(50),
    email VARCHAR(255)
);

-- Create categories table
CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) UNIQUE,
    description TEXT
);

-- Create books table
CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    title VARCHAR(255),
    isbn VARCHAR(255) UNIQUE,
    publication_year INT,
    publisher_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

-- Create book_authors table
CREATE TABLE book_authors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    author_id INT,
    book_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Create members table
CREATE TABLE members (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(50),
    address VARCHAR(255),
    membership_date DATE
);

-- Create loans table
CREATE TABLE loans (
    id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    loan_date DATE,
    due_date DATE,
    return_date DATE,
    status VARCHAR(50),
    member_id INT,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (member_id) REFERENCES members(id)
);

-- Insert authors
INSERT INTO authors (id, first_name, last_name, birth_date) VALUES
(1, 'George', 'Orwell', '1903-06-25'),
(2, 'Jane', 'Austen', '1775-12-16');

-- Insert publishers
INSERT INTO publishers (id, name, address, phone, email) VALUES
(1, 'Penguin Books', '80 Strand, London', '+44 20 7010 3000', 'info@penguin.co.uk'),
(2, 'HarperCollins', '195 Broadway, New York', '+1 212-207-7000', 'contact@harpercollins.com');

-- Insert categories
INSERT INTO categories (id, name, description) VALUES
(1, 'Fiction', 'Literary works invented by the imagination.'),
(2, 'Classics', 'Timeless literature that has stood the test of time.');

-- Insert books
INSERT INTO books (id, category_id, title, isbn, publication_year, publisher_id) VALUES
(1, 2, '1984', '9780451524935', 1949, 1),
(2, 2, 'Pride and Prejudice', '9780141439518', 1813, 2);

-- Insert book_authors
INSERT INTO book_authors (id, author_id, book_id) VALUES
(1, 1, 1),
(2, 2, 2);

-- Insert members
INSERT INTO members (id, first_name, last_name, email, phone, address, membership_date) VALUES
(1, 'Alice', 'Smith', 'alice@example.com', '123-456-7890', '123 Library St', '2022-01-15'),
(2, 'Bob', 'Johnson', 'bob@example.com', '987-654-3210', '456 Book Ln', '2023-03-10');

-- Insert loans
INSERT INTO loans (id, book_id, loan_date, due_date, return_date, status, member_id) VALUES
(1, 1, '2025-04-01', '2025-04-15', '2025-04-14', 'returned', 1),
(2, 2, '2025-04-20', '2025-05-04', NULL, 'borrowed', 2);
