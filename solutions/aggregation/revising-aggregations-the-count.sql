/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #21 - Revising Aggregations - The Count Function
   Difficulty: Easy
   https://www.hackerrank.com/challenges/revising-aggregations-the-count/problem
   ----------------------------------------------------------------
   PROBLEM
   Query a count of the number of cities in CITY having a Population
   larger than 100,000.

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   ================================================================ */

-- SOLUTION
SELECT COUNT(ID)          -- COUNT(*) is equivalent here (ID is never NULL)
FROM CITY
WHERE POPULATION > 100000;
