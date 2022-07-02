### This Query Generate the following two result sets:
### 1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately 
### followed by the first letter of each profession as a parenthetical
### (i.e.: enclosed in parentheses). 
### 2. Query the number of ocurrences of each occupation in OCCUPATIONS. 

(SELECT 
    CONCAT(NAME, '(',SUBSTRING(OCCUPATION, 1,1), ')')
FROM OCCUPATIONS
ORDER BY NAME LIMIT 20)
UNION
(SELECT   
    CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', LOWER(OCCUPATION), 's.') 
FROM     OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION LIMIT 20)