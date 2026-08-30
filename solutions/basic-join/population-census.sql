/* ================================================================
   HackerRank | SQL | Basic Join
   Problem #34 - Population Census                  Difficulty: Easy
   https://www.hackerrank.com/challenges/asian-population/problem
   ----------------------------------------------------------------
   PROBLEM
   Given the CITY and COUNTRY tables, query the sum of the populations
   of all cities where the CONTINENT is 'Asia'.
   (CITY.CountryCode and COUNTRY.Code are the matching key columns.)

   CITY table
     ID           NUMBER
     NAME         VARCHAR2(17)
     COUNTRYCODE  VARCHAR2(3)     -- matches COUNTRY.CODE
     DISTRICT     VARCHAR2(20)
     POPULATION   NUMBER
   COUNTRY table
     CODE           VARCHAR2(3)   -- matches CITY.COUNTRYCODE
     NAME           VARCHAR2(44)
     CONTINENT      VARCHAR2(13)
     REGION         VARCHAR2(25)
     SURFACEAREA    NUMBER
     INDEPYEAR      VARCHAR2(5)
     POPULATION     NUMBER
     LIFEEXPECTANCY VARCHAR2(4)
     GNP            NUMBER
     GNPOLD         VARCHAR2(9)
     LOCALNAME      VARCHAR2(44)
     GOVERNMENTFORM VARCHAR2(44)
     HEADOFSTATE    VARCHAR2(32)
     CAPITAL        VARCHAR2(4)
     CODE2          VARCHAR2(2)
   ================================================================ */

-- SOLUTION
SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';
