SELECT loan_status, COUNT(*) applications, ROUND(AVG(credit_score),1) avg_credit_score FROM loans GROUP BY loan_status;
SELECT CASE WHEN credit_score<580 THEN 'Poor' WHEN credit_score<670 THEN 'Fair' WHEN credit_score<740 THEN 'Good' ELSE 'Very Good' END score_band, COUNT(*) applications, SUM(defaulted) defaults FROM loans GROUP BY 1 ORDER BY 1;
SELECT loan_purpose, COUNT(*) applications, ROUND(AVG(loan_amount),2) avg_loan FROM loans GROUP BY loan_purpose;
SELECT region, ROUND(100.0*SUM(defaulted)/NULLIF(SUM(CASE WHEN loan_status='Approved' THEN 1 ELSE 0 END),0),2) default_rate_pct FROM loans GROUP BY region;
