-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: crudd
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_empleado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Felipe Peña'),(2,'Gustavo Llano'),(3,'Carolina Tovar'),(4,'Andres Beltran'),(5,'Carlos Rojas'),(6,'Ana Narvaez'),(7,'Stiven Vanegas'),(8,'Astrid Pereira'),(9,'Angelo Rodriguez'),(10,'Brayan Castellanos');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_proyecto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (1,'ICBF'),(2,'SCJ'),(3,'MinVivienda'),(4,'MinCultura');
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrohoras`
--

DROP TABLE IF EXISTS `registrohoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrohoras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empleado_id` int DEFAULT NULL,
  `proyecto_id` int DEFAULT NULL,
  `requerimiento_id` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` text,
  `hora` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proyecto_id` (`proyecto_id`),
  KEY `requerimiento_id` (`requerimiento_id`),
  CONSTRAINT `registrohoras_ibfk_1` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`),
  CONSTRAINT `registrohoras_ibfk_2` FOREIGN KEY (`requerimiento_id`) REFERENCES `requerimientos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrohoras`
--

LOCK TABLES `registrohoras` WRITE;
/*!40000 ALTER TABLE `registrohoras` DISABLE KEYS */;
INSERT INTO `registrohoras` VALUES (30,1,1,2,'2023-08-28','fghj',33),(31,2,2,6,'2023-08-28','hhhhhhh',7),(32,2,1,2,'2023-08-16','iouhytyrderswasdefrgtyiujiouytrdeswaqwsdrftgyhujiko',6),(33,2,1,2,'2023-08-15','lkjhgfdxsdfghjk',5),(34,4,1,1,'2023-08-25','yyyyyyyyyyyyy',2.5),(35,3,1,2,'2023-08-28','yyyyyyyyyyyyyyyy',3.2),(36,2,1,2,'2023-08-15','eeeeeeeeeeeeee',4.5),(37,2,2,6,'2023-08-03','uuuuuuuuuuuuu',4.7),(38,7,1,2,'2023-08-15','rrrrrrrrr',2.5),(39,8,1,2,'2023-08-24','rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',3.6),(40,2,2,6,'2023-08-03','uuuuuuuuuuuuu',4.7),(41,4,1,2,'2023-08-09','rueyeyrtue',3.4),(42,2,3,7,'2023-08-22','pruebaaa',6.5),(43,4,4,11,'2023-08-16','jjjjjjjjjj',8),(44,2,1,2,'2023-08-29','iiiiiiiiiiiiiiiiiii',3.3),(45,3,1,2,'2023-08-02','yuyuyuyuyu',1.5),(46,3,1,2,'2023-08-09','ksjhaskjhdasjhf',1.2),(47,2,1,2,'2023-08-16','dsfjsdkfskjhfkjsahfj',7),(48,2,1,2,'2023-08-09','hhhhhhhhh',3.5),(49,2,1,2,'2023-08-29','rt',2),(50,2,3,7,'2023-08-29','khjgfhjkj',34),(51,2,1,2,'2023-08-29','jhgfghjk',4.4),(52,1,3,7,'2023-08-01','JHGFGHJ',876),(53,3,4,11,'2023-08-17','lkjhgfds',876),(54,3,4,11,'2023-08-23','jhghgf',76),(55,1,4,11,'2023-08-09','kkkkkkkkk',87),(56,2,4,11,'2023-08-09','kjhgf',77),(57,2,4,11,'2023-08-16','jhkj',7),(58,2,2,6,'2023-08-09','dfghj',7),(59,3,4,11,'2023-08-16','kjdskjfhs',56),(60,3,1,2,'2023-08-02','uuuuuuuuuuuuu',8),(61,4,4,11,'2023-08-16','yyyy',8),(62,1,2,6,'2023-08-09','kjhjhf',45),(63,4,2,3,'2023-08-30','yuyuyu',6),(64,6,1,1,'2023-08-17','hjkjhgfghjk',88);
/*!40000 ALTER TABLE `registrohoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimientos`
--

DROP TABLE IF EXISTS `requerimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requerimientos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `proyecto_id` int DEFAULT NULL,
  `nombre_requerimiento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proyecto_id` (`proyecto_id`),
  CONSTRAINT `requerimientos_ibfk_1` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimientos`
--

LOCK TABLES `requerimientos` WRITE;
/*!40000 ALTER TABLE `requerimientos` DISABLE KEYS */;
INSERT INTO `requerimientos` VALUES (1,1,'Horas de soporte ICBF'),(2,1,'Indicador PA-131'),(3,2,'Horas de soporte SCJ'),(4,3,'Soporte'),(6,2,'Reporte de uso'),(7,3,'GESDOC'),(8,3,'Portal Web MinVivienda'),(11,4,'Soporte MinCultura');
/*!40000 ALTER TABLE `requerimientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-30 19:49:19
