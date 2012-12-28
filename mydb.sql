-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-12-2012 a las 11:14:27
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
('26da9e0ec695dc3d33f24194f7d10364', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11', 1356689308, 0x613a31323a7b733a393a22757365725f64617461223b733a303a22223b733a373a22757365725f6964223b733a313a2232223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a363a2270657266696c223b733a313a2231223b733a353a22656d61696c223b733a31393a2265647567617373657240676d61696c2e636f6d223b733a363a22737461747573223b733a313a2231223b733a363a22456469746172223b693a313b733a383a22456c696d696e6172223b693a313b733a393a2250726f6a6563746573223b693a313b733a373a2255737561726973223b693a313b733a32313a225072696e63697069735f695f6f626a656374697573223b693a313b733a373a22536573696f6e73223b693a313b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decision`
--

CREATE TABLE IF NOT EXISTS `decision` (
  `id_decision` int(2) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `data` date NOT NULL,
  `alineado` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `id_reunion` int(2) NOT NULL,
  PRIMARY KEY (`id_decision`),
  KEY `id_reunion` (`id_reunion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `decision`
--

INSERT INTO `decision` (`id_decision`, `descripcion`, `data`, `alineado`, `id_reunion`) VALUES
(4, '<p>\r\n	Decision 1</p>\r\n', '2012-12-16', 'Objectiu estrategic', 3),
(5, '<p>\r\n	Decision 2</p>\r\n', '2012-12-14', 'Projecte', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE IF NOT EXISTS `encuesta` (
  `id_encuensta` int(2) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `id_projecte` int(2) NOT NULL,
  PRIMARY KEY (`id_encuensta`),
  KEY `id_projecte` (`id_projecte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id_encuensta`, `pregunta`, `data`, `id_projecte`) VALUES
(1, '¿Está conforme con los resultados del proyecto?', '2012-12-17', 26),
(2, '¿Cree que el proyecto cumple con los requerimientos iniciales?', '2012-12-21', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_resultado`
--

CREATE TABLE IF NOT EXISTS `encuesta_resultado` (
  `id_encuesta` int(2) NOT NULL,
  `resultado` int(10) NOT NULL,
  `id_encuesta_resultado` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_encuesta_resultado`),
  KEY `id_encuesta` (`id_encuesta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `encuesta_resultado`
--

INSERT INTO `encuesta_resultado` (`id_encuesta`, `resultado`, `id_encuesta_resultado`) VALUES
(1, 5, 1),
(1, 7, 2),
(2, 2, 3),
(2, 9, 4),
(2, 9, 5),
(2, 7, 6),
(2, 4, 7),
(2, 5, 8),
(2, 3, 9);

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
-- Estructura de tabla para la tabla `estructures`
--

CREATE TABLE IF NOT EXISTS `estructures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `estructures`
--

INSERT INTO `estructures` (`id`, `dept`) VALUES
(2, 'Consejo dirección'),
(5, 'Comité tècnic'),
(6, 'Consejo de administración');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE IF NOT EXISTS `incidencia` (
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
  KEY `id_servei_2` (`id_servei`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`id_incidencia`, `incidencia`, `descripcion`, `data`, `estat`, `prioritat`, `solucion`, `id_servei`) VALUES
(1, 'incidencia 1', '<p>\r\n	asd asd</p>\r\n', '2013-01-01', 'Oberta', 'Alta', '<p>\r\n	asd asd s</p>\r\n', 1),
(2, 'incidencia 2', '<p>\n	as ds</p>\n', '2013-03-15', 'Tancada', 'Alta', '<p>\n	as sds</p>\n', 2),
(3, 'Incidencia 2', '', '2013-02-13', 'Tancada', 'Mitja', '', 1),
(4, 'Incidencia 3', '', '2013-02-15', 'Tancada', 'Baixa', '', 1),
(5, 'Incidencia 4', '', '2013-04-11', 'Tancada', 'Mitja', '', 1),
(6, 'Incidencia nueva', '<p>\n	asdfs</p>\n', '2013-02-13', 'Tancada', 'Mitja', '', 2),
(7, 'Incidencia nueva', '', '2013-02-01', 'Tancada', 'Alta', '', 2);

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
  `descripcio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `objectius_estrategics`
--

INSERT INTO `objectius_estrategics` (`id`, `objectiu`, `data_objectiu`, `descripcio`) VALUES
(1, 'Incorporar las Tic a la docencia en las aulas', '2012-12-12', '<p>\r\n	Incorporar las Tic a la docencia en las aulas.</p>\r\n'),
(4, 'Proporcionar infraestructura tecnológica compartida', '2012-12-21', '<p>\r\n	Proporcionar infraestructura tecnol&oacute;gica compartida</p>\r\n'),
(5, 'Facilitar la docencia virtual', '2012-12-28', '<p>\r\n	Facilitar la docencia virtual</p>\r\n'),
(6, 'Promover la divulgación de la actividad investigadora mediante las herramientas TIC', '2012-12-29', '<p>\r\n	Promover la divulgaci&oacute;n de la actividad investigadora mediante las herramientas TIC</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_tactics`
--

CREATE TABLE IF NOT EXISTS `objectius_tactics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  `descripcio` text NOT NULL,
  `fecha` date NOT NULL,
  `Objectius_estrategics_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Objectius_estrategics_id` (`Objectius_estrategics_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `objectius_tactics`
--

INSERT INTO `objectius_tactics` (`id`, `objectiu`, `descripcio`, `fecha`, `Objectius_estrategics_id`) VALUES
(1, 'Proveer conexion Internet', '<p>\n	Instalar conexi&oacute;n a Internet y medios multimedia en cada aula de docencia.</p>\n', '2012-12-15', 4),
(3, 'Modernizar aulas informática', '<p>\n	Definir un modelo de aulas inform&aacute;ticas modernizadas.</p>\n', '2012-12-15', 5),
(9, 'Calidad videoconferencias', '<p>\r\n	Mejorar la calidad de las videoconferencias.</p>\r\n', '2012-12-20', NULL),
(13, 'Red inalámbrica', '<p>\r\n	Implantaci&oacute;n de una red inal&aacute;mbrica en la toda la universidad.</p>\r\n', '2012-12-19', 1),
(15, 'Mejorar portal web', '<p>\r\n	Mejorar el portal web que divulgue la oferta inverstigadora y la producci&oacute;n cient&iacute;fica de la universidad.</p>\r\n', '2012-12-26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objectius_tactics_has_projecte`
--

CREATE TABLE IF NOT EXISTS `objectius_tactics_has_projecte` (
  `Objectius_tactics_id` int(11) DEFAULT NULL,
  `id_ot` int(11) NOT NULL AUTO_INCREMENT,
  `Projecte_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ot`),
  UNIQUE KEY `Objectius_tactics_id_2` (`Objectius_tactics_id`,`Projecte_id`),
  KEY `Objectius_tactics_id` (`Objectius_tactics_id`),
  KEY `Projecte_id` (`Projecte_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Volcado de datos para la tabla `objectius_tactics_has_projecte`
--

INSERT INTO `objectius_tactics_has_projecte` (`Objectius_tactics_id`, `id_ot`, `Projecte_id`) VALUES
(1, 67, 28),
(3, 71, NULL),
(3, 77, 25),
(9, 70, NULL),
(9, 75, 26),
(13, 72, NULL),
(13, 80, 25),
(13, 76, 26),
(15, 78, 26),
(15, 68, 28);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `operacio`
--

INSERT INTO `operacio` (`id`, `nom`, `data_inici`, `data_final`, `cost_en_curs`, `Projecte_id`) VALUES
(4, 'Una operacio', '2012-12-05', '2012-12-12', 2342, 25),
(11, 'Nueva operació', '2012-12-10', '2012-12-19', 8681, 26),
(13, 'Otra', '2012-12-05', '2012-12-19', 23423, 27),
(14, 'Operacion 2', '2012-12-04', '2012-12-12', 100, 27),
(15, 'Otra operación', '2012-12-11', '2012-12-27', NULL, 26),
(16, 'Otra', '2012-12-17', '2012-12-04', 1231, 26),
(17, 'Otra mas', '2012-12-05', '2012-12-12', NULL, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(100) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_perfil`) VALUES
(1, 'admin'),
(6, 'becari');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `perfil_permisos`
--

INSERT INTO `perfil_permisos` (`id_perfil_permisos`, `id_permiso`, `id_perfil`) VALUES
(1, 1, 1),
(3, 1, 3),
(2, 2, 1),
(8, 3, 1),
(5, 3, 3),
(19, 3, 4),
(21, 3, 5),
(23, 3, 6),
(6, 4, 3),
(4, 6, 3),
(11, 7, 1),
(17, 12, 1),
(18, 13, 1),
(20, 13, 4),
(22, 13, 5),
(24, 13, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_permiso` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id_permiso`, `nombre_permiso`, `url`) VALUES
(1, 'Editar', ''),
(2, 'Eliminar', ''),
(3, 'Projectes', ''),
(7, 'Usuaris', ''),
(12, 'Principis_i_objectius', ''),
(13, 'Sesions', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_projecte`
--

CREATE TABLE IF NOT EXISTS `persona_projecte` (
  `id_persona_projecte` int(2) NOT NULL AUTO_INCREMENT,
  `id_persona` int(2) NOT NULL,
  `id_projecte` int(2) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_persona_projecte`),
  UNIQUE KEY `id_persona_2` (`id_persona`,`id_projecte`),
  KEY `id_persona` (`id_persona`,`id_projecte`),
  KEY `id_projecte` (`id_projecte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `persona_projecte`
--

INSERT INTO `persona_projecte` (`id_persona_projecte`, `id_persona`, `id_projecte`, `data`) VALUES
(1, 1, 26, '0000-00-00'),
(2, 2, 26, '0000-00-00'),
(3, 3, 28, '0000-00-00'),
(4, 3, 27, '0000-00-00'),
(5, 6, 28, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persones`
--

CREATE TABLE IF NOT EXISTS `persones` (
  `id_persona` int(2) NOT NULL AUTO_INCREMENT,
  `nom_complet` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estructures_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `fk_Persones_Departaments1_idx` (`estructures_id`),
  KEY `fk_Persones_Departaments1` (`estructures_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `persones`
--

INSERT INTO `persones` (`id_persona`, `nom_complet`, `email`, `estructures_id`) VALUES
(1, 'Eduardo Gasser', 'edugasser@gmail.com', 2),
(2, 'Vicenç Juan Monserrat Tomàs', 'vtomasr5@gmail.com', 2),
(3, 'Juan José Pol Fuentes', 'juanjopol@gmail.com', 5),
(4, 'Pepe Gomez', NULL, 5),
(5, 'Juanita Lopez', NULL, 5),
(6, 'Juan Hidalgo', NULL, 6);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `principi`
--

INSERT INTO `principi` (`id_principi`, `titol`, `descripcio`, `data`) VALUES
(1, 'Principio 1', '<p>\r\n	Descripcion</p>\r\n', '2012-12-13'),
(2, 'Principio 2', '<p>\r\n	asd asdf sd</p>\r\n', '2012-12-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principi_oestrategics`
--

CREATE TABLE IF NOT EXISTS `principi_oestrategics` (
  `id_po` int(2) NOT NULL AUTO_INCREMENT,
  `id_principi` int(2) NOT NULL,
  `id_objectius_estrategics` int(2) NOT NULL,
  PRIMARY KEY (`id_po`),
  UNIQUE KEY `id_principi_2` (`id_principi`,`id_objectius_estrategics`),
  KEY `id_principi` (`id_principi`,`id_objectius_estrategics`),
  KEY `id_objectius_estrategics` (`id_objectius_estrategics`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `principi_oestrategics`
--

INSERT INTO `principi_oestrategics` (`id_po`, `id_principi`, `id_objectius_estrategics`) VALUES
(5, 1, 1),
(6, 1, 4),
(3, 2, 1),
(7, 2, 6);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `projecte`
--

INSERT INTO `projecte` (`id`, `titol`, `descripcio`, `data_inici`, `pressupost_inicial`, `pressupost_final`, `data_entrega`, `Proposta_id`, `id_responsable`, `prioritat`, `monotoritzacio_temps`, `monotoritzacio_recursos`, `monotoritzacio_qualitat`) VALUES
(25, 'Tutoria / Soporte remoto', 'El soporte remoto ¡es una solución ideal para el personal de IT que busca asistir a sus clientes remotamente y a la vez ahorrar tiempo y dinero.', '2012-12-01', '1000', '1000', '2012-12-31', 14, 3, 'Mitja', 3, 2, 2),
(26, 'Arquitectura Moodle', 'Renovar la arquitectura Moodle.', '2012-12-13', '3000', '3000', '2012-12-16', 14, 3, 'Baixa', 2, 1, 1),
(27, 'Control de acceso', 'Sistemas para control de acceso con lector de huella digital, clave y tarjeta inteligente', '2012-12-01', '2050', '2050', '2013-01-01', 14, 1, 'Alta', 3, 2, 1),
(28, 'Soporte chat para la administración', 'Que el personal de administración disponga de un chat para realizar las consultas con los alumnos/profesores.', '2012-12-19', '50000', '50000', '2013-01-09', 14, 1, 'Mitja', 1, 2, 2);

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
(15, 'Propuesta 2', ' bla bla bla', 'Riesgos', '2012-12-12', 1, 2, '<p>\n	asd asdfasdasd asd asds</p>\n'),
(16, 'Propuesta 3', ' balba lba l', 'asdf', '2012-12-18', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reunion`
--

CREATE TABLE IF NOT EXISTS `reunion` (
  `titol` varchar(100) NOT NULL,
  `id_reunion` int(2) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_reunion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `reunion`
--

INSERT INTO `reunion` (`titol`, `id_reunion`, `descripcion`, `data`) VALUES
('Presupuesto 2013', 2, '<p>\r\n	El objetivo de la reunion es definir el prespuesto para el proximo 2013</p>\r\n', '2012-12-16'),
('Cambio servidores', 3, '<p>\r\n	Cambio servidores</p>\r\n', '2012-12-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reunion_estructura`
--

CREATE TABLE IF NOT EXISTS `reunion_estructura` (
  `id_reunion_estructura` int(2) NOT NULL AUTO_INCREMENT,
  `id_reunion` int(2) NOT NULL,
  `id_estructura` int(2) NOT NULL,
  PRIMARY KEY (`id_reunion_estructura`),
  KEY `id_reunion` (`id_reunion`),
  KEY `id_estructura` (`id_estructura`),
  KEY `id_estructura_2` (`id_estructura`),
  KEY `id_reunion_2` (`id_reunion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `reunion_estructura`
--

INSERT INTO `reunion_estructura` (`id_reunion_estructura`, `id_reunion`, `id_estructura`) VALUES
(2, 2, 5),
(3, 3, 2);

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
  PRIMARY KEY (`id_servici`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `servicis`
--

INSERT INTO `servicis` (`id_servici`, `nom_servei`, `descripcio_servei`, `data_servei`) VALUES
(1, 'Correu electronic', '<p>\n	Descripci&oacute;n</p>\n', '2012-12-19'),
(2, 'WIFI', '<p>\n	asd sd s</p>\n', '2012-12-19');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `perfil`) VALUES
(2, 'admin', '$2a$08$Fc8ch.9YrFlD7TvlDa8u/ejOERQRjRrpxsNEgTZMponx/I6x3vW3e', 'edugasser@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, '::1', '2012-12-28 11:00:24', '2012-12-10 18:00:57', '2012-12-28 10:00:24', 1),
(3, 'becari', '$2a$08$aAZJL9JEaC9smBzHHWSwqeK.LXYZ6x3AM9tBsnVPXKEEx34rKVI8q', 'becari@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, '::1', '2012-12-17 13:28:23', '2012-12-17 13:13:44', '2012-12-17 13:28:23', 6);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 3, NULL, NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `decision`
--
ALTER TABLE `decision`
  ADD CONSTRAINT `decision_ibfk_1` FOREIGN KEY (`id_reunion`) REFERENCES `reunion` (`id_reunion`);

--
-- Filtros para la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD CONSTRAINT `encuesta_ibfk_1` FOREIGN KEY (`id_projecte`) REFERENCES `projecte` (`id`);

--
-- Filtros para la tabla `encuesta_resultado`
--
ALTER TABLE `encuesta_resultado`
  ADD CONSTRAINT `encuesta_resultado_ibfk_1` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta` (`id_encuensta`);

--
-- Filtros para la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD CONSTRAINT `incidencia_ibfk_1` FOREIGN KEY (`id_servei`) REFERENCES `servicis` (`id_servici`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `objectius_tactics`
--
ALTER TABLE `objectius_tactics`
  ADD CONSTRAINT `objectius_tactics_ibfk_1` FOREIGN KEY (`Objectius_estrategics_id`) REFERENCES `objectius_estrategics` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `objectius_tactics_has_projecte`
--
ALTER TABLE `objectius_tactics_has_projecte`
  ADD CONSTRAINT `objectius_tactics_has_projecte_ibfk_3` FOREIGN KEY (`Projecte_id`) REFERENCES `projecte` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `objectius_tactics_has_projecte_ibfk_4` FOREIGN KEY (`Objectius_tactics_id`) REFERENCES `objectius_tactics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_projecte`
--
ALTER TABLE `persona_projecte`
  ADD CONSTRAINT `persona_projecte_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persones` (`id_persona`),
  ADD CONSTRAINT `persona_projecte_ibfk_2` FOREIGN KEY (`id_projecte`) REFERENCES `projecte` (`id`);

--
-- Filtros para la tabla `principi_oestrategics`
--
ALTER TABLE `principi_oestrategics`
  ADD CONSTRAINT `principi_oestrategics_ibfk_1` FOREIGN KEY (`id_principi`) REFERENCES `principi` (`id_principi`),
  ADD CONSTRAINT `principi_oestrategics_ibfk_3` FOREIGN KEY (`id_objectius_estrategics`) REFERENCES `objectius_estrategics` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proposta`
--
ALTER TABLE `proposta`
  ADD CONSTRAINT `proposta_ibfk_1` FOREIGN KEY (`estat_projecte`) REFERENCES `estat` (`id_estat`);

--
-- Filtros para la tabla `reunion_estructura`
--
ALTER TABLE `reunion_estructura`
  ADD CONSTRAINT `reunion_estructura_ibfk_1` FOREIGN KEY (`id_reunion`) REFERENCES `reunion` (`id_reunion`),
  ADD CONSTRAINT `reunion_estructura_ibfk_2` FOREIGN KEY (`id_estructura`) REFERENCES `estructures` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
