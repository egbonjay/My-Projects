CREATE DATABASE hero_battles;

--- Start by returning all rows and columns from the hero_battles data table
SELECT * FROM hero_battles;

--- Now, return the number of rows in the data set.
SELECT COUNT(*) AS total_rows FROM hero_battles;

--- Write a query to select the column name’s max and min. Hint: use MIN() and MAX().
SELECT MIN(num_enemies) AS min_value, MAX(num_enemies) AS max_value FROM hero_battles;

--- Write a query to select both the sum and the average of the column num_enemies
SELECT SUM(num_enemies) AS total_enemies, AVG(num_enemies) AS average_enemies FROM hero_battles;

--- Now take that query of the sum and average of enemies, and group it by the column name
SELECT 
    name, 
    SUM(num_enemies) AS total_enemies, 
    AVG(num_enemies) AS average_enemies 
FROM hero_battles
GROUP BY name;

--- Lastly, take the query we’ve been building and ORDER by the average.
SELECT 
    name, 
    SUM(num_enemies) AS total_enemies, 
    AVG(num_enemies) AS average_enemies 
FROM hero_battles
GROUP BY name
ORDER BY average_enemies;









