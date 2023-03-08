#QUESTION 4
SET @total_count = 0;
SELECT COUNT(*) INTO @total_count FROM payment_details;
SELECT
PAYMENT_MODE,
ROUND((COUNT(PAYMENT_MODE) / @total_count) * 100,2)
AS Percentage_Contribution
FROM
Payment_Details
GROUP BY PAYMENT_MODE;