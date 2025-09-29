
SELECT p.product_name,
       SUM(t.amount) AS total_sales,
       RANK() OVER (ORDER BY SUM(t.amount) DESC) AS product_rank
FROM products p
JOIN transactions t ON p.product_id = t.product_id
GROUP BY p.product_name;


SELECT sale_date,
       SUM(amount) OVER (ORDER BY sale_date
                         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM transactions;

SELECT DISTINCT
       TO_CHAR(sale_date,'YYYY-MM') AS sales_month,
       SUM(amount) OVER (PARTITION BY TO_CHAR(sale_date,'YYYY-MM')) AS monthly_total,
       LAG(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date,'YYYY-MM')) AS prev_month,
       ( (SUM(amount) OVER (PARTITION BY TO_CHAR(sale_date,'YYYY-MM')))
         - LAG(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date,'YYYY-MM')) )
         / LAG(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date,'YYYY-MM')) * 100 AS growth_pct
FROM transactions
GROUP BY TO_CHAR(sale_date,'YYYY-MM');
