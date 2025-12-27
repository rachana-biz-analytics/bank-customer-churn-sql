# Bank Customer Churn Analysis using SQL

## Project Overview

This project analyzes bank customer data to identify patterns and drivers of customer churn using SQL. The goal is to help stakeholders understand which customer segments are more likely to leave and to support data-driven retention strategies.

The analysis focuses on demographic, financial, and behavioral attributes such as credit score, age, tenure, balance, product usage, and activity status.

---

## Objectives

* Understand overall churn rate and customer distribution
* Identify key factors influencing churn
* Segment customers by risk profiles
* Generate actionable insights for retention strategies

---

## Dataset

**Source:** Kaggle – Bank Customer Churn Dataset
Link: [https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset](https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset)

**Description:**
Customer-level data from ABC Multistate Bank with features including:

* Credit score, age, gender, country
* Tenure, balance, number of products
* Credit card usage, active membership
* Target variable: `churn` (1 = left, 0 = retained)

---

## Tools & Technologies

* SQL (SQLite) – Core tool used for data exploration, transformations, and churn analysis queries
* DBeaver – SQL client used to run and manage queries on the SQLite database
* Microsoft Excel – Used for initial data cleaning and preprocessing (handling nulls, formatting, basic validation) before loading into the database
* GitHub – Version control and project documentation

---

## Key Analysis Performed

* Overall churn rate analysis
* Churn by geography, gender, and age group
* Impact of balance, tenure, and product count on churn
* Active vs inactive member churn comparison
* Credit score and salary segmentation
* High-risk customer profiling

All queries are available in:
`churn_analysis.sql`

---

## Sample Insights

* Customers with lower credit scores show higher churn risk
* Inactive members are more likely to leave than active users
* Certain countries and age groups exhibit higher churn patterns
* Customers with fewer products tend to churn more

---

## Repository Structure

```
bank-customer-churn-sql/
│
├── churn_analysis.sql   # SQL queries for analysis
├── README.md           # Project documentation
```

---

## How to Use

1. Load the dataset into your SQL database
2. Run the queries from `churn_analysis.sql`
3. Review results to explore churn drivers

---

##  Author

Rachana
Business Data Analyst | SQL | Data Analytics
GitHub: [https://github.com/rachana-biz-analytics](https://github.com/rachana-biz-analytics)

---

##  License

Dataset is provided by Kaggle under its respective license. This project is for portfolio purposes.
