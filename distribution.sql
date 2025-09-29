SELECT customer_id,
       SUM(amount) AS total_spent,
       NTILE(4) OVER (ORDER BY SUM(amount) DESC) AS spend_quartile,
       CUME_DIST() OVER (ORDER BY SUM(amount) DESC) AS cumulative_dist
FROM transactions
GROUP BY customer_id;
