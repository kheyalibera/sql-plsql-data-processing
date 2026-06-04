-- Total transaction amount by city
SELECT 
    c.city,
    SUM(t.amount) AS total_transaction_amount
FROM customers c
JOIN transactions t
ON c.customer_id = t.customer_id
GROUP BY c.city
ORDER BY total_transaction_amount DESC;

-- Monthly transaction summary
SELECT 
    EXTRACT(MONTH FROM transaction_date) AS transaction_month,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY EXTRACT(MONTH FROM transaction_date)
ORDER BY transaction_month;
