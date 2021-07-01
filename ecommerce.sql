
-- creating different tables
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  price INTEGER
);

CREATE TABLE cart (
  cart_id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(user_id),
  product_id INTEGER REFERENCES products(product_id),
  quantity INT
);

-- adding users 
INSERT INTO users (name, email)
	VALUES('CARTER', 1213);
  
INSERT INTO users (name, email)
	VALUES('Andrea', 987564);
  
INSERT INTO users (name, email)
	VALUES('john', '12396&');

-- adding products
INSERT INTO products (name, price)
	VALUES('Tomato', 1);

INSERT INTO products (name, price)
	VALUES('Burger', 7);
  
INSERT INTO products (name, price)
	VALUES('Pizza', 6);

-- adding things to the cart
INSERT INTO cart(user_id, product_id, quantity)
	VALUES(1, 1, 3);
  
INSERT INTO cart(user_id, product_id, quantity)
	VALUES(1, 2, 8);
  
INSERT INTO cart(user_id, product_id, quantity)
	VALUES(2, 3, 2);
  
INSERT INTO cart(user_id, product_id, quantity)
	VALUES(2, 1, 5);
  
INSERT INTO cart(user_id, product_id, quantity)
	VALUES(3, 3, 9);
  
INSERT INTO cart(user_id, product_id, quantity)
	VALUES(3, 2, 10);


-- Get all products in your first user's cart
SELECT * FROM cart
WHERE user_id = 1;

-- Get products in all carts with all the users’ information
SELECT * FROM cart;

-- Get the total cost of an order (sum the price of all products on a cart).
SELECT SUM(quantity * price)
FROM cart
JOIN products
ON cart.product_id = products.product_id
WHERE user_id = 1;

-- Update the quantity of a product in a user’s cart where the user’s id is 2
UPDATE cart
SET quantity = 50
WHERE user_id = 2 AND product_id = 1;