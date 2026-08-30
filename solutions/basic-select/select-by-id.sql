/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #4 - Select By ID                       Difficulty: Easy
   https://www.hackerrank.com/challenges/select-by-id/problem
   ----------------------------------------------------------------
   PROBLEM
   Query all columns for a city in CITY with the ID 1661.

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   ================================================================ */

-- SOLUTION
SELECT *
FROM CITY
WHERE ID = 1661;
