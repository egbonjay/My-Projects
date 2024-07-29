USE hero_battles;

-- Start by casting the value “24.423423” to a float value.
SELECT CAST('24.423423' AS FLOAT);

-- Next, return the date, time, hour, month, second, and minute data for the hero_battles table based off of the date column.
SELECT
    DATE AS date,
    TIME (date) AS time,
    HOUR (date) AS hour,
    MONTH (date) AS month,
    SECOND (date) AS second,
    MINUTE (date) AS minute
FROM hero_battles;

-- Create a histogram for the number of enemies fought. No need to round.
SELECT num_enemies AS frequency,
COUNT(*) AS COUNT,
RPAD ('', COUNT(*), '-') AS bar
FROM hero_battles
GROUP BY frequency;

-- Write a query to replace all of the occurrences of Batman with Batwoman. Return only the name column.
SELECT REPLACE(name, 'Batman', 'Batwoman') AS name
FROM hero_battles;

-- Make a new query that creates a sentence that says, “This battle occurred at 14 o’clock,” but replace 14 with the hour of that particular battle.
SELECT CONCAT('This battle occurred at ', HOUR (date), ' o’clock.') AS sentence
FROM hero_battles;

-- Create a query that makes a sentence describing each superhero. 
-- State their name, and state what comic series they are from. 
-- For example, “James Bond is from Titan Books.” 
-- Use the heroes_information table and the name and publisher columns.
USE heroes_information;
SELECT CONCAT(name, ' is from ', publisher, '.') AS description
FROM heroes_information;





