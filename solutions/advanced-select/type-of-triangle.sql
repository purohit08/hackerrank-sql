/* ================================================================
   HackerRank | SQL | Advanced Select
   Problem #19 - Type of Triangle                   Difficulty: Easy
   https://www.hackerrank.com/challenges/what-type-of-triangle/problem
   ----------------------------------------------------------------
   PROBLEM
   For each record in TRIANGLES, output the triangle type based on its
   side lengths A, B, C:
     Equilateral    - all three sides equal
     Isosceles      - exactly two sides equal
     Scalene        - all three sides differ
     Not A Triangle - A, B, C do not form a valid triangle

   TRIANGLES table
     A  INTEGER
     B  INTEGER
     C  INTEGER
   ----------------------------------------------------------------
   Note: CASE uses WHEN..THEN (not IF..THEN). Check the triangle
   inequality FIRST -- otherwise a degenerate case like (5,5,10)
   is wrongly classified as Isosceles instead of Not A Triangle.
   ================================================================ */

-- SOLUTION
SELECT CASE
    WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
    WHEN A = B AND B = C                        THEN 'Equilateral'
    WHEN A = B OR B = C OR A = C                THEN 'Isosceles'
    ELSE                                             'Scalene'
END
FROM TRIANGLES;
