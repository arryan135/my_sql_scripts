-- examples of DISTINCT

SELECT DISTINCT CONCAT(author_fname, " ", author_lname) FROM books;
SELECT DISTINCT author_fname, author_lname FROM books;

-- examples of ORDER BY
SELECT author_lname FROM books ORDER BY author_lname;
SELECT author_lname FROM books ORDER BY author_lname DESC;
SELECT title, released_year, pages FROM books ORDER BY released_year;
SELECT title, pages FROM books ORDER BY released_year;
SELECT title, author_fname, author_lname FROM books ORDER BY 2;
