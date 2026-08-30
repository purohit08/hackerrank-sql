/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #37 - Weather Observation Station 5      Difficulty: Easy
   https://www.hackerrank.com/challenges/weather-observation-station-5/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the two cities in STATION with the shortest and longest CITY
   names, plus each name's length (number of characters). If several
   cities tie on length, pick the one first in alphabetical order.
   Output two rows: the shortest, then the longest.

   STATION table
     ID      NUMBER
     CITY    VARCHAR2(21)
     STATE   VARCHAR2(2)
     LAT_N   NUMBER        -- northern latitude
     LONG_W  NUMBER        -- western longitude
   ----------------------------------------------------------------
   Note: MS SQL Server uses LEN() + TOP; MySQL uses LENGTH() + LIMIT.
   ================================================================ */

-- SOLUTION (MS SQL Server) -- run as two statements
SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY) ASC,  CITY ASC;
SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY) DESC, CITY ASC;

/* MySQL equivalent:
   SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC,  CITY ASC LIMIT 1;
   SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1;
*/
