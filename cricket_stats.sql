-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: cricket_stats
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `batting_stats`
--

DROP TABLE IF EXISTS `batting_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batting_stats` (
  `match_id` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `runs_scored` int DEFAULT NULL,
  `balls_faced` int DEFAULT NULL,
  `fours` int DEFAULT NULL,
  `sixes` int DEFAULT NULL,
  `strike_rate` decimal(5,2) DEFAULT NULL,
  KEY `player_id` (`player_id`),
  CONSTRAINT `batting_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batting_stats`
--

LOCK TABLES `batting_stats` WRITE;
/*!40000 ALTER TABLE `batting_stats` DISABLE KEYS */;
INSERT INTO `batting_stats` VALUES (1,1,75,60,8,3,125.00),(2,1,45,50,4,1,90.00),(3,2,82,70,9,2,117.14),(4,2,120,95,11,4,126.32),(5,3,65,55,6,2,118.18),(6,4,40,30,5,1,133.33),(7,5,55,35,6,2,157.14),(8,6,25,20,2,1,125.00),(9,7,30,25,3,0,120.00),(10,11,12,8,1,1,150.00);
/*!40000 ALTER TABLE `batting_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bowling_stats`
--

DROP TABLE IF EXISTS `bowling_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bowling_stats` (
  `match_id` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `overs` decimal(3,1) DEFAULT NULL,
  `maidens` int DEFAULT NULL,
  `runs_conceded` int DEFAULT NULL,
  `wickets` int DEFAULT NULL,
  `economy` decimal(4,2) DEFAULT NULL,
  KEY `player_id` (`player_id`),
  CONSTRAINT `bowling_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bowling_stats`
--

LOCK TABLES `bowling_stats` WRITE;
/*!40000 ALTER TABLE `bowling_stats` DISABLE KEYS */;
INSERT INTO `bowling_stats` VALUES (1,8,10.0,1,42,3,4.20),(2,9,8.0,0,36,2,4.50),(3,10,9.0,1,30,4,3.33),(4,6,6.0,0,40,1,6.67),(5,5,4.0,0,28,1,7.00),(6,8,10.0,2,35,4,3.50),(7,9,9.0,1,38,3,4.22),(8,10,8.0,0,34,2,4.25),(9,11,10.0,1,39,5,3.90),(10,11,10.0,2,42,4,4.20);
/*!40000 ALTER TABLE `bowling_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fielding_stats`
--

DROP TABLE IF EXISTS `fielding_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fielding_stats` (
  `match_id` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `catches` int DEFAULT NULL,
  `run_outs` int DEFAULT NULL,
  `stumpings` int DEFAULT NULL,
  KEY `player_id` (`player_id`),
  CONSTRAINT `fielding_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fielding_stats`
--

LOCK TABLES `fielding_stats` WRITE;
/*!40000 ALTER TABLE `fielding_stats` DISABLE KEYS */;
INSERT INTO `fielding_stats` VALUES (1,1,1,0,0),(2,2,2,0,0),(3,3,1,0,0),(4,4,1,1,0),(5,5,0,1,0),(6,6,2,0,0),(7,7,1,0,1),(8,8,0,0,0),(9,9,1,0,0),(10,11,1,0,0);
/*!40000 ALTER TABLE `fielding_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int NOT NULL,
  `player_name` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `team` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Rohit Sharma','Batsman','India'),(2,'Virat Kohli','Batsman','India'),(3,'Shubman Gill','Batsman','India'),(4,'Suryakumar Yadav','Batsman','India'),(5,'Hardik Pandya','All-Rounder','India'),(6,'Ravindra Jadeja','All-Rounder','India'),(7,'KL Rahul','Wicket-Keeper','India'),(8,'Jasprit Bumrah','Bowler','India'),(9,'Mohammed Siraj','Bowler','India'),(10,'Kuldeep Yadav','Bowler','India'),(11,'Sai Vamsi Krishna','Bowler','India');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-03 11:22:12
