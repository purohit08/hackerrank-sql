/*
 * HackerRank | SQL | Basic Select
 * Problem : Japanese Cities' Names
 * Difficulty: Easy
 * Link   : https://www.hackerrank.com/challenges/japanese-cities-name/problem
 *
 * Task: Query the names of all the Japanese cities in the CITY table.
 *       The CountryCode for Japan is 'JPN'.
 */

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';
