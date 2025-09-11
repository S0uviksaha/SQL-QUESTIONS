-- USE SQL50;

-- CREATE TABLE IF NOT EXISTS Employees (
--     id INT,
--     name VARCHAR(20)
-- );

-- CREATE TABLE IF NOT EXISTS EmployeeUNI (
--     id INT,
--     unique_id INT
-- );

-- TRUNCATE TABLE Employees;

-- INSERT INTO Employees (id, name) VALUES ('1', 'Alice');
-- INSERT INTO Employees (id, name) VALUES ('7', 'Bob');
-- INSERT INTO Employees (id, name) VALUES ('11', 'Meir');
-- INSERT INTO Employees (id, name) VALUES ('90', 'Winston');
-- INSERT INTO Employees (id, name) VALUES ('3', 'Jonathan');

-- TRUNCATE TABLE EmployeeUNI;

-- INSERT INTO EmployeeUNI (id, unique_id) VALUES ('3', '1');
-- INSERT INTO EmployeeUNI (id, unique_id) VALUES ('11', '2');
-- INSERT INTO EmployeeUNI (id, unique_id) VALUES ('90', '3');

SELECT b.unique_id AS unique_id, a.name
FROM Employees AS a
LEFT JOIN EmployeeUNI AS b
ON a.id = b.id;
