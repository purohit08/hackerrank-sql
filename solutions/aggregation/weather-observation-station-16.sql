/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #32 - Weather Observation Station 16     Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-16/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the smallest Northern Latitude (LAT_N) from STATION that is
   greater than 38.7780. Round your answer to 4 decimal places.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: MIN(ROUND(LAT_N,4)) equals ROUND(MIN(LAT_N),4) because ROUND
   is monotonic; both are correct.
   ================================================================ */

-- SOLUTION 1 -- round the minimum
SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7780;


-- SOLUTION 2 -- min of the rounded values (equivalent)
SELECT MIN(ROUND(LAT_N, 4))
FROM STATION
WHERE LAT_N > 38.7780;
