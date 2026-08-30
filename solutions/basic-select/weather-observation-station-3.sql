/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #8 - Weather Observation Station 3       Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-3/problem
   ----------------------------------------------------------------
   PROBLEM
   Query a list of CITY names from STATION for cities that have an
   even ID number. Print the results in any order, but exclude
   duplicates from the answer.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ================================================================ */

-- SOLUTION
-- Note: T-SQL uses "=" for equality, not "==" ("==" is a syntax error in MS SQL Server).
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;
