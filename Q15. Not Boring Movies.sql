-- USE SQL50;

-- CREATE TABLE IF NOT EXISTS cinema (
--     id INT,
--     movie VARCHAR(255),
--     description VARCHAR(255),
--     rating DECIMAL(3, 1)
-- );

-- TRUNCATE TABLE cinema;

-- INSERT INTO cinema (id, movie, description, rating) VALUES 
-- (1, 'War', 'great 3D', 8.9),
-- (2, 'Science', 'fiction', 8.5),
-- (3, 'irish', 'boring', 6.2),
-- (4, 'Ice song', 'Fantacy', 8.6),
-- (5, 'House card', 'Interesting', 9.1);

SELECT * FROM Cinema
WHERE (id % 2 = 1) AND (description != "boring")
ORDER BY rating DESC;