-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escuela_1
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idalumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` varchar(45) NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `nomCompletoTutor` varchar(45) NOT NULL,
  `numeroTutor` varchar(45) NOT NULL,
  `direccionTutor` varchar(45) NOT NULL,
  PRIMARY KEY (`idalumno`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'david','santillan','43233882','2001-12-19 00:00:00','ocampo 1320','oscar santillan','3804232232',' ocampo 1320'),(2,'julian','romero','44430961','2002-12-24 00:00:00','jarilla 320','marcelo romero','3804294865','garilla 349'),(3,'alexis','velez','441224452','2003-05-27 00:00:00','noce 300','alejandro velez','3804324584','noce 300'),(6,'matias','monardez','43791582','2001-12-20 00:00:00','ocampo 1320','oscar monardez','3804232232','ocampo 1320'),(7,'javier','ruarte','43791382','2001-12-20 00:00:00','ocampo 1320','osvaldo ruarte','3804232232',' ocampo 1320'),(8,'agustin','vallez','43791682','2002-07-16 00:00:00','ocampo 1320','mateo vallez','3804232232','ocampo 1320'),(9,'lucas','santillan','43794582','2001-12-20 00:00:00','ocampo 1320','pedro santillan','3804232232','ocampo 1320'),(10,'mateo','romero','43123314','2001-12-20 00:00:00','ocampo 1320','oscar santillan','3804232232','ocampo 1320'),(11,'ignacio','romero','43123314','2001-12-20 00:00:00','ocampo 1320','oscar santillan','3804232232',' ocampo 1320'),(12,'david','Pasa','44123456','2003-03-12 00:00:00','Nose100','Alberto Pasa','3804987654','nose100'),(13,'pedro','pablito','46815912','2005-02-22 00:00:00','cualquierlado45','Pancho Pablito','3804887755','cualquierlado45'),(14,'alexander','perez','44111222','2003-06-18 00:00:00','nose av. niidea','alejo perez','3804334455','nose av. niidea');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `idasignatura` int(11) NOT NULL AUTO_INCREMENT,
  `nombreDescritivo` varchar(45) NOT NULL,
  `profesorid` int(11) NOT NULL,
  PRIMARY KEY (`idasignatura`),
  KEY `fk_asignatura_profesor1_idx` (`profesorid`),
  CONSTRAINT `fk_asignatura_profesor1` FOREIGN KEY (`profesorid`) REFERENCES `profesor` (`idprofesor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'Matematica',3),(2,'Historia',5),(3,'Lengua y Literatura',2),(4,'Formacion Etica y Ciudadana',1),(5,'Educacion Fisica',9),(6,'Ingles',10),(7,'Geografia',11),(8,'Fisica y Quimica',12),(9,'Biologia',13),(10,'Musica',14),(11,'Tecnologia',15);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombreDescriptivo` varchar(45) NOT NULL,
  `turno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'1° I','tarde'),(2,'1° II','noche'),(3,'1° II','mañana');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libreta`
--

DROP TABLE IF EXISTS `libreta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libreta` (
  `idlibreta` int(11) NOT NULL AUTO_INCREMENT,
  `alumnoid` int(11) NOT NULL,
  `cursoid` int(11) NOT NULL,
  `diasFaltados` int(11) NOT NULL,
  `diasAsistidos` int(11) NOT NULL,
  PRIMARY KEY (`idlibreta`,`cursoid`),
  KEY `fk_libreta_alumno_idx` (`alumnoid`),
  KEY `fk_libreta-curso1` (`cursoid`),
  CONSTRAINT `fk_libreta-curso1` FOREIGN KEY (`cursoid`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_libreta_alumno` FOREIGN KEY (`alumnoid`) REFERENCES `alumno` (`idalumno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libreta`
--

LOCK TABLES `libreta` WRITE;
/*!40000 ALTER TABLE `libreta` DISABLE KEYS */;
INSERT INTO `libreta` VALUES (1,3,1,0,181),(2,2,2,5,177),(3,1,2,7,70),(4,14,1,9,170),(5,13,2,0,0),(6,7,1,0,0),(7,9,1,8,171),(8,11,1,0,0),(9,10,1,8,171),(10,12,2,0,0),(11,12,1,0,0),(12,6,1,0,0),(13,6,1,0,0),(14,1,1,0,0),(15,14,2,0,0),(16,8,1,0,0),(17,9,2,0,0);
/*!40000 ALTER TABLE `libreta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libreta-asignatura`
--

DROP TABLE IF EXISTS `libreta-asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libreta-asignatura` (
  `idnota` int(11) NOT NULL AUTO_INCREMENT,
  `libretaid` int(11) NOT NULL,
  `asignaturaid` int(11) NOT NULL,
  `nota` float(4,3) NOT NULL,
  PRIMARY KEY (`idnota`,`libretaid`,`asignaturaid`),
  KEY `fk_libreta_has_asignatura_asignatura1_idx` (`asignaturaid`),
  KEY `fk_libreta_has_asignatura_libreta1_idx` (`libretaid`),
  CONSTRAINT `fk_libreta_has_asignatura_asignatura1` FOREIGN KEY (`asignaturaid`) REFERENCES `asignatura` (`idasignatura`),
  CONSTRAINT `fk_libreta_has_asignatura_libreta1` FOREIGN KEY (`libretaid`) REFERENCES `libreta` (`idlibreta`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libreta-asignatura`
--

LOCK TABLES `libreta-asignatura` WRITE;
/*!40000 ALTER TABLE `libreta-asignatura` DISABLE KEYS */;
INSERT INTO `libreta-asignatura` VALUES (1,1,2,8.500),(2,1,3,8.500),(3,1,4,7.000),(4,9,1,9.000),(5,9,2,6.000),(6,9,3,3.500),(7,12,2,8.000),(8,1,3,2.000),(9,6,2,5.000),(10,6,2,0.000),(11,6,1,7.770),(12,6,3,9.000),(13,8,2,6.000),(14,3,3,4.000),(15,3,2,4.000),(16,3,2,4.000),(17,14,3,4.000),(18,4,1,5.000),(19,4,3,5.000),(20,4,2,9.999),(21,4,3,5.000),(22,15,1,9.999),(23,15,3,5.000),(24,3,3,4.000),(25,14,1,7.000),(26,14,2,4.000),(27,14,4,1.000),(28,2,1,6.000),(29,2,2,7.000),(30,2,3,9.999),(31,7,1,8.000),(32,7,2,7.000),(33,7,3,6.000),(34,7,4,6.000),(35,7,5,9.000),(36,7,6,5.000),(37,7,7,7.000),(38,7,8,5.000),(39,7,9,8.000),(40,7,10,9.000),(41,7,11,6.000),(42,16,1,5.000),(43,16,3,5.000);
/*!40000 ALTER TABLE `libreta-asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `idprofesor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`idprofesor`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'hector','perez','33984423','Av. peron'),(2,'pedro','santillan','43791882','ocampo 200'),(3,'agustin','romero','43791323','españa 300'),(4,'lucas','santander','44791282','peru 493'),(5,'leonardo','perez','43794882','san martin 409'),(8,'matias','sanchez','40998342','rivadavia 400'),(9,'segio','romero','40998342','chilecito 560'),(10,'martin ','demichelis','42998342','aruco 235'),(11,'juan','veron','40498342','olta 455'),(12,'warlter','ruarte','40948342','ulapes 534'),(13,'gabriel','milito','44998342','sanisidro 345'),(14,'angel','correa','46498342','belgrano 560'),(15,'mario','bolatti','40958342','catamarca 345'),(16,'lionel','messi','43244542','salta 355'),(17,'carlos','tevez','43298342','tucuman 344'),(18,'ariel ','arcer','40498342','jujuy 948'),(19,'nicolas','otamendi','40468342','santa fe 469'),(21,'leandro','santillan','43791882','españa 300');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 23:13:37
