/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #29 - Weather Observation Station 13     Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-13/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the sum of Northern Latitudes (LAT_N) from STATION having
   values greater than 38.7880 and less than 137.2345. Truncate your
   answer to 4 decimal places.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: bounds are STRICT ( > and < ), upper bound is 137.2345.
   ================================================================ */

-- SOLUTION 1 -- ROUND to 4 dp (commonly accepted)
SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;


-- SOLUTION 2 -- literal "truncate" to 4 dp (T-SQL: 3rd arg 1 truncates)
SELECT ROUND(SUM(LAT_N), 4, 1)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;
