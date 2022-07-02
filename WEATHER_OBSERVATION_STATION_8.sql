### This Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
### as both their first and last characters. Your result cannot contain duplicates.

SELECT CITY
FROM STATION
WHERE SUBSTRING(CITY,1,1) in ('A','E','I','O','U') 
AND SUBSTRING(CITY,-1,1) in ('A','E','I','O','U')