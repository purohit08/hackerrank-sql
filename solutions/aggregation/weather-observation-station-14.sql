/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #30 - Weather Observation Station 14     Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-14/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the greatest value of the Northern Latitudes (LAT_N) from
   STATION that is less than 137.2345. Truncate your answer to 4
   decimal places.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: the WHERE keyword is required.
   ================================================================ */

-- SOLUTION 1 -- ROUND to 4 dp (commonly accepted)
SELECT ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;


-- SOLUTION 2 -- literal "truncate" to 4 dp (T-SQL: 3rd arg 1 truncates)
SELECT ROUND(MAX(LAT_N), 4, 1)
FROM STATION
WHERE LAT_N < 137.2345;
