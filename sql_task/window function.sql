SELECT destination, amount_lei,
       RANK() OVER (ORDER BY amount_lei DESC) AS pozitie
FROM allocations;







