/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #14 - Weather Observation Station 11     Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-11/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the list of CITY names from STATION that either do NOT start
   with vowels or do NOT end with vowels. Your result cannot contain
   duplicates.
   (Equivalently: exclude names that BOTH start and end with a vowel.)

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: LIKE is case-insensitive in MS SQL Server. Both solutions match.
   ================================================================ */

-- SOLUTION 1 -- direct De Morgan: not-start-vowel OR not-end-vowel
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[^aeiou]%'
   OR CITY LIKE '%[^aeiou]';


-- SOLUTION 2 -- exclude names that BOTH start and end with a vowel (NOT IN)
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT IN (
    SELECT CITY FROM STATION WHERE CITY LIKE '[aeiou]%[aeiou]'
);
