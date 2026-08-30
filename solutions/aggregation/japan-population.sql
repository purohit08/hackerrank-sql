/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #24 - Japan Population                   Difficulty: Easy
   https://www.hackerrank.com/challenges/japan-population/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the sum of the populations for all Japanese cities in CITY.
   The COUNTRYCODE for Japan is JPN.

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   ================================================================ */

-- SOLUTION
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
