CREATE DATABASE heroes_information;
SELECT * FROM heroes_information;
--- Start by querying all of the data from heroes_information if the Race has an average weight of over 400.
SELECT * 
FROM heroes_information
WHERE Race IN (
    SELECT Race
    FROM heroes_information
    GROUP BY Race
    HAVING AVG(weight) > 400
);

--- Create a temporary table for this result called bigs
CREATE TEMPORARY TABLE bigs AS
SELECT * 
FROM heroes_information
WHERE Race IN (
    SELECT Race
    FROM heroes_information
    GROUP BY Race
    HAVING AVG(weight) > 400
);

--- Select all columns and rows from that temporary table.
SELECT * FROM bigs;

--- Write a new query that creates a view that selects the data if the publisher is Marvel Comics and if their height is above the average height.
SELECT AVG(height) FROM heroes_information;

CREATE VIEW marvel_above_average_height AS
SELECT * 
FROM heroes_information
WHERE publisher = 'Marvel Comics'
  AND height > (SELECT AVG(height) FROM heroes_information);
  
--- To bring up the view
SELECT * FROM marvel_above_average_height;

--- Now add an index to the heroes_information table on the name and Race columns.
SHOW INDEX FROM heroes_information;
CREATE INDEX name_race_index ON heroes_information (name(255), Race(255));

-- Finally, create a stored procedure that selects all the data from heroes_information if they are from DC. Call it all_dc_rows.
DELIMITER $$

CREATE PROCEDURE all_dc_rows()
BEGIN
    SELECT * 
    FROM heroes_information
    WHERE publisher = 'DC Comics';
END$$

DELIMITER ;

SELECT * FROM information_schema.routines;

CALL all_dc_rows();









