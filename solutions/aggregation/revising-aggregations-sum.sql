/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #22 - Revising Aggregations - The Sum Function
   Difficulty: Easy
   https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the total population of all cities in CITY where District is
   California.

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
WHERE DISTRICT = 'California';
