SELECT city, COUNT(*) orders, ROUND(AVG(actual_time_min),1) avg_delivery_min, SUM(late_delivery) late_orders FROM deliveries GROUP BY city ORDER BY orders DESC;
SELECT cuisine, COUNT(*) orders, ROUND(AVG(rating),2) avg_rating, ROUND(AVG(order_value),2) avg_order_value FROM deliveries GROUP BY cuisine;
SELECT DATE_TRUNC('month', order_date::date) month, COUNT(*) orders, ROUND(AVG(actual_time_min),1) avg_delivery_time FROM deliveries GROUP BY 1 ORDER BY 1;
SELECT restaurant_id, COUNT(*) orders, ROUND(AVG(rating),2) avg_rating, SUM(late_delivery) late_orders FROM deliveries GROUP BY restaurant_id HAVING COUNT(*)>=5 ORDER BY avg_rating DESC;
