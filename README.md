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
- [NextGen Corp. Query](NextGen%20Corp.%20Query.sql)

  
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

  
## Visual Outputs
### Average Salary by Job Title
![Average Salary by Job Title](Average%20salary%20by%20job%20title.png)

### Average Performance by Department
![Average Performance by Department](Average%20performance%20by%20department.png)

### Turnover by Department
![Turnover by Department](Turnover%20by%20department.png)

### Top Turnover Reasons
![Top Turnover Reasons](Top%20turnover%20reasons.png)


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


## Conclusion
This SQL project provides a comprehensive analysis of employee retention, performance, and salary data for NextGen Corp.  
The findings highlight critical turnover issues in Marketing and Engineering, performance imbalances across departments, and weak alignment between salary and productivity.  
By addressing these insights through targeted retention programmes, career development initiatives, and performance‑based compensation, NextGen Corp. can strengthen workforce stability, improve employee satisfaction, and enhance overall organisational efficiency.  
This project demonstrates how SQL can be used to uncover actionable HR insights and support data‑driven decision‑making in both healthcare and non‑clinical business contexts.
