/*
 * HackerRank | SQL | Basic Select
 * Problem : Revising the Select Query II
 * Difficulty: Easy
 * Link   : https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
 *
 * Task: Query the NAME field for every American city in CITY with a population
 *       larger than 120,000. The CountryCode for America is 'USA'.
 */

SELECT NAME
FROM CITY
WHERE POPULATION > 120000
  AND COUNTRYCODE = 'USA';
