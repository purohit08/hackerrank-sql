/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #6 - Japanese Cities' Names             Difficulty: Easy
   https://www.hackerrank.com/challenges/japanese-cities-name/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the names of all the Japanese cities in the CITY table.
   The COUNTRYCODE for Japan is JPN.

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
WHERE COUNTRYCODE = 'JPN';
