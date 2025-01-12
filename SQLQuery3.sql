SELECt TOP 10
	TermReason,
	Count(TermReason) as Total
FROM HRDataset
WHERE TermReason <> 'N/A-StillEmployed'
GROUP BY TermReason
ORDER BY Total Desc;