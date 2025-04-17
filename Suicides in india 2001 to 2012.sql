SELECT Year, SUM(Total) AS total_suicides
FROM suicides_in_india
GROUP BY Year
ORDER BY Year;

SELECT State, SUM(Total) AS total_suicides
FROM suicides_in_india
GROUP BY State
ORDER BY total_suicides DESC
LIMIT 5;

SELECT Gender, SUM(Total) AS total_suicides
FROM suicides_in_india
GROUP BY Gender;

SELECT Age_group, Year, SUM(Total) AS total
FROM suicides_in_india
GROUP BY Age_group, Year
ORDER BY Age_group, Year;

SELECT 
    Type,
    SUM(Total) AS total_suicides
FROM 
    suicides_in_india
GROUP BY 
    Type
ORDER BY 
    total_suicides DESC
LIMIT 15;

SELECT 
    Type,
    SUM(Total) AS total_suicides
FROM 
    suicides_in_india 
WHERE Type_code = 'Causes'
GROUP BY 
    Type
ORDER BY 
    total_suicides DESC
LIMIT 10;
