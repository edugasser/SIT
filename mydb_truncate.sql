SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


use mydb;

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



CREATE TABLE IF NOT EXISTS `decision` (
  `id_decision` int(2) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `data` date NOT NULL,
  `alineado` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `id_reunion` int(2) NOT NULL,
  PRIMARY KEY (`id_decision`),
  KEY `id_reunion` (`id_reunion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;



CREATE TABLE IF NOT EXISTS `encuesta` (
  `id_encuensta` int(2) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `id_projecte` int(2) NOT NULL,
  PRIMARY KEY (`id_encuensta`),
  KEY `id_projecte` (`id_projecte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;



CREATE TABLE IF NOT EXISTS `encuesta_resultado` (
  `id_encuesta` int(2) NOT NULL,
  `resultado` int(10) NOT NULL,
  `id_encuesta_resultado` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_encuesta_resultado`),
  KEY `id_encuesta` (`id_encuesta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;



CREATE TABLE IF NOT EXISTS `estat` (
  `id_estat` int(1) NOT NULL AUTO_INCREMENT,
  `estat` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;



INSERT INTO `estat` (`id_estat`, `estat`) VALUES
(1, 'Acceptat'),
(2, 'Pendent'),
(4, 'Cancelat');



CREATE TABLE IF NOT EXISTS `estructures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;



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



CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;



CREATE TABLE IF NOT EXISTS `objectius_estrategics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  `data_objectiu` date NOT NULL,
  `descripcio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;



CREATE TABLE IF NOT EXISTS `objectius_tactics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectiu` varchar(300) DEFAULT NULL,
  `descripcio` text NOT NULL,
  `fecha` date NOT NULL,
  `Objectius_estrategics_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Objectius_estrategics_id` (`Objectius_estrategics_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;



CREATE TABLE IF NOT EXISTS `objectius_tactics_has_projecte` (
  `Objectius_tactics_id` int(11) DEFAULT NULL,
  `id_ot` int(11) NOT NULL AUTO_INCREMENT,
  `Projecte_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ot`),
  UNIQUE KEY `Objectius_tactics_id_2` (`Objectius_tactics_id`,`Projecte_id`),
  KEY `Objectius_tactics_id` (`Objectius_tactics_id`),
  KEY `Projecte_id` (`Projecte_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;



CREATE TABLE IF NOT EXISTS `operacio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `data_inici` date DEFAULT NULL,
  `data_final` date DEFAULT NULL,
  `cost_en_curs` float DEFAULT NULL,
  `Projecte_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`Projecte_id`),
  KEY `fk_Operacio_Projecte1_idx` (`Projecte_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;



CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(100) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;



INSERT INTO `perfil` (`id_perfil`, `nombre_perfil`) VALUES
(1, 'admin');




CREATE TABLE IF NOT EXISTS `perfil_permisos` (
  `id_perfil_permisos` int(2) NOT NULL AUTO_INCREMENT,
  `id_permiso` int(2) NOT NULL,
  `id_perfil` int(2) NOT NULL,
  PRIMARY KEY (`id_perfil_permisos`),
  KEY `id_permiso` (`id_permiso`,`id_perfil`),
  KEY `id_perfil` (`id_perfil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;


INSERT INTO `perfil_permisos` (`id_perfil_permisos`, `id_permiso`, `id_perfil`) VALUES
(1, 1, 1),
(2, 2, 1),
(8, 3, 1),
(3, 7, 1),
(20, 12, 1),
(21, 13, 1);



CREATE TABLE IF NOT EXISTS `permiso` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_permiso` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;


INSERT INTO `permiso` (`id_permiso`, `nombre_permiso`, `url`) VALUES
(1, 'Editar', ''),
(2, 'Eliminar', ''),
(3, 'Projectes', ''),
(7, 'Usuaris', ''),
(12, 'Principis_i_objectius', ''),
(13, 'Sesions', '');



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



CREATE TABLE IF NOT EXISTS `persones` (
  `id_persona` int(2) NOT NULL AUTO_INCREMENT,
  `nom_complet` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estructures_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `fk_Persones_Departaments1_idx` (`estructures_id`),
  KEY `fk_Persones_Departaments1` (`estructures_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;



CREATE TABLE IF NOT EXISTS `principi` (
  `id_principi` int(2) NOT NULL AUTO_INCREMENT,
  `titol` varchar(50) NOT NULL,
  `descripcio` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_principi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;



CREATE TABLE IF NOT EXISTS `principi_oestrategics` (
  `id_po` int(2) NOT NULL AUTO_INCREMENT,
  `id_principi` int(2) NOT NULL,
  `id_objectius_estrategics` int(2) NOT NULL,
  PRIMARY KEY (`id_po`),
  UNIQUE KEY `id_principi_2` (`id_principi`,`id_objectius_estrategics`),
  KEY `id_principi` (`id_principi`,`id_objectius_estrategics`),
  KEY `id_objectius_estrategics` (`id_objectius_estrategics`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;



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



CREATE TABLE IF NOT EXISTS `reunion` (
  `titol` varchar(100) NOT NULL,
  `id_reunion` int(2) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_reunion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;



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



CREATE TABLE IF NOT EXISTS `seguiment_projecte` (
  `id` int(11) NOT NULL,
  `canvi` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `servicis` (
  `id_servici` int(2) NOT NULL AUTO_INCREMENT,
  `nom_servei` varchar(100) NOT NULL,
  `descripcio_servei` text NOT NULL,
  `data_servei` date NOT NULL,
  PRIMARY KEY (`id_servici`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;




CREATE TABLE IF NOT EXISTS `tipus_projecte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



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



INSERT INTO `users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `perfil`) VALUES
(2, 'admin', '$2a$08$Fc8ch.9YrFlD7TvlDa8u/ejOERQRjRrpxsNEgTZMponx/I6x3vW3e', 'edugasser@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, '::1', '2012-12-19 18:59:39', '2012-12-10 18:00:57', '2012-12-19 17:59:39', 1);



CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;



INSERT INTO `user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 3, NULL, NULL);


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
