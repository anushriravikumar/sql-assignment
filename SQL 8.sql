#QUESTION 8
SELECT * FROM logistics_Emp
HAVING DATEDIFF(DELIVERY_DATE, SENT_DATE)=1;