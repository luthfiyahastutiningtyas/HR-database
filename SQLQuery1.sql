SELECT
	Sex,
	COUNT(CASE WHEN EmploymentStatus = 'Active' THEN 1 END) as Current_employees,
	COUNT(CASE WHEN EmploymentStatus = 'Voluntarily Terminated' OR EmploymentStatus = 'Terminated for Cause' THEN 1 END) as Total_termination
FROM HRDataset
GROUP BY Sex;