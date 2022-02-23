CREATE DATABASE IF NOT EXISTS testdb2;

USE testdb2;
CREATE TABLE `test_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `test_table` WRITE;
INSERT INTO `test_table` VALUES (1,'hong','who are you?');
UNLOCK TABLES;

GRANT ALL ON `testdb2`.* TO 'user'@'%';
