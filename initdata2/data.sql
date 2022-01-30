CREATE DATABASE IF NOT EXISTS vaultdb;

USE vaultdb;
CREATE TABLE `vault_kv_store` (
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

GRANT ALL ON `vaultdb`.* TO 'user'@'%';
