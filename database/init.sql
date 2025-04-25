drop table if exists shopdb;

CREATE TABLE IF NOT EXISTS product_tb (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  price INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_tb (name, price) VALUES ('Banana', 2000);
INSERT INTO product_tb (name, price) VALUES ('apple', 1000);