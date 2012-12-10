-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-12-2012 a las 12:52:13
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departaments`
--

CREATE TABLE IF NOT EXISTS `departaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `departaments`
--

INSERT INTO `departaments` (`id`, `dept`) VALUES
(1, 'Logística'),
(2, 'Comercial'),
(5, 'Nou');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_estrategics`
--

CREATE TABLE IF NOT EXISTS `objectius_estrategics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `objectius_estrategics`
--

INSERT INTO `objectius_estrategics` (`id`, `objectiu`) VALUES
(1, 'Primer objetivo'),
(2, 'Segundo objetivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_tactics`
--

CREATE TABLE IF NOT EXISTS `objectius_tactics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  `Objectius_estrategics_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`Objectius_estrategics_id`),
  KEY `fk_Objectius_tactics_Objectius_estrategics1_idx` (`Objectius_estrategics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `objectius_tactics`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_tactics_has_projecte`
--

CREATE TABLE IF NOT EXISTS `objectius_tactics_has_projecte` (
  `Objectius_tactics_id` int(11) NOT NULL,
  `Objectius_tactics_Objectius_estrategics_id` int(11) NOT NULL,
  `Projecte_id` int(11) NOT NULL,
  PRIMARY KEY (`Objectius_tactics_id`,`Objectius_tactics_Objectius_estrategics_id`,`Projecte_id`),
  KEY `fk_Objectius_tactics_has_Projecte_Projecte1_idx` (`Projecte_id`),
  KEY `fk_Objectius_tactics_has_Projecte_Objectius_tactics1_idx` (`Objectius_tactics_id`,`Objectius_tactics_Objectius_estrategics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `objectius_tactics_has_projecte`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacio`
--

CREATE TABLE IF NOT EXISTS `operacio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `data_inici` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `cost_en_curs` float DEFAULT NULL,
  `Projecte_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`Projecte_id`),
  KEY `fk_Operacio_Projecte1_idx` (`Projecte_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcar la base de datos para la tabla `operacio`
--

INSERT INTO `operacio` (`id`, `nom`, `data_inici`, `data_final`, `cost_en_curs`, `Projecte_id`) VALUES
(4, 'Una operacio', '2012-12-05', '2012-12-12', 2342, 2),
(11, 'Nueva operació', '2012-12-10', '2012-12-19', 8681, 7),
(13, 'Otra', '2012-12-05', '2012-12-19', 23423, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persones`
--

CREATE TABLE IF NOT EXISTS `persones` (
  `DNI` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `cognom` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `departaments_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_Persones_Departaments1_idx` (`departaments_id`),
  KEY `fk_Persones_Departaments1` (`departaments_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `persones`
--

INSERT INTO `persones` (`DNI`, `nom`, `cognom`, `email`, `departaments_id`) VALUES
(2, 'Eduardo Andrés', 'Gasser', 'edugasser@gmail.com', NULL),
(3, NULL, NULL, NULL, NULL);

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
  `data_registre` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_Projecte_Proposta_idx` (`Proposta_id`),
  KEY `fk_Projecte_Seguiment_projecte1_idx` (`Seguiment_projecte_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcar la base de datos para la tabla `projecte`
--

INSERT INTO `projecte` (`id`, `titol`, `descripcio`, `data_inici`, `pressupost_inicial`, `pressupost_final`, `data_entrega`, `Proposta_id`, `Seguiment_projecte_id`, `data_registre`) VALUES
(2, 'Práctica de SIT', 'Realizar una práctica de SIT', '2012-12-05', '232', '2342', '2012-12-20', NULL, NULL, '0000-00-00 00:00:00'),
(7, 'Un proyecto', 'asdfa ', '2012-12-05', '212342', '2342', '2012-12-21', NULL, NULL, '2012-12-04 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proposta`
--

CREATE TABLE IF NOT EXISTS `proposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titol` varchar(100) NOT NULL,
  `descripcio` varchar(300) DEFAULT NULL,
  `riscs` varchar(300) DEFAULT NULL,
  `acceptat` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `denegat` tinyint(1) DEFAULT NULL,
  `pendent` tinyint(1) DEFAULT NULL,
  `tipus_projecte_id` int(11) DEFAULT NULL,
  `Persones_DNI` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Proposta_tipus_projecte1_idx` (`tipus_projecte_id`),
  KEY `fk_Proposta_Persones1_idx` (`Persones_DNI`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `proposta`
--

INSERT INTO `proposta` (`id`, `titol`, `descripcio`, `riscs`, `acceptat`, `data`, `denegat`, `pendent`, `tipus_projecte_id`, `Persones_DNI`) VALUES
(6, 'asdfa', 'asdf', 'asdf', 1, '2012-12-06', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguiment_projecte`
--

CREATE TABLE IF NOT EXISTS `seguiment_projecte` (
  `id` int(11) NOT NULL,
  `canvi` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `seguiment_projecte`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipus_projecte`
--

CREATE TABLE IF NOT EXISTS `tipus_projecte` (
  `id` int(11) NOT NULL,
  `tipus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `tipus_projecte`
--


--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `objectius_tactics`
--
ALTER TABLE `objectius_tactics`
  ADD CONSTRAINT `fk_Objectius_tactics_Objectius_estrategics1` FOREIGN KEY (`Objectius_estrategics_id`) REFERENCES `objectius_estrategics` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `objectius_tactics_has_projecte`
--
ALTER TABLE `objectius_tactics_has_projecte`
  ADD CONSTRAINT `fk_Objectius_tactics_has_Projecte_Objectius_tactics1` FOREIGN KEY (`Objectius_tactics_id`, `Objectius_tactics_Objectius_estrategics_id`) REFERENCES `objectius_tactics` (`id`, `Objectius_estrategics_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Objectius_tactics_has_Projecte_Projecte1` FOREIGN KEY (`Projecte_id`) REFERENCES `projecte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `operacio`
--
ALTER TABLE `operacio`
  ADD CONSTRAINT `fk_Operacio_Projecte1` FOREIGN KEY (`Projecte_id`) REFERENCES `projecte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persones`
--
ALTER TABLE `persones`
  ADD CONSTRAINT `fk_Persones_Departaments1` FOREIGN KEY (`departaments_id`) REFERENCES `departaments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `projecte`
--
ALTER TABLE `projecte`
  ADD CONSTRAINT `fk_Projecte_Proposta` FOREIGN KEY (`Proposta_id`) REFERENCES `proposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Projecte_Seguiment_projecte1` FOREIGN KEY (`Seguiment_projecte_id`) REFERENCES `seguiment_projecte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proposta`
--
ALTER TABLE `proposta`
  ADD CONSTRAINT `fk_Proposta_Persones1` FOREIGN KEY (`Persones_DNI`) REFERENCES `persones` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proposta_tipus_projecte1` FOREIGN KEY (`tipus_projecte_id`) REFERENCES `tipus_projecte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
