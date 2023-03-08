#QUESTION 16
SET @total_count = 0;
SELECT COUNT(*) INTO @total_count FROM logistics_Emp;
SELECT C_TYPE, (COUNT(C_TYPE)/@total_count)*100
AS Contribution FROM logistics_Emp
GROUP BY C_TYPE;
