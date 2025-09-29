SELECT sales_month,
       monthly_total,
       ROUND(
         AVG(monthly_total) OVER (
            ORDER BY sales_month
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
         ), 2
       ) AS three_month_moving_avg
FROM monthly_sales
ORDER BY sales_month;
