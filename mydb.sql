-- MySQL dump 10.13  Distrib 5.5.29, for osx10.6 (i386)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Current Database: `mydb`
--

/*!40000 DROP DATABASE IF EXISTS `mydb`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mydb`;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('24a38f8403626ee5a288a8095bb30ed9','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17',1357719787,'a:13:{s:9:\"user_data\";s:0:\"\";s:11:\"url_history\";a:6:{i:0;s:0:\"\";i:1;s:15:\"proyecto/pdf/26\";i:2;s:12:\"proyecto/mio\";i:3;s:16:\"proyecto/gestion\";i:4;s:0:\"\";i:5;s:22:\"proyecto/encuestas_mio\";}s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:6:\"perfil\";s:1:\"1\";s:5:\"email\";s:19:\"edugasser@gmail.com\";s:6:\"status\";s:1:\"1\";s:6:\"Editar\";i:1;s:8:\"Eliminar\";i:1;s:9:\"Projectes\";i:1;s:7:\"Usuaris\";i:1;s:21:\"Principis_i_objectius\";i:1;s:7:\"Sesions\";i:1;}'),('4ec296af551228b30c5b485ab955fd4b','fe80::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17',1357719428,'a:13:{s:9:\"user_data\";s:0:\"\";s:11:\"url_history\";a:6:{i:0;s:13:\"persona/chart\";i:1;s:14:\"admin/persones\";i:2;s:13:\"persona/chart\";i:3;s:14:\"admin/persones\";i:4;s:21:\"admin/persones/edit/2\";i:5;s:13:\"persona/chart\";}s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:6:\"perfil\";s:1:\"1\";s:5:\"email\";s:19:\"edugasser@gmail.com\";s:6:\"status\";s:1:\"1\";s:6:\"Editar\";i:1;s:8:\"Eliminar\";i:1;s:9:\"Projectes\";i:1;s:7:\"Usuaris\";i:1;s:21:\"Principis_i_objectius\";i:1;s:7:\"Sesions\";i:1;}'),('71eddd781220643b236dc277638f431c','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17',1357724182,'a:13:{s:9:\"user_data\";s:0:\"\";s:11:\"url_history\";a:6:{i:0;s:12:\"proposta/mio\";i:1;s:23:\"admin/propostes/edit/16\";i:2;s:12:\"proposta/mio\";i:3;s:23:\"admin/propostes/edit/15\";i:4;s:12:\"proposta/mio\";i:5;s:23:\"admin/propostes/edit/14\";}s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:6:\"perfil\";s:1:\"1\";s:5:\"email\";s:19:\"edugasser@gmail.com\";s:6:\"status\";s:1:\"1\";s:6:\"Editar\";i:1;s:8:\"Eliminar\";i:1;s:9:\"Projectes\";i:1;s:7:\"Usuaris\";i:1;s:21:\"Principis_i_objectius\";i:1;s:7:\"Sesions\";i:1;}'),('7c9c57b73900806ba5352a98c3c08d49','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17',1357725028,'a:13:{s:9:\"user_data\";s:0:\"\";s:11:\"url_history\";a:6:{i:0;s:15:\"admin/propostes\";i:1;s:23:\"admin/propostes/edit/14\";i:2;s:15:\"admin/propostes\";i:3;s:16:\"proposta/evaluar\";i:4;s:0:\"\";i:5;s:15:\"admin/propostes\";}s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:6:\"perfil\";s:1:\"1\";s:5:\"email\";s:19:\"edugasser@gmail.com\";s:6:\"status\";s:1:\"1\";s:6:\"Editar\";i:1;s:8:\"Eliminar\";i:1;s:9:\"Projectes\";i:1;s:7:\"Usuaris\";i:1;s:21:\"Principis_i_objectius\";i:1;s:7:\"Sesions\";i:1;}'),('bb0ee16f5de6bd7cfc07a6327f566f5d','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.17 (KHTML, like Gecko) Version/6.0.2 Safari/536.26.17',1357722204,'a:13:{s:9:\"user_data\";s:0:\"\";s:11:\"url_history\";a:6:{i:0;s:12:\"proyecto/mio\";i:1;s:31:\"admin/persones_projecte/edit/28\";i:2;s:12:\"proyecto/mio\";i:3;s:16:\"proyecto/gestion\";i:4;s:13:\"principis/mio\";i:5;s:29:\"admin/principis_estrategies/1\";}s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:6:\"perfil\";s:1:\"1\";s:5:\"email\";s:19:\"edugasser@gmail.com\";s:6:\"status\";s:1:\"1\";s:6:\"Editar\";i:1;s:8:\"Eliminar\";i:1;s:9:\"Projectes\";i:1;s:7:\"Usuaris\";i:1;s:21:\"Principis_i_objectius\";i:1;s:7:\"Sesions\";i:1;}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decision`
--

DROP TABLE IF EXISTS `decision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decision` (
  `id_decision` int(2) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `data` date NOT NULL,
  `alineado` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `id_reunion` int(2) NOT NULL,
  PRIMARY KEY (`id_decision`),
  KEY `id_reunion` (`id_reunion`),
  CONSTRAINT `decision_ibfk_1` FOREIGN KEY (`id_reunion`) REFERENCES `reunion` (`id_reunion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decision`
--

LOCK TABLES `decision` WRITE;
/*!40000 ALTER TABLE `decision` DISABLE KEYS */;
INSERT INTO `decision` VALUES (4,'<p>\r\n	Decision 1</p>\r\n','2012-12-16','Objectiu estrategic',3),(5,'<p>\r\n	Decision 2</p>\r\n','2012-12-14','Projecte',2);
/*!40000 ALTER TABLE `decision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta`
--

DROP TABLE IF EXISTS `encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta` (
  `id_encuensta` int(2) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `id_projecte` int(2) NOT NULL,
  PRIMARY KEY (`id_encuensta`),
  KEY `id_projecte` (`id_projecte`),
  CONSTRAINT `encuesta_ibfk_1` FOREIGN KEY (`id_projecte`) REFERENCES `projecte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta`
--

LOCK TABLES `encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
INSERT INTO `encuesta` VALUES (1,'¿Está conforme con los resultados del proyecto?','2012-12-17',26),(2,'¿Cree que el proyecto cumple con los requerimientos iniciales?','2012-12-21',27);
/*!40000 ALTER TABLE `encuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta_resultado`
--

DROP TABLE IF EXISTS `encuesta_resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta_resultado` (
  `id_encuesta` int(2) NOT NULL,
  `resultado` int(10) NOT NULL,
  `id_encuesta_resultado` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_encuesta_resultado`),
  KEY `id_encuesta` (`id_encuesta`),
  CONSTRAINT `encuesta_resultado_ibfk_1` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuensta`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_resultado`
--

LOCK TABLES `encuesta_resultado` WRITE;
/*!40000 ALTER TABLE `encuesta_resultado` DISABLE KEYS */;
INSERT INTO `encuesta_resultado` VALUES (1,5,1),(1,7,2),(2,2,3),(2,9,4),(2,9,5),(2,7,6),(2,4,7),(2,5,8),(2,3,9),(2,8,10),(2,4,11),(2,5,12),(2,6,13),(1,3,14),(1,5,15),(1,5,16),(2,6,17),(2,6,18),(2,5,19),(2,8,20),(1,5,21),(1,5,22),(1,5,23),(2,5,24),(2,5,25),(1,3,26),(2,4,27),(1,1,28),(2,2,29),(2,2,30),(2,2,31),(1,3,32),(1,3,33),(1,2,34),(2,34,36);
/*!40000 ALTER TABLE `encuesta_resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estat`
--

DROP TABLE IF EXISTS `estat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estat` (
  `id_estat` int(1) NOT NULL AUTO_INCREMENT,
  `estat` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estat`
--

LOCK TABLES `estat` WRITE;
/*!40000 ALTER TABLE `estat` DISABLE KEYS */;
INSERT INTO `estat` VALUES (1,'Acceptat'),(2,'Pendent'),(4,'Cancelat');
/*!40000 ALTER TABLE `estat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estructures`
--

DROP TABLE IF EXISTS `estructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estructures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dept` (`dept`),
  UNIQUE KEY `dept_2` (`dept`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estructures`
--

LOCK TABLES `estructures` WRITE;
/*!40000 ALTER TABLE `estructures` DISABLE KEYS */;
INSERT INTO `estructures` VALUES (5,'Comité tècnic'),(6,'Consejo de administración'),(2,'Consejo dirección');
/*!40000 ALTER TABLE `estructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidencia`
--

DROP TABLE IF EXISTS `incidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidencia` (
  `id_incidencia` int(2) NOT NULL AUTO_INCREMENT,
  `incidencia` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `data` date NOT NULL,
  `estat` varchar(100) DEFAULT NULL,
  `prioritat` varchar(100) DEFAULT 'Baixa',
  `solucion` text NOT NULL,
  `id_servei` int(11) NOT NULL,
  PRIMARY KEY (`id_incidencia`),
  KEY `id_servei` (`id_servei`),
  KEY `id_servei_2` (`id_servei`),
  CONSTRAINT `incidencia_ibfk_1` FOREIGN KEY (`id_servei`) REFERENCES `servicis` (`id_servici`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidencia`
--

LOCK TABLES `incidencia` WRITE;
/*!40000 ALTER TABLE `incidencia` DISABLE KEYS */;
INSERT INTO `incidencia` VALUES (1,'incidencia 1','<p>\r\n	asd asd</p>\r\n','2013-01-01','Oberta','Alta','<p>\r\n	asd asd s</p>\r\n',1),(2,'incidencia 2','<p>\n	as ds</p>\n','2013-03-15','Tancada','Alta','<p>\n	as sds</p>\n',2),(3,'Incidencia 2','','2013-02-13','Tancada','Mitja','',1),(4,'Incidencia 3','','2013-02-15','Tancada','Baixa','',1),(5,'Incidencia 4','','2013-04-11','Tancada','Mitja','',1),(6,'Incidencia nueva','<p>\n	asdfs</p>\n','2013-02-13','Tancada','Mitja','',2),(7,'Incidencia nueva','','2013-02-01','Tancada','Alta','',2);
/*!40000 ALTER TABLE `incidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectius_estrategics`
--

DROP TABLE IF EXISTS `objectius_estrategics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectius_estrategics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  `data_objectiu` date NOT NULL,
  `descripcio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectius_estrategics`
--

LOCK TABLES `objectius_estrategics` WRITE;
/*!40000 ALTER TABLE `objectius_estrategics` DISABLE KEYS */;
INSERT INTO `objectius_estrategics` VALUES (1,'Incorporar las Tic a la docencia en las aulas','2012-12-12','<p>\r\n	Incorporar las Tic a la docencia en las aulas.</p>\r\n'),(4,'Proporcionar infraestructura tecnológica compartida','2012-12-21','<p>\r\n	Proporcionar infraestructura tecnol&oacute;gica compartida</p>\r\n'),(5,'Facilitar la docencia virtual','2012-12-28','<p>\r\n	Facilitar la docencia virtual</p>\r\n'),(6,'Promover la divulgación de la actividad investigadora mediante las herramientas TIC','2012-12-29','<p>\r\n	Promover la divulgaci&oacute;n de la actividad investigadora mediante las herramientas TIC</p>\r\n');
/*!40000 ALTER TABLE `objectius_estrategics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectius_tactics`
--

DROP TABLE IF EXISTS `objectius_tactics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectius_tactics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  `descripcio` text NOT NULL,
  `fecha` date NOT NULL,
  `Objectius_estrategics_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Objectius_estrategics_id` (`Objectius_estrategics_id`),
  CONSTRAINT `objectius_tactics_ibfk_1` FOREIGN KEY (`Objectius_estrategics_id`) REFERENCES `objectius_estrategics` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectius_tactics`
--

LOCK TABLES `objectius_tactics` WRITE;
/*!40000 ALTER TABLE `objectius_tactics` DISABLE KEYS */;
INSERT INTO `objectius_tactics` VALUES (1,'Proveer conexion Internet','<p>\n	Instalar conexi&oacute;n a Internet y medios multimedia en cada aula de docencia.</p>\n','2012-12-15',4),(3,'Modernizar aulas informática','<p>\n	Definir un modelo de aulas inform&aacute;ticas modernizadas.</p>\n','2012-12-15',5),(9,'Calidad videoconferencias','<p>\r\n	Mejorar la calidad de las videoconferencias.</p>\r\n','2012-12-20',NULL),(13,'Red inalámbrica','<p>\r\n	Implantaci&oacute;n de una red inal&aacute;mbrica en la toda la universidad.</p>\r\n','2012-12-19',1),(15,'Mejorar portal web','<p>\r\n	Mejorar el portal web que divulgue la oferta inverstigadora y la producci&oacute;n cient&iacute;fica de la universidad.</p>\r\n','2012-12-26',1);
/*!40000 ALTER TABLE `objectius_tactics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectius_tactics_has_projecte`
--

DROP TABLE IF EXISTS `objectius_tactics_has_projecte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectius_tactics_has_projecte` (
  `Objectius_tactics_id` int(11) DEFAULT NULL,
  `id_ot` int(11) NOT NULL AUTO_INCREMENT,
  `Projecte_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ot`),
  UNIQUE KEY `Objectius_tactics_id_2` (`Objectius_tactics_id`,`Projecte_id`),
  KEY `Objectius_tactics_id` (`Objectius_tactics_id`),
  KEY `Projecte_id` (`Projecte_id`),
  CONSTRAINT `objectius_tactics_has_projecte_ibfk_3` FOREIGN KEY (`Projecte_id`) REFERENCES `projecte` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `objectius_tactics_has_projecte_ibfk_4` FOREIGN KEY (`Objectius_tactics_id`) REFERENCES `objectius_tactics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectius_tactics_has_projecte`
--

LOCK TABLES `objectius_tactics_has_projecte` WRITE;
/*!40000 ALTER TABLE `objectius_tactics_has_projecte` DISABLE KEYS */;
INSERT INTO `objectius_tactics_has_projecte` VALUES (1,67,28),(3,71,NULL),(3,77,25),(9,70,NULL),(9,75,26),(13,72,NULL),(13,80,25),(13,76,26),(15,78,26),(15,68,28);
/*!40000 ALTER TABLE `objectius_tactics_has_projecte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operacio`
--

DROP TABLE IF EXISTS `operacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operacio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `data_inici` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `estat` varchar(10) NOT NULL DEFAULT 'En procés',
  `Projecte_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`Projecte_id`),
  KEY `fk_Operacio_Projecte1_idx` (`Projecte_id`),
  CONSTRAINT `operacio_ibfk_1` FOREIGN KEY (`Projecte_id`) REFERENCES `projecte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacio`
--

LOCK TABLES `operacio` WRITE;
/*!40000 ALTER TABLE `operacio` DISABLE KEYS */;
INSERT INTO `operacio` VALUES (4,'Una operacio','2012-12-05','2012-12-12','En procés',25),(11,'Nueva operació','2012-12-10','2012-12-19','En procés',26),(13,'Otra','2012-12-05','2012-12-19','Acabada',27),(14,'Operacion 2','2012-12-04','2012-12-12','En procés',27),(15,'Otra operación','2012-12-11','2012-12-27','Acabada',26),(16,'Otra','2012-12-17','2012-12-04','En procés',26),(17,'Otra mas','2012-12-05','2012-12-12','En procés',26);
/*!40000 ALTER TABLE `operacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(100) NOT NULL,
  PRIMARY KEY (`id_perfil`),
  UNIQUE KEY `nombre_perfil` (`nombre_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'admin'),(6,'becari');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_permisos`
--

DROP TABLE IF EXISTS `perfil_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_permisos` (
  `id_perfil_permisos` int(2) NOT NULL AUTO_INCREMENT,
  `id_permiso` int(2) NOT NULL,
  `id_perfil` int(2) NOT NULL,
  PRIMARY KEY (`id_perfil_permisos`),
  KEY `id_permiso` (`id_permiso`,`id_perfil`),
  KEY `id_perfil` (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_permisos`
--

LOCK TABLES `perfil_permisos` WRITE;
/*!40000 ALTER TABLE `perfil_permisos` DISABLE KEYS */;
INSERT INTO `perfil_permisos` VALUES (1,1,1),(3,1,3),(26,1,6),(2,2,1),(8,3,1),(5,3,3),(19,3,4),(21,3,5),(6,4,3),(4,6,3),(11,7,1),(17,12,1),(25,12,6),(18,13,1),(20,13,4),(22,13,5);
/*!40000 ALTER TABLE `perfil_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiso` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_permiso` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` VALUES (1,'Editar',''),(2,'Eliminar',''),(3,'Projectes',''),(7,'Usuaris',''),(12,'Principis_i_objectius',''),(13,'Sesions','');
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_estructura`
--

DROP TABLE IF EXISTS `persona_estructura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_estructura` (
  `id_persona_estructura` int(2) NOT NULL AUTO_INCREMENT,
  `id_persona` int(2) NOT NULL,
  `id_estructura` int(2) NOT NULL,
  PRIMARY KEY (`id_persona_estructura`),
  KEY `id_persona` (`id_persona`),
  KEY `id_estructura` (`id_estructura`),
  CONSTRAINT `persona_estructura_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persones` (`id_persona`),
  CONSTRAINT `persona_estructura_ibfk_2` FOREIGN KEY (`id_estructura`) REFERENCES `estructures` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_estructura`
--

LOCK TABLES `persona_estructura` WRITE;
/*!40000 ALTER TABLE `persona_estructura` DISABLE KEYS */;
INSERT INTO `persona_estructura` VALUES (4,1,6),(5,1,2),(6,6,2),(7,3,6),(8,5,5),(9,5,2),(10,4,2),(11,2,6);
/*!40000 ALTER TABLE `persona_estructura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_projecte`
--

DROP TABLE IF EXISTS `persona_projecte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_projecte` (
  `id_persona_projecte` int(2) NOT NULL AUTO_INCREMENT,
  `id_persona` int(2) NOT NULL,
  `id_projecte` int(2) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_persona_projecte`),
  UNIQUE KEY `id_persona_2` (`id_persona`,`id_projecte`),
  KEY `id_persona` (`id_persona`,`id_projecte`),
  KEY `id_projecte` (`id_projecte`),
  CONSTRAINT `persona_projecte_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persones` (`id_persona`),
  CONSTRAINT `persona_projecte_ibfk_2` FOREIGN KEY (`id_projecte`) REFERENCES `projecte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_projecte`
--

LOCK TABLES `persona_projecte` WRITE;
/*!40000 ALTER TABLE `persona_projecte` DISABLE KEYS */;
INSERT INTO `persona_projecte` VALUES (1,1,26,'0000-00-00'),(2,2,26,'0000-00-00'),(3,3,28,'0000-00-00'),(4,3,27,'0000-00-00'),(5,6,28,'0000-00-00');
/*!40000 ALTER TABLE `persona_projecte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persones`
--

DROP TABLE IF EXISTS `persones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persones` (
  `id_persona` int(2) NOT NULL AUTO_INCREMENT,
  `nom_complet` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persones`
--

LOCK TABLES `persones` WRITE;
/*!40000 ALTER TABLE `persones` DISABLE KEYS */;
INSERT INTO `persones` VALUES (1,'Eduardo Gasser','edugasser@gmail.com'),(2,'Vicenç Juan Monserrat Tomàs','vtomasr5@gmail.com'),(3,'Juan José Pol Fuentes','juanjopol@gmail.com'),(4,'Pepe Gomez',NULL),(5,'Juanita Lopez',NULL),(6,'Juan Hidalgo',NULL);
/*!40000 ALTER TABLE `persones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principi`
--

DROP TABLE IF EXISTS `principi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principi` (
  `id_principi` int(2) NOT NULL AUTO_INCREMENT,
  `titol` varchar(50) NOT NULL,
  `descripcio` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_principi`),
  UNIQUE KEY `titol` (`titol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principi`
--

LOCK TABLES `principi` WRITE;
/*!40000 ALTER TABLE `principi` DISABLE KEYS */;
INSERT INTO `principi` VALUES (1,'Principio 1','<p>\r\n	Descripcion</p>\r\n','2012-12-13'),(2,'Principio 2','<p>\r\n	asd asdf sd</p>\r\n','2012-12-13');
/*!40000 ALTER TABLE `principi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principi_oestrategics`
--

DROP TABLE IF EXISTS `principi_oestrategics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principi_oestrategics` (
  `id_po` int(2) NOT NULL AUTO_INCREMENT,
  `id_principi` int(2) NOT NULL,
  `id_objectius_estrategics` int(2) NOT NULL,
  PRIMARY KEY (`id_po`),
  UNIQUE KEY `id_principi_2` (`id_principi`,`id_objectius_estrategics`),
  KEY `id_principi` (`id_principi`,`id_objectius_estrategics`),
  KEY `id_objectius_estrategics` (`id_objectius_estrategics`),
  CONSTRAINT `principi_oestrategics_ibfk_1` FOREIGN KEY (`id_principi`) REFERENCES `principi` (`id_principi`),
  CONSTRAINT `principi_oestrategics_ibfk_3` FOREIGN KEY (`id_objectius_estrategics`) REFERENCES `objectius_estrategics` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principi_oestrategics`
--

LOCK TABLES `principi_oestrategics` WRITE;
/*!40000 ALTER TABLE `principi_oestrategics` DISABLE KEYS */;
INSERT INTO `principi_oestrategics` VALUES (5,1,1),(6,1,4),(3,2,1),(7,2,6);
/*!40000 ALTER TABLE `principi_oestrategics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projecte`
--

DROP TABLE IF EXISTS `projecte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projecte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titol` varchar(100) NOT NULL,
  `id_tipus_projecte` int(2) NOT NULL,
  `descripcio` text NOT NULL,
  `data_inici` date DEFAULT NULL,
  `pressupost_inicial` varchar(45) DEFAULT NULL,
  `pressupost_final` varchar(45) DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `Proposta_id` int(11) DEFAULT NULL,
  `id_responsable` int(2) NOT NULL,
  `prioritat` varchar(10) NOT NULL DEFAULT 'Mitjana',
  `monotoritzacio_temps` int(1) NOT NULL DEFAULT '1',
  `monotoritzacio_recursos` int(1) NOT NULL DEFAULT '1',
  `monotoritzacio_qualitat` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `titol` (`titol`),
  KEY `fk_Projecte_Proposta_idx` (`Proposta_id`),
  KEY `id_responsable` (`id_responsable`),
  KEY `id_tipus_projecte` (`id_tipus_projecte`),
  CONSTRAINT `projecte_ibfk_1` FOREIGN KEY (`id_tipus_projecte`) REFERENCES `tipus_projecte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projecte`
--

LOCK TABLES `projecte` WRITE;
/*!40000 ALTER TABLE `projecte` DISABLE KEYS */;
INSERT INTO `projecte` VALUES (25,'Tutoria / Soporte remoto',1,'<p>\n	El&nbsp;soporte remoto&nbsp;&iexcl;es una soluci&oacute;n ideal para el personal de IT que busca asistir a sus clientes remotamente y a la vez ahorrar tiempo y dinero.</p>\n','2012-12-01','1000','1000','2013-01-22',14,3,'Mitja',3,2,2),(26,'Arquitectura Moodle',1,'Renovar la arquitectura Moodle.','2012-12-13','3000','3000','2012-12-16',14,3,'Baixa',2,3,1),(27,'Control de acceso',1,'<p>\n	Sistemas para&nbsp;control de acceso&nbsp;con lector de huella digital, clave y tarjeta inteligente</p>\n','2012-12-01','2050','2050','2013-01-31',14,1,'Alta',3,1,1),(28,'Soporte chat para la administración',1,'<p>\n	Que el personal de administraci&oacute;n disponga de un chat para realizar las consultas con los alumnos/profesores.</p>\n','2012-12-19','50000','50000','2013-02-01',14,1,'Mitja',3,3,2);
/*!40000 ALTER TABLE `projecte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposta`
--

DROP TABLE IF EXISTS `proposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titol` varchar(100) NOT NULL,
  `descripcio` text,
  `riscs` varchar(300) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `tipus_projecte_id` int(11) DEFAULT NULL,
  `estat_projecte` int(2) NOT NULL,
  `decisio` text,
  `id_responsable` int(2) DEFAULT NULL,
  `presupost` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titol` (`titol`),
  KEY `fk_Proposta_tipus_projecte1_idx` (`tipus_projecte_id`),
  KEY `estat_projecte` (`estat_projecte`),
  KEY `id_responsable` (`id_responsable`),
  CONSTRAINT `proposta_ibfk_1` FOREIGN KEY (`estat_projecte`) REFERENCES `estat` (`id_estat`),
  CONSTRAINT `proposta_ibfk_2` FOREIGN KEY (`id_responsable`) REFERENCES `persones` (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposta`
--

LOCK TABLES `proposta` WRITE;
/*!40000 ALTER TABLE `proposta` DISABLE KEYS */;
INSERT INTO `proposta` VALUES (14,'Terminar la practica','<p>\n	Descripcion</p>\n','Riesgos','2012-12-11',1,4,'<p>\n	Holasds sd</p>\n',1,'180.000'),(15,'Propuesta 2',' bla bla bla','Riesgos','2012-12-12',1,4,'<p>\n	asd asdfasdasd asd asds</p>\n',1,'200.000'),(16,'Propuesta 3',' balba lba l','asdf','2012-12-18',1,1,NULL,3,'1.000.000');
/*!40000 ALTER TABLE `proposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reunion`
--

DROP TABLE IF EXISTS `reunion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reunion` (
  `titol` varchar(100) NOT NULL,
  `id_reunion` int(2) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_reunion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reunion`
--

LOCK TABLES `reunion` WRITE;
/*!40000 ALTER TABLE `reunion` DISABLE KEYS */;
INSERT INTO `reunion` VALUES ('Presupuesto 2013',2,'<p>\r\n	El objetivo de la reunion es definir el prespuesto para el proximo 2013</p>\r\n','2012-12-16'),('Cambio servidores',3,'<p>\r\n	Cambio servidores</p>\r\n','2012-12-12');
/*!40000 ALTER TABLE `reunion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reunion_estructura`
--

DROP TABLE IF EXISTS `reunion_estructura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reunion_estructura` (
  `id_reunion_estructura` int(2) NOT NULL AUTO_INCREMENT,
  `id_reunion` int(2) NOT NULL,
  `id_estructura` int(2) NOT NULL,
  PRIMARY KEY (`id_reunion_estructura`),
  KEY `id_reunion` (`id_reunion`),
  KEY `id_estructura` (`id_estructura`),
  KEY `id_estructura_2` (`id_estructura`),
  KEY `id_reunion_2` (`id_reunion`),
  CONSTRAINT `reunion_estructura_ibfk_1` FOREIGN KEY (`id_reunion`) REFERENCES `reunion` (`id_reunion`),
  CONSTRAINT `reunion_estructura_ibfk_2` FOREIGN KEY (`id_estructura`) REFERENCES `estructures` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reunion_estructura`
--

LOCK TABLES `reunion_estructura` WRITE;
/*!40000 ALTER TABLE `reunion_estructura` DISABLE KEYS */;
INSERT INTO `reunion_estructura` VALUES (2,2,5),(3,3,2);
/*!40000 ALTER TABLE `reunion_estructura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguiment_projecte`
--

DROP TABLE IF EXISTS `seguiment_projecte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguiment_projecte` (
  `id` int(11) NOT NULL,
  `canvi` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguiment_projecte`
--

LOCK TABLES `seguiment_projecte` WRITE;
/*!40000 ALTER TABLE `seguiment_projecte` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguiment_projecte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicis`
--

DROP TABLE IF EXISTS `servicis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicis` (
  `id_servici` int(2) NOT NULL AUTO_INCREMENT,
  `nom_servei` varchar(100) NOT NULL,
  `descripcio_servei` text NOT NULL,
  `data_servei` date NOT NULL,
  PRIMARY KEY (`id_servici`),
  UNIQUE KEY `nom_servei` (`nom_servei`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicis`
--

LOCK TABLES `servicis` WRITE;
/*!40000 ALTER TABLE `servicis` DISABLE KEYS */;
INSERT INTO `servicis` VALUES (1,'Correu electronic','<p>\n	Descripci&oacute;n</p>\n','2012-12-19'),(2,'WIFI','<p>\n	asd sd s</p>\n','2012-12-19');
/*!40000 ALTER TABLE `servicis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipus_projecte`
--

DROP TABLE IF EXISTS `tipus_projecte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipus_projecte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipus` (`tipus`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipus_projecte`
--

LOCK TABLES `tipus_projecte` WRITE;
/*!40000 ALTER TABLE `tipus_projecte` DISABLE KEYS */;
INSERT INTO `tipus_projecte` VALUES (1,'Tecnologia');
/*!40000 ALTER TABLE `tipus_projecte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_autologin`
--

DROP TABLE IF EXISTS `user_autologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_autologin`
--

LOCK TABLES `user_autologin` WRITE;
/*!40000 ALTER TABLE `user_autologin` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_autologin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,3,NULL,NULL),(2,4,NULL,NULL);
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `perfil` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `perfil` (`perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin','$2a$08$Fc8ch.9YrFlD7TvlDa8u/ejOERQRjRrpxsNEgTZMponx/I6x3vW3e','edugasser@gmail.com',1,0,NULL,NULL,NULL,NULL,NULL,'::1','2013-01-09 10:44:55','2012-12-10 18:00:57','2013-01-09 09:44:55',1),(3,'becari','$2a$08$aAZJL9JEaC9smBzHHWSwqeK.LXYZ6x3AM9tBsnVPXKEEx34rKVI8q','becari@gmail.com',1,0,NULL,NULL,NULL,NULL,NULL,'::1','2013-01-07 22:50:31','2012-12-17 13:13:44','2013-01-07 21:50:31',6);
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

-- Dump completed on 2013-01-09 10:52:29
