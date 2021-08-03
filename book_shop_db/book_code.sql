-- example of using CONCAT with SUBSTRING
SELECT 
  CONCAT(SUBSTRING(title, 1, 10), "...") AS "Short Title" 
FROM books;

-- example of using SUBSTRING with REPLACE
SELECT 
  SUBSTRING(REPLACE(title, "e", "3"), 1, 10) AS "Wierd String" 
FROM books;

-- example of using CONCAT with REVERSE
SELECT 
  CONCAT(author_fname, REVERSE(author_fname)) AS "Pallindromes" 
FROM books;

-- exmample of using CONCAT with CHAR_LENGTH 
SELECT 
  CONCAT(author_lname, " is ", CHAR_LENGTH(author_lname), " characters long") AS "Length"
FROM books;

-- example of using CONCAT with UPPER
SELECT 
  CONCAT(UPPER("My favorite book is "), UPPER(title)) AS "Favorite Book"
FROM books;