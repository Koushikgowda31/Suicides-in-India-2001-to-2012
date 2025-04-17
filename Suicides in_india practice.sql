Create database sucide;
use sucide;
select * from suicides_in_india;

select distinct(Type_code) from suicides_in_india;
select distinct(State) from suicides_in_india;
select count(distinct State) as distinct_count from suicides_in_india;
select distinct(Year) from suicides_in_india;
select count(distinct Year) from suicides_in_india;
select distinct(type_code) from suicides_in_india;

select Type_code, count(*) as count
from suicides_in_india
group by Type_code
order by count desc;

SELECT SUM(total) AS total_suicides
FROM suicides_in_india
WHERE state = 'Karnataka'
  AND Type_code = 'causes';
  
  SELECT SUM(total) AS total_suicides
FROM suicides_in_india
WHERE state = 'Karnataka'
  AND Type_code = 'causes'
  AND year BETWEEN 2001 AND 2005;
  
  select sum(total) as totalsuicides
  from suicides_in_india
  where state = 'karnataka';
  
  select distinct age_group
  from suicides_in_india;
  
  select sum(total) as KA_total_suicides
  from suicides_in_india
  where state = 'karnataka'
  and Age_group = '0-14'
  and Year between '2001' and '2006';
  
  select sum(total) as KA_total_suicides
  from suicides_in_india
  where state = 'karnataka'
  and Age_group = '0-100+'
  and Year = '2012';
   
  select * from suicides_in_india;
  
  select distinct state from suicides_in_india;
  select * from suicides_in_india
  where state = 'total(all india)'and state= 'total (states)'and state='total(uts)';
  
  select state,total
  from suicides_in_india
  where Total =(select max(total) from suicides_in_india);
 
  select sum(total) from suicides_in_india
  where Gender='male'
  and state = 'karnataka'
  and Age_group = '0-100+';
  
  select sum(total) from suicides_in_india
  where state = 'karnataka'
  and Gender = 'female'
  and Age_group = '0-100+';
  
  select count(distinct type) as count_type from suicides_in_india;
  
select distinct(type), count(*) as count
from suicides_in_india
where state = 'karnataka'
and Year = 2012
group by Type
order by count desc;
