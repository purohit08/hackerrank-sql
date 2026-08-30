/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #27 - The Blunder                        Difficulty: Medium
   https://www.hackerrank.com/challenges/the-blunder/problem
   ----------------------------------------------------------------
   PROBLEM
   Samantha computed the average monthly salary, but her broken '0'
   key dropped every '0' digit from each salary. Find the error:
       error = actual_average - miscalculated_average
   rounded UP to the next integer, where:
     - actual_average        = AVG(Salary)
     - miscalculated_average = AVG of each salary with all '0' removed

   EMPLOYEES table
     ID      INTEGER
     Name    STRING
     Salary  INTEGER    -- per month, 1000 < Salary < 100000
   ----------------------------------------------------------------
   Note: REPLACE(Salary,'0','') removes the zero digits. CAST to a
   real number so AVG is not integer-truncated; CEILING rounds up.
   ================================================================ */

-- SOLUTION
SELECT CEILING(AVG(CAST(Salary AS FLOAT)) - AVG(CAST(REPLACE(Salary, '0', '') AS FLOAT)))
FROM EMPLOYEES;
