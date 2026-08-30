/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #25 - Average Population                 Difficulty: Easy
   https://www.hackerrank.com/challenges/average-population/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the average population for all cities in CITY, rounded DOWN
   to the nearest integer.

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   ----------------------------------------------------------------
   Note: In MS SQL Server, AVG on an integer column truncates to an
   integer first, so ROUND(AVG(POPULATION),0) already yields the
   floored value. FLOOR(...) expresses "round down" explicitly.
   ================================================================ */

-- SOLUTION 1 -- explicit round-down
SELECT FLOOR(AVG(POPULATION))
FROM CITY;


-- SOLUTION 2 -- ROUND(...,0); works because integer AVG already truncates
SELECT ROUND(AVG(POPULATION), 0)
FROM CITY;
