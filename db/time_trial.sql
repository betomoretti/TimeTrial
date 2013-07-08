-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-07-2013 a las 20:22:03
-- Versión del servidor: 5.5.31
-- Versión de PHP: 5.4.6-1ubuntu1.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `time_trial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `file_picture_url` varchar(200) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `price_usd` decimal(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `active`, `delete`, `file_picture_url`, `price`, `price_usd`, `stock`, `update_at`, `create_at`) VALUES
(49, 'Producto Nº 1', '<p>\n	Modifique la descripcion del producto.</p>\n', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-07 19:10:52', '2013-07-07 19:04:43'),
(50, 'Producto Nº 2', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(51, 'Producto Nº 3', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(52, 'Producto Nº 4', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(53, 'Producto Nº 5', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(54, 'Producto Nº 6', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(55, 'Producto Nº 7', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(56, 'Producto Nº 8', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(57, 'Producto Nº 9', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(58, 'Producto Nº 10', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(59, 'Producto Nº 11', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(60, 'Producto Nº 12', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(61, 'Producto Nº 13', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(62, 'Producto Nº 14', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(63, 'Producto Nº 15', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(64, 'Producto Nº 16', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(65, 'Producto Nº 17', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(66, 'Producto Nº 18', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(67, 'Producto Nº 19', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(68, 'Producto Nº 20', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(69, 'Producto Nº 21', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(70, 'Producto Nº 22', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43'),
(71, 'Producto Nº 23', 'Descripcion del producto', 1, 0, '', 237, 40, 15, '2013-07-07 19:04:43', '2013-07-07 19:04:43');

--
-- Disparadores `product`
--
DROP TRIGGER IF EXISTS `update_dates`;
DELIMITER //
CREATE TRIGGER `update_dates` BEFORE INSERT ON `product`
 FOR EACH ROW BEGIN
IF NEW.create_at = '0000-00-00 00:00:00' THEN
SET NEW.create_at = NOW();
END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(30) NOT NULL,
  `password` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin1', 'admin1'),
(2, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '\0\0', 'administrator', '59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4', '9462e8eee0', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1268889823, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
