# Project 1: Transaction Monitoring for Structuring

**Objective:** Analyze a dataset of financial transactions to identify potential "structuring" activity. Structuring involves a customer making multiple small deposits to fall just under a reporting threshold (e.g., $10,000) to avoid regulatory scrutiny.

**KYC/AML Concepts Demonstrated:**
*   **Transaction Monitoring:** The core practice of reviewing customer transactions to detect suspicious behavior.
*   **Structuring (Smurfing):** A classic money laundering technique.
*   **Regulatory Reporting:** Understanding the thresholds that trigger reporting requirements (like Currency Transaction Reports - CTRs).

---

### Your Tasks:

**1. Python & Pandas Analysis:**
*   Load the `transactions.csv` dataset into a Pandas DataFrame.
*   For each customer, calculate the total deposit amount per day.
*   Identify customers who made multiple deposits on the same day that sum to just under $10,000.
*   Flag these customers and their suspicious transactions for further review.

**2. SQL Analysis:**
*   Import the `transactions.csv` into a database table (e.g., SQLite, PostgreSQL).
*   Write a SQL query to group transactions by `CustomerID` and `Date`.
*   Use a `HAVING` clause to filter for customers where the `SUM(Amount)` is close to $10,000 and the `COUNT(TransactionID)` is greater than 1.

**3. Power BI Visualization:**
*   Connect Power BI to the `transactions.csv` file.
*   Create a dashboard that shows:
    *   Total transaction volume over time.
    *   A table of customers flagged for potential structuring.
    *   A bar chart showing the number of suspicious transaction days per customer.
