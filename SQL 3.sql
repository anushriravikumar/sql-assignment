#QUESTION 3
CREATE VIEW PaymentNotDone AS
SELECT * FROM logistics_Emp
WHERE PAYMENT_STATUS = 'NOT PAID';
SELECT * FROM PaymentNotDone;