-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_sunset
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `guest_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `room_number` int NOT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `total_days` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `room_number` (`room_number`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`room_number`) REFERENCES `rooms` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(100) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `emp_age` int NOT NULL,
  `shift` enum('Morning','Evening','Night') NOT NULL,
  `shift_hour` int NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'John Doe','Male',35,'Morning',8,50000.00),(2,'Jane Smith','Female',28,'Evening',6,25000.00),(3,'Emily Johnson','Female',40,'Night',10,45000.00),(4,'Michael Brown','Male',50,'Morning',8,60000.00);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fdback`
--

DROP TABLE IF EXISTS `fdback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fdback` (
  `name` varchar(255) DEFAULT NULL,
  `feedback` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fdback`
--

LOCK TABLES `fdback` WRITE;
/*!40000 ALTER TABLE `fdback` DISABLE KEYS */;
/*!40000 ALTER TABLE `fdback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `dish_id` int NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`dish_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Idli','Veg.',150.00),(2,'Vada','Veg.',150.00),(3,'Masala Dosa','Veg.',200.00),(4,'Plain Dosa','Veg.',150.00),(5,'Chole Bhature','Veg.',160.00),(6,'Upma','Veg.',150.00),(7,'Masala Upma','Veg.',180.00),(8,'Puri','Veg.',140.00),(9,'Halwa','Veg.',150.00),(10,'Aloo Chop','Veg.',160.00),(11,'Plain Rice','Veg.',220.00),(12,'Fried Rice','Veg.',260.00),(13,'Biryani','Veg.',300.00),(14,'Paneer Biryani','Veg.',350.00),(15,'Special Biryani','Non-Veg.',450.00),(16,'Chicken Biryani','Non-Veg.',400.00),(17,'Roti','Veg.',100.00),(18,'Tandoori Roti','Veg.',130.00),(19,'Plain Naan','Veg.',100.00),(20,'Masala Naan','Veg.',120.00),(21,'Butter Naan','Veg.',130.00),(22,'Paratha','Veg.',100.00),(23,'Lachha Paratha','Veg.',140.00),(24,'Methi Paratha','Veg.',150.00),(25,'Paneer Butter Masala','Veg.',240.00),(26,'Paneer Khadai','Veg.',270.00),(27,'Mushroom Chilli','Veg.',260.00),(28,'Mushroom Curry','Veg.',250.00),(29,'Chicken Butter Masala','Non-Veg.',300.00),(30,'Chicken Tikka Masala','Non-Veg.',350.00),(31,'Mutton Curry','Non-Veg.',320.00),(32,'Mix Veg Curry','Veg.',280.00),(33,'Iced Tea','Beverage',180.00),(34,'Masala Cold Drink','Beverage',160.00),(35,'Lemonade','Beverage',140.00),(36,'Soda Pop','Beverage',150.00),(37,'Butterscotch Icecream','Beverage',190.00),(38,'Vanilla Icecream','Beverage',160.00),(39,'Chocolate Icecream','Beverage',180.00),(40,'Water Bottle','Beverage',100.00);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `dish_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `dish_id` (`dish_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `menu` (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_no` int NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `prices` decimal(10,2) NOT NULL,
  `status` enum('Available','Booked') DEFAULT 'Available',
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,'Deluxe',15000.00,'Available'),(102,'Deluxe',15000.00,'Available'),(201,'Double',25000.00,'Available'),(202,'Double',25000.00,'Booked'),(301,'King',40000.00,'Available'),(302,'King',40000.00,'Booked'),(401,'Balcony',45000.00,'Available'),(402,'Balcony',45000.00,'Available'),(501,'Cabana',90000.00,'Available');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` enum('admin','customer') DEFAULT 'customer',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin123','admin'),(2,'customer1','cust123','customer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-11 21:01:12
