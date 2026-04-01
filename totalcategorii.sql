SELECT c.name, SUM(a.amount_lei) AS total
FROM allocations a
JOIN categories c ON a.category_id = c.id
GROUP BY c.name
ORDER BY total DESC;




