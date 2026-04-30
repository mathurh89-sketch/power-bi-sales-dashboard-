CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product VARCHAR(50),
    city VARCHAR(50),
    quantity INT
);
INSERT INTO Sales (product, city, quantity) VALUES
('T-Shirt', 'Jaipur', 120),
('Cap', 'Jaipur', 80),
('T-Shirt', 'Delhi', 150),
('Cap', 'Jaipur', 200),
('T-Shirt', 'Jaipur', 90);
SELECT product, SUM(quantity) AS total_quantity
FROM Sales
GROUP BY product
HAVING SUM(quantity) > 150;
