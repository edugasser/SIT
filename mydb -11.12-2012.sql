-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2012 a las 22:58:18
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('3943b3b4bc7630a8fc634ef31ef179b6', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11', 1355262904, 0x613a323a7b733a393a22757365725f64617461223b733a303a22223b733a31313a2275726c5f686973746f7279223b613a313a7b693a303b733a31303a22617574682f6c6f67696e223b7d7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departaments`
--

CREATE TABLE IF NOT EXISTS `departaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `departaments`
--

INSERT INTO `departaments` (`id`, `dept`) VALUES
(1, 'Logística'),
(2, 'Comercial'),
(5, 'Nou');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'edugasser', '2012-12-11 21:55:16'),
(2, '::1', 'edugasser', '2012-12-11 21:55:18'),
(3, '::1', 'edugasser', '2012-12-11 21:55:20'),
(4, '::1', 'edugasser', '2012-12-11 21:55:23'),
(5, '::1', 'edugasser', '2012-12-11 21:55:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_estrategics`
--

CREATE TABLE IF NOT EXISTS `objectius_estrategics` (
  `id` int(11) NOT NULL,
  `objectiu` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `operacio`
--

INSERT INTO `operacio` (`id`, `nom`, `data_inici`, `data_final`, `cost_en_curs`, `Projecte_id`) VALUES
(4, 'Una operacio', '2012-12-05', '2012-12-12', 2342, 2),
(11, 'Nueva operació', '2012-12-10', '2012-12-19', 8681, 7),
(13, 'Otra', '2012-12-05', '2012-12-19', 23423, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(100) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_perfil`) VALUES
(1, 'admin'),
(2, 'cio'),
(3, 'becari');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_permisos`
--

CREATE TABLE IF NOT EXISTS `perfil_permisos` (
  `id_perfil_permisos` int(2) NOT NULL AUTO_INCREMENT,
  `id_permiso` int(2) NOT NULL,
  `id_perfil` int(2) NOT NULL,
  PRIMARY KEY (`id_perfil_permisos`),
  KEY `id_permiso` (`id_permiso`,`id_perfil`),
  KEY `id_perfil` (`id_perfil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `perfil_permisos`
--

INSERT INTO `perfil_permisos` (`id_perfil_permisos`, `id_permiso`, `id_perfil`) VALUES
(1, 1, 1),
(3, 1, 3),
(2, 2, 1),
(8, 3, 1),
(5, 3, 3),
(9, 4, 1),
(10, 4, 1),
(6, 4, 3),
(14, 5, 1),
(7, 6, 1),
(4, 6, 3),
(11, 7, 1),
(12, 8, 1),
(13, 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_permiso` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id_permiso`, `nombre_permiso`, `url`) VALUES
(1, 'Editar', ''),
(2, 'Eliminar', ''),
(3, 'Projectes', ''),
(4, 'Propostes', ''),
(5, 'Departaments', ''),
(6, 'Objectius', ''),
(7, 'Usuaris', ''),
(8, 'Operacio', ''),
(9, 'Persones', '');

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
  KEY `fk_Persones_Departaments1_idx` (`departaments_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `persones`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `projecte`
--

INSERT INTO `projecte` (`id`, `titol`, `descripcio`, `data_inici`, `pressupost_inicial`, `pressupost_final`, `data_entrega`, `Proposta_id`, `Seguiment_projecte_id`, `data_registre`) VALUES
(2, 'Práctica de SIT', 'Realizar una práctica de SIT', '2012-12-05', '232', '2342', '2012-12-20', NULL, NULL, '0000-00-00 00:00:00'),
(7, 'Un proyecto', 'asdfa ', '2012-12-05', '212342', '2342', '2012-12-21', NULL, NULL, '2012-12-03 23:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `proposta`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipus_projecte`
--

CREATE TABLE IF NOT EXISTS `tipus_projecte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipus_projecte`
--

INSERT INTO `tipus_projecte` (`id`, `tipus`) VALUES
(1, 'asdfsd'),
(2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
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
  `perfil` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil` (`perfil`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `perfil`) VALUES
(2, 'edugasser', '$2a$08$Fc8ch.9YrFlD7TvlDa8u/ejOERQRjRrpxsNEgTZMponx/I6x3vW3e', 'edugasser@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, '::1', '2012-12-10 21:01:26', '2012-12-10 18:00:57', '2012-12-10 20:01:26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
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
-- Filtros para la tabla `perfil_permisos`
--
ALTER TABLE `perfil_permisos`
  ADD CONSTRAINT `perfil_permisos_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`),
  ADD CONSTRAINT `perfil_permisos_ibfk_2` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`);

--
-- Filtros para la tabla `persones`
--
ALTER TABLE `persones`
  ADD CONSTRAINT `fk_Persones_Departaments1` FOREIGN KEY (`Departaments_id`) REFERENCES `departaments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id_perfil`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
