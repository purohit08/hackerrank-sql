/*
 * HackerRank | SQL | Basic Select
 * Problem : Revising the Select Query I
 * Difficulty: Easy
 * Link   : https://www.hackerrank.com/challenges/revising-the-select-query/problem
 *
 * Task: Query all columns for every American city in CITY with a population
 *       larger than 100,000. The CountryCode for America is 'USA'.
 */

SELECT *
FROM CITY
WHERE POPULATION > 100000
  AND COUNTRYCODE = 'USA';
