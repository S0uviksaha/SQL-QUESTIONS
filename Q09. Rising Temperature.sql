-- USE SQL50;

-- CREATE TABLE IF NOT EXISTS Weather (
--     id INT,
--     recordDate DATE,
--     temperature INT
-- );

-- TRUNCATE TABLE Weather;

-- INSERT INTO Weather (id, recordDate, temperature) VALUES ('1', '2015-01-01', '10');
-- INSERT INTO Weather (id, recordDate, temperature) VALUES ('2', '2015-01-02', '25');
-- INSERT INTO Weather (id, recordDate, temperature) VALUES ('3', '2015-01-03', '20');
-- INSERT INTO Weather (id, recordDate, temperature) VALUES ('4', '2015-01-04', '30');

SELECT a.id
FROM Weather AS a
CROSS JOIN Weather AS b
WHERE DATEDIFF(a.recordDate, b.recordDate) = 1 
  AND a.recordDate > b.recordDate 
  AND a.temperature > b.temperature;
