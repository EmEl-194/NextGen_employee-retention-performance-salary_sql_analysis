-- SECTION 1 – EMPLOYEE RETENTION ANALYSIS
-- Q1. Who are the top 5 highest-serving (longest-tenure) employees?
SELECT
    e.employee_id,
    e.first_name || ' ' || e.last_name         AS full_name,
    e.job_title,
    d.department_name,
    e.hire_date,
    CURRENT_DATE - e.hire_date                 AS days_served,
    ROUND((CURRENT_DATE - e.hire_date) / 365.25, 1) AS years_served
FROM employee e
JOIN department d ON e.department_id = d.department_id
ORDER BY days_served DESC
LIMIT 5;

--Q2. What is the turnover rate for each department?
SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    COUNT(t.employee_id) AS employees_left,
    ROUND(
        COUNT(t.employee_id) * 100.0 / COUNT(e.employee_id),
        2
    ) AS turnover_rate_percent
FROM department d
JOIN employee e
    ON d.department_id = e.department_id
LEFT JOIN turnover t
    ON e.employee_id = t.employee_id
GROUP BY d.department_name
ORDER BY turnover_rate_percent DESC;

-- Q3. Which employees are at risk of leaving based on performance?
Select 
		e.employee_id,
		e.first_name ||' ' || e.last_name as "Full Name",
		e.job_title,
		p.performance_score
from employee e
left join performance p
on p.employee_id = e.employee_id
where performance_score < 3.3
order by performance_score desc

-- Q4. What are the main reasons employees are leaving the company?
SELECT
    reason_for_leaving,
    COUNT(*)                                   AS number_of_employees,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM turnover
WHERE reason_for_leaving IS NOT NULL
GROUP BY reason_for_leaving
ORDER BY number_of_employees DESC;



-- SECTION 2 – PERFORMANCE ANALYSIS
--q1 How many employees has left the company?
SELECT COUNT(DISTINCT employee_id) AS total_employees_left
FROM turnover;

--q2 How many employees have a performance score of 5.0 / below 3.5?
SELECT COUNT(DISTINCT employee_id) AS employees_with_score_5
FROM performance
WHERE performance_score = 5.0;

-- Q2b. How many employees have a performance score below 3.5?
SELECT COUNT(DISTINCT employee_id) AS employees_below_3_5
FROM performance
WHERE performance_score < 3.5;

-- Q3a. Which department has the most employees with a performance score of 5.0?
SELECT
    d.department_name,
    COUNT(DISTINCT p.employee_id) AS top_performers
FROM performance p
JOIN department d ON p.department_id = d.department_id
WHERE p.performance_score = 5.0
GROUP BY d.department_name
ORDER BY top_performers DESC
limit 4;

 -- Q3b. Which department has the most employees with a performance score below 3.5?
SELECT
    d.department_name,
    COUNT(DISTINCT p.employee_id) AS low_performers
FROM performance p
JOIN department d ON p.department_id = d.department_id
WHERE p.performance_score < 3.5
GROUP BY d.department_name
ORDER BY low_performers DESC
LIMIT 4;

--Q4. What is the average performance score by department?
SELECT
    d.department_name,
    ROUND(AVG(p.performance_score), 2)         AS avg_performance_score,
    COUNT(DISTINCT p.employee_id)              AS employees_evaluated
FROM performance p
JOIN department d ON p.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_performance_score DESC;



-- SECTION 3 – SALARY ANALYSIS
--Q1. What is the total salary expense for the company?
SELECT
    TO_CHAR(SUM(salary_amount), '$999,999,999') AS total_salary_expense
FROM salary;

-- Q2. What is the average salary by job title?
SELECT
    e.job_title,
    ROUND(AVG(s.salary_amount), 2)             AS avg_salary,
    COUNT(DISTINCT e.employee_id)              AS num_employees
FROM salary  s
JOIN employee e ON s.employee_id = e.employee_id
GROUP BY e.job_title
ORDER BY avg_salary DESC;

-- Q3. How many employees earn above $80,000?
SELECT COUNT(DISTINCT employee_id) AS employees_above_80k
FROM salary
WHERE salary_amount > 80000;
-- Q4. How does performance correlate with salary across departments?
SELECT
    d.department_name,
    ROUND(AVG(p.performance_score), 2)         AS avg_performance_score,
    ROUND(AVG(s.salary_amount), 2)             AS avg_salary,
    -- Correlation indicator: salary per performance point
    ROUND(AVG(s.salary_amount) / NULLIF(AVG(p.performance_score), 0), 2)
                                               AS salary_per_perf_point
FROM employee    e
JOIN department  d ON e.department_id  = d.department_id
JOIN performance p ON e.employee_id    = p.employee_id
JOIN salary      s ON e.employee_id    = s.employee_id
GROUP BY d.department_name
ORDER BY avg_performance_score DESC;


-- Additional 
--1: Which employee(s) are at risk-"Consistently Underperforming"?
select
	e.employee_id,
	first_name || ' ' || last_name as Full_name,
	job_title,
	avg(p.performance_score) as avg_score
from employee e
left join performance p
	on e.employee_id = p.employee_id
group by e.employee_id, first_name, last_name, job_title
having avg(p.performance_score) <3.5