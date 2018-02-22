-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	10.2.13-MariaDB-10.2.13+maria~jessie

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(24) DEFAULT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_latitude_IDX` (`latitude`,`longitude`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'WALGREENS','3696 SW TOPEKA BLVD','TOPEKA','KS','66611',39.00142300,-95.68695000),(2,'KMART PHARMACY','1740 SW WANAMAKER ROAD','TOPEKA','KS','66604',39.03504000,-95.75870000),(3,'CONTINENTAL PHARMACY LLC','821 SW 6TH AVE','TOPEKA','KS','66603',39.05433000,-95.68453000),(4,'STORMONT-VAIL RETAIL PHARMACY','2252 SW 10TH AVE.','TOPEKA','KS','66604',39.05167000,-95.70534000),(5,'DILLON PHARMACY','2010 SE 29TH ST','TOPEKA','KS','66605',39.01638400,-95.65065000),(6,'WAL-MART PHARMACY','1501 S.W. WANAMAKER ROAD','TOPEKA','KS','66604',39.03955000,-95.76459000),(7,'KING PHARMACY','4033 SW 10TH AVE','TOPEKA','KS','66604',39.05121000,-95.72700000),(8,'HY-VEE PHARMACY','12122 STATE LINE RD','LEAWOOD','KS','66209',38.90775300,-94.60801000),(9,'JAYHAWK PHARMACY AND PATIENT SUPPLY','2860 SW MISSION WOODS DR','TOPEKA','KS','66614',39.01505300,-95.77866000),(10,'PRICE CHOPPER PHARMACY','3700 W 95TH ST','LEAWOOD','KS','66206',38.95792000,-94.62881500),(11,'AUBURN PHARMACY','13351 MISSION RD','LEAWOOD','KS','66209',38.88534500,-94.62800000),(12,'CVS PHARMACY','5001 WEST 135 ST','LEAWOOD','KS','66224',38.88323000,-94.64518000),(13,'SAMS PHARMACY','1401 SW WANAMAKER ROAD','TOPEKA','KS','66604',39.04160300,-95.76462600),(14,'CVS PHARMACY','2835 SW WANAMAKER RD','TOPEKA','KS','66614',39.01550300,-95.76434000),(15,'HY-VEE PHARMACY','2951 SW WANAMAKER RD','TOPEKA','KS','66614',39.01215700,-95.76394000),(16,'TALLGRASS PHARMACY','601 SW CORPORATE VIEW','TOPEKA','KS','66615',39.05716000,-95.76692000),(17,'HUNTERS RIDGE PHARMACY','3405 NW HUNTERS RIDGE TER STE 200','TOPEKA','KS','66618',39.12984500,-95.71265400),(18,'ASSURED PHARMACY  ','11100 ASH ST STE 200','LEAWOOD','KS','66211',38.92663200,-94.64744000),(19,'WALGREENS','4701 TOWN CENTER DR','LEAWOOD','KS','66211',38.91619000,-94.64036600),(20,'PRICE CHOPPER PHARMACY','1100 SOUTH 7 HWY','BLUE SPRINGS','MO','64015',39.02931000,-94.27175000),(21,'CVS PHARMACY','1901 WEST KANSAS STREET','LIBERTY','MO','64068',39.24385000,-94.44961000),(22,'MARRS PHARMACY','205 RD MIZE ROAD','BLUE SPRINGS','MO','64014',39.02353000,-94.26060500),(23,'WAL-MART PHARMACY','600 NE CORONADO DRIVE','BLUE SPRINGS','MO','64014',39.02419300,-94.25503000),(24,'WAL-MART PHARMACY','10300 E HWY 350','RAYTOWN','MO','64133',38.98376500,-94.45930500),(25,'HY-VEE PHARMACY','9400 E. 350 HIGHWAY','RAYTOWN','MO','64133',38.99300000,-94.47083000),(26,'HY-VEE PHARMACY','625 W 40 HWY','BLUE SPRINGS','MO','64014',39.01070400,-94.27108000),(27,'HY-VEE PHARMACY','109 NORTH BLUE JAY DRIVE','LIBERTY','MO','64068',39.24575800,-94.44702000),(28,'WALGREENS','1701 NW HIGHWAY 7','BLUE SPRINGS','MO','64015',39.03754800,-94.27153000),(29,'WALGREENS','9300 E GREGORY BLVD','RAYTOWN','MO','64133',38.99534200,-94.47340000),(30,'WALGREENS','1191 W KANSAS AVE','LIBERTY','MO','64068',39.24387000,-94.44186400);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'laravel'
--
/*!50003 DROP PROCEDURE IF EXISTS `haversine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `haversine`(
    IN originalLat DECIMAL(10, 8),
    IN originalLon DECIMAL(11, 8)
)
BEGIN
    SELECT
    	id,
    name,
    address,
    state,
    city,
    zip,
    latitude,
    longitude,
    	(
    		3959 * acos(
    			cos(
    				radians(originalLat)
    			)* cos(
    				radians(latitude)
    			)* cos(
    				radians(longitude) - radians(originalLon)
    			)+ sin(
    				radians(originalLat)
    			)* sin(
    				radians(latitude)
    			)
    		)
    	) AS distance
    FROM
    	locations
    ORDER BY
    	distance ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `haversine_limit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `haversine_limit`(
    IN originalLat DECIMAL(10, 8),
    IN originalLon DECIMAL(11, 8),
    IN _limit INT
)
BEGIN
    SET _limit = IFNULL(_limit, 1);

    SELECT
    	id,
    name,
    address,
    state,
    city,
    zip,
    latitude,
    longitude,
    	(
    		3959 * acos(
    			cos(
    				radians(originalLat)
    			)* cos(
    				radians(latitude)
    			)* cos(
    				radians(longitude) - radians(originalLon)
    			)+ sin(
    				radians(originalLat)
    			)* sin(
    				radians(latitude)
    			)
    		)
    	) AS distance
    FROM
    	locations
    ORDER BY
    	distance ASC
    LIMIT
        0, _limit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-22  3:41:19
