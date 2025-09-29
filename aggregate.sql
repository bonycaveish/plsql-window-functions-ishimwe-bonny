SELECT sale_date,
       amount,
       SUM(amount) OVER (ORDER BY sale_date) AS running_total,
       AVG(amount) OVER (ORDER BY sale_date) AS running_avg,
       MIN(amount) OVER () AS min_sale,
       MAX(amount) OVER () AS max_sale
FROM transactions
ORDER BY sale_date;
