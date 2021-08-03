-- example pf choosing the 5 most recent books
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

-- example of choosing the books from some starting limit 0 and the number of books from there on
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0, 3;