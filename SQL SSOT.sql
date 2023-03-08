#QUESTION SSOT
CREATE TABLE logistics_Emp AS
SELECT
emp.E_ID, ship.SH_ID, Cust.C_ID, pmt.PAYMENT_ID,
memb.M_ID,
emp.E_NAME, emp.E_ADDR, emp.E_BRANCH,
emp.E_DESIGNATION, emp.E_CONT_NO,
ship.SH_DOMAIN, ship.SH_CONTENT,
ship.SR_ADDR, ship.SH_WEIGHT, ship.SER_TYPE, ship.SH_CHARGES,
cust.C_NAME, cust.C_TYPE, cust.C_ADDR,
cust.C_CONT_NO, cust.C_EMAIL_ID,
stat.SENT_DATE, stat.DELIVERY_DATE, stat.Current_Status,
pmt.AMOUNT, pmt.PAYMENT_STATUS, pmt.PAYMENT_DATE,
pmt.PAYMENT_MODE,
memb.Start_Date, memb.End_Date
FROM
EMPLOYEE_Details AS emp
INNER JOIN
employee_manages_shipment AS ems ON emp.E_ID = ems.Employee_E_ID
INNER JOIN
SHIPMENT_Details AS ship ON ship.SH_ID = ems.Shipment_SH_ID
INNER JOIN
customer AS cust ON Cust.C_ID = ship.C_ID
INNER JOIN
STATUS AS stat ON ship.SH_ID = stat.SH_ID
INNER JOIN
payment_details AS pmt ON ship.SH_ID = pmt.SH_ID
INNER JOIN
MEMBERSHIP AS memb ON memb.M_ID = cust.M_ID;
select * from logistics_Emp;