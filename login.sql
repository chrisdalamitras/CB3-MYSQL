CREATE DATABASE  IF NOT EXISTS `LoginExample`;

USE `LoginExample`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (                   
          `id` int(11) NOT NULL AUTO_INCREMENT,  
          `user_name` varchar(50) NOT NULL,      
          `user_password` varchar(50) NOT NULL,  
          PRIMARY KEY (`id`)                     
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into users (user_name,user_password) values ('admin','admin');
insert into users (user_name,user_password) values ('omega','lul');