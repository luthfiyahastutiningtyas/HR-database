SELECT
	Department,
	Sex,
	COUNT(CASE WHEN EmploymentStatus = 'Active' THEN 1 END) as Total_employees
FROM HRDataset
GROUP BY Department, Sex
ORDER BY Department;