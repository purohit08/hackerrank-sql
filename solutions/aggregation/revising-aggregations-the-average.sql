/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #23 - Revising Aggregations - Averages   Difficulty: Easy
   https://www.hackerrank.com/challenges/revising-aggregations-the-average/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the average population of all cities in CITY where District
   is California.

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   ----------------------------------------------------------------
   Note: no GROUP BY -- AVG over all matching rows returns ONE value.
   GROUP BY ID would return one row per city (ID is unique) instead.
   ================================================================ */

-- SOLUTION
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
