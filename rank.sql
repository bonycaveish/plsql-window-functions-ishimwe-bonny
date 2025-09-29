SELECT transaction_id,
       amount,
       ROW_NUMBER()  OVER (ORDER BY amount DESC)  AS row_num,
       RANK()        OVER (ORDER BY amount DESC)  AS rank_num,
       DENSE_RANK()  OVER (ORDER BY amount DESC)  AS dense_rank_num,
       PERCENT_RANK()OVER (ORDER BY amount DESC)  AS percent_rank_num
FROM transactions;
