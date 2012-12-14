-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2012 a las 00:46:25
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
('cdf629dc0ab322687f99cd12aed3da82', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1355528479, 0x613a31363a7b733a393a22757365725f64617461223b733a303a22223b733a373a22757365725f6964223b733a313a2232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a363a2270657266696c223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a363a22456469746172223b693a313b733a383a22456c696d696e6172223b693a313b733a393a2250726f6a6563746573223b693a313b733a393a2250726f706f73746573223b693a313b733a31323a22446570617274616d656e7473223b693a313b733a393a224f626a656374697573223b693a313b733a373a2255737561726973223b693a313b733a383a224f7065726163696f223b693a313b733a383a22506572736f6e6573223b693a313b733a373a2253657276656973223b693a313b733a393a225072696e6369706973223b693a313b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decisio`
--

CREATE TABLE IF NOT EXISTS `decisio` (
  `id_decisio` int(2) NOT NULL AUTO_INCREMENT,
  `id_projecte` int(2) NOT NULL,
  `descripcio` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_decisio`),
  KEY `id_projecte` (`id_projecte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
-- Estructura de tabla para la tabla `estat`
--

CREATE TABLE IF NOT EXISTS `estat` (
  `id_estat` int(1) NOT NULL AUTO_INCREMENT,
  `estat` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estat`
--

INSERT INTO `estat` (`id_estat`, `estat`) VALUES
(1, 'Acceptat'),
(2, 'Pendent'),
(4, 'Cancelat');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_estrategics`
--

CREATE TABLE IF NOT EXISTS `objectius_estrategics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  `data_objectiu` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `objectius_estrategics`
--

INSERT INTO `objectius_estrategics` (`id`, `objectiu`, `data_objectiu`) VALUES
(1, 'Objetivo 1', '2012-12-12'),
(2, 'Objetivo 2', '2012-12-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_tactics`
--

CREATE TABLE IF NOT EXISTS `objectius_tactics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  `Objectius_estrategics_id` int(11) NOT NULL,
  `descripcio` text NOT NULL,
  PRIMARY KEY (`id`,`Objectius_estrategics_id`),
  KEY `fk_Objectius_tactics_Objectius_estrategics1_idx` (`Objectius_estrategics_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `objectius_tactics`
--

INSERT INTO `objectius_tactics` (`id`, `objectiu`, `Objectius_estrategics_id`, `descripcio`) VALUES
(1, 'Objetivo 1', 1, ''),
(2, 'Objetivo 2', 2, ''),
(3, 'Objetivo 3', 2, ''),
(4, 'Objetivo 4', 2, ''),
(6, 'Objetivo 5', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_tactics_has_projecte`
--

CREATE TABLE IF NOT EXISTS `objectius_tactics_has_projecte` (
  `Objectius_tactics_id` int(11) NOT NULL,
  `id_ot` int(11) NOT NULL AUTO_INCREMENT,
  `Projecte_id` int(11) NOT NULL,
  PRIMARY KEY (`id_ot`),
  UNIQUE KEY `Objectius_tactics_id_2` (`Objectius_tactics_id`,`Projecte_id`),
  KEY `Objectius_tactics_id` (`Objectius_tactics_id`),
  KEY `Projecte_id` (`Projecte_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `objectius_tactics_has_projecte`
--

INSERT INTO `objectius_tactics_has_projecte` (`Objectius_tactics_id`, `id_ot`, `Projecte_id`) VALUES
(1, 45, 15),
(2, 40, 11),
(3, 42, 12),
(4, 41, 11),
(4, 43, 12),
(4, 46, 15),
(6, 44, 12);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

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
(13, 9, 1),
(15, 10, 1),
(16, 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_permiso` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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
(9, 'Persones', ''),
(10, 'Serveis', ''),
(11, 'Principis', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persones`
--

CREATE TABLE IF NOT EXISTS `persones` (
  `id_persona` int(2) NOT NULL AUTO_INCREMENT,
  `nom_complet` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `departaments_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `fk_Persones_Departaments1_idx` (`departaments_id`),
  KEY `fk_Persones_Departaments1` (`departaments_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `persones`
--

INSERT INTO `persones` (`id_persona`, `nom_complet`, `email`, `departaments_id`) VALUES
(1, 'Eduardo Gasser', 'edugasser', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principi`
--

CREATE TABLE IF NOT EXISTS `principi` (
  `id_principi` int(2) NOT NULL AUTO_INCREMENT,
  `titol` varchar(50) NOT NULL,
  `descripcio` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_principi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projecte`
--

CREATE TABLE IF NOT EXISTS `projecte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titol` varchar(100) NOT NULL,
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
  KEY `fk_Projecte_Proposta_idx` (`Proposta_id`),
  KEY `id_responsable` (`id_responsable`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `projecte`
--

INSERT INTO `projecte` (`id`, `titol`, `descripcio`, `data_inici`, `pressupost_inicial`, `pressupost_final`, `data_entrega`, `Proposta_id`, `id_responsable`, `prioritat`, `monotoritzacio_temps`, `monotoritzacio_recursos`, `monotoritzacio_qualitat`) VALUES
(11, 'Proyecto 1', 'descripcion', '2012-12-12', '2342', '2342', '2012-12-12', 14, 1, 'Mitjana', 3, 2, 1),
(12, 'Proyecto 2', 'Descripcion', '2012-12-12', '2222', '3333', '2012-12-12', 14, 1, 'Alta', 2, 3, 3),
(13, 'asdfsdfsd', '<p>\r\n	sdfsdfs</p>', '0000-00-00', '2342', '2342', '0000-00-00', 14, 1, 'Mitjana', 1, 1, 1),
(14, 'ssssssss', '<p>\r\n	dfsds</p>', '0000-00-00', '', '', '0000-00-00', 14, 1, 'Mitjana', 1, 1, 1),
(15, 'hhhhhhhh', 'dfgdf', '2012-10-13', '2342', '232', '2012-10-13', 14, 1, 'Mitjana', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proposta`
--

CREATE TABLE IF NOT EXISTS `proposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titol` varchar(100) NOT NULL,
  `descripcio` text,
  `riscs` varchar(300) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `tipus_projecte_id` int(11) DEFAULT NULL,
  `estat_projecte` int(2) NOT NULL,
  `decisio` text,
  PRIMARY KEY (`id`),
  KEY `fk_Proposta_tipus_projecte1_idx` (`tipus_projecte_id`),
  KEY `estat_projecte` (`estat_projecte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `proposta`
--

INSERT INTO `proposta` (`id`, `titol`, `descripcio`, `riscs`, `data`, `tipus_projecte_id`, `estat_projecte`, `decisio`) VALUES
(14, 'Terminar la practica', '<p>\n	Descripcion</p>\n', 'Riesgos', '2012-12-11', 1, 4, '<p>\n	Holasds sd</p>\n'),
(15, 'Propuesta 2', ' bla bla bla', 'Riesgos', '2012-12-12', 1, 4, '<p>\n	asd asdfasdasd asd asds</p>\n'),
(16, 'Propuesta 3', ' balba lba l', 'asdf', '2012-12-18', 1, 1, NULL);

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
-- Estructura de tabla para la tabla `servicis`
--

CREATE TABLE IF NOT EXISTS `servicis` (
  `id_servici` int(2) NOT NULL AUTO_INCREMENT,
  `nom_servei` varchar(100) NOT NULL,
  `descripcio_servei` text NOT NULL,
  `data_servei` date NOT NULL,
  `estat_servei` varchar(10) NOT NULL,
  PRIMARY KEY (`id_servici`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `servicis`
--

INSERT INTO `servicis` (`id_servici`, `nom_servei`, `descripcio_servei`, `data_servei`, `estat_servei`) VALUES
(1, 'Servei', '<p>\n	Descripci&oacute;n</p>\n', '2012-12-19', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipus_projecte`
--

CREATE TABLE IF NOT EXISTS `tipus_projecte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tipus_projecte`
--

INSERT INTO `tipus_projecte` (`id`, `tipus`) VALUES
(1, 'Tecnologia');

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
(2, 'admin', '$2a$08$Fc8ch.9YrFlD7TvlDa8u/ejOERQRjRrpxsNEgTZMponx/I6x3vW3e', 'edugasser@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, '::1', '2012-12-14 21:46:30', '2012-12-10 18:00:57', '2012-12-14 20:46:30', 1);

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
-- Filtros para la tabla `decisio`
--
ALTER TABLE `decisio`
  ADD CONSTRAINT `decisio_ibfk_1` FOREIGN KEY (`id_projecte`) REFERENCES `projecte` (`id`);

--
-- Filtros para la tabla `objectius_tactics`
--
ALTER TABLE `objectius_tactics`
  ADD CONSTRAINT `fk_Objectius_tactics_Objectius_estrategics1` FOREIGN KEY (`Objectius_estrategics_id`) REFERENCES `objectius_estrategics` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `objectius_tactics_has_projecte`
--
ALTER TABLE `objectius_tactics_has_projecte`
  ADD CONSTRAINT `objectius_tactics_has_projecte_ibfk_1` FOREIGN KEY (`Objectius_tactics_id`) REFERENCES `objectius_tactics` (`id`),
  ADD CONSTRAINT `objectius_tactics_has_projecte_ibfk_2` FOREIGN KEY (`Projecte_id`) REFERENCES `projecte` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
