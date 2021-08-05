-- current time
SELECT CURTIME();

-- current date
SELECT CURDATE();

-- day of week
SELECT DAYNAME(NOW());

SELECT DATE_FORMAT(NOW(), "%m/%d/%Y");

SELECT CONCAT (MONTHNAME(NOW()), " ", DATE_FORMAT(NOW(), "%D"), " at ", DATE_FORMAT(NOW(), "%h:%m"));

CREATE TABLE tweets (
  content VARCHAR(120),
  username VARCHAR(20),
  created_at TIMESTAMP DEFAULT NOW()
);


