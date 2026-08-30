/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #26 - Population Density Difference      Difficulty: Easy
   https://www.hackerrank.com/challenges/population-density-difference/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the difference between the maximum and minimum populations
   in CITY.

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   ================================================================ */

-- SOLUTION
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;
