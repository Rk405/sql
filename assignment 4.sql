create database librarydb;
use librarydb;
-- Retrieve the titles of all books written by authors from the United States.
SELECT B.Title
FROM Books B
JOIN Authors A
ON B.AuthorID = A.AuthorID
WHERE A.Country = 'United States';
-- Find the total sales of books in the Fiction category.
SELECT Category,
SUM(SalesAmount) AS TotalSales
FROM Books
WHERE Category = 'Fiction'
GROUP BY Category;
-- Retrieve the names of authors who have written more than one book.
SELECT A.AuthorName,
COUNT(B.BookID) AS NumberOfBooks
FROM Authors A
JOIN Books B
ON A.AuthorID = B.AuthorID
GROUP BY A.AuthorID, A.AuthorName
HAVING COUNT(B.BookID) > 1;
-- Retrieve the title, publication year, and sales amount for all books published after 2010, sorted by sales amount in descending order.
SELECT Title,
PublicationYear,
SalesAmount
FROM Books
WHERE PublicationYear > 2010
ORDER BY SalesAmount DESC;
