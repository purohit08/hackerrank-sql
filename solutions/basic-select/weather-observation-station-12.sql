/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #15 - Weather Observation Station 12     Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-12/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the list of CITY names from STATION that do NOT start with
   vowels AND do NOT end with vowels. Your result cannot contain
   duplicates.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: This is STRICTER than WOS 11.
     WOS 11 = not-start OR not-end  (exclude names that both start AND end with a vowel)
     WOS 12 = not-start AND not-end (exclude names that start OR end with a vowel)
   LIKE is case-insensitive in MS SQL Server. Both solutions match.
   ================================================================ */

-- SOLUTION 1 -- direct: neither starts nor ends with a vowel
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '[aeiou]%'
  AND CITY NOT LIKE '%[aeiou]';


-- SOLUTION 2 -- non-vowel character class on both ends (concise)
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[^aeiou]%[^aeiou]';
