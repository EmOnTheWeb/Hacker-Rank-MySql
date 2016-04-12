/**problem one(solved)**/

select concat(name,'(',substring(occupation, 1,1),')')
from OCCUPATIONS
order by name ASC; 

select concat('There are total ',COUNT(occupation), ' ',lower(occupation),'s.')
from OCCUPATIONS
group by occupation 
order by COUNT(occupation) ASC, occupation ASC; 



/**problem two, pivot table. not quite...**/

select CASE when occupation="Doctor" then name else null end,
		CASE when occupation="Professor" then name else null end,
		CASE when occupation="Singer" then name else null end,
		CASE when occupation="Actor" then name else null end,
		from OCCUPATIONS; 
		
select doctor
from (select CASE when occupation="Doctor" then name end as "doctor",
		CASE when occupation="Professor" then name end as "professor",
		CASE when occupation="Singer" then name end as "singer",
		CASE when occupation="Actor" then name end as "actor",
		from OCCUPATIONS) as pivot --derived tables need an alias--
where doctor is not NULL;  --returns rows where doctor has a value but this doesn't get rid of the nulls alongside...-- 



/**problem three (various solutions and partial solutions)**/ 

select *
from BST as t1, BST as t2
where t1.p=t2.n and t2.p is not NULL; --returns all the inners, nodes that are also parents that have parents--

select *
from BST 
where p is NULL; --returns the root node-- 

select n, case when (p is null) then 'Root' when (n in (select p from bst)) then 'Inner' else 'Leaf' end from bst order by n;
--solution--

SELECT N, IF(P IS NULL,'Root',IF((SELECT COUNT(*) FROM BST WHERE P=B.N)>0,'Inner','Leaf')) FROM BST AS B ORDER BY N; --(another solution)USING ALIASES???--