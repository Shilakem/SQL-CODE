SELECT *
FROM jobroles;

SELECT jobroles.JobTitle
FROM jobroles;

SELECT DISTINCT jobroles.JobType
FROM jobroles;

SELECT jobroles.CompanyName,jobroles.ExperienceLevel,jobroles.JobType
FROM jobroles
WHERE JobType='Full-time';

SELECT *
FROM jobroles
WHERE JobID=13;

SELECT *
FROM jobroles
WHERE JobID BETWEEN 5 AND 10;

SELECT *
FROM jobroles
WHERE JobID NOT BETWEEN 5 AND 10;

SELECT jobroles.CompanyName,jobroles.Location
FROM jobroles
WHERE Location LIKE 'S%';

SELECT*
FROM jobroles
WHERE Location IN ('Austin','Seattle');

SELECT*
FROM jobroles
WHERE Location NOT IN ('Austin','Seattle');

SELECT *
FROM jobroles
ORDER BY Salary DESC;

SELECT *
FROM jobroles
WHERE JobType='Remote' AND (Location LIKE 'S%' OR Location LIKE '%S%');

SELECT*
FROM jobroles
WHERE JobType LIKE '____-t%'; -- wildcards

SELECT *
FROM jobroles
WHERE NOT JobType='Remote';

SELECT *
FROM jobroles
WHERE Location NOT LIKE 'S%';

INSERT INTO jobroles
VALUES(21,'Data Analyst','Deca Live','Remote','Fulltime',80000,100,'2025-02-05','SQL,Excel,Tableau','Entry');

SELECT jobroles.CompanyName
FROM jobroles
WHERE CompanyName IS NOT NULL;

SELECT jobroles.CompanyName
FROM jobroles
WHERE CompanyName IS NULL;

UPDATE jobroles
SET CompanyName='Cigna',Applications='120'
WHERE jobroles.JobID=21;

DELETE FROM jobroles
WHERE CompanyName='Cigna';

SELECT *
FROM jobroles
WHERE Salary>80000
ORDER BY Salary DESC
LIMIT 3;

SELECT COUNT(DISTINCT jobroles.Location) AS Total_numof_Locations
FROM jobroles;

SELECT COUNT(DISTINCT jobroles.Location) AS "Total number of Locations"
FROM jobroles;

SELECT MIN(SALARY)
FROM jobroles;

SELECT MAX(SALARY)
FROM jobroles;

SELECT JobTitle,SUM(Applications) AS TOTAL_APPLICATIONS
FROM jobroles
GROUP BY JobTitle
ORDER BY SUM(Applications) DESC;

SELECT Jobtitle,SUM(Applications)
FROM jobroles
GROUP BY Jobtitle
HAVING SUM(Applications) > 600
ORDER BY JobTitle;
