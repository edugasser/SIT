-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-12-2012 a las 10:25:17
-- Versión del servidor: 5.1.44
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mydb`
--
use mydb;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projecte`
--

CREATE TABLE IF NOT EXISTS `projecte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titol` varchar(100) NOT NULL,
  `descripcio` varchar(45) NOT NULL,
  `data_inici` date DEFAULT NULL,
  `pressupost_inicial` varchar(45) DEFAULT NULL,
  `pressupost_final` varchar(45) DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `Proposta_id` int(11) DEFAULT NULL,
  `Seguiment_projecte_id` int(11) DEFAULT NULL,
  `estat_projecte` varchar(10) NOT NULL,
  `data_registre` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_Projecte_Proposta_idx` (`Proposta_id`),
  KEY `fk_Projecte_Seguiment_projecte1_idx` (`Seguiment_projecte_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `projecte`
--

INSERT INTO `projecte` (`id`, `titol`, `descripcio`, `data_inici`, `pressupost_inicial`, `pressupost_final`, `data_entrega`, `Proposta_id`, `Seguiment_projecte_id`, `estat_projecte`, `data_registre`) VALUES
(2, 'Práctica de SIT', 'Realizar una práctica de SIT', '2012-12-05', '232', '2342', '2012-12-20', NULL, NULL, 'Bien', '0000-00-00 00:00:00'),
(7, 'Un proyecto', 'asdfa ', '2012-12-05', '212342', '2342', '2012-12-21', NULL, NULL, 'Mal', '2012-12-04 00:00:00');

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `projecte`
--
ALTER TABLE `projecte`
  ADD CONSTRAINT `fk_Projecte_Proposta` FOREIGN KEY (`Proposta_id`) REFERENCES `proposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Projecte_Seguiment_projecte1` FOREIGN KEY (`Seguiment_projecte_id`) REFERENCES `seguiment_projecte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
