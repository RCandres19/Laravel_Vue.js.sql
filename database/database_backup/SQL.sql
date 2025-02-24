-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: CultivaSena
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `CULTIVOS`
--

DROP TABLE IF EXISTS `CULTIVOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CULTIVOS` (
  `id_cultivos` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cafe` int unsigned NOT NULL,
  `id_mora` int unsigned NOT NULL,
  `nombre_cultivo` varchar(100) NOT NULL,
  `tip_cultivo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cultivos`),
  KEY `fk_CULTIVOS_1_idx` (`id_cafe`),
  KEY `fk_CULTIVOS_2_idx` (`id_mora`),
  CONSTRAINT `fk_CULTIVOS_1` FOREIGN KEY (`id_cafe`) REFERENCES `cafe` (`id_cafe`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_CULTIVOS_2` FOREIGN KEY (`id_mora`) REFERENCES `MORA` (`id_mora`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CULTIVOS`
--

LOCK TABLES `CULTIVOS` WRITE;
/*!40000 ALTER TABLE `CULTIVOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CULTIVOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ENFERMEDADES`
--

DROP TABLE IF EXISTS `ENFERMEDADES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ENFERMEDADES` (
  `id_enfermedades` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nombre_cinetifico` varchar(100) NOT NULL,
  `reino` varchar(100) NOT NULL,
  `filo` varchar(100) NOT NULL,
  `clase` varchar(100) NOT NULL,
  `subclase` varchar(100) NOT NULL,
  `super_orden` varchar(100) NOT NULL,
  `orden` varchar(100) NOT NULL,
  `epocas_ataque` varchar(100) NOT NULL,
  `clima_afecta` varchar(100) NOT NULL,
  `como_ataca` varchar(100) NOT NULL,
  `orden_ataque` varchar(100) NOT NULL,
  `donde_propaga` varchar(100) NOT NULL,
  `como_contrarrestar` varchar(100) NOT NULL,
  `clima_no_afecta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_enfermedades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ENFERMEDADES`
--

LOCK TABLES `ENFERMEDADES` WRITE;
/*!40000 ALTER TABLE `ENFERMEDADES` DISABLE KEYS */;
/*!40000 ALTER TABLE `ENFERMEDADES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ESTADISTICAS`
--

DROP TABLE IF EXISTS `ESTADISTICAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ESTADISTICAS` (
  `id_estadisticas` int unsigned NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `libra` varchar(100) NOT NULL,
  `peso_libra` varchar(100) NOT NULL,
  `kilo` varchar(100) NOT NULL,
  `precio_kilo` varchar(100) NOT NULL,
  `saco` varchar(100) NOT NULL,
  `precio_saco` varchar(100) NOT NULL,
  PRIMARY KEY (`id_estadisticas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ESTADISTICAS`
--

LOCK TABLES `ESTADISTICAS` WRITE;
/*!40000 ALTER TABLE `ESTADISTICAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ESTADISTICAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FINCA`
--

DROP TABLE IF EXISTS `FINCA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FINCA` (
  `id_finca` int unsigned NOT NULL AUTO_INCREMENT,
  `id_informacion` int unsigned NOT NULL,
  `id_cultivos` int unsigned NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_finca`),
  KEY `fk_FINCA_1_idx` (`id_cultivos`),
  KEY `fk_FINCA_2_idx` (`id_informacion`),
  CONSTRAINT `fk_FINCA_1` FOREIGN KEY (`id_cultivos`) REFERENCES `CULTIVOS` (`id_cultivos`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_FINCA_2` FOREIGN KEY (`id_informacion`) REFERENCES `INFORMCION` (`id_informacion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FINCA`
--

LOCK TABLES `FINCA` WRITE;
/*!40000 ALTER TABLE `FINCA` DISABLE KEYS */;
/*!40000 ALTER TABLE `FINCA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HONGO`
--

DROP TABLE IF EXISTS `HONGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HONGO` (
  `id_hongo` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nombre_cientifico` varchar(100) NOT NULL,
  `reino` varchar(100) NOT NULL,
  `filo` varchar(100) NOT NULL,
  `clase` varchar(100) NOT NULL,
  `subclase` varchar(100) NOT NULL,
  `super_orden` varchar(100) NOT NULL,
  `orden` varchar(100) NOT NULL,
  `familias` varchar(100) NOT NULL,
  `epoca_ataque` varchar(100) NOT NULL,
  `clima_afecta` varchar(100) NOT NULL,
  `como_ataca` varchar(100) NOT NULL,
  `orden_ataque` varchar(100) NOT NULL,
  `donde_propaga` varchar(100) NOT NULL,
  `como_contrarrestar` varchar(100) NOT NULL,
  `clima_no_afecta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hongo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HONGO`
--

LOCK TABLES `HONGO` WRITE;
/*!40000 ALTER TABLE `HONGO` DISABLE KEYS */;
/*!40000 ALTER TABLE `HONGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INFORMCION`
--

DROP TABLE IF EXISTS `INFORMCION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INFORMCION` (
  `id_informacion` int unsigned NOT NULL AUTO_INCREMENT,
  `id_registros` int unsigned NOT NULL,
  `id_estadisticas` int unsigned NOT NULL,
  `nombre_finca` varchar(100) NOT NULL,
  `cultivos` varchar(100) NOT NULL,
  `especie` varchar(100) NOT NULL,
  `hectareas` int unsigned NOT NULL,
  `tip_clima` varchar(100) NOT NULL,
  `suelo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_informacion`),
  KEY `fk_INFORMCION_1_idx` (`id_estadisticas`),
  KEY `fk_INFORMCION_2_idx` (`id_registros`),
  CONSTRAINT `fk_INFORMCION_1` FOREIGN KEY (`id_estadisticas`) REFERENCES `ESTADISTICAS` (`id_estadisticas`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_INFORMCION_2` FOREIGN KEY (`id_registros`) REFERENCES `REGISTROS` (`id_registros`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INFORMCION`
--

LOCK TABLES `INFORMCION` WRITE;
/*!40000 ALTER TABLE `INFORMCION` DISABLE KEYS */;
/*!40000 ALTER TABLE `INFORMCION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MORA`
--

DROP TABLE IF EXISTS `MORA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MORA` (
  `id_mora` int unsigned NOT NULL AUTO_INCREMENT,
  `id_patogeno` int unsigned NOT NULL,
  `especies` varchar(100) NOT NULL,
  `variedades` varchar(100) NOT NULL,
  `propiedades` varchar(100) NOT NULL,
  `caracteristicas` varchar(100) NOT NULL,
  PRIMARY KEY (`id_mora`),
  KEY `fk_MORA_1_idx` (`id_patogeno`),
  CONSTRAINT `fk_MORA_1` FOREIGN KEY (`id_patogeno`) REFERENCES `PATOGENO` (`id_patogeno`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MORA`
--

LOCK TABLES `MORA` WRITE;
/*!40000 ALTER TABLE `MORA` DISABLE KEYS */;
/*!40000 ALTER TABLE `MORA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PATOGENO`
--

DROP TABLE IF EXISTS `PATOGENO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATOGENO` (
  `id_patogeno` int unsigned NOT NULL AUTO_INCREMENT,
  `id_hongo` int unsigned NOT NULL,
  `id_virus` int unsigned NOT NULL,
  `id_enfermedades` int unsigned NOT NULL,
  `id_plaga` int unsigned NOT NULL,
  PRIMARY KEY (`id_patogeno`),
  KEY `fk_PATOGENO_1_idx` (`id_enfermedades`),
  KEY `fk_PATOGENO_2_idx` (`id_hongo`),
  KEY `fk_PATOGENO_3_idx` (`id_plaga`),
  KEY `fk_PATOGENO_4_idx` (`id_virus`),
  CONSTRAINT `fk_PATOGENO_1` FOREIGN KEY (`id_enfermedades`) REFERENCES `ENFERMEDADES` (`id_enfermedades`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_PATOGENO_2` FOREIGN KEY (`id_hongo`) REFERENCES `HONGO` (`id_hongo`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_PATOGENO_3` FOREIGN KEY (`id_plaga`) REFERENCES `PLAGA` (`id_plaga`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_PATOGENO_4` FOREIGN KEY (`id_virus`) REFERENCES `VIRUS` (`id_virus`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATOGENO`
--

LOCK TABLES `PATOGENO` WRITE;
/*!40000 ALTER TABLE `PATOGENO` DISABLE KEYS */;
/*!40000 ALTER TABLE `PATOGENO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAGA`
--

DROP TABLE IF EXISTS `PLAGA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLAGA` (
  `id_plaga` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `nombre_cientifico` varchar(100) NOT NULL,
  `reino` varchar(100) NOT NULL,
  `filo` varchar(100) NOT NULL,
  `clase` varchar(100) NOT NULL,
  `subclase` varchar(100) NOT NULL,
  `super_orden` varchar(100) NOT NULL,
  `orden` varchar(100) NOT NULL,
  `familias` varchar(100) NOT NULL,
  `epoca_ataque` varchar(100) NOT NULL,
  `clima_afecta` varchar(100) NOT NULL,
  `como_ataca` varchar(100) NOT NULL,
  `orden_ataque` varchar(100) NOT NULL,
  `donde_propaga` varchar(100) NOT NULL,
  `como_contrarrestar` varchar(100) NOT NULL,
  `clima_no_afecta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_plaga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAGA`
--

LOCK TABLES `PLAGA` WRITE;
/*!40000 ALTER TABLE `PLAGA` DISABLE KEYS */;
/*!40000 ALTER TABLE `PLAGA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTROS`
--

DROP TABLE IF EXISTS `REGISTROS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REGISTROS` (
  `id_registros` int unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `activi_realizada` varchar(100) NOT NULL,
  `cultivo` varchar(100) NOT NULL,
  `variedad` varchar(100) NOT NULL,
  `surco` varchar(100) NOT NULL,
  `lote` varchar(100) NOT NULL,
  `contratos` varchar(100) NOT NULL,
  `cultivos` varchar(100) NOT NULL,
  `costos` int unsigned NOT NULL,
  `vendido` int unsigned NOT NULL,
  PRIMARY KEY (`id_registros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTROS`
--

LOCK TABLES `REGISTROS` WRITE;
/*!40000 ALTER TABLE `REGISTROS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REGISTROS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USUARIO`
--

DROP TABLE IF EXISTS `USUARIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USUARIO` (
  `id_usuario` int unsigned NOT NULL AUTO_INCREMENT,
  `id_registro` int unsigned NOT NULL,
  `id_finca` int unsigned NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `tipo_documento` set('cc','ti','ppt') NOT NULL,
  `documento` char(100) NOT NULL,
  `telefono` varchar(100) NOT NULL COMMENT '10',
  `correo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_USUARIO_1_idx` (`id_finca`),
  KEY `fk_USUARIO_2_idx` (`id_registro`),
  CONSTRAINT `fk_USUARIO_1` FOREIGN KEY (`id_finca`) REFERENCES `FINCA` (`id_finca`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_USUARIO_2` FOREIGN KEY (`id_registro`) REFERENCES `REGISTROS` (`id_registros`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USUARIO`
--

LOCK TABLES `USUARIO` WRITE;
/*!40000 ALTER TABLE `USUARIO` DISABLE KEYS */;
/*!40000 ALTER TABLE `USUARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VIRUS`
--

DROP TABLE IF EXISTS `VIRUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VIRUS` (
  `id_virus` int unsigned NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nombre_cientifico` varchar(100) NOT NULL,
  `reino` varchar(100) NOT NULL,
  `filo` varchar(100) NOT NULL,
  `clase` varchar(100) NOT NULL,
  `subclase` varchar(100) NOT NULL,
  `super_orden` varchar(100) NOT NULL,
  `familias` varchar(100) NOT NULL,
  `orden` varchar(100) NOT NULL COMMENT '100\n',
  `epocas_ataque` varchar(100) NOT NULL,
  `clima_afecta` varchar(100) NOT NULL,
  `como_ataca` varchar(100) NOT NULL,
  `orden_ataque` varchar(100) NOT NULL,
  `donde_propaga` varchar(100) NOT NULL,
  `como_contrarrestar` varchar(100) NOT NULL,
  `clima_no_afecta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_virus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VIRUS`
--

LOCK TABLES `VIRUS` WRITE;
/*!40000 ALTER TABLE `VIRUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `VIRUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafe`
--

DROP TABLE IF EXISTS `cafe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafe` (
  `id_cafe` int unsigned NOT NULL AUTO_INCREMENT,
  `id_patogeno` int unsigned NOT NULL,
  `especies` varchar(45) NOT NULL,
  `variedades` varchar(45) NOT NULL,
  `propiedades` text NOT NULL,
  `caracteristica` text NOT NULL,
  PRIMARY KEY (`id_cafe`),
  KEY `fk_cafe_1_idx` (`id_patogeno`),
  CONSTRAINT `fk_cafe_1` FOREIGN KEY (`id_patogeno`) REFERENCES `PATOGENO` (`id_patogeno`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafe`
--

LOCK TABLES `cafe` WRITE;
/*!40000 ALTER TABLE `cafe` DISABLE KEYS */;
/*!40000 ALTER TABLE `cafe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `items_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Santa','Jimenez','Sj189@gmail.com','3183229456','2025-02-20 20:19:16','2025-02-20 20:19:16'),(2,'miguel jazz','gutierrez lenovo','Lmiguel2745@gmail.com','3161398552','2025-02-20 20:23:17','2025-02-20 20:23:17'),(3,'martha josefina','polanco aletria','Almarthat648@gmail.com','3145642781','2025-02-20 20:24:11','2025-02-20 20:24:11'),(4,'Johan Andres','Muñoz warzon','War12985@gmail.com','3005689473','2025-02-20 21:03:12','2025-02-20 21:03:12'),(5,'Rolex casio','ThinkCentre','Throl354@gamil.com','3165789487','2025-02-20 21:04:41','2025-02-20 21:04:41'),(6,'Git hub','gitinores','Git369@gmail.com','3197642543','2025-02-20 21:05:56','2025-02-20 21:05:56'),(7,'miguelito','gomez','Zm159@gamil.com','3056423579','2025-02-21 01:19:43','2025-02-21 01:19:43'),(8,'Movistar','Wom','Mowis6743@gamil.com','3003335656','2025-02-21 02:07:58','2025-02-21 02:07:58'),(9,'Paula Maria','Zapata Ruiz','Zap564@gamil.com','3102561943','2025-02-21 03:43:00','2025-02-21 03:43:00'),(10,'Monserra','Gutierrez','Mon584@gamil.com','3146425398','2025-02-21 03:44:10','2025-02-21 03:44:10'),(11,'Brayan','Murillo','Bm483@gmail.com','3165498267','2025-02-21 03:45:20','2025-02-21 03:45:20'),(12,'michell','Bolaños','MIchi123@gmail.com','3052643519','2025-02-21 18:10:03','2025-02-21 18:10:03'),(13,'Jhon','Valencia','Jhvalen@gmail.com','3125648973','2025-02-21 18:16:36','2025-02-21 18:16:36'),(14,'Daniel','Ocoro pipra','Pida764@gmail.com','3165498730','2025-02-21 18:23:30','2025-02-21 18:23:30'),(15,'Isabela','Mosquera','Mos4936@gmail.com','3012655987','2025-02-21 19:01:33','2025-02-21 19:01:33'),(16,'Sharon','Ocoro','Oco674@gmail.com','3008674983','2025-02-21 19:09:56','2025-02-21 19:09:56'),(17,'Logan','Pipra','Lp1728@gmail.com','3164589273','2025-02-21 19:13:21','2025-02-21 19:13:21'),(18,'Alejandro','varon','Vale1837@gmail.com','3005978642','2025-02-21 19:18:06','2025-02-21 19:18:06'),(19,'Felipe','Ruiz','Fp8956@gmail.com','3174563322','2025-02-21 19:19:52','2025-02-21 19:19:52'),(20,'Camilo','Santa','Sc1894@gmail.com','3156879428','2025-02-21 19:21:40','2025-02-21 19:21:40'),(21,'ramiro','gomez','gon001@gmail.com','3126487925','2025-02-21 21:30:12','2025-02-21 21:30:12'),(22,'Miguel santa','porra','MIpo123@gmail.com','3016687794','2025-02-21 21:41:25','2025-02-21 21:41:25'),(23,'Paulino','Galiet','Gp1900@gmail.com','3025978461','2025-02-21 23:33:10','2025-02-21 23:33:10'),(24,'Paulo','blanco','Pb009@gmail.com','3026897412','2025-02-21 23:37:01','2025-02-21 23:37:01'),(25,'Juliana','castañeda','JC001@gmail.com','3165879964','2025-02-21 23:52:31','2025-02-21 23:52:31'),(26,'federico','becerra','fedebece90@gmail.com','14563214','2025-02-21 23:57:31','2025-02-21 23:57:31'),(27,'Samuel','Locotora','LS846@gmail.com','3196752849','2025-02-22 00:03:07','2025-02-22 00:03:07'),(28,'andres','lopez','lopez12325@gmail.com','3455675432','2025-02-22 00:21:35','2025-02-22 00:21:35'),(29,'Luis','Orozco','Lo087@gmail.com','3058897542','2025-02-22 00:50:25','2025-02-22 00:50:25'),(30,'Camila','Berrio','CB763@gmail.com','3045978613','2025-02-22 00:51:06','2025-02-22 00:51:06');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_02_13_160304_add_two_factor_columns_to_users_table',1),(5,'2025_02_13_160324_create_personal_access_tokens_table',1),(6,'2025_02_17_201208_create_items_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('64JsSYAh8YuPwSF5Io5DquG8u97GF4P3ie1W5MFJ',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkRhQUtkUzFTZXZCRUpmZE1OVU4xQ0h4ZUZmSWhZT2EwcXNVUDhRcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1740091096),('ARRPDOt6nzhEA9yKOQNJpvcxx8wX7VIWHxTTum7y',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzlvVTFyeW5VeUFEbDcxQmZ1OHlRMGprOGIzWGszWTBNTlNVYWxoeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1740066324),('fY4jO5aion3R3JrOAI4YXq8N7ibKgYyfKVI1d2UB',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid1l2SnBZNWVlRGZIYnRaVnpCT1dXZDdHcENOQjVSQVdLUDJMOVZpUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1740163829),('JFtXOpTpTXmEMQJNFbfKURUkifcWZWsy4nRCjkb4',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUVUTUI1REZVRUdKZnAyQzBlS3dkYVRjdUFyVFkwZnUxOWJ6a0R2NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1740155337),('JTqqJbG83jadzeJvWMA1lTfE6hZdl0HbLHiMemlf',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibXFwSHVTNXg5NWJ6OXc2Q09CdVk4czJHNnd1cThTd0ZreHl5dklzQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcHAuY3NzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1740171910),('zRCYEwZpm82UeDftVaeswzhuQV6X8HOsQsF1m6g7',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm5kN1Y3TmI5bmdjYUR3U1Q0YXlyUDloTUIxbmtvMXdIVGZpTXdkQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9UZWNob25vdGlmaS5tcDMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1740146340);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2025-02-24  9:01:35
