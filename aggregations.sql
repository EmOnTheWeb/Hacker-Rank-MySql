select count(name)
from city
where population > 100000; 

select sum(population)
from CITY
where district = 'California'; 

select avg(population)
from city
where district = 'California'; 

select floor(avg(population))
from city; 

select sum(population)
from city
where countrycode='JPN'; 

select (max(population)-min(population))
from city;

select concat(round(sum(lat_n),2),' ',round(sum(long_w),2))
from station; 

select truncate(sum(lat_n),4)
from station
where lat_n >38.7880 and lat_n< 137.2345; 

select truncate(max(lat_n),4)
from station
where lat_n<137.2345;

select round(long_w,4)
from station
where lat_n<137.2345
order by lat_n DESC
limit 1; 

select round(min(lat_n),4)
from station
where lat_n>38.7780; 

select round(long_w,4) 
from STATION
where lat_n>38.7780
order by lat_n ASC
limit 1; 

select round(abs(min(lat_n)-min(long_w)) + abs(max(lat_n)-max(long_w)),4)
from station; 

select round(sqrt(power((min(lat_n)-min(long_w)),2)+power((max(lat_n)-max(long_w)),2)),4)
from station; 

select round(x.lat_n,4)
from station x, station y
group by x.lat_n
having sum(sign(y.lat_n-x.lat_n))=0; /**this gives correct median value as long as there's an odd number of values**/

select ceiling(avg(salary) - avg(replace(salary,'0','')))
from employees;  /** replace treats salary like string, not integer. while average treats the result as an integer, not string**/