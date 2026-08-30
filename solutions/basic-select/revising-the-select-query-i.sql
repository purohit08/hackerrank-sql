/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #1 - Revising the Select Query I        Difficulty: Easy
   https://www.hackerrank.com/challenges/revising-the-select-query/problem
   ----------------------------------------------------------------
   PROBLEM
   Query all columns for all American cities in the CITY table with
   populations larger than 100000. The CountryCode for America is USA.

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
WHERE POPULATION > 100000
  AND COUNTRYCODE = 'USA';
