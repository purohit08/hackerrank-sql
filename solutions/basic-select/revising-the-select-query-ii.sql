/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #2 - Revising the Select Query II       Difficulty: Easy
   https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the NAME field for all American cities in the CITY table with
   populations larger than 120000. The CountryCode for America is USA.

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   ================================================================ */

-- SOLUTION
SELECT NAME
FROM CITY
WHERE POPULATION > 120000
  AND COUNTRYCODE = 'USA';
