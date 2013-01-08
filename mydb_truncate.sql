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
INSERT INTO `permiso` VALUES (1,'Editar',''),(2,'Eliminar',''),(3,'Projectes',''),(7,'Usuaris',''),(12,'Principis_i_objectius',''),(13,'Sesions',''),(14,'Serveis','');
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
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
  `estructures_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `fk_Persones_Departaments1_idx` (`estructures_id`),
  KEY `fk_Persones_Departaments1` (`estructures_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persones`
--
 

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `titol` (`titol`),
  KEY `fk_Proposta_tipus_projecte1_idx` (`tipus_projecte_id`),
  KEY `estat_projecte` (`estat_projecte`),
  CONSTRAINT `proposta_ibfk_1` FOREIGN KEY (`estat_projecte`) REFERENCES `estat` (`id_estat`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposta`
--

 

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
INSERT INTO `users` VALUES (2,'admin','$2a$08$Fc8ch.9YrFlD7TvlDa8u/ejOERQRjRrpxsNEgTZMponx/I6x3vW3e','edugasser@gmail.com',1,0,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','2013-01-08 17:45:38','2012-12-10 18:00:57','2013-01-08 16:45:38',1),(3,'becari','$2a$08$aAZJL9JEaC9smBzHHWSwqeK.LXYZ6x3AM9tBsnVPXKEEx34rKVI8q','becari@gmail.com',1,0,NULL,NULL,NULL,NULL,NULL,'::1','2013-01-07 22:50:31','2012-12-17 13:13:44','2013-01-07 21:50:31',6);
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

-- Dump completed on 2013-01-08 18:03:36
