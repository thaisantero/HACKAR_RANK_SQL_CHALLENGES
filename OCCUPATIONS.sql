### This Query Pivot the Occupation column in OCCUPATIONS so that 
### each Name is sorted alphabetically and displayed underneath its corresponding Occupation.
### The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

SELECT min(Doctor), min(Professor), min(Singer), min(Actor)
FROM
( Select
ROW_NUMBER() OVER (PARTITION BY Occupation order by Name) rn, 
CASE 
WHEN Occupation = 'Doctor' then Name
end as Doctor,
CASE 
WHEN Occupation = 'Professor' then Name
end as Professor,
CASE 
WHEN Occupation = 'Singer' then Name
end as Singer,
CASE 
WHEN Occupation = 'Actor' then Name
end as Actor
from OCCUPATIONS
order by Name) a
group by rn