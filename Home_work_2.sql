
CREATE TABLE sales (
	id SERIAL PRIMARY KEY, 
	order_date DATE NOT NULL,
	count_product INT
);
INSERT INTO `sales` (order_date, count_product)
VALUES 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);
SELECT 
	id AS 'Номер продажи',
	CASE 
		WHEN count_product < 100 THEN 'Маленький заказ'
		WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
		WHEN count_product > 300 THEN 'Большой заказ'
		ELSE 'Не определено'
	END AS 'Тип заказа'	
FROM sales;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	employee_id VARCHAR(10) NOT NULL,
	amount FLOAT,
	order_status VARCHAR(40)
    );
INSERT INTO `orders` (employee_id, amount, order_status)
VALUES
('e03', 15.0, 'open'),
('e01',25.5, 'open'),
('e05', 100.70, 'closed'),
('e02', 22.18, 'open'),
('e04', 9.50, 'cancelled');
SELECT 
	id AS 'ID',
	CASE order_status 
		WHEN 'open' THEN 'Order is in open state'
		WHEN 'closed' THEN 'Order is closed'
		WHEN 'cancelled' THEN 'Order is cancelled'
		ELSE 'Не указана'
	END AS 'full_order_status'	
FROM orders;