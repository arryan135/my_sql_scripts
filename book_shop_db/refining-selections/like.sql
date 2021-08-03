-- example %da% means anything da anything
-- SELECT title, author_fname FROM books WHERE author_fname LIKE "%da%";

-- Ending with da
SELECT title, author_fname FROM books WHERE author_fname LIKE "%da";

-- Starting with da
SELECT title, author_fname FROM books WHERE author_fname LIKE "da%";

-- where stock quantity is 4 characters long
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE "__";

--  search for book title with '%' character
SELECT title FROM books WHERE title LIKE "%\%%";

--  search for book title with '_' character
SELECT title FROM books WHERE title LIKE "%\_%";
