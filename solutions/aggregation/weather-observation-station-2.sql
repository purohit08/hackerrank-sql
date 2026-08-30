/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #20 - Weather Observation Station 2      Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-2/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the following two values from the STATION table:
     1. The sum of all values in LAT_N  rounded to 2 decimal places.
     2. The sum of all values in LONG_W rounded to 2 decimal places.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: return BOTH sums from ONE SELECT (two columns). Two separate
   SELECT statements produce two result sets and won't match.
   ================================================================ */

-- SOLUTION
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;
