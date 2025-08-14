USE khalil_library;

CREATE VIEW view_books_details AS
SELECT 
    b.book_id,
    b.title,
    b.genre,
    b.published_year,
    a.name AS author_name,
    c.name AS category_name
FROM Book b
JOIN Author a ON b.author_id = a.author_id
JOIN Category c ON b.category_id = c.category_id;

CREATE VIEW view_issued_books AS
SELECT 
    i.issue_id,
    b.title,
    m.name AS member_name,
    l.name AS librarian_name,
    i.issue_date,
    i.return_date
FROM IssuedBook i
JOIN Book b ON i.book_id = b.book_id
JOIN Member m ON i.member_id = m.member_id
JOIN Librarian l ON i.librarian_id = l.librarian_id;

CREATE VIEW view_pending_returns AS
SELECT 
    m.name AS member_name,
    b.title,
    i.issue_date
FROM IssuedBook i
JOIN Member m ON i.member_id = m.member_id
JOIN Book b ON i.book_id = b.book_id
WHERE i.return_date IS NULL;

CREATE VIEW view_books_per_category AS
SELECT 
    c.name AS category_name,
    COUNT(*) AS total_books
FROM Book b
JOIN Category c ON b.category_id = c.category_id
GROUP BY c.name;

SELECT * FROM view_books_details;
SELECT * FROM view_issued_books;
SELECT * FROM view_pending_returns;
SELECT * FROM view_books_per_category;
