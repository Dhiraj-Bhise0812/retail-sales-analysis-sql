# Retail Sales Analysis (SQL)

### 📌 Project Overview
This project performs an in-depth analysis of retail sales data to extract actionable business
insights. The focus is on understanding customer demographics, identifying high-performing
product categories, and analyzing temporal sales trends (monthly and shift-wise) to optimize
business operations.

### 🛠 Data Pipeline & Workflow
1. Database Setup & DDL
Database Creation: Structured the sql_project_3 environment.
Table Schema: Defined the retail table with appropriate data types for transactions,
dates, times, and financial metrics (Price, COGS, Total Sale).
2. Data Cleaning (Ensuring Data Integrity)
Null Value Treatment: Conducted a comprehensive audit for missing values across all
columns.
Data Pruning: Removed incomplete records to ensure that the analysis is based on 100%
accurate and verified transaction data.
3. Exploratory Data Analysis (EDA)
Volume Metrics: Calculated total transaction counts and identified the unique customer
base.
Market Reach: Analyzed the distribution of product categories (Clothing, Electronics,
Beauty).

### 🚀 Advanced Business Queries
The project leverages advanced SQL to solve critical business problems:
Customer Profiling: Quantifying transaction volume by gender and category to identify
target demographics.
Temporal Analysis (Shift-Wise): Created a Shift Analysis using CASE statements to
categorize orders into Morning, Afternoon, and Evening, helping identify peak shopping
hours.
Top Performers: Identified the Top 5 Customers by net sales to assist in loyalty program
targeting.
Efficiency Metrics: Calculated unique customer counts per category to determine market
penetration.
Window Functions (Ranking): Utilized RANK() and PARTITION BY to determine the
Best Selling Month for each year based on average sales.

### 🛠 Technical SQL Skills Demonstrated
Data Cleaning: Handling NULLs and maintaining data quality.
Complex Aggregations: Using SUM , AVG , COUNT(DISTINCT) , and GROUP BY .
Advanced Logic: Implementing CASE WHEN for categorical bucketing.
Analytical Functions: Proficiency in Window Functions ( RANK() ) for time-series
ranking.
Subqueries & CTEs: Utilizing Common Table Expressions to keep complex logic
organized and readable.

### 📈 Key Findings
Peak Performance: Isolated specific months and daily shifts where sales are maximized.
Category Leadership: Determined which product categories drive the highest customer
volume.
High-Value Segments: Provided a clear list of the most profitable customers based on
total revenue contribution.

### 📂 Project Structure
sales_analysis.sql : The primary script containing DDL, DML, and all analytical queries.
README.md : Project documentation and summary of findings.

### 👤 About the Author

Dhiraj Bhise 
LinkedIn | www.linkedin.com/in/dhiraj-bhise-335532306
