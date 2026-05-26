# NextGen_employee-retention-performance-salary_sql_analysis


## Overview
This project analyses employee retention, performance, and salary data for **NextGen Corp.**, a growing technology company facing challenges with turnover, performance inconsistency, and salary disparities. Using SQL, the analysis uncovers key workforce patterns and provides data‑driven insights to support strategic HR decision‑making.


## Tools Used
- PostgreSQL


## Dataset
The dataset includes:
- Employee demographics  
- Tenure and employment status  
- Department and job roles  
- Performance scores  
- Salary information  
- Exit reasons for former employees  


## Methodology
The data was cleaned, transformed, and analysed using SQL queries.
- Data cleaning (handling nulls, standardising job titles, removing duplicates)
- Feature engineering (tenure calculation, performance flags, salary bands)
- Exploratory SQL analysis
- Aggregations and departmental comparisons
- Correlation checks (salary vs performance)


## Key Questions Answered
### **Employee Retention**
- Who are the top 5 longest‑tenured employees?  
- What is the turnover rate by department?  
- Which employees are at risk of leaving based on performance?  
- What are the main reasons employees leave?

### **Performance Analysis**
- How many employees have left the company?  
- How many employees have extreme performance scores (5.0 or below 3.5)?  
- Which departments have the most extreme performers?  
- What is the average performance score by department?

### **Salary Analysis**
- What is the total salary expense?  
- What is the average salary by job title?  
- How many employees earn above $80,000?  
- How does salary correlate with performance?
  

## SQL Queries Included
- `tenure_analysis.sql` – Identifying longest‑serving employees  
- `turnover_by_department.sql` – Department‑level turnover calculations  
- `performance_risk.sql` – Flagging employees at risk of leaving  
- `exit_reasons.sql` – Breakdown of reasons for leaving  
- `extreme_performance.sql` – Identifying high and low performers  
- `avg_performance_by_dept.sql` – Department performance averages  
- `salary_expense.sql` – Total salary cost  
- `salary_by_job_title.sql` – Salary benchmarking  
- `salary_vs_performance.sql` – Correlation analysis
  

## Dataset
The original dataset used for this project is confidential.  
For privacy reasons, it is not included in this repository.


## Insights
### **Retention**
- Marketing (92%) and Engineering (66%) have the highest turnover.  
- Long‑tenured employees (10+ years) show strong loyalty, suggesting turnover is concentrated among newer staff.  
- Most departures are due to personal reasons (39%) or new job opportunities (25%).

### **Performance**
- 28 employees have left the company.  
- 47 employees have extreme performance scores (5.0 or below 3.5).  
- Engineering and Marketing each have 17 extreme performers.  
- Sales has the lowest average performance score (4.00).

### **Salary**
- Total salary expense: **$4,850,000**.  
- Sales Representatives earn the highest average salary ($84,285).  
- 26 employees earn above $80,000.  
- Salary does **not** strongly correlate with performance.

  
## Visual Outputs (some)
- Average salary by job title
- Average performance by department
- Turnover by department
- Top turnover reasons


## Recommendations
- Prioritise retention strategies in Marketing and Engineering.  
- Strengthen career development and mentorship programmes.  
- Align compensation with performance through bonuses and benchmarking.  
- Improve work‑life balance with flexible work arrangements.  
- Conduct structured exit interviews to identify root causes.
  

## Business Impact
- Implementing these insights could help NextGen Corp:
- Reduce turnover by 10–15% in high‑risk departments
- Improve performance consistency through targeted coaching
- Optimise salary allocation and reduce pay inequities
- Strengthen employee engagement and retention
