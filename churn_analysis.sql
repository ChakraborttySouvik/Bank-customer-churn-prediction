CREATE DATABASE bank_churn;
USE bank_churn;
SELECT * FROM churn LIMIT 10;

-- ==========================================
-- 1. Total Customers
-- ==========================================

SELECT COUNT(*) AS total_customers
FROM churn;
-- ==========================================
-- 2. Total Churned Customers
-- ==========================================

SELECT COUNT(*) AS churned_customers
FROM churn
WHERE Exited = 1;

-- ==========================================
-- 3. Churn Rate (%)
-- ==========================================

SELECT
ROUND(SUM(Exited) * 100 / COUNT(*), 2) AS churn_rate
FROM churn;

-- ==========================================
-- 4. Churn by Geography
-- ==========================================

SELECT
Geography,
COUNT(*) AS customers,
SUM(Exited) AS churned_customers
FROM churn
GROUP BY Geography
ORDER BY churned_customers DESC;

-- ==========================================
-- 5. Churn by Gender
-- ==========================================

SELECT
Gender,
COUNT(*) AS customers,
SUM(Exited) AS churned_customers
FROM churn
GROUP BY Gender;

-- ==========================================
-- 6. Average Age of Churned Customers
-- ==========================================

SELECT
ROUND(AVG(Age),2) AS average_age
FROM churn
WHERE Exited = 1;

-- ==========================================
-- 7. Active vs Inactive Members
-- ==========================================

SELECT
IsActiveMember,
COUNT(*) AS customers,
SUM(Exited) AS churned_customers
FROM churn
GROUP BY IsActiveMember;

-- ==========================================
-- 8. Churn by Number of Products
-- ==========================================

SELECT
NumOfProducts,
COUNT(*) AS customers,
SUM(Exited) AS churned_customers
FROM churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

-- ==========================================
-- 9. Top 10 Ages With Highest Churn
-- ==========================================

SELECT
Age,
COUNT(*) AS churn_count
FROM churn
WHERE Exited = 1
GROUP BY Age
ORDER BY churn_count DESC
LIMIT 10;

-- ==========================================
-- 10. Average Credit Score by Churn Status
-- ==========================================

SELECT
Exited,
ROUND(AVG(CreditScore),2) AS avg_credit_score
FROM churn
GROUP BY Exited;

-- ==========================================
-- 11. Churn by Tenure
-- ==========================================

SELECT
Tenure,
COUNT(*) AS customers,
SUM(Exited) AS churned_customers
FROM churn
GROUP BY Tenure
ORDER BY Tenure;

-- ==========================================
-- 12. Churn by Credit Card Ownership
-- ==========================================

SELECT
HasCrCard,
COUNT(*) AS customers,
SUM(Exited) AS churned_customers
FROM churn
GROUP BY HasCrCard;

-- ==========================================
-- 13. Average Balance by Churn Status
-- ==========================================

SELECT
Exited,
ROUND(AVG(Balance),2) AS avg_balance
FROM churn
GROUP BY Exited;

-- ==========================================
-- 14. Top 10 Highest Salary Customers
-- ==========================================

SELECT
CustomerId,
EstimatedSalary
FROM churn
ORDER BY EstimatedSalary DESC
LIMIT 10;

-- ==========================================
-- 15. Churn by Age Group
-- ==========================================

SELECT
CASE
WHEN Age < 30 THEN 'Under 30'
WHEN Age BETWEEN 30 AND 40 THEN '30-40'
WHEN Age BETWEEN 41 AND 50 THEN '41-50'
ELSE '50+'
END AS age_group,
COUNT(*) AS customers,
SUM(Exited) AS churned_customers
FROM churn
GROUP BY age_group;
