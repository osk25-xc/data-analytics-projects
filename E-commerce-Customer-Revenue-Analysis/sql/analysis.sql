SELECT region, SUM(revenue) revenue, SUM(revenue-cost) profit FROM orders GROUP BY region ORDER BY revenue DESC;
SELECT category, COUNT(*) orders, SUM(revenue) revenue FROM orders GROUP BY category ORDER BY revenue DESC;
SELECT DATE_TRUNC('month', order_date::date) month, SUM(revenue) revenue FROM orders GROUP BY 1 ORDER BY 1;
SELECT customer_id, COUNT(*) orders, SUM(revenue) lifetime_revenue FROM orders GROUP BY customer_id HAVING COUNT(*)>1 ORDER BY lifetime_revenue DESC;
