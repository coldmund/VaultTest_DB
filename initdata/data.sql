CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;
CREATE TABLE `TestTable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `TestTable` WRITE;
INSERT INTO `TestTable` VALUES (1,'key1','value1');
UNLOCK TABLES;

GRANT ALL ON `testdb`.* TO 'user'@'%';
