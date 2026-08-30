/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #7 - Weather Observation Station 1       Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-1/problem
   ----------------------------------------------------------------
   PROBLEM
   Query a list of CITY and STATE from the STATION table.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ================================================================ */

-- SOLUTION
SELECT CITY, STATE
FROM STATION;
