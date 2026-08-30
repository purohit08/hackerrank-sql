/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #5 - Japanese Cities' Attributes        Difficulty: Easy
   https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
   ----------------------------------------------------------------
   PROBLEM
   Query all attributes of every Japanese city in the CITY table.
   The COUNTRYCODE for Japan is JPN.

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
WHERE COUNTRYCODE = 'JPN';
