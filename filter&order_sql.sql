USE hero_battles;
-- Start by returning all rows and columns from the hero_battles data table.
SELECT * FROM hero_battles;

-- Now return the same result set but sort the data by ascending the number of enemies (num_enemies) column.
SELECT * FROM hero_battles
ORDER BY num_enemies ASC;

-- Take that same query but change it and sort descending instead.
SELECT * FROM hero_battles
ORDER BY num_enemies DESC;

-- Great work! Keep the current query, but only show rows where the name column is equal to Batman.
SELECT * FROM hero_battles
WHERE name = 'Batman';

-- Next, edit the prior query to return the result set that is not Batman.
SELECT * FROM hero_battles
WHERE name != 'Batman';

-- Write a query that returns a data set that contains all the data where the number of enemies fought was 1 or 2.
SELECT * FROM hero_battles
WHERE num_enemies IN (1, 2);

-- Now take that and write a query with all the data where the number of enemies was 1, or 2, or 10, or 12. Use an IN clause.
SELECT * FROM hero_battles
WHERE num_enemies IN (1, 2, 10, 12);

-- Make a new query that returns any row where the name column contains the phrase “man”.
SELECT * FROM hero_battles
WHERE name LIKE '%man%';







