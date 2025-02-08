INSERT INTO employee (full_name, job_role, department_id)
VALUES
  ('Fiona Green',  'Front-End Developer',  4),
  ('George Hall',  'Front-End Developer',  4),
  ('Hannah Evans', 'Front-End Developer',  4),
  ('Ian Kelly',    'Front-End Developer',  4),
  ('Julia Roberts','Front-End Developer',  4);


ALTER TABLE employee
ADD COLUMN wages DECIMAL(10, 2);

UPDATE employee
SET wages = 3000.00;

UPDATE employee
SET wages = 10000.00
WHERE department_id = 1;

UPDATE employee
SET wages = 2000.00
WHERE job_role LIKE '%Sales%';

SELECT *
FROM employee;


.mode csv
.output results.csv
SELECT * FROM employee;
.output stdout


'''
sqlite3 sqlite.db
.mode csv
.output results.csv
SELECT * FROM employee;
.output stdout
'''
