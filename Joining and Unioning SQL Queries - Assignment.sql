-- Take hero_battles and do a left join on heroes_information on the name columns. Select all columns.

SELECT *
FROM hero_battles
LEFT JOIN heroes_information ON hero_battles.name = heroes_information.name;

-- Take super_hero_powers and do a right join with hero_battles on the name columns. Note that the name column is hero_names on the super_hero_powers table.

SELECT *
FROM super_hero_powers
RIGHT JOIN hero_battles ON super_hero_powers.hero_names = hero_battles.name;

-- Select all the female heroes from heroes_information and stack that name result on top of all the heroes who have accelerated healing from the super_hero_powers table. 
-- Only return the name columns.

SELECT name
FROM heroes_information
WHERE gender = 'Female'
UNION ALL
SELECT hero_names AS name
FROM super_hero_powers
WHERE `Accelerated Healing` = 'True';







