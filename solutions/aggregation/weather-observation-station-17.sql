/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #33 - Weather Observation Station 17     Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-17/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the Western Longitude (LONG_W) for the smallest Northern
   Latitude (LAT_N) in STATION that is greater than 38.7780. Round
   your answer to 4 decimal places.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: return LONG_W (not LAT_N). The subquery picks the smallest
   LAT_N above 38.7780; the outer query returns that row's LONG_W.
   Portable SQL (MySQL and MS SQL Server).
   ================================================================ */

-- SOLUTION
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N)
    FROM STATION
    WHERE LAT_N > 38.7780
);
