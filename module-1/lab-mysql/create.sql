# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.21)
# Database: lab_mysql
# Generation Time: 2020-11-04 18:16:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `vin` int NOT NULL,
  `manufacturer` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `year` int DEFAULT NULL,
  `invoices` int DEFAULT NULL,
  `salesperson` int DEFAULT NULL,
  `customers` int DEFAULT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`vin`),
  KEY `customers` (`customers`),
  KEY `salesperson` (`salesperson`),
  KEY `invoices` (`invoices`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`invoices`) REFERENCES `invoices` (`invoice_number`) ON DELETE SET NULL,
  CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`salesperson`) REFERENCES `salesperson` (`staff_id`) ON DELETE SET NULL,
  CONSTRAINT `cars_ibfk_3` FOREIGN KEY (`customers`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `cars_ibfk_4` FOREIGN KEY (`customers`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `cars_ibfk_5` FOREIGN KEY (`salesperson`) REFERENCES `salesperson` (`staff_id`) ON DELETE SET NULL,
  CONSTRAINT `cars_ibfk_6` FOREIGN KEY (`invoices`) REFERENCES `invoices` (`invoice_number`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state_province` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `salesperson` varchar(30) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table invoices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `invoice_number` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `car` varchar(20) NOT NULL,
  `customer` varchar(20) NOT NULL,
  `salesperson` varchar(20) NOT NULL,
  PRIMARY KEY (`invoice_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table salesperson
# ------------------------------------------------------------

DROP TABLE IF EXISTS `salesperson`;

CREATE TABLE `salesperson` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `store` varchar(30) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;