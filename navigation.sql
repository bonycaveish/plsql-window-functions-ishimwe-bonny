SELECT transaction_id,
       amount,
       LAG(amount)  OVER (ORDER BY sale_date) AS prev_sale,
       LEAD(amount) OVER (ORDER BY sale_date) AS next_sale
FROM transactions
ORDER BY sale_date;
