SELECT
    Sex,
    Department,
    AVG(DATEDIFF(YEAR, DOB, GETDATE()) - 
    CASE 
        WHEN (MONTH(DOB) > MONTH(GETDATE())) OR 
             (MONTH(DOB) = MONTH(GETDATE()) AND DAY(DOB) > DAY(GETDATE())) 
        THEN 1 
        ELSE 0 
    END) AS Age,

    AVG(Salary) AS Salary,

	AVG(DATEDIFF(YEAR, DateofHire, GETDATE()) - 
    CASE 
        WHEN (MONTH(DateofHire) > MONTH(GETDATE())) OR 
             (MONTH(DateofHire) = MONTH(GETDATE()) AND DAY(DateofHire) > DAY(GETDATE())) 
        THEN 1 
        ELSE 0 
    END) AS Work_duration
FROM HRDataset
GROUP BY Sex, Department
ORDER BY Department;
