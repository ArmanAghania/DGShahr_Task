-- Question 1
SELECT users.id, registeredDate, SUM(orders.sales) as total_sales
FROM users
JOIN orders
ON orders.userId = users.id
WHERE users.registeredDate >= '2023' and users.registeredDate < '2024'
GROUP BY users.id
ORDER BY total_sales desc
LIMIT 10;

-- Question 2
SELECT defaultOfferType, SUM(orders.quantity) as best_offers
FROM orders
JOIN providers
ON orders.providerId = providers.id
GROUP BY defaultOfferType
ORDER BY best_offers desc;

