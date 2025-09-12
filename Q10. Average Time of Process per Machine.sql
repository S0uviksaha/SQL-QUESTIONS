-- USE SQL50;

-- CREATE TABLE IF NOT EXISTS Activity (
--     machine_id INT,
--     process_id INT,
--     activity_type ENUM('start', 'end'),
--     timestamp FLOAT
-- );

-- TRUNCATE TABLE Activity;

-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('0', '0', 'start', '0.712');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('0', '0', 'end', '1.52');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('0', '1', 'start', '3.14');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('0', '1', 'end', '4.12');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('1', '0', 'start', '0.55');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('1', '0', 'end', '1.55');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('1', '1', 'start', '0.43');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('1', '1', 'end', '1.42');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('2', '0', 'start', '4.1');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('2', '0', 'end', '4.512');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('2', '1', 'start', '2.5');
-- INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES ('2', '1', 'end', '5');

SELECT a.machine_id, 
       ROUND(AVG(b.timestamp - a.timestamp), 3) AS processing_time
FROM Activity AS a
JOIN Activity AS b
ON a.machine_id = b.machine_id 
   AND a.process_id = b.process_id
WHERE a.activity_type = 'start' 
  AND b.activity_type = 'end'
GROUP BY a.machine_id;
