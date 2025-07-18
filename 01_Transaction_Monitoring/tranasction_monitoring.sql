SELECT * FROM transactions;

-- Write a SQL query to group transactions by `CustomerID` and `Date`.
-- Use a `HAVING` clause to filter for customers where the `SUM(Amount)` is close to $10,000 and the `COUNT(TransactionID)` is greater than 1.
SELECT
	CustomerID,
    Date,
    SUM(Amount) AS total_amount,
    Count(Amount) AS deposit_count
FROM transactions
GROUP BY
	CustomerID,
    Date
HAVING total_amount <= 10000 AND deposit_count > 1
ORDER BY 
	CustomerID,
    Date

