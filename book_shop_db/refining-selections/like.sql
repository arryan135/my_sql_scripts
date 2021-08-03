-- example %da% means anything da anything
SELECT title, author_fname FROM books WHERE author_fname LIKE "%da%";

-- Ending with da
SELECT title, author_fname FROM books WHERE author_fname LIKE "%da";

-- Starting with da
SELECT title, author_fname FROM books WHERE author_fname LIKE "da%";
