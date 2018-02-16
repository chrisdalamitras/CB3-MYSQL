DROP DATABASE IF EXISTS CartWishlist;

CREATE DATABASE CartWishlist;

USE CartWishlist;

DROP TABLE IF EXISTS products;

DROP TABLE IF EXISTS cart;

DROP TABLE IF EXISTS wishlist;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(64) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `cart_quantity` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT FK_ProductId FOREIGN KEY (`product_id`) REFERENCES `products`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wishlist` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT FK_Product_Id FOREIGN KEY (`product_id`) REFERENCES `products`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `products` (product_name,product_quantity,product_price) values ('Potates',1000,3.30);
insert into `products` (product_name,product_quantity,product_price) values ('Tomatoes',1000,2.30);
insert into `products` (product_name,product_quantity,product_price) values ('Bananas',500,1.00);
insert into `products` (product_name,product_quantity,product_price) values ('Onions',200,1.50);
insert into `products` (product_name,product_quantity,product_price) values ('Oranges',800,0.50);

-- insert into `cart` (product_id,cart_quantity) values (1,100);
-- insert into `cart` (product_id,cart_quantity) values (2,200);