-- not equal
SELECT title, released_year FROM books WHERE released_year != 2017;
SELECT title, author_lname FROM books WHERE author_lname != "Harris";

-- not like all titles of the book that don't start with letter 'w'
SELECT title FROM books WHERE title NOT LIKE "W%";

-- greater than
SELECT title, released_year FROM books WHERE released_year > 2000 ORDER BY released_year;

-- greater than or equal to
SELECT title, released_year FROM books WHERE released_year >= 2000 ORDER BY released_year;
SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;

-- boolean logic
SELECT 99 > 1; -- evaluates to 1 (where 1 represents the boolean true value)

-- less than
SELECT title, released_year FROM books WHERE released_year < 2000;

-- less than or equal to
SELECT title, released_year FROM books WHERE released_year <= 2000;

-- logical AND
SELECT title, author_lname, released_year FROM books WHERE author_lname = "eggers" && released_year > 2010;
SELECT title, author_lname, released_year FROM books WHERE author_lname = "Eggers" && released_year > 2010 && title LIKE "%novel%";

-- logical OR
SELECT title, author_lname, released_year FROM books WHERE author_lname = "eggers" || released_year > 2010;
SELECT title, author_lname, released_year, stock_quantity FROM books WHERE author_lname = "eggers" || released_year > 2010 OR stock_quantity > 100;

-- Between
SELECT title, released_year FROM books WHERE released_year >= 2004 AND released_year <= 2015;
SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;

-- not Between
SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;

-- in
SELECT title, author_lname FROM books WHERE author_lname IN ("Lahiri", "Carver", "Smith");
SELECT title, released_year FROM books WHERE released_year IN (2017, 1985);

-- not in
SELECT title, released_year FROM books WHERE released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016) ORDER BY released_year ASC;
SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016) ORDER BY released_year ASC;
SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 != 0;

-- Case 
SELECT title, released_year,
  CASE 
    WHEN released_year >= 2000 THEN "Modern Lit"
    ELSE "20th Century Lit"
  END AS "Genre"
FROM books ORDER BY released_year ASC;

SELECT title, stock_quantity,
  CASE  
    WHEN stock_quantity BETWEEN 0 AND 50 THEN "*"
    WHEN stock_quantity BETWEEN 51 AND 100 THEN "**"
    WHEN stock_quantity BETWEEN 101 AND 150 THEN "***"
    ELSE "****" 
  END AS "stock"
FROM books;

SELECT title, stock_quantity,
  CASE
    WHEN stock_quantity <= 50 THEN "*"
    WHEN stock_quantity <= 100 THEN "**"
    WHEN stock_quantity <= 150 THEN "***"
    ELSE "***"
  END as "stock"
FROM books;

-- select all the books before 1980 (upto but not including 1980)
SELECT title, released_year FROM books WHERE released_year < 1980;

-- select all books written by Eggers or Chabon
SELECT title, author_lname FROM books WHERE author_lname IN ("eggers", "chabon");
-- alternative way
SELECT title, author_lname FROM books
WHERE author_lname = "eggers" || author_lname = "chabon";

-- select all books written by Lahiri published after 2000
SELECT title, author_lname, released_year FROM books
WHERE author_lname = "lahiri" && released_year > 2000;

-- select all books between page count of 100 and 200
SELECT title, pages FROM books
WHERE pages BETWEEN 100 AND 200;

-- select all books where author last name starts with a 'C' or 'S'
SELECT title, author_lname FROM books
WHERE SUBSTRING(author_lname, 1, 1) in  ('c', 's');

SELECT title, author_lname, 
  CASE 
    WHEN title LIKE "%stories%" THEN "Short Stories"
    WHEN title in ("just kids", "a heartbreaking work of staggering genius") THEN "Memoir"
    ELSE "Novel"
  END AS "type"
FROM books;

SELECT CONCAT(author_fname, " ", author_lname) AS "author",
  CASE  
    WHEN COUNT(*) = 1 THEN "1 book"
    ELSE CONCAT(COUNT(*), " books")
  END AS "COUNT"
FROM books GROUP BY author_lname, author_fname;