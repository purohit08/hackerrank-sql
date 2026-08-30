/* ================================================================
   HackerRank | SQL | Basic Join
   Problem #35 - African Cities                     Difficulty: Easy
   https://www.hackerrank.com/challenges/african-cities/problem
   ----------------------------------------------------------------
   PROBLEM
   Given the CITY and COUNTRY tables, query the names of all cities
   where the CONTINENT is 'Africa'.
   (CITY.CountryCode and COUNTRY.Code are the matching key columns.)

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)     -- matches COUNTRY.CODE
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   COUNTRY table (relevant columns: CODE, NAME, CONTINENT, ...)
   ================================================================ */

-- SOLUTION
SELECT CITY.NAME
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';
