The Entity Relationship Diagram (ERD) data model for a Library Management System. 

Here’s a breakdown of the key components and their roles:

📘 Entities and Their Roles
1. authors
Purpose: Stores information about book authors.

Key Fields: id, first_name, last_name, birth_date

2. publishers
Purpose: Stores data about publishing companies.

Key Fields: id, name, address, phone, email

3. categories
Purpose: Organizes books into categories (e.g., Fiction, History).

Key Fields: id, name (unique), description

4. books
Purpose: Central table that stores book information.

Relationships:

Each book belongs to one category (category_id)

Each book has one publisher (publisher_id)

Key Fields: id, title, isbn, publication_year

5. book_authors
Purpose: Join table that enables a many-to-many relationship between books and authors.

Key Fields: id, book_id, author_id

6. members
Purpose: Stores information about library members.

Key Fields: id, first_name, last_name, email (unique), membership_date

7. loans
Purpose: Tracks the borrowing and returning of books.

Relationships:

Each loan is for one book and one member

Key Fields: loan_date, due_date, return_date, status

🔁 Relationships Overview
1:N (One-to-Many):

One category → many books

One publisher → many books

One member → many loans

One book → many loans

M:N (Many-to-Many):

One book ↔ multiple authors (via book_authors)

One author ↔ multiple books

🧠 What This ERD Does
This data model allows a library to:

Store and organize book details (title, ISBN, authors, etc.)

Track who has borrowed which books, when they are due, and if they’ve been returned

Manage members and their borrowing history

Categorize and publish books using defined entities

#   W e e k _ 8 _ D a t a b a s e  
 