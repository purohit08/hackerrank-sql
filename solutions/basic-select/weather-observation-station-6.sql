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
   ----------------------------------------------------------------
   Note: MS SQL Server LIKE is case-insensitive by default, so 'a%'
   also matches 'Austin'. Both solutions below return the same result.
   ================================================================ */

-- SOLUTION 1 -- explicit OR clauses (works on every SQL engine)
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'a%'
   OR CITY LIKE 'e%'
   OR CITY LIKE 'i%'
   OR CITY LIKE 'o%'
   OR CITY LIKE 'u%';


-- SOLUTION 2 -- T-SQL character class (shorter; SQL Server / MS SQL syntax)
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[aeiou]%';
