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

SELECT jobroles.CompanyName,jobroles.Location
FROM jobroles
WHERE Location LIKE 'S%';

SELECT*
FROM jobroles
WHERE Location IN ('Austin','Seattle');

SELECT *
FROM jobroles
ORDER BY Salary DESC;

SELECT *
FROM jobroles
WHERE JobType='Remote' AND (Location LIKE 'S%' OR Location LIKE '%S%');

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