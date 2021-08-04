-- number of books in db
SELECT COUNT(title) AS "num books" FROM books;

-- number of books released in each year
SELECT released_year, COUNT(*) AS "num books" FROM books GROUP BY released_year ORDER BY 1 DESC;

-- total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- average relased yaer for each author
SELECT 
  CONCAT (author_fname, " ", author_lname) AS "author", AVG(released_year) 
  FROM books
  GROUP BY author_lname, author_fname;

-- full name of the author who wrote the longest book
SELECT 
  CONCAT(author_fname, " ", author_lname) AS "author"
  FROM books
  WHERE pages = (SELECT MAX(pages) FROM books);

SELECT
  CONCAT(author_fname, " ", author_lname)  AS "author"
  FROM books
  ORDER BY pages DESC LIMIT 1;

SELECT 
  released_year AS "year", COUNT(*) AS "# books", AVG(pages) AS "avg pages"
  FROM books
  GROUP BY released_year ORDER BY released_year ASC;