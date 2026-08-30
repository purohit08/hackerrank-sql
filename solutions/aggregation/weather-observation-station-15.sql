/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #31 - Weather Observation Station 15     Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-15/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the Western Longitude (LONG_W) for the largest Northern
   Latitude (LAT_N) in STATION that is less than 137.2345. Round your
   answer to 4 decimal places.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: portable SQL (works in both MySQL and MS SQL Server).
   ================================================================ */

-- SOLUTION
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N IN (
    SELECT MAX(LAT_N)
    FROM STATION
    WHERE LAT_N < 137.2345
);
