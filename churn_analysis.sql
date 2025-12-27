-- Churn Analysis Queries
-- Dataset: Bank Customer Churn
-- Author: rachana
-- Date: 2025-12-26


-- ================================
-- Summary Views
-- ================================


-- Churn by Country
SELECT *
FROM churn_by_country
ORDER BY churn_rate_pct DESC;


-- Churn by Active Membership
SELECT *
FROM churn_by_active
ORDER BY churn_rate_pct DESC;


-- Churn by Credit Score Band
SELECT
  CASE
    WHEN credit_score < 500 THEN 'Very Low'
    WHEN credit_score BETWEEN 500 AND 649 THEN 'Low'
    WHEN credit_score BETWEEN 650 AND 749 THEN 'Good'
    ELSE 'Excellent'
  END AS credit_score_band,
  COUNT(*) AS total,
  SUM(churn) AS churned,
  ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY credit_score_band
ORDER BY churn_rate_pct DESC;


-- Churn by Age Band
SELECT 
  CASE
    WHEN age < 30 THEN '<30'
    WHEN age BETWEEN 30 AND 39 THEN '30–39'
    WHEN age BETWEEN 40 AND 49 THEN '40–49'
    WHEN age BETWEEN 50 AND 59 THEN '50–59'
    ELSE '60+'
  END AS age_band,
  COUNT(*) AS total,
  SUM(churn) AS churned,
  ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY age_band
ORDER BY churn_rate_pct DESC;

-- Churn by Products Owned
SELECT products_number,
       COUNT(*) AS total,
       SUM(churn) AS churned,
       ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY products_number
ORDER BY churn_rate_pct DESC;



-- ================================
-- Detailed Exploratory Analysis
-- ================================


SELECT COUNT(*) 
FROM Churn_Prediction_cleaned_data;

SELECT * 
FROM Churn_Prediction_cleaned_data 
LIMIT 10;

SELECT churn, COUNT(*) AS cnt
FROM Churn_Prediction_cleaned_data
GROUP BY churn;


SELECT country, COUNT(*) AS customers
FROM Churn_Prediction_cleaned_data
GROUP BY country
ORDER BY customers DESC;

SELECT churn, AVG(balance) AS avg_balance
FROM Churn_Prediction_cleaned_data
GROUP BY churn;


SELECT 
  ROUND(100.0 * SUM(CASE WHEN churn = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data;


SELECT country, 
       COUNT(*) AS total_customers,
       SUM(churn) AS churned_customers,
       ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY country
ORDER BY churn_rate_pct DESC;

SELECT "age_group¶",
       COUNT(*) AS total,
       SUM(churn) AS churned,
       ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY "age_group¶"
ORDER BY churn_rate_pct DESC;


SELECT active_member,
       COUNT(*) AS total,
       SUM(churn) AS churned,
       ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY active_member;

SELECT products_number,
       COUNT(*) AS total,
       SUM(churn) AS churned,
       ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY products_number
ORDER BY churn_rate_pct DESC;

SELECT tenure_band,
       COUNT(*) AS total,
       SUM(churn) AS churned,
       ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY tenure_band
ORDER BY churn_rate_pct DESC;

SELECT credit_card,
       COUNT(*) AS total,
       SUM(churn) AS churned,
       ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY credit_card;

SELECT 
  CASE 
    WHEN balance = 0 THEN 'Zero Balance'
    WHEN balance < 50000 THEN 'Low (<50k)'
    WHEN balance < 100000 THEN 'Medium (50k–100k)'
    ELSE 'High (>100k)'
  END AS balance_band,
  COUNT(*) AS total,
  SUM(churn) AS churned,
  ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY balance_band
ORDER BY churn_rate_pct DESC;

SELECT 
  CASE
    WHEN age < 30 THEN '<30'
    WHEN age BETWEEN 30 AND 39 THEN '30–39'
    WHEN age BETWEEN 40 AND 49 THEN '40–49'
    WHEN age BETWEEN 50 AND 59 THEN '50–59'
    ELSE '60+'
  END AS age_band,
  COUNT(*) AS total,
  SUM(churn) AS churned,
  ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY age_band
ORDER BY churn_rate_pct DESC;


SELECT 
  CASE
    WHEN credit_score < 500 THEN 'Very Low'
    WHEN credit_score BETWEEN 500 AND 649 THEN 'Low'
    WHEN credit_score BETWEEN 650 AND 749 THEN 'Good'
    ELSE 'Excellent'
  END AS credit_score_band,
  COUNT(*) AS total,
  SUM(churn) AS churned,
  ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY credit_score_band
ORDER BY churn_rate_pct DESC;



SELECT * 
FROM churn_by_country
ORDER BY churn_rate_pct DESC;

SELECT *
FROM churn_by_active
ORDER BY churn_rate_pct DESC;

SELECT
  CASE
    WHEN credit_score < 500 THEN 'Very Low'
    WHEN credit_score BETWEEN 500 AND 649 THEN 'Low'
    WHEN credit_score BETWEEN 650 AND 749 THEN 'Good'
    ELSE 'Excellent'
  END AS credit_score_band,
  COUNT(*) AS total,
  SUM(churn) AS churned,
  ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate_pct
FROM Churn_Prediction_cleaned_data
GROUP BY credit_score_band
ORDER BY churn_rate_pct DESC;












