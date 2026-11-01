SELECT department, COUNT(*) headcount, SUM(attrition) leavers, ROUND(100.0*SUM(attrition)/COUNT(*),2) attrition_rate_pct FROM employees GROUP BY department ORDER BY attrition_rate_pct DESC;
SELECT overtime, job_satisfaction, COUNT(*) employees, SUM(attrition) leavers FROM employees GROUP BY overtime, job_satisfaction ORDER BY leavers DESC;
SELECT years_at_company, COUNT(*) headcount, ROUND(100.0*SUM(attrition)/COUNT(*),2) attrition_rate_pct FROM employees GROUP BY years_at_company ORDER BY years_at_company;
SELECT job_role, ROUND(AVG(monthly_income),2) avg_income, ROUND(AVG(performance_rating),2) avg_performance FROM employees GROUP BY job_role;
