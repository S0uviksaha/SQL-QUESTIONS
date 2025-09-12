-- USE SQL50;


-- CREATE TABLE IF NOT EXISTS Project (
--     project_id INT,
--     employee_id INT
-- );

-- CREATE TABLE IF NOT EXISTS Employee (
--     employee_id INT,
--     name VARCHAR(10),
--     experience_years INT
-- );

-- TRUNCATE TABLE Project;

-- INSERT INTO Project (project_id, employee_id) VALUES ('1', '1');
-- INSERT INTO Project (project_id, employee_id) VALUES ('1', '2');
-- INSERT INTO Project (project_id, employee_id) VALUES ('1', '3');
-- INSERT INTO Project (project_id, employee_id) VALUES ('2', '1');
-- INSERT INTO Project (project_id, employee_id) VALUES ('2', '4');

-- TRUNCATE TABLE Employee;

-- INSERT INTO Employee (employee_id, name, experience_years) VALUES ('1', 'Khaled', '3');
-- INSERT INTO Employee (employee_id, name, experience_years) VALUES ('2', 'Ali', '2');
-- INSERT INTO Employee (employee_id, name, experience_years) VALUES ('3', 'John', '1');
-- INSERT INTO Employee (employee_id, name, experience_years) VALUES ('4', 'Doe', '2');

SELECT 
    a.project_id, 
    ROUND(AVG(b.experience_years), 2) AS average_years
FROM Project AS a
LEFT JOIN Employee AS b
    ON a.employee_id = b.employee_id
GROUP BY a.project_id