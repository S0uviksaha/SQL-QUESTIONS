-- USE SQL50;

-- CREATE TABLE IF NOT EXISTS Tweets (
--     tweet_id INT,
--     content VARCHAR(50)
-- );

-- TRUNCATE TABLE Tweets;

-- INSERT INTO Tweets (tweet_id, content) VALUES 
-- (1, 'Let us Code'),
-- (2, 'More than fifteen chars are here!');

SELECT tweet_id FROM Tweets 
WHERE LENGTH(content)> 15;