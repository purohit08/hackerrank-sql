/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #18 - Higher Than 75 Marks               Difficulty: Easy
   https://www.hackerrank.com/challenges/more-than-75-marks/problem
   ----------------------------------------------------------------
   PROBLEM
   Query the Name of any student in STUDENTS who scored higher than
   75 Marks. Order your output by the LAST THREE CHARACTERS of each
   name. If two or more students have names ending in the same last
   three characters, secondary-sort them by ascending ID.

   STUDENTS table
     ID     INTEGER
     Name   STRING
     Marks  INTEGER
   ----------------------------------------------------------------
   Note: RIGHT(Name, 3) returns the last three characters (T-SQL).
   ================================================================ */

-- SOLUTION
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;
