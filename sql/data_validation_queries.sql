-- Check duplicate customer records
SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Check missing customer names
SELECT *
FROM customers
WHERE customer_name IS NULL;

-- Check transactions without matching customers
SELECT t.*
FROM transactions t
LEFT JOIN customers c
ON t.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
