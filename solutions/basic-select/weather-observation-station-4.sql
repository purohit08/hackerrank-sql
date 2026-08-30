/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #9 - Weather Observation Station 4       Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-4/problem
   ----------------------------------------------------------------
   PROBLEM
   Find the difference between the total number of CITY entries in the
   table and the number of distinct CITY entries in the table.
   Example: rows 'New York', 'New York', 'Bengaluru' -> 3 - 2 = 1.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ================================================================ */

-- SOLUTION
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
