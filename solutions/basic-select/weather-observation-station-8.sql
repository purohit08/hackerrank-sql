/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #12 - Weather Observation Station 8      Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-8/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the list of CITY names from STATION which have vowels
   (a, e, i, o, u) as BOTH their first and last characters.
   Your result cannot contain duplicates.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: LIKE is case-insensitive in MS SQL Server. Both solutions
   return the same result.
   ================================================================ */

-- SOLUTION 1 -- T-SQL character class (concise; SQL Server / MS SQL syntax)
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[aeiou]%[aeiou]';


-- SOLUTION 2 -- explicit enumeration of all 25 first/last vowel pairs (portable)
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'a%a' OR CITY LIKE 'a%e' OR CITY LIKE 'a%i' OR CITY LIKE 'a%o' OR CITY LIKE 'a%u'
   OR CITY LIKE 'e%a' OR CITY LIKE 'e%e' OR CITY LIKE 'e%i' OR CITY LIKE 'e%o' OR CITY LIKE 'e%u'
   OR CITY LIKE 'i%a' OR CITY LIKE 'i%e' OR CITY LIKE 'i%i' OR CITY LIKE 'i%o' OR CITY LIKE 'i%u'
   OR CITY LIKE 'o%a' OR CITY LIKE 'o%e' OR CITY LIKE 'o%i' OR CITY LIKE 'o%o' OR CITY LIKE 'o%u'
   OR CITY LIKE 'u%a' OR CITY LIKE 'u%e' OR CITY LIKE 'u%i' OR CITY LIKE 'u%o' OR CITY LIKE 'u%u';
