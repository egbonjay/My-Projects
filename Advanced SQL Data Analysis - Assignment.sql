-- Create a query to select all columns from heroes_information but to add a new column called human. Have that column be a 1 if their race is Human and 0 if not.

SELECT *, CASE WHEN race = 'Human' THEN 1 ELSE 0 END AS human
FROM heroes_information;

-- Create a new query to provide a list of the heaviest super heroes, with the heaviest being #1.

SELECT name, weight
FROM heroes_information
ORDER BY weight DESC;

-- Give a frequency table with each letter of the alphabet and how many superheroes’ names start with that letter.
 
 SELECT SUBSTRING(name, 1, 1) AS first_letter, COUNT(*) AS frequency
FROM heroes_information
GROUP BY SUBSTRING(name, 1, 1)
ORDER BY first_letter;

-- Select all the hero races with an average weight of over 150 and an average height of over 100.

SELECT race
FROM heroes_information
GROUP BY race
HAVING AVG(weight) > 150 AND AVG(height) > 100;


