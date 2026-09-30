select count(*) from customer_churn;



SELECT COUNT(*)
FROM customer_churn
WHERE "Churn" = 'Yes';


SELECT
ROUND(
SUM(CASE WHEN "Churn"='Yes' THEN 1 ELSE 0 END)*100/
COUNT(*),2)
AS Churn_Rate
FROM customer_churn;



SELECT AVG("Monthly_Charges")
FROM customer_churn;


SELECT AVG("Tenure_Months")
FROM customer_churn;


SELECT "Contract_Type",
COUNT(*) Customers
FROM customer_churn
GROUP BY "Contract_Type";


SELECT "Internet_Service",
COUNT(*)
FROM customer_churn
GROUP BY "Internet_Service";



SELECT "State",
COUNT(*)
FROM customer_churn
WHERE "Churn"='Yes'
GROUP BY "State"
ORDER BY 2 DESC;

Select "Payment_Method",Count(*) from customer_churn group by "Payment_Method";


Select "Subscription_Type",Count(*) from customer_churn group by "Subscription_Type";


Select "State" , 
sum("Total_Charges") from customer_churn 
group by "State" order by 2 DESC;


Select "Contract_Type" , Avg("Monthly_Charges") from customer_churn group by "Contract_Type";



Select "Senior_Citizen",Count(*) from customer_churn WHERE "Churn"='Yes' group by "Senior_Citizen";



SELECT "Customer_Name",
"Customer_value"
FROM customer_churn
ORDER BY "Customer_value" DESC
LIMIT 10;

SELECT *
FROM customer_churn
WHERE "Tech_Support" ='No';









