select sum(city.population)
from city, country
where city.countrycode=country.code and
country.continent='Asia'; 

select city.name
from city, country
where city.countrycode=country.code
and country.continent='Africa'; 

select country.continent, floor(avg(city.population))
from city, country
where city.countrycode=country.code
group by continent; 

select CASE when grades.grade>7 then students.name end, grades.grade, students.marks
from students, grades
where students.marks>=grades.min_mark and students.marks<=grades.max_mark
order by grades.grade DESC, students.name, students.marks ASC; 
--didn't specify that marks couldn't be ascending for result rows with names!!--