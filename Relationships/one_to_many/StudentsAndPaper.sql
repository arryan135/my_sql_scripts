CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100)
);

CREATE TABLE papers (
  title VARCHAR(100),
  grade INT ,
  student_id INT,
  FOREIGN KEY(student_id)
    REFERENCES students(id)
    ON DELETE CASCADE
);

INSERT INTO students (first_name) VALUES 
('Caleb'), 
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

-- INNER JOIN
SELECT first_name, title, grade FROM students
JOIN papers
  ON students.id = papers.student_id
ORDER BY first_name DESC;

-- Left join
SELECT 
  first_name, 
  title,
  grade
FROM students
LEFT JOIN papers
  ON students.id = papers.student_id;

-- improved version
SELECT 
  first_name, 
  IFNULL(title, "MISSING") AS "title",
  IFNULL(grade, 0) AS "grade"
FROM students
LEFT JOIN papers
  ON students.id = papers.student_id;

-- average grade of every student
SELECT 
  first_name,
  IFNULL(AVG(grade), 0) AS "average"
FROM students
LEFT JOIN papers
  ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;

-- add passing_status
SELECT 
  first_name,
  IFNULL(AVG(grade), 0) AS "average",
  CASE 
    WHEN AVG(grade) is NULL THEN "FAILING"
    WHEN AVG(grade) >= 75 THEN "PASSING"
    ELSE "FAILING"
  END AS "passing_status"
FROM papers 
RIGHT JOIN students
  ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;



