-- Monthly revenue by product category
SELECT 
     DATE_TRUNC('month', order_date) AS month,
     category,
     SUM(amount) AS revenue
FROM sales
GROUP BY 1, 2
ORDER BY month, revenue DESC;
