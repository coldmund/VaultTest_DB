CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;
CREATE TABLE `test_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cle` varchar(100) NOT NULL,
  `prix` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `test_table` WRITE;
INSERT INTO `test_table` VALUES (1,'key1','value1');
UNLOCK TABLES;

GRANT ALL ON `testdb`.* TO 'user'@'%';
