select *
from CITY
where population > 100000 and countrycode='USA'; 

select distinct city 
from STATION
where ID%2=0; 

select
(select COUNT(city) from STATION)-
(select COUNT(distinct city) from STATION);

select city, char_length(city)
from STATION
order by char_length(city) ASC, city ASC
limit 1; 

select city, char_length(city)
from STATION
order by char_length(city) DESC, city ASC
limit 1; 

select distinct city 
from STATION 
where city regex '^[aeiou].*[aeiou]$'; 

select distinct city 
from STATION 
where city regexp '^[^aeiou]';

select distinct city 
from STATION
where city regexp '^[^aeiou]' or city regexp '[^aeiou]$'; 

select name
from STUDENTS
where marks>75
order by substring(name, -3), ID ASC; 