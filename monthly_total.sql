
WITH monthly_sales AS (
    SELECT TO_CHAR(sale_date,'YYYY-MM') AS sales_month,
           SUM(amount) AS monthly_total
    FROM transactions
    GROUP BY TO_CHAR(sale_date,'YYYY-MM')
)
