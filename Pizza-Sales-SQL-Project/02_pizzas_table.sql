SELECT * FROM pizzahut.pizzas;
USE pizzahut;

CREATE TABLE orders(
order_id INT NOT NULL PRIMARY KEY,
order_date DATETIME NOT NULL,
order_time TIME NOT NULL
);

CREATE TABLE order_details(
order_detail_id INT NOT NULL PRIMARY KEY,
order_id INT NOT NULL,
pizza_id TEXT NOT NULL,
quantity INT NOT NULL
);