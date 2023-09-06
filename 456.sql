CREATE DATABASE lesson_2;
SHOW DATABASES;
USE lesson_2;
CREATE TABLE buyer
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	date_birt DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	mobile_phone VARCHAR(20) 
);
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	buyer_id INT,
	amount INT,
	count_order INT,
	manufacter VARCHAR(45),
	FOREIGN KEY (buyer_id)
	REFERENCES Buyer(id)
);
INSERT buyer (date_birt, first_name,last_name,mobile_phone)
VALUES
	("2023-01-01", "Михаил", "Меркушов", "+7-999-888-77-66"), -- id = 1
	("2022-12-31", "Сергей", "Сергеев", "60-70-80"), -- id = 2
	("2022-12-30", "Том", "Круз", "80-70-80"), -- id = 3
	("2022-01-02", "Филл", "Поляков", "+7-999-888-77-55"); -- id = 4
INSERT orders (buyer_id, amount,count_order, manufacter)
VALUES
	(1, 1000, 3, "Ягодки"),-- Первый заказ из "Покупатели" по id = 1 (Меркушов Михал)
	(1, 400 , 2, "Амазон"),-- Второй заказ из "Покупатели" по id = 2 (Меркушов Михал)
	(2, 1200 , 5, "Амазон"),
	(3, 2000 , 1, "Ягодки"),
	(4, 5000 , 4, "Ягодки");
SELECT * FROM orders;