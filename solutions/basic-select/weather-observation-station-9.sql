/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #13 - Weather Observation Station 9      Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-9/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the list of CITY names from STATION that do NOT start with
   vowels. Your result cannot contain duplicates.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: LIKE 'aeiou%' matches the LITERAL text "aeiou", not
   "starts with a vowel". Use the character class [aeiou] / [^aeiou].
   LIKE is case-insensitive in MS SQL Server. Both solutions match.
   ================================================================ */

-- SOLUTION 1 -- negated character class (concise; SQL Server / MS SQL syntax)
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[^aeiou]%';


-- SOLUTION 2 -- exclude vowel-starting cities via NOT IN (pattern fixed to [aeiou])
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT IN (
    SELECT CITY FROM STATION WHERE CITY LIKE '[aeiou]%'
);
