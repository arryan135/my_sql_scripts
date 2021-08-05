-- current time
SELECT CURTIME();

-- current date
SELECT CURDATE();

-- day of week
SELECT DAYNAME(NOW());
SELECT DAYNAME(CURDATE());

SELECT DATE_FORMAT(NOW(), "%m/%d/%Y");

SELECT CONCAT (MONTHNAME(NOW()), " ", DATE_FORMAT(NOW(), "%D"), " at ", DATE_FORMAT(NOW(), "%h:%m"));
-- Alternative way
SELECT DATE_FORMAT(NOW(), "%M %D at %h:%i");

CREATE TABLE tweets (
  content VARCHAR(120),
  username VARCHAR(20),
  time TIMESTAMP DEFAULT NOW()
);


