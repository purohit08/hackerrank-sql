/* ================================================================
   HackerRank | SQL | Basic Join
   Problem #36 - Average Population of Each Continent
   Difficulty: Easy
   https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the names of all the continents (COUNTRY.Continent) and their
   respective average city populations (CITY.Population), rounded DOWN
   to the nearest integer.
   (CITY.CountryCode and COUNTRY.Code are the matching key columns.)

   CITY table    (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
   COUNTRY table (CODE, NAME, CONTINENT, ...)
   ----------------------------------------------------------------
   Note: FLOOR makes "round down" explicit. In MS SQL Server, AVG on
   an integer column already truncates to an integer, so AVG(...)
   alone also yields the floored value.
   ================================================================ */

-- SOLUTION 1 -- explicit round-down
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;


-- SOLUTION 2 -- AVG only (works because integer AVG truncates in MS SQL Server)
SELECT COUNTRY.CONTINENT, AVG(CITY.POPULATION)
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
