-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-06-2013 a las 17:25:55
-- Versión del servidor: 5.5.31-0ubuntu0.13.04.1
-- Versión de PHP: 5.4.9-4ubuntu2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `finish`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Editor'),
(2, 'Marketing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(79, 1, 61),
(89, 1, 62),
(90, 1, 63),
(70, 1, 64),
(71, 1, 65),
(72, 1, 66),
(73, 1, 73),
(74, 1, 74),
(75, 1, 75),
(76, 1, 76),
(77, 1, 77),
(78, 1, 78),
(80, 1, 82),
(81, 1, 83),
(82, 1, 84),
(83, 1, 85),
(84, 1, 86),
(85, 1, 87),
(86, 1, 91),
(87, 1, 92),
(88, 1, 93),
(92, 2, 67),
(93, 2, 68),
(94, 2, 69),
(95, 2, 70),
(96, 2, 71),
(97, 2, 72),
(98, 2, 94),
(99, 2, 95),
(91, 2, 96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add deporte', 8, 'add_deporte'),
(23, 'Can change deporte', 8, 'change_deporte'),
(24, 'Can delete deporte', 8, 'delete_deporte'),
(25, 'Can add categoria_torneo', 9, 'add_categoria_torneo'),
(26, 'Can change categoria_torneo', 9, 'change_categoria_torneo'),
(27, 'Can delete categoria_torneo', 9, 'delete_categoria_torneo'),
(28, 'Can add tipo_locacion', 10, 'add_tipo_locacion'),
(29, 'Can change tipo_locacion', 10, 'change_tipo_locacion'),
(30, 'Can delete tipo_locacion', 10, 'delete_tipo_locacion'),
(31, 'Can add area', 11, 'add_area'),
(32, 'Can change area', 11, 'change_area'),
(33, 'Can delete area', 11, 'delete_area'),
(34, 'Can add locacion', 12, 'add_locacion'),
(35, 'Can change locacion', 12, 'change_locacion'),
(36, 'Can delete locacion', 12, 'delete_locacion'),
(37, 'Can add torneo', 13, 'add_torneo'),
(38, 'Can change torneo', 13, 'change_torneo'),
(39, 'Can delete torneo', 13, 'delete_torneo'),
(40, 'Can add equipo', 14, 'add_equipo'),
(41, 'Can change equipo', 14, 'change_equipo'),
(42, 'Can delete equipo', 14, 'delete_equipo'),
(43, 'Can add partido', 15, 'add_partido'),
(44, 'Can change partido', 15, 'change_partido'),
(45, 'Can delete partido', 15, 'delete_partido'),
(46, 'Can add deportista', 16, 'add_deportista'),
(47, 'Can change deportista', 16, 'change_deportista'),
(48, 'Can delete deportista', 16, 'delete_deportista'),
(49, 'Can add gol', 17, 'add_gol'),
(50, 'Can change gol', 17, 'change_gol'),
(51, 'Can delete gol', 17, 'delete_gol'),
(52, 'Can add equipo_participa', 18, 'add_equipo_participa'),
(53, 'Can change equipo_participa', 18, 'change_equipo_participa'),
(54, 'Can delete equipo_participa', 18, 'delete_equipo_participa'),
(55, 'Can add deportista_participa', 19, 'add_deportista_participa'),
(56, 'Can change deportista_participa', 19, 'change_deportista_participa'),
(57, 'Can delete deportista_participa', 19, 'delete_deportista_participa'),
(58, 'Can add post', 20, 'add_post'),
(59, 'Can change post', 20, 'change_post'),
(60, 'Can delete post', 20, 'delete_post'),
(61, 'Can add autor', 21, 'add_autor'),
(62, 'Can change autor', 21, 'change_autor'),
(63, 'Can delete autor', 21, 'delete_autor'),
(64, 'Can add categoria', 22, 'add_categoria'),
(65, 'Can change categoria', 22, 'change_categoria'),
(66, 'Can delete categoria', 22, 'delete_categoria'),
(67, 'Can add posicion', 23, 'add_posicion'),
(68, 'Can change posicion', 23, 'change_posicion'),
(69, 'Can delete posicion', 23, 'delete_posicion'),
(70, 'Can add anuncio', 24, 'add_anuncio'),
(71, 'Can change anuncio', 24, 'change_anuncio'),
(72, 'Can delete anuncio', 24, 'delete_anuncio'),
(73, 'Can add caricatura', 25, 'add_caricatura'),
(74, 'Can change caricatura', 25, 'change_caricatura'),
(75, 'Can delete caricatura', 25, 'delete_caricatura'),
(76, 'Can add video', 26, 'add_video'),
(77, 'Can change video', 26, 'change_video'),
(78, 'Can delete video', 26, 'delete_video'),
(79, 'Can add tipo_post', 27, 'add_tipo_post'),
(80, 'Can change tipo_post', 27, 'change_tipo_post'),
(81, 'Can delete tipo_post', 27, 'delete_tipo_post'),
(82, 'Can add post', 28, 'add_post'),
(83, 'Can change post', 28, 'change_post'),
(84, 'Can delete post', 28, 'delete_post'),
(85, 'Can add frase', 29, 'add_frase'),
(86, 'Can change frase', 29, 'change_frase'),
(87, 'Can delete frase', 29, 'delete_frase'),
(88, 'Can add tipo_galeria', 30, 'add_tipo_galeria'),
(89, 'Can change tipo_galeria', 30, 'change_tipo_galeria'),
(90, 'Can delete tipo_galeria', 30, 'delete_tipo_galeria'),
(91, 'Can add imagen_galeria', 31, 'add_imagen_galeria'),
(92, 'Can change imagen_galeria', 31, 'change_imagen_galeria'),
(93, 'Can delete imagen_galeria', 31, 'delete_imagen_galeria'),
(94, 'Can add sponsor', 32, 'add_sponsor'),
(95, 'Can change sponsor', 32, 'change_sponsor'),
(96, 'Can delete sponsor', 32, 'delete_sponsor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'jvacx', '', '', 'jvacx.log@gmail.com', 'pbkdf2_sha256$10000$hpDC6tzKzvur$Yfw4DmgYk1aTwLUTgAq332RtjJvRIVijuYS9Y17RQfo=', 1, 1, 1, '2013-05-14 20:43:27', '2013-04-09 14:34:18'),
(3, 'victor', '', '', '', 'pbkdf2_sha256$10000$fjDI9RRTq8DI$BOUwOum5aI+1w36WkwWOJR12QKdUbHaZynbl/2JeAbw=', 1, 1, 0, '2013-05-06 14:25:59', '2013-04-22 05:57:11'),
(4, 'randoz', '', '', '', 'pbkdf2_sha256$10000$XwbToqBnVT60$XUgYN4xi39u2KIROV7BxdN0xyifXLC0TZgZh0vqXCq8=', 1, 1, 0, '2013-04-25 00:40:27', '2013-04-23 15:25:23'),
(7, 'keoz', '', '', 'jvacx.log@gmail.com.com', 'pbkdf2_sha256$10000$OXkcp9OIarjB$6FAf055tns3xopplPiSDa1jMn7seM+4PqcIs/ZpIByU=', 1, 1, 1, '2013-04-26 13:23:24', '2013-04-26 13:23:07'),
(8, 'jluismollinedo', 'Jhony Luis', 'Mollinedo Alvarez', 'jjluismalvarez@gmail.com', 'pbkdf2_sha256$10000$hu3CsEtgXdCm$Qet+EOvhqcJBCA6X1flIcdGDxtfGLpRAmC6hNzV7oZw=', 1, 1, 0, '2013-05-05 14:44:06', '2013-05-03 15:38:15'),
(9, 'diego', 'Diego', 'Rada', 'drada@advice.bo', 'pbkdf2_sha256$10000$1ocjnlpy2Y7v$nFTQZxPjIHB+ZZrWfv+TyUndfUAnN9+PnGKVo6x0TAI=', 1, 1, 0, '2013-05-14 21:05:32', '2013-05-14 20:47:39'),
(10, 'jorge', 'Jorge', 'del Solar', 'jdelsolar@advice.bo', 'pbkdf2_sha256$10000$ID59EuzvLjDh$Ch2YmhwNZ0KO7xIg7b4WEZMWVppflcUj4MXpBGfX/Ro=', 1, 1, 0, '2013-05-14 20:48:43', '2013-05-14 20:48:43'),
(11, 'juan', '', '', '', 'pbkdf2_sha256$10000$ObUBxh500V8p$y6vQ0cNj4+fgoG9I0IBOY4/uU4BxJnfWzB9VjBaf+2c=', 1, 1, 0, '2013-05-19 01:02:49', '2013-05-19 01:02:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 3, 1),
(2, 4, 2),
(3, 8, 1),
(4, 9, 1),
(5, 10, 1),
(6, 11, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_area`
--

CREATE TABLE IF NOT EXISTS `deportivo_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_categoria_torneo`
--

CREATE TABLE IF NOT EXISTS `deportivo_categoria_torneo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_deporte`
--

CREATE TABLE IF NOT EXISTS `deportivo_deporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_deportista`
--

CREATE TABLE IF NOT EXISTS `deportivo_deportista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `deporte_id` int(11) NOT NULL,
  `fnac` date NOT NULL,
  `equipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deportivo_deportista_1c8eb172` (`deporte_id`),
  KEY `deportivo_deportista_80b245ef` (`equipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_deportista_participa`
--

CREATE TABLE IF NOT EXISTS `deportivo_deportista_participa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deportista_id` int(11) NOT NULL,
  `partido_id` int(11) NOT NULL,
  `rol` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deportivo_deportista_participa_b90b0f4b` (`deportista_id`),
  KEY `deportivo_deportista_participa_6c1158fc` (`partido_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_equipo`
--

CREATE TABLE IF NOT EXISTS `deportivo_equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `director` varchar(30) NOT NULL,
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deportivo_equipo_dfd0e917` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_equipo_participa`
--

CREATE TABLE IF NOT EXISTS `deportivo_equipo_participa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipo_id` int(11) NOT NULL,
  `torneo_id` int(11) NOT NULL,
  `posicion` varchar(10) NOT NULL,
  `puntos` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deportivo_equipo_participa_80b245ef` (`equipo_id`),
  KEY `deportivo_equipo_participa_d554b0e5` (`torneo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_gol`
--

CREATE TABLE IF NOT EXISTS `deportivo_gol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deportista_id` int(11) NOT NULL,
  `partido_id` int(11) NOT NULL,
  `minuto` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deportivo_gol_b90b0f4b` (`deportista_id`),
  KEY `deportivo_gol_6c1158fc` (`partido_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_locacion`
--

CREATE TABLE IF NOT EXISTS `deportivo_locacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `area_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deportivo_locacion_dfd0e917` (`area_id`),
  KEY `deportivo_locacion_d81b0b6e` (`tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_partido`
--

CREATE TABLE IF NOT EXISTS `deportivo_partido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_id` int(11) NOT NULL,
  `visitante_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `locacion_id` int(11) NOT NULL,
  `resultado` varchar(10) NOT NULL,
  `hora` time NOT NULL,
  `torneo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deportivo_partido_26bd1c5c` (`local_id`),
  KEY `deportivo_partido_6a218b78` (`visitante_id`),
  KEY `deportivo_partido_aa733670` (`locacion_id`),
  KEY `deportivo_partido_d554b0e5` (`torneo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_tipo_locacion`
--

CREATE TABLE IF NOT EXISTS `deportivo_tipo_locacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportivo_torneo`
--

CREATE TABLE IF NOT EXISTS `deportivo_torneo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `fini` date NOT NULL,
  `ffin` date NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deportivo_torneo_9b3c3e78` (`categoria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=260 ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-04-09 14:37:07', 1, 23, '1', 'Superior', 1, ''),
(2, '2013-04-09 14:37:15', 1, 23, '2', 'Inferior', 1, ''),
(3, '2013-04-09 14:37:21', 1, 23, '3', 'Izquierdo', 1, ''),
(4, '2013-04-09 14:37:26', 1, 23, '4', 'Derecho', 1, ''),
(5, '2013-04-09 14:37:33', 1, 23, '5', 'Central Grande', 1, ''),
(6, '2013-04-09 14:37:38', 1, 23, '6', 'Central Menor', 1, ''),
(7, '2013-04-09 14:37:59', 1, 21, '1', 'Victor  Aguilar', 1, ''),
(8, '2013-04-09 14:38:06', 1, 21, '2', 'Hernan  Rengel', 1, ''),
(9, '2013-04-09 14:38:16', 1, 21, '3', 'Nataly  Maric', 1, ''),
(10, '2013-04-09 14:38:22', 1, 21, '4', 'Diego  Rada', 1, ''),
(11, '2013-04-09 14:38:31', 1, 21, '5', 'Jose  Vergara', 1, ''),
(12, '2013-04-09 14:38:39', 1, 21, '6', 'Sandra  Monje', 1, ''),
(13, '2013-04-09 14:43:22', 1, 25, '1', 'Ronaldinho', 1, ''),
(14, '2013-04-09 14:43:49', 1, 25, '2', 'Fidel Castro', 1, ''),
(15, '2013-04-09 14:44:06', 1, 25, '3', 'Otro Ronaldinho', 1, ''),
(16, '2013-04-09 14:44:24', 1, 25, '4', 'NN', 1, ''),
(17, '2013-04-09 14:44:36', 1, 25, '5', 'Platino', 1, ''),
(18, '2013-04-09 14:44:46', 1, 25, '6', 'Messi', 1, ''),
(19, '2013-04-09 14:46:40', 1, 22, '1', 'Selección', 1, ''),
(20, '2013-04-09 14:46:49', 1, 22, '2', 'Bolivar', 1, ''),
(21, '2013-04-09 14:46:55', 1, 22, '3', 'Clásico', 1, ''),
(22, '2013-04-09 14:47:08', 1, 22, '4', 'Torneo Clausura', 1, ''),
(23, '2013-04-09 14:48:31', 1, 29, '1', 'El paso del tiempo condena al olvido la memoria de un país', 1, ''),
(24, '2013-04-09 14:48:47', 1, 29, '2', 'La vida es la memoria del pueblo, la conciencia colectiva de la continuidad histórica, el modo de pensar y de vivir', 1, ''),
(25, '2013-04-09 14:48:56', 1, 29, '3', 'A espaldas vueltas, memorias muertas', 1, ''),
(26, '2013-04-09 14:49:05', 1, 29, '4', 'Con las glorias se olvidan las memorias.', 1, ''),
(27, '2013-04-09 14:49:16', 1, 29, '5', 'Tan mala memoria tengo, que si te he visto no me acuerdo.', 1, ''),
(28, '2013-04-09 14:49:33', 1, 29, '6', 'Si en medio de las adversidades persevera el corazón con serenidad, con gozo y con paz, esto es amor', 1, ''),
(29, '2013-04-09 14:54:53', 1, 30, '1', 'Semana', 1, ''),
(30, '2013-04-09 14:55:05', 1, 30, '2', 'Chicas', 1, ''),
(31, '2013-04-09 14:55:35', 1, 31, '1', 'La Seleccion Anterior', 1, ''),
(32, '2013-04-09 14:55:53', 1, 31, '2', 'Barra', 1, ''),
(33, '2013-04-09 14:56:07', 1, 31, '3', 'Entrenamiento', 1, ''),
(34, '2013-04-09 14:56:27', 1, 31, '4', 'Apasionado', 1, ''),
(35, '2013-04-09 14:56:48', 1, 31, '5', 'Eso tiene que ser penal', 1, ''),
(36, '2013-04-09 14:57:15', 1, 31, '6', 'Un logazo no es golazo', 1, ''),
(37, '2013-04-09 14:57:34', 1, 31, '7', 'Azkargoitia', 1, ''),
(38, '2013-04-09 15:00:04', 1, 31, '8', 'Belleza', 1, ''),
(39, '2013-04-09 15:00:23', 1, 31, '9', 'Porteria resguardada', 1, ''),
(40, '2013-04-09 15:00:48', 1, 31, '10', 'A lo Gol', 1, ''),
(41, '2013-04-09 15:01:04', 1, 31, '11', 'Diosa', 1, ''),
(42, '2013-04-09 15:01:22', 1, 31, '12', 'A entrenar se dijo', 1, ''),
(43, '2013-04-09 15:01:39', 1, 31, '13', 'Un equipazo', 1, ''),
(44, '2013-04-09 15:02:09', 1, 31, '14', '¿Rivalidad?', 1, ''),
(45, '2013-04-09 15:02:33', 1, 27, '1', 'Video', 1, ''),
(46, '2013-04-09 15:02:39', 1, 27, '2', 'Texto', 1, ''),
(47, '2013-04-09 15:02:42', 1, 27, '3', 'Imagen', 1, ''),
(48, '2013-04-09 15:08:11', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a imagen.'),
(49, '2013-04-09 15:09:43', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a imagen.'),
(50, '2013-04-09 15:11:03', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a imagen.'),
(51, '2013-04-09 15:11:30', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a imagen.'),
(52, '2013-04-09 15:13:35', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a imagen.'),
(53, '2013-04-09 15:14:40', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a imagen.'),
(54, '2013-04-09 15:16:20', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a imagen.'),
(55, '2013-04-09 15:18:07', 1, 31, '13', 'Un equipazo', 2, 'Modificado/a imagen.'),
(56, '2013-04-09 15:22:43', 1, 31, '12', 'A entrenar se dijo', 2, 'Modificado/a imagen.'),
(57, '2013-04-09 15:22:49', 1, 31, '11', 'Diosa', 2, 'Modificado/a imagen.'),
(58, '2013-04-09 15:22:59', 1, 31, '10', 'A lo Gol', 2, 'Modificado/a imagen.'),
(59, '2013-04-09 15:23:17', 1, 31, '9', 'Porteria resguardada', 2, 'Modificado/a imagen.'),
(60, '2013-04-09 15:23:23', 1, 31, '8', 'Belleza', 2, 'Modificado/a imagen.'),
(61, '2013-04-09 15:23:30', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a imagen.'),
(62, '2013-04-09 15:23:41', 1, 31, '7', 'Azkargoitia', 2, 'Modificado/a imagen.'),
(63, '2013-04-09 15:23:48', 1, 31, '6', 'Un logazo no es golazo', 2, 'Modificado/a imagen.'),
(64, '2013-04-09 15:23:55', 1, 31, '5', 'Eso tiene que ser penal', 2, 'Modificado/a imagen.'),
(65, '2013-04-09 15:24:03', 1, 31, '4', 'Apasionado', 2, 'Modificado/a imagen.'),
(66, '2013-04-09 15:24:30', 1, 31, '3', 'Entrenamiento', 2, 'Modificado/a imagen.'),
(67, '2013-04-09 15:24:36', 1, 31, '2', 'Barra', 2, 'Modificado/a imagen.'),
(68, '2013-04-09 15:24:42', 1, 31, '1', 'La Seleccion Anterior', 2, 'Modificado/a imagen.'),
(69, '2013-04-09 15:33:48', 1, 28, '1', 'Charles vuelve al plantel', 1, ''),
(70, '2013-04-09 15:34:41', 1, 28, '2', 'Charles vuelve al plantel', 1, ''),
(71, '2013-04-09 15:35:16', 1, 28, '3', 'Presidente de The Strongest exhorta a sus jugadores', 1, ''),
(72, '2013-04-09 15:36:58', 1, 28, '3', 'Presidente de The Strongest exhorta a sus jugadores', 3, ''),
(73, '2013-04-09 15:36:58', 1, 28, '2', 'Charles vuelve al plantel', 3, ''),
(74, '2013-04-09 15:37:09', 1, 28, '1', 'Charles vuelve al plantel', 2, 'Modificado/a imagen.'),
(75, '2013-04-09 15:37:45', 1, 28, '4', 'Presidente de The Strongest exhorta a sus jugadores', 1, ''),
(76, '2013-04-09 15:38:10', 1, 28, '5', 'El paro fue una presión para que paguen sueldo', 1, ''),
(77, '2013-04-09 15:38:48', 1, 28, '6', 'Académicos cumplirán 88 años', 1, ''),
(78, '2013-04-09 15:39:29', 1, 28, '7', 'Andaveris está habilitado para jugar', 1, ''),
(79, '2013-04-09 15:40:14', 1, 28, '8', 'Guabirá busca por cuarta vez su ascenso a la Liga', 1, ''),
(80, '2013-04-09 15:40:57', 1, 28, '9', 'Retornó Peña y Oriente le exige que se presente', 1, ''),
(81, '2013-04-09 20:10:03', 1, 31, '1', 'La Seleccion Anterior', 2, 'Modificado/a visible.'),
(82, '2013-04-09 20:10:07', 1, 31, '2', 'Barra', 2, 'Modificado/a visible.'),
(83, '2013-04-09 20:10:11', 1, 31, '3', 'Entrenamiento', 2, 'Modificado/a visible.'),
(84, '2013-04-09 20:10:19', 1, 31, '4', 'Apasionado', 2, 'Modificado/a visible.'),
(85, '2013-04-09 20:10:26', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a visible.'),
(86, '2013-04-09 20:10:30', 1, 31, '13', 'Un equipazo', 2, 'Modificado/a visible.'),
(87, '2013-04-09 20:10:34', 1, 31, '12', 'A entrenar se dijo', 2, 'Modificado/a visible.'),
(88, '2013-04-09 20:10:39', 1, 31, '11', 'Diosa', 2, 'Modificado/a visible.'),
(89, '2013-04-10 15:01:24', 1, 31, '1', 'La Seleccion Anterior', 2, 'Modificado/a visible.'),
(90, '2013-04-10 15:01:30', 1, 31, '2', 'Barra', 2, 'Modificado/a visible.'),
(91, '2013-04-11 04:53:07', 1, 31, '7', 'Azkargoitia', 2, 'Modificado/a visible.'),
(92, '2013-04-11 04:53:59', 1, 31, '1', 'La Seleccion Anterior', 2, 'No ha cambiado ningún campo.'),
(93, '2013-04-11 04:54:02', 1, 31, '2', 'Barra', 2, 'No ha cambiado ningún campo.'),
(94, '2013-04-11 04:54:08', 1, 31, '3', 'Entrenamiento', 2, 'Modificado/a visible.'),
(95, '2013-04-11 04:54:12', 1, 31, '4', 'Apasionado', 2, 'Modificado/a visible.'),
(96, '2013-04-11 04:54:15', 1, 31, '5', 'Eso tiene que ser penal', 2, 'No ha cambiado ningún campo.'),
(97, '2013-04-11 04:54:18', 1, 31, '5', 'Eso tiene que ser penal', 2, 'No ha cambiado ningún campo.'),
(98, '2013-04-11 04:54:21', 1, 31, '5', 'Eso tiene que ser penal', 2, 'No ha cambiado ningún campo.'),
(99, '2013-04-11 04:54:24', 1, 31, '6', 'Un logazo no es golazo', 2, 'No ha cambiado ningún campo.'),
(100, '2013-04-11 04:54:28', 1, 31, '7', 'Azkargoitia', 2, 'Modificado/a visible.'),
(101, '2013-04-11 04:57:42', 1, 31, '14', '¿Rivalidad?', 2, 'Modificado/a visible.'),
(102, '2013-04-11 04:57:46', 1, 31, '13', 'Un equipazo', 2, 'Modificado/a visible.'),
(103, '2013-04-11 04:57:49', 1, 31, '12', 'A entrenar se dijo', 2, 'Modificado/a visible.'),
(104, '2013-04-11 04:57:53', 1, 31, '11', 'Diosa', 2, 'Modificado/a visible.'),
(105, '2013-04-11 05:07:58', 1, 31, '7', 'Azkargoitia', 2, 'Modificado/a visible.'),
(106, '2013-04-11 05:08:35', 1, 31, '7', 'Azkargoitia', 2, 'Modificado/a visible.'),
(107, '2013-04-11 05:11:58', 1, 31, '15', 'iPhone de Premio', 1, ''),
(108, '2013-04-11 13:56:35', 1, 29, '6', 'Si en medio de las adversidades persevera el corazón con serenidad, con gozo y con paz, esto es amor', 2, 'No ha cambiado ningún campo.'),
(109, '2013-04-11 13:59:15', 1, 29, '7', 'La libertad es el derecho que tienen las personas de actuar libremente, pensar y hablar sin hipocresía', 1, ''),
(110, '2013-04-11 14:08:39', 1, 29, '7', 'La libertad es el derecho que tienen las personas de actuar libremente, pensar y hablar sin hipocresía', 3, ''),
(111, '2013-04-11 15:57:44', 1, 29, '7', 'Hola', 1, ''),
(112, '2013-04-11 16:02:04', 1, 31, '2', 'Barra', 2, 'Modificado/a visible.'),
(113, '2013-04-11 22:16:02', 1, 29, '7', 'Buenos dias Señor Cobo', 2, 'Modificado/a frase.'),
(114, '2013-04-13 20:26:42', 1, 29, '7', 'Buenos dias Señor Cobo', 3, ''),
(115, '2013-04-15 04:42:46', 1, 29, '1', 'Aunque a todos les está permitido pensar, muchos se lo ahorran.', 1, ''),
(116, '2013-04-15 04:43:21', 1, 29, '2', 'La libertad es el derecho que tienen las personas de actuar libremente, pensar y hablar sin hipocresía', 1, ''),
(117, '2013-04-15 04:43:39', 1, 29, '3', 'Buscando mi destino, concluyo por pensar que sólo en el buscar consiste mi destino.', 1, ''),
(118, '2013-04-15 14:30:00', 1, 28, '10', 'Aurora vence a Petrolero de manera indiscutible', 1, ''),
(119, '2013-04-15 14:33:10', 1, 28, '13', 'El Tigre B se hace fuerte', 1, ''),
(120, '2013-04-15 14:34:55', 1, 28, '13', 'El Tigre B se hace fuerte', 2, 'No ha cambiado ningún campo.'),
(121, '2013-04-15 14:38:54', 1, 21, '7', 'Jhonny  Mollinedo', 1, ''),
(122, '2013-04-15 14:40:28', 1, 28, '14', 'Arce, con tres goles, le salva la tarde a Bolívar', 1, ''),
(123, '2013-04-15 14:42:29', 1, 31, '16', 'El bolivar ganó', 1, ''),
(124, '2013-04-15 15:47:41', 1, 28, '14', 'Arce, con tres goles, le salva la tarde a Bolívar', 2, 'No ha cambiado ningún campo.'),
(125, '2013-04-15 15:54:09', 1, 28, '15', 'Máximo Alcócer, hitos más allá del 63', 1, ''),
(126, '2013-04-15 15:55:09', 1, 28, '16', 'Lorgio Álvarez: ‘Es momento de decirle basta a la selección’', 1, ''),
(127, '2013-04-15 15:55:37', 1, 28, '17', 'El Tigre venció en las canchas, venció en la guerra', 1, ''),
(128, '2013-04-16 00:17:29', 1, 28, '10', 'Aurora vence a Petrolero de manera indiscutible', 2, 'Modificado/a imagen.'),
(129, '2013-04-16 00:19:02', 1, 28, '10', 'Aurora vence a Petrolero de manera indiscutible', 2, 'Modificado/a imagen.'),
(130, '2013-04-16 00:19:22', 1, 28, '13', 'El Tigre B se hace fuerte', 2, 'Modificado/a imagen.'),
(131, '2013-04-16 00:19:31', 1, 28, '14', 'Arce, con tres goles, le salva la tarde a Bolívar', 2, 'Modificado/a imagen.'),
(132, '2013-04-16 00:19:38', 1, 28, '15', 'Máximo Alcócer, hitos más allá del 63', 2, 'Modificado/a imagen.'),
(133, '2013-04-16 00:19:44', 1, 28, '16', 'Lorgio Álvarez: ‘Es momento de decirle basta a la selección’', 2, 'Modificado/a imagen.'),
(134, '2013-04-16 00:19:51', 1, 28, '17', 'El Tigre venció en las canchas, venció en la guerra', 2, 'Modificado/a imagen.'),
(135, '2013-04-22 05:55:32', 1, 2, '1', 'Editor', 1, ''),
(136, '2013-04-22 05:56:01', 1, 3, '2', 'victor', 1, ''),
(137, '2013-04-22 05:56:47', 1, 3, '2', 'victor', 3, ''),
(138, '2013-04-22 05:57:11', 1, 3, '3', 'victor', 1, ''),
(139, '2013-04-22 05:58:06', 1, 3, '3', 'victor', 2, 'Modificado/a password y is_staff.'),
(140, '2013-04-22 05:58:54', 1, 3, '3', 'victor', 2, 'Modificado/a password y groups.'),
(141, '2013-04-22 06:08:01', 1, 2, '1', 'Editor', 2, 'Modificado/a permissions.'),
(142, '2013-04-22 06:15:19', 1, 2, '1', 'Editor', 2, 'Modificado/a permissions.'),
(143, '2013-04-23 15:06:43', 3, 28, '21', 'El Tigre sufre una paliza', 1, ''),
(144, '2013-04-23 15:07:58', 3, 28, '22', 'Bolívar va a paso de campeón', 1, ''),
(145, '2013-04-23 15:08:43', 3, 28, '23', '‘Chavo’ Salvatierra gana primera etapa del Rally de Catar', 1, ''),
(146, '2013-04-23 15:12:46', 3, 28, '24', 'El Tigre espera iniciar otra fase en el clásico', 1, ''),
(147, '2013-04-23 15:25:04', 1, 2, '2', 'Marketing', 1, ''),
(148, '2013-04-23 15:25:23', 1, 3, '4', 'randoz', 1, ''),
(149, '2013-04-23 15:25:37', 1, 3, '4', 'randoz', 2, 'Modificado/a password, is_staff y groups.'),
(150, '2013-04-23 15:30:47', 4, 24, '1', 'Amaszonas', 1, ''),
(151, '2013-04-23 16:06:03', 4, 24, '2', 'tigo', 1, ''),
(152, '2013-04-23 16:06:17', 4, 24, '3', 'SOS', 1, ''),
(153, '2013-04-23 16:06:37', 4, 24, '4', 'natura', 1, ''),
(154, '2013-04-23 16:07:01', 4, 24, '5', 'Entel', 1, ''),
(155, '2013-04-23 16:08:51', 4, 24, '6', 'Monopol', 1, ''),
(156, '2013-04-23 16:09:07', 4, 24, '7', 'Ford', 1, ''),
(157, '2013-04-23 16:09:28', 4, 24, '8', 'DPI', 1, ''),
(158, '2013-04-23 16:09:49', 4, 24, '9', 'Believe', 1, ''),
(159, '2013-04-23 16:10:12', 4, 24, '10', 'Crespal', 1, ''),
(160, '2013-04-23 16:10:59', 4, 24, '11', 'Silvia', 1, ''),
(161, '2013-04-23 16:11:18', 4, 24, '12', 'Paceña', 1, ''),
(162, '2013-04-23 16:11:37', 4, 24, '13', 'Eventos', 1, ''),
(163, '2013-04-23 16:11:58', 4, 24, '14', 'Casa real', 1, ''),
(164, '2013-04-23 16:13:26', 4, 24, '15', 'Meztizo', 1, ''),
(165, '2013-04-23 16:13:36', 4, 24, '16', 'Madepa', 1, ''),
(166, '2013-04-23 16:14:15', 4, 24, '17', 'Impapex', 1, ''),
(167, '2013-04-23 16:14:32', 4, 24, '18', 'Isotipo', 1, ''),
(168, '2013-04-23 16:30:34', 4, 24, '37', 'Dakar - Central Grande', 1, ''),
(169, '2013-04-23 16:30:51', 4, 24, '38', 'Natura - Central Grande', 1, ''),
(170, '2013-04-23 16:31:20', 4, 24, '39', 'Bisa - Central Menor', 1, ''),
(171, '2013-04-23 16:31:43', 4, 24, '40', 'Hiwasana - Central Menor', 1, ''),
(172, '2013-04-23 16:32:08', 4, 24, '41', 'CBN - Central Menor', 1, ''),
(173, '2013-04-23 16:32:32', 4, 24, '42', 'Fides - Central Menor', 1, ''),
(174, '2013-04-23 16:33:02', 4, 24, '43', 'BMW - Central Menor', 1, ''),
(175, '2013-04-23 16:33:30', 4, 24, '44', 'Monopol - Inferior', 1, ''),
(176, '2013-04-23 16:33:45', 4, 24, '45', 'Gloria - Inferior', 1, ''),
(177, '2013-04-23 16:34:00', 4, 24, '46', 'Efece - Inferior', 1, ''),
(178, '2013-04-23 16:37:48', 4, 24, '47', 'Bridgestone - Inferior', 1, ''),
(179, '2013-04-23 16:39:33', 4, 24, '47', 'Bridgestone - Superior', 2, 'Modificado/a posicion.'),
(180, '2013-04-24 15:16:39', 3, 22, '5', 'la paz', 1, ''),
(181, '2013-04-24 16:00:48', 3, 28, '23', '‘Chavo’ Salvatierra gana primera etapa del Rally de Catar', 2, 'Modificado/a contenido.'),
(182, '2013-04-25 00:41:01', 4, 24, '46', 'Efece - Inferior', 2, 'Modificado/a imagen.'),
(183, '2013-04-25 00:41:28', 4, 24, '45', 'Gloria - Inferior', 2, 'Modificado/a imagen.'),
(184, '2013-04-25 00:41:38', 4, 24, '2', 'tigo - Izquierdo', 2, 'Modificado/a imagen.'),
(185, '2013-04-25 00:41:47', 4, 24, '3', 'SOS - Izquierdo', 2, 'Modificado/a imagen.'),
(186, '2013-04-25 00:42:04', 4, 24, '4', 'natura - Izquierdo', 2, 'Modificado/a imagen.'),
(187, '2013-04-25 00:42:12', 4, 24, '5', 'Entel - Izquierdo', 2, 'Modificado/a imagen.'),
(188, '2013-04-25 00:42:15', 4, 24, '5', 'Entel - Izquierdo', 2, 'No ha cambiado ningún campo.'),
(189, '2013-04-25 00:42:24', 4, 24, '6', 'Monopol - Izquierdo', 2, 'Modificado/a imagen.'),
(190, '2013-04-25 00:42:35', 4, 24, '7', 'Ford - Izquierdo', 2, 'Modificado/a imagen.'),
(191, '2013-04-25 00:42:48', 4, 24, '8', 'DPI - Izquierdo', 2, 'Modificado/a imagen.'),
(192, '2013-04-25 00:42:57', 4, 24, '9', 'Believe - Izquierdo', 2, 'Modificado/a imagen.'),
(193, '2013-04-25 00:43:38', 4, 24, '10', 'Crespal - Izquierdo', 2, 'Modificado/a imagen.'),
(194, '2013-04-25 00:43:47', 4, 24, '11', 'Silvia - Izquierdo', 2, 'Modificado/a imagen.'),
(195, '2013-04-25 00:43:56', 4, 24, '12', 'Paceña - Izquierdo', 2, 'Modificado/a imagen.'),
(196, '2013-04-25 00:44:08', 4, 24, '13', 'Eventos - Izquierdo', 2, 'Modificado/a imagen.'),
(197, '2013-04-25 00:45:42', 4, 24, '16', 'Madepa - Izquierdo', 2, 'Modificado/a imagen.'),
(198, '2013-04-25 00:46:07', 4, 24, '43', 'BMW - Central Menor', 2, 'Modificado/a imagen.'),
(199, '2013-04-25 00:46:20', 4, 24, '42', 'Fides - Central Menor', 2, 'Modificado/a imagen.'),
(200, '2013-04-25 00:46:37', 4, 24, '36', 'Amaszonas - Superior', 2, 'Modificado/a imagen.'),
(201, '2013-04-25 00:46:47', 4, 24, '41', 'CBN - Central Menor', 2, 'Modificado/a imagen.'),
(202, '2013-04-25 00:46:53', 4, 24, '40', 'Hiwasana - Central Menor', 2, 'Modificado/a imagen.'),
(203, '2013-04-25 00:47:01', 4, 24, '39', 'Bisa - Central Menor', 2, 'Modificado/a imagen.'),
(204, '2013-04-25 00:47:08', 4, 24, '37', 'Dakar - Central Grande', 2, 'Modificado/a imagen.'),
(205, '2013-04-25 00:47:21', 4, 24, '35', 'tigo - Derecho', 2, 'Modificado/a imagen.'),
(206, '2013-04-25 00:47:28', 4, 24, '34', 'SOS - Derecho', 2, 'Modificado/a imagen.'),
(207, '2013-04-25 00:47:36', 4, 24, '32', 'Entel - Derecho', 2, 'Modificado/a imagen.'),
(208, '2013-04-25 00:47:43', 4, 24, '31', 'Monopol - Derecho', 2, 'Modificado/a imagen.'),
(209, '2013-04-25 00:47:49', 4, 24, '30', 'Ford - Derecho', 2, 'Modificado/a imagen.'),
(210, '2013-04-25 00:47:57', 4, 24, '29', 'DPI - Derecho', 2, 'Modificado/a imagen.'),
(211, '2013-04-25 00:48:05', 4, 24, '28', 'Believe - Derecho', 2, 'Modificado/a imagen.'),
(212, '2013-04-25 00:51:01', 4, 24, '19', 'Isotipo - Derecho', 2, 'Modificado/a imagen.'),
(213, '2013-04-25 00:51:10', 4, 24, '18', 'Isotipo - Izquierdo', 2, 'Modificado/a imagen.'),
(214, '2013-04-25 00:51:51', 4, 24, '25', 'Paceña - Derecho', 2, 'Modificado/a imagen.'),
(215, '2013-04-25 00:52:12', 4, 24, '20', 'Impapex - Derecho', 2, 'Modificado/a imagen.'),
(216, '2013-04-25 00:52:27', 4, 24, '38', 'Natura - Central Grande', 2, 'Modificado/a imagen.'),
(217, '2013-04-25 00:52:37', 4, 24, '43', 'BMW - Central Menor', 2, 'Modificado/a imagen.'),
(218, '2013-04-25 00:53:00', 4, 24, '26', 'Silvia - Derecho', 2, 'Modificado/a imagen.'),
(219, '2013-04-25 00:54:20', 4, 24, '15', 'Meztizo - Izquierdo', 2, 'Modificado/a imagen.'),
(220, '2013-04-25 00:54:46', 4, 24, '23', 'Casa real - Derecho', 2, 'Modificado/a imagen.'),
(221, '2013-04-25 00:57:05', 4, 24, '42', 'Fides - Central Menor', 2, 'Modificado/a imagen.'),
(222, '2013-04-25 01:26:03', 4, 24, '47', 'Bridgestone - Superior', 2, 'Modificado/a imagen.'),
(223, '2013-04-25 01:27:05', 4, 24, '47', 'Bridgestone - Superior', 2, 'Modificado/a imagen.'),
(224, '2013-04-25 01:30:22', 4, 24, '47', 'Bridgestone - Superior', 2, 'Modificado/a imagen.'),
(225, '2013-04-26 16:16:48', 3, 28, '25', 'Esta es una nueva noticia', 1, ''),
(226, '2013-04-26 16:18:43', 3, 28, '26', 'Esta es la segunda noticia', 1, ''),
(227, '2013-05-02 07:13:57', 3, 28, '26', 'Esta es la segunda noticia', 2, 'Modificado/a imagen.'),
(228, '2013-05-02 07:14:11', 3, 28, '25', 'Esta es una nueva noticia', 2, 'Modificado/a imagen.'),
(229, '2013-05-03 15:00:20', 1, 21, '8', 'Hernan  Rengel', 1, ''),
(230, '2013-05-03 15:38:15', 1, 3, '8', 'jluismollinedo', 1, ''),
(231, '2013-05-03 15:39:22', 1, 3, '8', 'jluismollinedo', 2, 'Modificado/a password, first_name, last_name, email, is_staff y groups.'),
(232, '2013-05-03 16:13:16', 8, 28, '27', 'Elduayen está a un paso de Bolívar', 1, ''),
(233, '2013-05-03 16:30:47', 8, 22, '6', 'The Strongest', 1, ''),
(234, '2013-05-03 16:32:22', 8, 28, '28', 'Chau Villegas, ¿viene Clausen?', 1, ''),
(235, '2013-05-06 12:14:13', 8, 29, '4', 'Si lo puedes soñar...lo puedes hacer', 1, ''),
(236, '2013-05-06 12:15:21', 8, 29, '5', 'Tenemos cuatro finales, la idea es ganar, ganar, ganar y ganar, luego festejar como loco', 1, ''),
(237, '2013-05-06 14:26:36', 3, 28, '29', 'hola', 1, ''),
(238, '2013-05-06 14:26:58', 3, 28, '29', 'hola', 3, ''),
(239, '2013-05-06 16:09:56', 8, 28, '30', 'Bolívar continúa al frente', 1, ''),
(240, '2013-05-07 16:31:42', 8, 28, '30', 'Bolívar continúa al frente', 2, 'Modificado/a contenido, imagen, fecha y tipo.'),
(241, '2013-05-07 16:33:08', 8, 28, '30', 'Bolívar continúa al frente', 2, 'No ha cambiado ningún campo.'),
(242, '2013-05-07 16:37:22', 8, 28, '30', 'Nadie mueve de la punta a Bolívar', 2, 'Modificado/a titulo.'),
(243, '2013-05-07 16:40:12', 8, 28, '30', 'Nadie mueve de la punta a la Academia', 2, 'Modificado/a titulo.'),
(244, '2013-05-08 01:16:33', 1, 28, '30', 'Nadie mueve de la punta a la Academia', 3, ''),
(245, '2013-05-08 01:16:33', 1, 28, '28', 'Chau Villegas, ¿viene Clausen?', 3, ''),
(246, '2013-05-08 01:16:33', 1, 28, '27', 'Elduayen está a un paso de Bolívar', 3, ''),
(247, '2013-05-08 01:16:33', 1, 28, '26', 'Esta es la segunda noticia', 3, ''),
(248, '2013-05-08 01:16:33', 1, 28, '25', 'Esta es una nueva noticia', 3, ''),
(249, '2013-05-08 15:33:37', 1, 28, '25', 'Publicación de prueba', 1, ''),
(250, '2013-05-09 01:56:43', 1, 28, '25', 'Publicación de prueba', 2, 'Modificado/a contenido.'),
(251, '2013-05-09 01:58:13', 1, 28, '25', 'Publicación de prueba', 2, 'Modificado/a contenido.'),
(252, '2013-05-09 01:59:13', 1, 28, '25', 'Publicación de prueba', 2, 'Modificado/a contenido.'),
(253, '2013-05-10 18:51:27', 1, 28, '25', 'Publicación de prueba', 2, 'Modificado/a contenido.'),
(254, '2013-05-14 20:47:39', 1, 3, '9', 'diego', 1, ''),
(255, '2013-05-14 20:48:11', 1, 3, '9', 'diego', 2, 'Modificado/a password, first_name, last_name, email, is_staff y groups.'),
(256, '2013-05-14 20:48:43', 1, 3, '10', 'jorge', 1, ''),
(257, '2013-05-14 20:49:09', 1, 3, '10', 'jorge', 2, 'Modificado/a password, first_name, last_name, email, is_staff y groups.'),
(258, '2013-05-19 01:02:21', 1, 3, '11', 'juan', 1, ''),
(259, '2013-05-19 01:02:40', 1, 3, '11', 'juan', 2, 'Modificado/a password, is_staff y groups.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'deporte', 'deportivo', 'deporte'),
(9, 'categoria_torneo', 'deportivo', 'categoria_torneo'),
(10, 'tipo_locacion', 'deportivo', 'tipo_locacion'),
(11, 'area', 'deportivo', 'area'),
(12, 'locacion', 'deportivo', 'locacion'),
(13, 'torneo', 'deportivo', 'torneo'),
(14, 'equipo', 'deportivo', 'equipo'),
(15, 'partido', 'deportivo', 'partido'),
(16, 'deportista', 'deportivo', 'deportista'),
(17, 'gol', 'deportivo', 'gol'),
(18, 'equipo_participa', 'deportivo', 'equipo_participa'),
(19, 'deportista_participa', 'deportivo', 'deportista_participa'),
(20, 'post', 'inicio', 'post'),
(21, 'autor', 'main', 'autor'),
(22, 'categoria', 'main', 'categoria'),
(23, 'posicion', 'main', 'posicion'),
(24, 'anuncio', 'main', 'anuncio'),
(25, 'caricatura', 'main', 'caricatura'),
(26, 'video', 'main', 'video'),
(27, 'tipo_post', 'main', 'tipo_post'),
(28, 'post', 'main', 'post'),
(29, 'frase', 'main', 'frase'),
(30, 'tipo_galeria', 'main', 'tipo_galeria'),
(31, 'imagen_galeria', 'main', 'imagen_galeria'),
(32, 'sponsor', 'main', 'sponsor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('164c478ee774de262600603695f870b4', 'MWM0YTg3ZjQ4ZWQwZjJkZWNhMDY0YWRjYjUwODQzNGUwMmNjNzcyYTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQh1Lg==\n', '2013-05-19 14:44:06'),
('17511eea24096646d2f2ec352a257361', 'ZjEwYmJlM2E5N2ZkNGY4N2U2N2VmYTNmZTJhNDMxNjdjOWZlMzdmZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==\n', '2013-05-16 07:13:26'),
('31bb3f831a2ee43a502209cb08d3a1a0', 'MWM0YTg3ZjQ4ZWQwZjJkZWNhMDY0YWRjYjUwODQzNGUwMmNjNzcyYTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQh1Lg==\n', '2013-05-17 15:52:56'),
('46a094a38ca0d3a0c2e4e5f0d531b4bf', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-05-16 16:46:17'),
('473d7859405235760ef558f135d4935f', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-05-17 15:45:34'),
('5309f7578f9219881290de769a6e78da', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-30 00:16:53'),
('75be2b8da7a3b9a6a0f1395c10d27a9a', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-23 14:34:35'),
('8057e0b3477f70bc380488facd1e39cb', 'ZjEwYmJlM2E5N2ZkNGY4N2U2N2VmYTNmZTJhNDMxNjdjOWZlMzdmZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==\n', '2013-05-20 14:25:58'),
('868aaf3a2ed4c8f00d232d0a68f71226', 'OTZmZTczOTQ2N2I0MTFjMWI0ZDY3NDlkNjhlYTYyMmI2YTJhMjcxNjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQR1Lg==\n', '2013-05-07 15:25:53'),
('8a9f931bdcaefa23995448c29cb5af0d', 'ZjEwYmJlM2E5N2ZkNGY4N2U2N2VmYTNmZTJhNDMxNjdjOWZlMzdmZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==\n', '2013-05-20 14:25:59'),
('aa9fadb041025b705b31640be09e036f', 'MWM0YTg3ZjQ4ZWQwZjJkZWNhMDY0YWRjYjUwODQzNGUwMmNjNzcyYTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQh1Lg==\n', '2013-05-17 15:41:31'),
('ad55a5ebd22d8fc7d3c68fbace06055c', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-29 14:43:41'),
('b82eb55b3f2b2818d5c461f567c5540e', 'MWM0YTg3ZjQ4ZWQwZjJkZWNhMDY0YWRjYjUwODQzNGUwMmNjNzcyYTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQh1Lg==\n', '2013-05-17 22:28:22'),
('bvlsbx8b72e06nr37wx1if90vtp2a7y2', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-05-22 01:16:08'),
('e99bf4bc77b35b5af916d011d8631dca', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-23 15:44:59'),
('g9s16xi78fsrhjv12ts1yfcgig4dhtsn', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-05-28 20:43:27'),
('ny24g8k61v7ykb6dk9n55yb11mv17n8n', 'YTBhNDg0OGVkMGI5MjM2ZDE4ODlkMmEwZGJlOGNjMTJmNDFmODY0NzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQl1Lg==', '2013-05-28 21:05:32'),
('qhgf04phuydpjhcoz15k4vn1nyp1chca', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-05-22 15:28:43'),
('wc90r2ndlvjswf3i8vj9ayvthkolzks8', 'NTVhOTcwMDU3NGMxMzZjYzczYjNmZjRmZDY5MGQwMWYzNDAzM2FhNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-05-24 18:50:59'),
('yog0dbttox9y8roxr9voh4gbm1z1lt66', 'OWM5NDlkNmU1MDMzMjg3ZDQzYjBmMWY2ZDliZTFiMGI0Yjk1ZmFjODqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQt1Lg==', '2013-06-02 01:02:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio_post`
--

CREATE TABLE IF NOT EXISTS `inicio_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_anuncio`
--

CREATE TABLE IF NOT EXISTS `main_anuncio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `posicion_id` int(11) NOT NULL,
  `tamanio` int(11) NOT NULL,
  `fecha_pub` date NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_anuncio_943499ec` (`posicion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Volcado de datos para la tabla `main_anuncio`
--

INSERT INTO `main_anuncio` (`id`, `nombre`, `posicion_id`, `tamanio`, `fecha_pub`, `imagen`) VALUES
(1, 'Amaszonas', 1, 1, '2013-04-23', 'uploads/ads/ford.png'),
(2, 'tigo', 3, 1, '2013-04-23', 'uploads/ads/TIGO_1.jpg'),
(3, 'SOS', 3, 1, '2013-04-23', 'uploads/ads/sos.png'),
(4, 'natura', 3, 1, '2013-04-23', 'uploads/ads/casareal.png'),
(5, 'Entel', 3, 1, '2013-04-23', 'uploads/ads/entel.png'),
(6, 'Monopol', 3, 1, '2013-04-23', 'uploads/ads/monopol.png'),
(7, 'Ford', 3, 1, '2013-04-23', 'uploads/ads/ford.png'),
(8, 'DPI', 3, 1, '2013-04-23', 'uploads/ads/dpi.png'),
(9, 'Believe', 3, 1, '2013-04-23', 'uploads/ads/hisana.png'),
(10, 'Crespal', 3, 1, '2013-04-23', 'uploads/ads/fides.png'),
(11, 'Silvia', 3, 1, '2013-04-23', 'uploads/ads/hisana.png'),
(12, 'Paceña', 3, 1, '2013-04-23', 'uploads/ads/pacenia.png'),
(13, 'Eventos', 3, 1, '2013-04-23', 'uploads/ads/madepa.png'),
(14, 'Casa real', 3, 1, '2013-04-23', 'uploads/ads/monopol.png'),
(15, 'Meztizo', 3, 1, '2013-04-23', 'uploads/ads/entel_2.png'),
(16, 'Madepa', 3, 1, '2013-04-23', 'uploads/ads/madepa_1.png'),
(17, 'Impapex', 3, 1, '2013-04-23', 'uploads/ads/hisana.png'),
(18, 'Isotipo', 3, 1, '2013-04-23', 'uploads/ads/cargando_2.gif'),
(19, 'Isotipo', 4, 1, '2013-04-23', 'uploads/ads/cargando_1.gif'),
(20, 'Impapex', 4, 1, '2013-04-23', 'uploads/ads/bmw.png'),
(21, 'Madepa', 4, 1, '2013-04-23', 'uploads/ads/cargando_1.gif'),
(22, 'Meztizo', 4, 1, '2013-04-23', 'uploads/ads/hisana.png'),
(23, 'Casa real', 4, 1, '2013-04-23', 'uploads/ads/casareal_2.png'),
(25, 'Paceña', 4, 1, '2013-04-23', 'uploads/ads/pacenia_1.png'),
(26, 'Silvia', 4, 1, '2013-04-23', 'uploads/ads/cargando_1.gif'),
(27, 'Crespal', 4, 1, '2013-04-23', 'uploads/ads/cargando_1.gif'),
(28, 'Believe', 4, 1, '2013-04-23', 'uploads/ads/casareal_1.png'),
(29, 'DPI', 4, 1, '2013-04-23', 'uploads/ads/dpi_1.png'),
(30, 'Ford', 4, 1, '2013-04-23', 'uploads/ads/ford_1.png'),
(31, 'Monopol', 4, 1, '2013-04-23', 'uploads/ads/monopol_1.png'),
(32, 'Entel', 4, 1, '2013-04-23', 'uploads/ads/entel_1.png'),
(33, 'natura', 4, 1, '2013-04-23', 'uploads/ads/NATURA.jpg'),
(34, 'SOS', 4, 1, '2013-04-23', 'uploads/ads/sos_1.png'),
(35, 'tigo', 4, 1, '2013-04-23', 'uploads/ads/TIGO_2.jpg'),
(36, 'Amaszonas', 1, 1, '2013-04-23', 'uploads/ads/hisana_1.png'),
(37, 'Dakar', 5, 1, '2013-04-23', 'uploads/ads/dakar_1.png'),
(38, 'Natura', 5, 1, '2013-04-23', 'uploads/ads/NATURA.jpg'),
(39, 'Bisa', 6, 1, '2013-04-23', 'uploads/ads/bisa.png'),
(40, 'Hiwasana', 6, 1, '2013-04-23', 'uploads/ads/dakar.png'),
(41, 'CBN', 6, 1, '2013-04-23', 'uploads/ads/fides_1.png'),
(42, 'Fides', 6, 1, '2013-04-23', 'uploads/ads/dakar_2.png'),
(43, 'BMW', 6, 1, '2013-04-23', 'uploads/ads/Schwarzkopf.jpg'),
(44, 'Monopol', 2, 1, '2013-04-23', 'uploads/ads/MONOPOL_1.jpg'),
(45, 'Gloria', 2, 1, '2013-04-23', 'uploads/ads/TIGO.jpg'),
(46, 'Efece', 2, 1, '2013-04-23', 'uploads/ads/cargando.gif'),
(47, 'Bridgestone', 1, 1, '2013-04-23', 'uploads/ads/LOGO_EL_DIARIO_2009.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_autor`
--

CREATE TABLE IF NOT EXISTS `main_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `main_autor`
--

INSERT INTO `main_autor` (`id`, `nombre`, `apellidos`) VALUES
(1, 'Victor', 'Aguilar'),
(2, 'Hernan', 'Rengel'),
(3, 'Nataly', 'Maric'),
(4, 'Diego', 'Rada'),
(5, 'Jose', 'Vergara'),
(6, 'Sandra', 'Monje'),
(7, 'Jhonny', 'Mollinedo'),
(8, 'Hernan', 'Rengel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_caricatura`
--

CREATE TABLE IF NOT EXISTS `main_caricatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor_id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_caricatura_cd13cb18` (`autor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `main_caricatura`
--

INSERT INTO `main_caricatura` (`id`, `autor_id`, `imagen`, `titulo`, `fecha`) VALUES
(1, 1, 'uploads/caricaturas/c1.jpg', 'Ronaldinho', '2013-04-09'),
(2, 2, 'uploads/caricaturas/c2.jpg', 'Fidel Castro', '2013-04-09'),
(3, 3, 'uploads/caricaturas/c3.jpg', 'Otro Ronaldinho', '2013-04-09'),
(4, 4, 'uploads/caricaturas/c4.jpg', 'NN', '2013-04-09'),
(5, 5, 'uploads/caricaturas/c5.jpg', 'Platino', '2013-04-09'),
(6, 6, 'uploads/caricaturas/c6.jpg', 'Messi', '2013-04-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_categoria`
--

CREATE TABLE IF NOT EXISTS `main_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `main_categoria`
--

INSERT INTO `main_categoria` (`id`, `nombre`) VALUES
(1, 'Selección'),
(2, 'Bolivar'),
(3, 'Clásico'),
(4, 'Torneo Clausura'),
(5, 'la paz'),
(6, 'The Strongest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_frase`
--

CREATE TABLE IF NOT EXISTS `main_frase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(100) NOT NULL,
  `frase` varchar(120) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `main_frase`
--

INSERT INTO `main_frase` (`id`, `autor`, `frase`, `fecha`) VALUES
(1, 'Victor Aguilar', 'Aunque a todos les está permitido pensar, muchos se lo ahorran.', '2013-04-15'),
(2, 'Hernán Rengel', 'La libertad es el derecho que tienen las personas de actuar libremente, pensar y hablar sin hipocresía', '2013-04-15'),
(3, 'Diego Rada', 'Buscando mi destino, concluyo por pensar que sólo en el buscar consiste mi destino.', '2013-04-15'),
(4, 'Walt Disney', 'Si lo puedes soñar...lo puedes hacer', '2013-05-06'),
(5, 'William Ferreira', 'Tenemos cuatro finales, la idea es ganar, ganar, ganar y ganar, luego festejar como loco', '2013-05-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_imagen_galeria`
--

CREATE TABLE IF NOT EXISTS `main_imagen_galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha` date NOT NULL,
  `galeria_id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_imagen_galeria_cd13cb18` (`autor_id`),
  KEY `main_imagen_galeria_9b3c3e78` (`categoria_id`),
  KEY `main_imagen_galeria_ee2cd978` (`galeria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `main_imagen_galeria`
--

INSERT INTO `main_imagen_galeria` (`id`, `autor_id`, `categoria_id`, `descripcion`, `fecha`, `galeria_id`, `imagen`, `titulo`, `visible`) VALUES
(1, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 1, 'uploads/slides/s1.jpg', 'La Seleccion Anterior', 1),
(2, 2, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 1, 'uploads/slides/s2.jpg', 'Barra', 0),
(3, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 1, 'uploads/slides/s3.jpg', 'Entrenamiento', 1),
(4, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 1, 'uploads/slides/s4.jpg', 'Apasionado', 1),
(5, 4, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 1, 'uploads/slides/s5.jpg', 'Eso tiene que ser penal', 1),
(6, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 1, 'uploads/slides/s6.jpg', 'Un logazo no es golazo', 1),
(7, 6, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 1, 'uploads/slides/s7.jpg', 'Azkargoitia', 1),
(8, 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 2, 'uploads/slides/g1_1.jpg', 'Belleza', 1),
(9, 2, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 2, 'uploads/slides/g2.jpg', 'Porteria resguardada', 1),
(10, 3, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 2, 'uploads/slides/g3.jpg', 'A lo Gol', 1),
(11, 4, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 2, 'uploads/slides/g4.jpg', 'Diosa', 1),
(12, 4, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 2, 'uploads/slides/g5.jpg', 'A entrenar se dijo', 1),
(13, 5, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 2, 'uploads/slides/g6.jpg', 'Un equipazo', 1),
(14, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi', '2013-04-09', 2, 'uploads/slides/g7.jpg', '¿Rivalidad?', 1),
(15, 1, 1, 'Otra foto', '2013-04-11', 1, 'uploads/slides/apple-mobile-phone-149689-o.jpeg', 'iPhone de Premio', 1),
(16, 7, 2, 'Este un partido', '2013-04-15', 1, 'uploads/slides/p10.jpg', 'El bolivar ganó', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_posicion`
--

CREATE TABLE IF NOT EXISTS `main_posicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posicion` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `main_posicion`
--

INSERT INTO `main_posicion` (`id`, `posicion`) VALUES
(1, 'Superior'),
(2, 'Inferior'),
(3, 'Izquierdo'),
(4, 'Derecho'),
(5, 'Central Grande'),
(6, 'Central Menor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_post`
--

CREATE TABLE IF NOT EXISTS `main_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(80) NOT NULL,
  `autor_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `contenido` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `fecha` date NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_post_cd13cb18` (`autor_id`),
  KEY `main_post_9b3c3e78` (`categoria_id`),
  KEY `main_post_d81b0b6e` (`tipo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `main_post`
--

INSERT INTO `main_post` (`id`, `titulo`, `autor_id`, `categoria_id`, `contenido`, `imagen`, `fecha`, `visible`, `tipo_id`) VALUES
(1, 'Charles vuelve al plantel', 1, 3, 'El volante brasileño de creación Charles da Silva, cumplió su partido de suspensión por acumulación de cinco tarjetas amarillas, por lo que retornará al primer equipo "celeste" este domingo, ante el equipo chaqueño de Petrolero, por la decimocuarta fecha del torneo Clausura de la Liga del Fútbol Profesional Boliviano.\r\n\r\n Charles estuvo ausente del compromiso que Aurora jugó el jueves último ante Real Potosí, en el estadio Víctor Agustín Ugarte, correspondiente a la decimotercera fecha del Clausura.\r\n\r\n El cotejo se cerró con una derrota  por 1 a 0, en contra de Aurora, que quedó en la décima posición del campeonato profesional liguero con 10 unidades.\r\n\r\n Ofensivo\r\n\r\n Charles retorna al equipo en un momento justo, porque Aurora se apresta a recibir a Petrolero, y es cuando la vocación ofensiva se pondrá de manifiesto más que nunca en el plantel "celeste", que precisa con urgencia conseguir puntos para sumar en la tabla general del campeonato y alejarse de la cercaca zona del descenso.\r\n\r\n El brasileño se ajusta al perfil del entrenador Víctor Hugo Antelo, que es franco para ir frente a la portería rival, tal como lo hizo en su época de delantero.\r\n\r\n Da Silva manifestó su predisposición de aportar al equipo, una vez superada la sanción.\r\n\r\n Machado\r\n\r\n Otro de los posibles retornos es el de Henry Machado, el volante mixto que se lesionó precisamente en el partido de la duodécima fecha ante La Paz FC.\r\n\r\n En principio se creía que era una fractura, pero después los estudios médicos certificaron que simplemente se trataba de una fuerte contusión en el tobillo derecho; la inmovilidad de la parte afectada y el tratamiento médico posibilitaron el alta médica.\r\n\r\n Sin embargo, ahora resta saber si el entrenador lo tiene en mente para el equipo titular que saldrá al Capriles este domingo.\r\n\r\n Aprestos\r\n\r\n El equipo profesional de Aurora reinició ayer los entrenamientos con miras al compromiso ante Petrolero, de Yacuiba. La tarde del jueves, el técnico perfilará el plantel titular, que se espera concentre desde la noche del sábado.', 'uploads/posts/images/p1.jpg', '2013-04-09', 1, 2),
(4, 'Presidente de The Strongest exhorta a sus jugadores', 2, 1, 'El plantel de The Strongest cumplió 105 años de vida ayer, fecha recordada con una misa en la Catedral Metropolitana Nuestra Señora de La Paz y una ofrenda floral, ocasión en la cual el presidente del club, Kurt Reintsch, pidió a su cuerpo técnico y al primer plantel ganar para llevar en alto el nombre de la entidad en los torneos de la Liga y Copa Libertadores de América.\r\n\r\n“Decirles a los jugadores y cuerpo técnico que las estrellas están en el cielo, pisemos tierra y empecemos a jugar y ganar. Es importante que una institución no pueda estar debajo de la mitad de la tabla”, expresó el titular aurinegro.\r\n\r\nEl Tigre trata de reponerse en el torneo Clausura con la motivación por su buena actuación en la Copa Libertadores de América, ya que mantiene posibilidades de clasificarse a octavos de final.\r\n\r\n“Disfrutemos este momento con humildad, respetando a los rivales y soñando con cosas más importantes deportivamente y de infraestructura porque sería bueno crecer”, comentó el director técnico Eduardo Villegas.\r\n\r\nLa institución Decana suspendió sus actividades programadas para el aniversario debido al fallecimiento días atrás el expresidente José Saavedra Banzer, su titular adelantó los proyectos que tiene para el futuro, entre otros la inauguración de una piscina y un supermercado en el complejo, mejoras a la escuela de fútbol en la calle Frías, un museo temático y la entrega de terrenos en la ciudad de El Alto para que funcionen escuelas de fútbol.\r\n\r\nTambién ordenó que la Secretaria del club entregue certificados de participación a todos los expresidentes que estén en vida o a sus hijos mayores sin ningún costo de mantenimiento. “A esos hombres valerosos patriarcas paceños que les tocó manejar la institución, les honramos con eso”, declaró, aunque habría excepciones con dos dirigentes cuyos nombres no reveló.', 'uploads/posts/images/p2.jpg', '2013-04-09', 1, 2),
(5, 'El paro fue una presión para que paguen sueldo', 3, 3, 'La molestia se generalizó en el grupo tomando en cuenta que la dirigencia les venía anunciando desde hace dos sábados que el pago de un mes, de los tres que se les adeuda, se cumpliría.\r\n\r\nComo no ocurrió, el plantel se reunió ayer en el camarín antes de que Néstor Clausen los llame al campo de juego y tras evaluar el momento decidieron no trabajar y hasta que realmente se pague.\r\n\r\nEsta situación convocó al presidente del club celeste, quien luego de hacer gestiones consiguió reunir  la plata y pagó a los jugadores a partir de las 18:00.\r\n\r\nCon esta novedad, ahora el equipo retomará hoy su labor de cara al partido del próximo domingo ante Universitario, en Sucre, por la decimacuarta fecha del campeonato Clausura.\r\n\r\nClausen espera que Blooming pueda conseguir un buen resultado ante Universitario. El DT es optimista, ya que para este compromiso no cuenta con lesionados (se recuperaron todos lo que estaban con molestias, incluidos David Díaz y Andrés Jiménez) ni con suspendidos por expulsiones y tarjetas amarillas. "Será una semana importante para definir a los titulares", dijo Clausen.', 'uploads/posts/images/p3.jpg', '2013-04-09', 1, 2),
(6, 'Académicos cumplirán 88 años', 4, 2, 'Los académicos cumplen este 12 de abril cumplen 88 años de vida en el fútbol nacional boliviano, será todo un regalo de cumpleaños si mañana prenden las tres velas para consagrarse al menos por la decimotercera fecha de la liga del torneo clausura 2013 como absolutos punteros.\r\n\r\nLos académicos pisan los talones a Oriente Petrolero quien por ahora figura como primero en la tabla de posiciones, mucho depende del encuentro ante The Strongest el día de mañana para sumar 31puntos y consolidar a los celestes como líderes del presente torneo.\r\n\r\nSegún declaraciones que efectuó el día de ayer el zaguero de los académicos, Nelson Cabrera, señaló que la victoria de mañana favorecería más al cuadro académico que al contrincante y que los pondría en clara ventaja para obtener el título nacional como campeón del torneo clausura “Seguro que este resultado nos favorecería más a nosotros que al equipo contrario, debemos ser cautelosos ante las jugadas que de seguro llevarán peligro a nuestro campo” destacó el solvente defensor.', 'uploads/posts/images/p4.jpg', '2013-04-09', 1, 2),
(7, 'Andaveris está habilitado para jugar', 4, 1, 'Luego de cumplir con dos encuentros de suspensión, el atacante Augusto Andaveris podrá ser tomado en cuenta en filas de Wilstermann para enfrentar el sábado a Nacional Potosí, en la Villa Imperial, en cumplimiento de la decimocuarta fecha del certamen Clausura .\r\n\r\n Andaveris fue expulsado el 10 de marzo, por la undécima fecha del  torneo Clausura en el cotejo en el que Wilstermann cayó por 5-3 ante Bolívar, en La Paz. El delantero vio la cartulina roja a los 37'' del complemento, amonestación que derivó en dos partidos de suspensión, ante San José y Universitario.\r\n\r\n Por ello, y tras haber cumplido su castigo, el atacante yungueño —aunque la desición deberá pasar primero por manos del técnico Víctor Hugo Andrada— podría volver al once titular junto a Eric Aparicio y Pablo Salinas, delanteros del elenco "rojo".\r\n\r\n Andaveris, una de las cartas gol el cuadro "rojo", marcó en el actual torneo tres tantos, empero, se constituyó en una de las principales figuras de tres cuartos de cancha hacia arriba, función en la que ha generado importantes llegadas y asistido a sus compañeros para marcar goles.\r\n\r\n Asimismo, y después de algunas fechas, el entrenador de Wilstermann podrá contar con todo su arsenal en procura de conseguir unidades que le permitan soñar con alcanzar los puestos de vanguardia.\r\n\r\n Si bien no habrán bajas por sanción ni por lesión, aún se mantiene en capilla el portero Hugo Suárez, quien cuenta con cuatro tarjetas amarillas.\r\n\r\n Entrenamientos \r\n\r\n Luego de gozar de un descanso en la jornada de domingo, y revitalizado por el triunfo obtenido ante Universitario, el elenco "rojo" retomó las prácticas ayer en la cancha 6 del estadio Félix Capriles, donde el técnico Víctor Andrada hizo hincapié en la parte física, pero sin descuidar los aspectos técnicos y tácticos.  Durante estos días, Andrada trabajará también en el diseño del esquema que presentarán de cara al compromiso ante los "rancho guitarras", otro encuentro que fue calificado por el estratega "aviador" como una de las finales para alcanzar el objetivo de gestión: salir campeón del torneo Clausura.\r\n\r\n No obstante, para Wilstermann no será un buen recuerdo el jugar ante este rival. La última presentación de los "rojos" ante el equipo de la banda roja en la Villa Imperial fue el 16 de diciembre de 2012, por la vigésima segunda fecha del torneo Apertura y que culminó con ventaja local por 1-0, con anotación conquistada por el delantero colombiano John Obregón.', 'uploads/posts/images/p5.jpg', '2013-04-09', 1, 2),
(8, 'Guabirá busca por cuarta vez su ascenso a la Liga', 4, 3, 'Este domingo 14 Guabirá podría concretar su anhelo de retornar a la Liga del Fútbol Profesional Boliviano, tras un año de haber perdido la categoría; sería la cuarta de su historia.\r\n\r\nTres ascensos. Guabirá de Montero es el único club del fútbol boliviano que ha logrado ascender en tres oportunidades.\r\n\r\nLa primera ocurrió en 1992,  cuando tras jugar partidos por el ascenso-descenso indirecto con Real Santa Cruz derrotó a los "albos" 2-0 en el partido decisivo luego de un empate 2-2 en el primer encuentro.\r\n\r\nLa segunda vez fue en 2007 al ganar el título de la Copa Simón Bolívar mediante definición de tiros desde el punto penal, en un partido extra frente a Nacional Potosí (0-0) jugado en Cochabamba luego que ambos se impusieron de local, 2-1 Guabirá en Montero y 2-0 Nacional en Potosí.\r\n\r\nEl tercer ascenso fue en 2009, en una recordada final ante Ciclón.\r\n\r\nRecordada no solo por el título, sino por los hechos, ya que en el segundo partido en la capital chapaca los albicelestes se imponían por 3-2 cuando el entrenador Mario Ortega hizo ingresar cinco jugadores extranjeros en cancha, contraviniendo los reglamentos del fútbol nacional que indican solamente cuatro.\r\n\r\nEl Tribunal, como era de esperar, otorgó el triunfo a los rojos, que se habían impuesto en Montero 2-1 en la ida, y por consiguiente el título y el ascenso\r\n\r\nEn 2013, el cuarto. Si el domingo los rojos ganan y en Oruro Ciclón no pasa del empate, Guabirá será el campeón y logrará el cuarto ascenso de su historia.', 'uploads/posts/images/p6.jpg', '2013-04-09', 1, 2),
(9, 'Retornó Peña y Oriente le exige que se presente', 6, 1, 'El delantero cruceño Alcides Peña regresó el domingo de Arabia Saudita, donde estuvo ligado durante 64 días al club Al Ettifaq, que pagó a Oriente Petrolero una primera cuota de 70 mil dólares por un préstamo de cuatro meses, pero que no pudo habilitarlo para el campeonato local debido a que no llegó a tiempo el transfer internacional. El jugador dijo sentirse perjudicado por esta situación, tomando en cuenta que emigró con la ilusión de jugar en otro país. Se conoció también que el club Al Ettifaq hará en los próximas horas otra oferta por el atacante. Se habla de $us 200 mil por el préstamo de un año y de $us 420 mil por la compra de la ficha.\r\n\r\nOriente lo convoca con carta notariada. Tras conocer su regreso al país, la dirigencia de Oriente le envió a Peña una carta notoriada para que se presente a los entrenamientos regulares; caso contrario, le anuncian que se verán en la necesidad de acudir al Tribunal de Resoluciones y Disputas de la FBF. ', 'uploads/posts/images/p7.jpg', '2013-04-09', 1, 2),
(10, 'Aurora vence a Petrolero de manera indiscutible', 1, 1, 'Aurora logró su cuarta victoria en el certamen, ayer de manera incuestionable sobre Petrolero de Yacuiba por 3-1, con una actuación destacada del brasileño Charles da Silva, quien fue el motor del conjunto cochabambino.\r\n\r\nPese a esa victoria, los celestes siguen en la antepenúltima posición de la tabla, con 13 unidades, aunque de acuerdo con el mismo entrenador Víctor Hugo Antelo, más allá del resultado, lo positivo de la jornada fue la evolución futbolística del equipo.\r\n\r\nEn contrapartida, los chaqueños sufrieron su octava derrota y también continúan en la penúltima posición de la tabla del certamen, con 10 puntos. Como se presumía, la primera parte del cotejo fue controlada por los anfitriones, quienes propusieron un juego ofensivo ante un rival que apostó a contragolpear con Freddy Chispas, quien ‘pereció’ por falta de apoyo.\r\n\r\nA los 16 minutos, Abraham García cometió falta a Rodrigo Vargas y el árbitro Orlando Quintana sancionó la pena máxima para el local. El delantero Vladimir Castellón remató la pelota y Jorge Ruth la contuvo ahogando el primer grito de gol.\r\n\r\nEl cuadro celeste no perdió el tiempo en lamentaciones ni se desesperó, porque a los 24’, Da Silva envió un disparo preciso, el balón pegó en el palo y se introdujo en el arco chaqueño.  Los dirigidos por Mario Ortega trataron de reaccionar, pero no tuvieron argumentos.\r\n\r\nEn el complemento, el encuentro se hizo movedizo. Da Silva se quitó la marca de tres adversarios y con remate colocado anotó el mejor gol de la tarde, fue una jugada rápida a los 61’. De ahí en adelante, el control del encuentro fue del Equipo del Pueblo que, sin oponente, hizo lento el fútbol y no se exigió.\r\n\r\nSobre el final, un gran pase del volante Édgar Olivares le permitió a Castellón sacarse la espina del penal, porque con disparo preciso concretó el tercer gol a los 85’. Y un sorpresivo contragolpe del rival permitió a Miguel Ortiz descontar a los 88’, mediante un golpe de cabeza', 'uploads/posts/images/p8.jpg', '2013-04-15', 1, 3),
(13, 'El Tigre B se hace fuerte', 2, 1, 'The Strongest demostró con quienes no juegan habitualmente que también ellos pueden cumplir una buena actuación, lo hicieron ayer logrando un empate ante San José en el Jesús Bermudez (1-1).\r\n\r\nFiel al libreto futbolístico que maneja el entrenador Eduardo Villegas, el aurinegro comenzó haciéndose fuerte en defensa y con esa base se fue luego al ataque creando varias opciones. El santo tuvo chispazos de buen futbol, pero su actuación  sin orden no lo llevó al final a un buen puerto.\r\n\r\nLos gualdinegros cerraron espacios y con contragolpes letales se hicieron peligrosos, incluso abrieron el marcador a los diez minutos, cuando Sacha Lima cedió el balón para la proyección del debutante Adel Sarras, quien dio un pase para Luis Melgar, y éste superó a Luis Torrico y Carlos Tordoya para encarar al meta Barahona y con remate bajo poner en ventaja a su equipo.\r\n\r\nEl local cambió de estrategia, atacó por los laterales y forzó a un tiro libre, que fue ejecutado por el brasileño Marcelo Gomes, quien envió un centro, los zagueros visitantes no reaccionaron y desde atrás ingresó Tordoya, se lanzó al piso y con uno de sus pies desvió el curso del balón y anotó el empate a los 19’. Los santos monopolizaron el juego ofensivo e intentaron el desequilibrio con Diego Cabrera, Gomes y Abdón Reyes, pero Andrés Jemio estuvo atento.\r\n', 'uploads/posts/images/p9.jpg', '2013-04-15', 1, 3),
(14, 'Arce, con tres goles, le salva la tarde a Bolívar', 7, 2, 'Bolívar sacó adelante un partido que se le hizo duro, y tuvo que luchar mucho para derrotar a La Paz FC (3-1) en el estadio Hernando Siles para continuar como el escolta más cercano de Oriente Petrolero en la lucha por el primer lugar del torneo Clausura. Fue la tarde de Juan Carlos Arce, autor de los tres goles del triunfo que sirvieron para sumar esas tres unidades y darle un empujón más al azulgrana hacia el descenso directo de categoría.\r\n\r\nLa diferencia en el marcador, sin embargo, no refleja lo que sucedió en el campo de juego, donde la Academia pasó más de un susto, sobre todo en el primer tiempo, en el que su adversario dispuso de algunas situaciones para convertir pero le faltó serenidad en la puntada final.\r\n\r\nEse defecto se hizo evidente una vez más en el equipo que hasta ahora no sabe de triunfos en el campeonato y por eso su suerte —la despedida de la categoría— parece estar echada. En esa fracción aparecieron los temores de la Academia, que se impacientó en la cancha y estuvo a punto de perder el control del juego, tal como le sucedió en el clásico contra The Strongest.\r\n\r\nEn la segunda parte llegó el alivio con los aciertos del Conejo, quien pudo encontrar la llave para abrir la puerta del triunfo. El primero llegó con un poco de suerte, Cardozo fue habilitado por izquierda y mandó un centro atrasado para que el goleador emboque. Su tiro hizo una carambola chocando en el pie de Alaca que intentó trabar y sorprendió adelantado a Torrico para el 1-0 (10''). Después (19'') resolvió con serenidad y categoría. Esta vez fue por izquierda: una vez que agarró el balón, eliminó al golero y remató con arco vacío para liquidar el partido.\r\n\r\nArce culminó su gran obra con la tercera conquista, esta vez fue de cabeza. El delantero se acomodó en el lugar preciso para conectar un centro desde la izquierda de Leonardo Maygua.   Jonathan Rodríguez logró descontar (41''), pero era demasiado tarde para intentar una heroica por parte del azulgrana.', 'uploads/posts/images/p10.jpg', '2013-04-15', 1, 3),
(15, 'Máximo Alcócer, hitos más allá del 63', 4, 1, 'Es uno de los héroes campeones del Sudamericano de 1963, pero Máximo Alcócer tiene para desempolvar    —desde Estados Unidos, donde reside— otros hitos futboleros de su carrera deportiva. Cabecita de Oro o Tutula, como le llaman, cumple hoy 80 años y es una leyenda viviente que las nuevas generaciones deben conocer y las mayores, recordar.\r\n\r\nUno de los mejores cabeceadores del fútbol boliviano atendió a un medio periodístico del país luego de muchos años y expresó su alegría por ello. “Hace años que no hablaba con nadie. Me pone contento hacerlo de nuevo”, aseguró desde su hogar en Carolina del Norte, a través de la línea telefónica. \r\n\r\nEl cochabambino, un poderoso goleador de cabeza al igual que Serapio Vega —el Cabecita de oro atigrado—, no sólo rememoró las imágenes del seleccionado campeón sudamericano, en el que fue un titular indiscutible en todos los partidos de ese torneo, sino que también evocó otro tipo de conquistas.', 'uploads/posts/images/p11.jpg', '2013-04-15', 1, 3),
(16, 'Lorgio Álvarez: ‘Es momento de decirle basta a la selección’', 6, 2, 'Lorgio Álvarez comenzó a jugar fútbol a nivel profesional hace 17 años (1995). Durante ese tiempo actuó en clubes de Bolivia y el exterior, y además fue un aporte para la selección nacional. Hoy, aunque todavía está activo, jugando en Bolívar, parece un convencido de que su ciclo con la Verde ha terminado.\r\n\r\n— ¿Llegó el momento de decirle adiós a la selección?\r\n\r\n— Yo creo que sí. Hay que darles la oportunidad a otros chicos, que sean parte de un proceso y que sean protagonistas. Darles la posibilidad de defender los colores del país como yo lo hice en su momento. Yo lo di todo por la selección, ahora que esos chicos lo hagan bien sabiendo que pueden dar lo mejor de ellos.\r\n\r\n— ¿Cómo un jugador se da cuenta de que es el momento de dejar la selección?\r\n\r\n— Obvio que uno lo siente,    es consciente de que tuvo su oportunidad y lo aprovecho al máximo. Hoy por hoy hay una camada de futbolistas que han aparecido y saben ganarse un puesto, por ello en mi caso particular es el momento de decir basta.', 'uploads/posts/images/p12.jpg', '2013-04-15', 1, 2),
(17, 'El Tigre venció en las canchas, venció en la guerra', 7, 2, 'En el principio, un grupo de jóvenes de abolengo “despojados de sus chaquetas, guantes y bastón, comenzaban a patear de lo lindo una pelota de cuero de regulares dimensiones, ya elevándola al infinito, ya pasándola entre los demás, sin utilizar las manos. Se divertían todas las tardes de domingo” (1). Estos jóvenes —entre los que destacaba José Luis Tejada Sorzano, que llegó a ser presidente de la República— dieron origen al Thunders (truenos). Y el trueno trepidó rotundo y mortal, venciendo al poderoso Oruro Royal en su primer desafío, que se jugó en la plaza Sucre, San Pedro.\r\n\r\nEstamos a principios del siglo XX, y el Thunders, de tan brillante comienzo, empieza a palidecer y los incipientes cracks paceños, que se reunían los domingos a un costado de la plaza Murillo, frente a Palacio de Gobierno, para escuchar las retretas, deciden fundar otro club, el 8 de abril de 1908.\r\n\r\nQuizás no fueron los más habilidosos, pero fueron los más valientes y se hicieron llamar Strongest Foot Ball Cub, nombre con el que trajinarían hasta 1922, fecha en que el club se reafirmó sólo como The Strongest, por gestiones de su presidente Humberto Montes. Las primeras camisetas (entonces llamadas camisolas), que los jugadores usaban todavía con corbata, las cosió doña Victoria —la mamá del goalkeeper Alberto Requena—.', 'uploads/posts/images/p13.jpg', '2013-04-15', 1, 3),
(21, 'El Tigre sufre una paliza', 1, 4, 'Universitario dio ayer en el estadio Hernando Siles una  lección de efectividad y superó con goleada a The Strongest (1-4), que estuvo lejos de aquel equipo que tuvo buenas presentaciones en la Copa Libertadores de América.\r\n\r\nA la virtud del chuquisaqueño, por ser preciso en el arco adversario, hay que sumarle el orden que tuvo en el campo, donde se vio una formación sólida que aplicó bien sus conceptos.\r\n\r\nLa ''U'' fue superior, sobre todo en el segundo tiempo, cuando el Tigre le entregó en bandeja el triunfo. La salida de Marcos Barrera desarmó la defensa atigrada y el visitante sacó provecho de esa ventaja para liquidar.\r\n\r\nDe nada les sirvió a los dirigidos por Eduardo Villegas tener en cancha a cinco jugadores de ataque, que poco pudieron hacer en materia ofensiva, y las veces que llegaron hasta la última línea se encontraron con un solvente Federico Elduayen, quien impuso toda su autoridad en el área.\r\n\r\nHubo partidos en los que la garra ayudó a los de Achumani a sacarlos adelante, pero ese factor estuvo ausente, quizá por el trajín de las últimas semanas jugando con intensidad en la Libertadores.\r\n\r\nNi siquiera cuando The Strongest descontó a los 24 minutos de la segunda parte dio la sensación de que sería protagonista de una remontada, porque de inmediato quedó de nuevo en la lona.\r\n\r\nA los 34 minutos, Juan Eduardo Fierro anotó después de una falla defensiva con un remate desde la altura del punto penal para vencer a Vaca.\r\n\r\nEn la segunda parte (15''), Ríos  aprovechó una confusión entre Vaca y Bejarano para convertir el segundo.\r\n\r\nEl descuento fue de Reina, quien con un toque dejó fuera de acción a Elduayen (24''ST). Esa conquista no desanimó al equipo de Sucre, por el contrario siguió con su juego y repitiendo la fórmula anotó las otras dos conquistas. Fierro culminando una jugada iniciada en un saque de costado (28'') y Escalante (34’), después de desnudar otra vez el mal sistema defensivo del Tigre.\r\n\r\nCuatro, como en el partido de ida\r\n\r\nOcho goles\r\n\r\nSumando ida y vuelta, Universitario le hizo ocho goles al Tigre. Fue 4-0 en Sucre y 1-4 ayer.\r\n\r\nSeis tantos\r\n\r\nDe esas conquistas, Fierro hizo los cuatro en la capital y dos ayer en el estadio Hernando Siles.\r\n\r\nGoleador\r\n\r\nFierro se acerca a William Ferreira entre los goleadores. Con sus dos tantos suma 12 y está a uno del celeste.\r\n\r\nLA FIGURA\r\n\r\nJuan Eduardo Fierro abrió la ruta del triunfo y después marcó otro gol importante. No desaprovechó las oportunidades que dispuso frente al arco contrario.\r\n\r\nCansancio\r\n\r\nAl Tigre le pasó factura la exigencia como consecuencia de la intensidad en la Libertadores, por eso se vio a jugadores en el campo de juego con síntomas de cansancio.\r\n\r\nEL ÁRBITRO\r\n\r\nPocos errores cometió Joaquín Antequera. Dirigió de cerca en un partido en el que los actores cumplieron con su rol y se dedicaron a jugar antes que ir en contra del rival.\r\n\r\nDisgustados\r\n\r\nDespués de mucho tiempo se vio en las tribunas hinchas atigrados enojados. Algunos que se ubicaron en la tribuna de preferencia recriminaron a Eduardo Villegas.\r\n\r\nOpinan:\r\n\r\nE. villegas (The Strongest): ‘Ofrecimos muy poco por el desgaste físico y mental’.\r\n\r\nPablo Escobar (The Strongest): ‘Hicimos un pésimo partido y el rival nos ha superado en todo’.\r\n\r\nJavier Vega (Universitario): ‘Seguimos pensando en que podemos luchar por el título’.\r\n\r\nLuis Liendo (Universitario): ‘Un triunfo merecido, el equipo se paró bien en la cancha’.\r\n\r\nLa caída pone a The Strongest lejos de los primeros lugares\r\n\r\nLa derrota pone a The Strongest en una situación complicada en el torneo Clausura de la Liga, lejos de su objetivo de alcanzar al menos el tercer lugar, en este momento en manos de Universitario.\r\n\r\n El Tigre comenzó con un tropiezo feo su maratón de diez partidos (deberá jugar cada tres días y medio como promedio).\r\n\r\nCon 13 cotejos jugados (aún debe tres), el equipo de Achumani tiene 18 puntos, está a 19 de Bolívar que ayer recuperó el primer lugar.\r\n\r\nEl segundo y tercer puestos también parecen lejanos para los gualdinegros. Oriente y Universitario son los dueños de esas casillas, con 36 y 29 unidades, respectivamente.\r\n\r\nAunque nada está perdido, el camino es difícil. Para continuar, pasado mañana el Tigre comenzará a ponerse al día en materia de partidos jugados y lo hará frente a Bolívar, con el que reeditará el clásico nacional.\r\n\r\nDe acuerdo con la convocatoria del certamen, el primero se clasificará a la Copa Libertadores de América como Bolivia 1, el segundo a la primera fase de ese certamen (Bolivia 3) y el tercero sacará boleto para la Copa Sudamericana, también de 2014.\r\n\r\nAl Tigre le quedan por jugar 27 puntos, ganando todos sumaría 45 unidades.', 'uploads/posts/images/p15_3.jpg', '2013-04-23', 1, 2),
(22, 'Bolívar va a paso de campeón', 2, 2, 'La Academia obtuvo ayer en la Villa Imperial un triunfo valioso para acompañar su aspiración de ser campeón del fútbol boliviano, sobre Real Potosí (0-2), y lo hizo con claridad y merecimientos.\r\n\r\nDe esa manera, Bolívar recuperó el primer lugar en la tabla de posiciones, aprovechando, además, el tropiezo, con un empate, que sufrió el antes líder, Oriente Petrolero, en su salida sin goles a cancha de Aurora.\r\n\r\nLa Academia —no hay que olvidarlo— tiene un partido menos que, si lo gana, cuando el miércoles enfrente a The Strongest, sacaría cuatro unidades de diferencia al segundo, algo nada despreciable para afrontar la recta final del campeonato.\r\n\r\nEn Potosí, Bolívar estuvo cerca de revalidar ese su apelativo, porque expuso un juego agresivo, vistoso e indiscutible por su superioridad.\r\n\r\nEl resultado pudo ser más amplio, pero le faltó precisión en la definición, pues generó al menos cuatro claras opciones de gol, el uruguayo William Ferreira desperdició dos de ellas.\r\n\r\nEl celeste copó el medio campo, anuló la creación del rival y se fue decidido al ataque.\r\n\r\n¿Real? No fue ni la sombra del equipo que ganó en Oruro y este domingo estuvo desconectado en sus diferentes líneas. No le salió una jugada y la única posibilidad de gol, con Carlos Neumann a los 29’, fue porque arrebató un balón en la defensa visitante, aunque remató elevado.\r\n\r\nDesde la primera parte, la Academia sorprendió con un juego ofensivo; a los 9’ Lorgio Álvarez remató el balón apenas desviado. La jugada del gol fue obra de Rudy Cardozo, quien tomó por sorpresa al zaguero Fernando Martelli, lo superó y con un disparo fortísimo abrió el marcador a los 23 minutos.\r\n\r\nEn el complemento, los de Tembladerani siguieron con el mismo ritmo, con juego sobre todo de Juan Carlos Arce, quien primero cedió un pase gol y luego anotó a los 50’ el segundo.\r\n\r\nLos realistas intentaron otra reacción con Neumann, Alexis Bravo y Ariel Aragón, pero los tres sucumbieron ante la marca y el dominio colectivo del rival.\r\n\r\nEn contrapartida Bolívar mantuvo su superioridad, se hizo más fuerte ante la debilidad de sus adversarios, y tanto Yecerotte como Ferreira erraron un par de opciones más.\r\n\r\nLa Academia logra buena cantidad de puntos afuera\r\n\r\nEl equipo celeste ha sumado puntos valiosos afuera que ayudan a su condición de líder: no hay duda de que es el mejor visitante en lo que va del torneo.\r\n\r\nAyer sumó su quinta victoria de seis partidos jugados fuera de La Paz; es decir, de 18 puntos posibles ha ganado 15 en el interior. En total tiene 37.\r\n\r\nPor única vez perdió cuando fue visitante de Blooming en Montero, que le ganó 2-1.\r\n\r\nDe ahí en más tradujo sus visitas en victorias: a Aurora (2-3), Petrolero (1-4), San José (1-2), Nacional Potosí (1-4) y Real Potosí (0-2).\r\n\r\nCon esa campaña, más la que ha cosechado en La Paz (siete victorias, un empate y una derrota), difícilmente se le va a escapar el primer lugar, a no ser que tenga una recta final de campeonato alejada de lo que hizo hasta ahora.\r\n\r\nLas opiniones de :\r\n\r\nRudy Cardozo (Bolívar):‘Sumamos y volvemos al ritmo que teníamos antes’.\r\nCristian Vargas (Bolívar): ‘Jugamos mejor que ellos, fuimos agresivos y anotamos’.\r\nVíctor Zwenger (DT Real Potosí): ‘Es rival de jerarquía, con varios jugadores de selección’.\r\nLorgio Álvarez (Bolívar): ‘Este resultado refleja lo que pasó, hasta pudo ser más’.', 'uploads/posts/images/p16.jpg', '2013-04-23', 1, 2),
(23, '‘Chavo’ Salvatierra gana primera etapa del Rally de Catar', 4, 1, 'Juan Carlos ‘Chavo’ Salvatierra ganó la primera etapa del Rally de Catar, en la categoría +450cc, y se ubica sexto en la clasificación general de la competencia que inició hoy, informó el portal digital de Deporte Total.<br>\r\n\r\nPese a algunos desperfectos en su moto, logró vencer en la primera de cuatro etapas del Rally. “Hoy fue una etapa difícil, piedras y muchos obstáculos. Navegué solo, cometí un error y perdí unos minutos”, sostuvo Salvatierra.<br>\r\n\r\nLa prueba se denomina “Sealine Cross Country Rally” y es considerada la segunda competencia Mundial de la especialidad.<br>\r\n\r\nEl boliviano ganó hace algunos días la primera prueba del Mundial en Abu Dhabi.<br>', 'uploads/posts/images/p17.jpg', '2013-04-23', 1, 2),
(24, 'El Tigre espera iniciar otra fase en el clásico', 4, 3, 'Rafael Sempértegui/La Paz\r\n\r\nEl plantel de The Strongest pretende que el clásico de mañana ante Bolívar sea la oportunidad para levantar cabeza y el arranque para comenzar una nueva etapa liguera. Los atigrados, que vienen de caer en casa ante Universitario por 4-1, esperan que la revancha ante la Academia les permita comenzar a mejorar su situación en el campeonato.\r\n\r\nLos jugadores coincidieron en que el partido se presenta atractivo porque se enfrenta al líder del torneo, a un equipo que pasa un buen momento y que apunta por su lado a lograr el título. “Esperemos recuperarnos futbolísticamente y anímicamente para ese partido. Tenemos un equipo valiente, que supo levantarse en los momentos difíciles. No son palabras, ya lo demostramos antes y eso procuraremos seguir haciendo, pese a los golpes recibidos”, aseveró Pablo Escobar, capitán stronguista.\r\n\r\nCuando se le consultó sobre su rendimiento, Escobar respondió que: “no me gusta hablar de mí, porque puedo hablar un millón de cosas. Sí puedo decir que no estoy en mi mejor momento, en mi mejor nivel. Yo trabajaré para rendir cada día mucho más”.  El zaguero Luis Méndez sostuvo que ya les tocó pasar por una circunstancia así, cuando fueron penúltimos y luego les tocó lograr un bicampeonato.\r\n\r\n“No queremos excusas. No-  sotros no vamos a tirar la toalla, no vamos a entregarnos. Ya desde hoy (ayer) nosotros vamos a trabajar mucho más para dar vuelta lo que pasó”, afirmó el futbolista. Comentó que ya se encuentra recuperado y que está a disposición del entrenador para jugar si es tomado en cuenta.\r\n\r\n“Aún no hay campeón, no hay segundo ni nada. Sabemos que estamos lejos, por eso mismo queremos pelear lo poco o mucho que queda del torneo”, detalló el camireño. El defensor recordó que hace años pasaron por un momento similar, igual de complicado como ahora, y que incluso no los dejaron salir del estadio tras un resultado adverso por el enfado de la afición.\r\n\r\nCopero.  Con relación al once que el Tigre presentará mañana, se anticipa que respetará la base del equipo copero, con las reapariciones de Méndez en la defensa y Ernesto Cristaldo en el medio. Si no surge alguna novedad decisiva de último momento en Achumani, los gualdinegros jugarían con: Daniel Vaca; Diego Bejarano, Marcos Barrera, Luis Méndez y Jair Torrico; Nelvin Soliz, Alejandro Chumacero, Walter Veizaga y Ernesto Cristaldo; Pablo Escobar; y Harold Reina.\r\n\r\nEl ánimo del plantel stronguista no es de los mejores, se percibió preocupación, tal como muchos de los mismos jugadores comentaron antes de la práctica. Ayer el equipo cumplió un trabajo regenerativo con quienes jugaron el partido ante Universitario y el resto efectuó una labor mucho más intensa en lo físico. Para hoy está previsto realizar otra sesión liviana y por la tarde el grupo se concentrará. No se conoció de algún jugador que sufra alguna lesión.\r\n\r\nChumacero cumplió 22 abriles\r\n\r\nContento\r\n\r\nUno de los símbolos de la actual plantilla atigrada, Alejandro Chumacero, estuvo ayer de cumpleaños, ya tiene 22. Chuma se entrenó con sus compañeros y se excusó de efectuar alguna declaración cuando se le solicitó.\r\n\r\nPone la cara\r\n\r\nPablo Escobar recordó que  él no viene a conferencias de prensa luego de las victorias del equipo, pero como capitán, ayer sí lo hizo luego de una derrota muy comentada. “En estas circunstancias es cuando se pone la cara”, dijo.\r\n\r\nUnidad\r\n\r\n“Hoy... más que nunca... estamos unidos. Porque Dios está con nosotros, porque tenemos el mejor grupo y a las mejores personas. Porque tenemos a la mejor hinchada”, escribió ayer en las redes sociales Roberto Ariñez, entrenador de arqueros.\r\n\r\nCriterio atigrado en Achumani\r\n\r\n‘No nos den por muertos’: Pablo Escobar, mediocampista\r\n\r\n“No puedo decir que ya no hay opciones, eso no lo diré porque sería de mediocres. No nos den por muertos, que no lo voy a permitir. Nosotros vamos a seguir en la lucha”.\r\n\r\n‘Debemos levantarnos rápido’: Luis Méndez, zaguero\r\n\r\n“Nuestra mentalidad tiene que ser salir de esto. Nos dolió perder, nos apena estar en esta circunstancia y por eso   lo más importante es que debemos levantarnos rápido”.\r\n\r\n‘Tenemos 27 puntos por jugar’: Daniel Chávez, mediocampista\r\n\r\n“Nosotros tenemos 27 puntos por jugar, los demás 18, nada está dicho y un partido decisivo puede ser con Bolívar. No nos descarten que trabajamos por lograr mejores resultados”.\r\n\r\nSe fue Oporto, un insigne atigrado\r\n\r\nMarcelo Avendaño/La Paz\r\n\r\nEl exdirectivo de The Strongest y destacado profesional Freddy Oporto Lens fue enterrado ayer, luego de que el fin de semana partió al reino del Todopoderoso. El atigrado fue un directivo que trabajó junto a expresidentes stronguistas como Antonio Asbún, Rafael Mendoza y José Saavedra, entre algunos. Además de que participó de la fundación de la Liga del Fútbol Profesional Boliviano, en la que se destacó como delegado gualdinegro. También fue presidente del Tribunal de Honor del club y siempre aportó con ideas en beneficio de la institución.\r\n\r\nOporto falleció aquejado por su delicado estado de salud en este último tiempo. Ayer fue sepultado en el Cementerio Jardín, en medio del afecto de sus familiares, amigos y exdirigentes. El exdirectivo stronguista Jaime Oblitas destacó que al margen de su amor al club y su gran cualidad como persona, dejó un gran legado cuando escribió un libro en dos tomos, en los que destacó la historia del decano liguero.\r\n\r\n“Freddy obsequió al club un fabuloso documento denominado El libro de Oro de The Strongest y hasta hace poco se proyectó para elaborar un tercer tomo con los nuevos años de esta época”, destacó Oblitas. “Se trató de un stronguista honesto, colaborador e inteligente. Y no dejaba de recabar datos para presentar otro libro”, detalló.', 'uploads/posts/images/p18.jpg', '2013-04-23', 1, 2),
(25, 'Publicación de prueba', 1, 1, '<h2 class="headline headline-regular"><a href="http://www.la-razon.com/marcas/pugna-arriba_0_1829217073.html" target="_self">Cara a cara, los de arriba</a></h2>\r\n<div class="meta">\r\n<p><span class="meta-origen">La Raz&oacute;n</span>&nbsp;/&nbsp;<span class="meta-author">Ramiro Siles</span>&nbsp;/&nbsp;<span class="lnk-comments"><a title="" href="http://www.la-razon.com/marcas/pugna-arriba_0_1829217073.html"><span class="num">Comente</span></a></span></p>\r\n</div>\r\n<div class="tx teaser">\r\n<p>Los cuatro primeros de la tabla jugar&aacute;n hoy dos partidos cuyos resultados podr&iacute;an ayudar a aclarar la lucha por la punta o, por el contrario, apretarla m&aacute;s en la jornada 19 del torneo Clausura de la Liga. Bol&iacute;var, que es el l&iacute;der, recibe en el Siles a San Jos&eacute;, ubicado en el cuarto lugar; y el segundo, Oriente Petrolero, espera en su casa al tercero, Universitario de Sucre.</p>\r\n<p><img style="vertical-align: middle;" title="lol" src="http://1.bp.blogspot.com/-90J2CoDcBbk/T5ltvd-rDoI/AAAAAAAAAPg/yq6bf-FL92k/s1600/Comentario_O_El_Pato_Muere.jpg" alt="pato" width="517" height="339" />&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'uploads/posts/images/band_1.jpg', '2013-05-08', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_sponsor`
--

CREATE TABLE IF NOT EXISTS `main_sponsor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `link` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_tipo_galeria`
--

CREATE TABLE IF NOT EXISTS `main_tipo_galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `main_tipo_galeria`
--

INSERT INTO `main_tipo_galeria` (`id`, `nombre`) VALUES
(1, 'Semana'),
(2, 'Chicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_tipo_post`
--

CREATE TABLE IF NOT EXISTS `main_tipo_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `main_tipo_post`
--

INSERT INTO `main_tipo_post` (`id`, `tipo`) VALUES
(1, 'Video'),
(2, 'Texto'),
(3, 'Imagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `main_video`
--

CREATE TABLE IF NOT EXISTS `main_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `preload` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `deportivo_deportista`
--
ALTER TABLE `deportivo_deportista`
  ADD CONSTRAINT `deporte_id_refs_id_ce9387b2` FOREIGN KEY (`deporte_id`) REFERENCES `deportivo_deporte` (`id`),
  ADD CONSTRAINT `equipo_id_refs_id_6e1f4379` FOREIGN KEY (`equipo_id`) REFERENCES `deportivo_equipo` (`id`);

--
-- Filtros para la tabla `deportivo_deportista_participa`
--
ALTER TABLE `deportivo_deportista_participa`
  ADD CONSTRAINT `deportista_id_refs_id_79c2e40d` FOREIGN KEY (`deportista_id`) REFERENCES `deportivo_deportista` (`id`),
  ADD CONSTRAINT `partido_id_refs_id_dfbd4d8e` FOREIGN KEY (`partido_id`) REFERENCES `deportivo_partido` (`id`);

--
-- Filtros para la tabla `deportivo_equipo`
--
ALTER TABLE `deportivo_equipo`
  ADD CONSTRAINT `area_id_refs_id_dedbda69` FOREIGN KEY (`area_id`) REFERENCES `deportivo_area` (`id`);

--
-- Filtros para la tabla `deportivo_equipo_participa`
--
ALTER TABLE `deportivo_equipo_participa`
  ADD CONSTRAINT `equipo_id_refs_id_d250bc9b` FOREIGN KEY (`equipo_id`) REFERENCES `deportivo_equipo` (`id`),
  ADD CONSTRAINT `torneo_id_refs_id_45ed5f1b` FOREIGN KEY (`torneo_id`) REFERENCES `deportivo_torneo` (`id`);

--
-- Filtros para la tabla `deportivo_gol`
--
ALTER TABLE `deportivo_gol`
  ADD CONSTRAINT `deportista_id_refs_id_2f5d0c4d` FOREIGN KEY (`deportista_id`) REFERENCES `deportivo_deportista` (`id`),
  ADD CONSTRAINT `partido_id_refs_id_98dc3918` FOREIGN KEY (`partido_id`) REFERENCES `deportivo_partido` (`id`);

--
-- Filtros para la tabla `deportivo_locacion`
--
ALTER TABLE `deportivo_locacion`
  ADD CONSTRAINT `area_id_refs_id_39b217c4` FOREIGN KEY (`area_id`) REFERENCES `deportivo_area` (`id`),
  ADD CONSTRAINT `tipo_id_refs_id_ccd58c8f` FOREIGN KEY (`tipo_id`) REFERENCES `deportivo_tipo_locacion` (`id`);

--
-- Filtros para la tabla `deportivo_partido`
--
ALTER TABLE `deportivo_partido`
  ADD CONSTRAINT `locacion_id_refs_id_2d1016cd` FOREIGN KEY (`locacion_id`) REFERENCES `deportivo_locacion` (`id`),
  ADD CONSTRAINT `local_id_refs_id_ce0fce18` FOREIGN KEY (`local_id`) REFERENCES `deportivo_equipo` (`id`),
  ADD CONSTRAINT `torneo_id_refs_id_2fddbf68` FOREIGN KEY (`torneo_id`) REFERENCES `deportivo_torneo` (`id`),
  ADD CONSTRAINT `visitante_id_refs_id_ce0fce18` FOREIGN KEY (`visitante_id`) REFERENCES `deportivo_equipo` (`id`);

--
-- Filtros para la tabla `deportivo_torneo`
--
ALTER TABLE `deportivo_torneo`
  ADD CONSTRAINT `categoria_id_refs_id_807480f5` FOREIGN KEY (`categoria_id`) REFERENCES `deportivo_categoria_torneo` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `main_anuncio`
--
ALTER TABLE `main_anuncio`
  ADD CONSTRAINT `posicion_id_refs_id_eca529eb` FOREIGN KEY (`posicion_id`) REFERENCES `main_posicion` (`id`);

--
-- Filtros para la tabla `main_caricatura`
--
ALTER TABLE `main_caricatura`
  ADD CONSTRAINT `autor_id_refs_id_67a04578` FOREIGN KEY (`autor_id`) REFERENCES `main_autor` (`id`);

--
-- Filtros para la tabla `main_imagen_galeria`
--
ALTER TABLE `main_imagen_galeria`
  ADD CONSTRAINT `autor_id_refs_id_c7dda458` FOREIGN KEY (`autor_id`) REFERENCES `main_autor` (`id`),
  ADD CONSTRAINT `categoria_id_refs_id_ae0f78d8` FOREIGN KEY (`categoria_id`) REFERENCES `main_categoria` (`id`),
  ADD CONSTRAINT `galeria_id_refs_id_3a97f52` FOREIGN KEY (`galeria_id`) REFERENCES `main_tipo_galeria` (`id`);

--
-- Filtros para la tabla `main_post`
--
ALTER TABLE `main_post`
  ADD CONSTRAINT `autor_id_refs_id_360a4a5d` FOREIGN KEY (`autor_id`) REFERENCES `main_autor` (`id`),
  ADD CONSTRAINT `categoria_id_refs_id_74360a23` FOREIGN KEY (`categoria_id`) REFERENCES `main_categoria` (`id`),
  ADD CONSTRAINT `tipo_id_refs_id_3a0f5923` FOREIGN KEY (`tipo_id`) REFERENCES `main_tipo_post` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
