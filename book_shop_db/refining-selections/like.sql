-- example %da% means anything da anything
SELECT title, author_fname FROM books WHERE author_fname LIKE "%da%";

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

-- titles that contain the word stories
SELECT title FROM books WHERE title LIKE "%stories%";

-- longest book in the book db
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- summary of the most recent books
SELECT 
  CONCAT(title, " - ", released_year) AS "summary"
  FROM books 
  ORDER BY released_year DESC LIMIT 3;

-- books where author last name contains space character
SELECT title, author_lname FROM books WHERE author_lname LIKE "% %";

-- 3 books with the lowest stock
SELECT 
  title, released_year, stock_quantity FROM books
  ORDER BY stock_quantity, title LIMIT 3;

SELECT title, author_lname FROM books ORDER BY author_lname, title;

-- sort alphabetically by last name
SELECT 
  CONCAT(UPPER("my favorite author is ") , UPPER(author_fname), " ", UPPER(author_lname), "!") AS "yell"
  FROM books
  ORDER BY author_lname;