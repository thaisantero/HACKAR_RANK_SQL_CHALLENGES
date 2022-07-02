### This Query identifies the type of each record in the TRIANGLES table
### using its three side lengths. 

SELECT
    CASE
        WHEN A+B<=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle'
        WHEN A=B AND A=C THEN 'Equilateral'
        WHEN A!=B AND A!=C THEN 'Scalene'
        ELSE 'Isosceles'
END
FROM TRIANGLES