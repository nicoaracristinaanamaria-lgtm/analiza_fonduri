SELECT c.name,
       SUM(a.amount_lei) * 100.0 / (SELECT SUM(amount_lei) FROM allocations) AS procent
FROM allocations a
JOIN categories c ON a.category_id = c.id
GROUP BY c.name;






