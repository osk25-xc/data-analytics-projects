SELECT warehouse, SUM(inventory_value) inventory_value, SUM(stockout) stockout_skus, COUNT(*) skus FROM inventory GROUP BY warehouse ORDER BY inventory_value DESC;
SELECT sku, stock_on_hand, reorder_level, monthly_demand, lead_time_days FROM inventory WHERE stock_on_hand<reorder_level ORDER BY (reorder_level-stock_on_hand) DESC;
SELECT category, SUM(units_sold) units_sold, ROUND(AVG(lead_time_days),1) avg_lead_time FROM inventory GROUP BY category;
SELECT supplier, COUNT(*) skus, ROUND(AVG(lead_time_days),1) avg_lead_time, SUM(stockout) stockout_skus FROM inventory GROUP BY supplier;
