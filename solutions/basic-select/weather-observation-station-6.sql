/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #10 - Weather Observation Station 6      Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-6/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the list of CITY names starting with vowels (a, e, i, o, u)
   from STATION. Your result cannot contain duplicates.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ================================================================ */

-- SOLUTION
-- MS SQL Server LIKE is case-insensitive by default, so 'a%' also matches 'Austin'.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'a%'
   OR CITY LIKE 'e%'
   OR CITY LIKE 'i%'
   OR CITY LIKE 'o%'
   OR CITY LIKE 'u%';

-- Shorthand alternative (T-SQL character class):
--   SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '[aeiou]%';
