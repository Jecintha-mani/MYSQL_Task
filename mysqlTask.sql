CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    price DECIMAL(8,2),
    published_date DATE,
    in_stock INT DEFAULT 1
);

INSERT INTO Books (title, isbn, price, published_date, in_stock)
VALUES
('Network Security', 'ISBN001', 650.00, '2021-03-15', 10),
('Data Warehousing', 'ISBN002', 720.00, '2019-07-20', 5),
('Ethics and AI', 'ISBN003', 580.00, '2023-01-10', 8),
('Marketing Strategy', 'ISBN004', 490.00, '2018-11-25', 0),
('Distributing of Computer', 'ISBN005', 800.00, '2020-09-05', DEFAULT);

ALTER TABLE Books
RENAME COLUMN title TO book_title;

ALTER TABLE Books
MODIFY COLUMN price FLOAT;

ALTER TABLE Books
ADD COLUMN author_name VARCHAR(50) NOT NULL DEFAULT 'Unknown';

UPDATE Books
SET price = price * 0.9
WHERE published_date < '2020-01-01';

DELETE FROM Books
WHERE in_stock = 0;

ALTER TABLE Books
AUTO_INCREMENT = 101;

SELECT book_title, price, published_date
FROM Books
WHERE book_title LIKE '%History%'
AND price > 300
ORDER BY price DESC;

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL DEFAULT current_timestamp);
SELECT *
FROM Members
WHERE YEAR(join_date) = 2024
ORDER BY member_name ASC;