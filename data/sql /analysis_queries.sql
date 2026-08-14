-- Transaction Success Rate

SELECT
COUNT(CASE WHEN Status='Success' THEN 1 END)*100.0
/
COUNT(*) AS Success_Rate
FROM Transactions;

------------------------------------------------

-- Top Failure Reasons

SELECT
Failure_Reason,
COUNT(*) AS Failure_Count
FROM Transactions
WHERE Status='Failed'
GROUP BY Failure_Reason
ORDER BY Failure_Count DESC;

------------------------------------------------

-- Merchant Category Analysis

SELECT
Merchant_Category,
COUNT(*) AS Transactions
FROM Transactions
GROUP BY Merchant_Category
ORDER BY Transactions DESC;

------------------------------------------------

-- State-wise Transactions

SELECT
State,
COUNT(*) AS Transaction_Count
FROM Transactions
GROUP BY State
ORDER BY Transaction_Count DESC;
