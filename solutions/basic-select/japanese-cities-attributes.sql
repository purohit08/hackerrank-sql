/*
 * HackerRank | SQL | Basic Select
 * Problem : Japanese Cities' Attributes
 * Difficulty: Easy
 * Link   : https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
 *
 * Task: Query all attributes of every Japanese city in the CITY table.
 *       The CountryCode for Japan is 'JPN'.
 */

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';
