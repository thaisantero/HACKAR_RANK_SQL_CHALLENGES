### This Query gets the two cities in STATION with the shortest and longest CITY names,
### as well as their respective lengths (i.e.: number of characters in the name). 
### If there is more than one smallest or largest city, choose the one that comes first 
### when ordered alphabetically.

SELECT (COUNT(CITY)- COUNT(DISTINCT(CITY))) 
FROM STATION