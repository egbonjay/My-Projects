--- Create a database named people_education.
CREATE DATABASE people_education;

--- Show that the database has been created.
SHOW DATABASES;

USE people_education;

--- Create a table named people_info.
-- It should have the following columns: name, age, high school attended, and height.
CREATE TABLE people_info (
    name VARCHAR(50),
    age INT,
    high_school_attended VARCHAR(100),
    height DECIMAL(5, 2)
);

--- Create a table named school_info.
-- It should have the following columns: school name, zip code. 
CREATE TABLE school_info (
    school_name VARCHAR(100),
    zip_code VARCHAR(10)
);

--- Create a table named school_mascot.
-- It should have the following column: school name, the school mascot.
CREATE TABLE school_mascot (
    school_name VARCHAR(100),
    school_mascot VARCHAR(100)
);

--- Show all tables using the show tables; command.
SHOW TABLES;

--- Delete the school_mascot table.
DROP TABLE school_mascot;

--- “Poll” at least 4 different people and record the information about them:
-- Name, age, high school name, height (in meters), and high school zip code.
INSERT INTO people_info (name, age, high_school_attended, height)
VALUES
    ('John Benson', 16, 'Success High School', 1.75),
    ('Freya Smith', 15, 'Florish High School', 1.65),
    ('Michael Clark', 17, 'Brainstorm High School', 1.80),
    ('Sarah Boris', 14, 'Achievers High School', 1.60);

SELECT * FROM people_info;





