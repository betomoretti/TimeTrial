-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-07-2013 a las 02:36:24
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=141 ;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `active`, `delete`, `file_picture_url`, `price`, `price_usd`, `stock`, `update_at`, `create_at`) VALUES
(118, 'Producto Nº 1', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(119, 'Producto Nº 2', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(120, 'Producto Nº 3', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(121, 'Producto Nº 4', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(122, 'Producto Nº 5', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(123, 'Producto Nº 6', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(124, 'Producto Nº 7', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(125, 'Producto Nº 8', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(126, 'Producto Nº 9', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(127, 'Producto Nº 10', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(128, 'Producto Nº 11', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(129, 'Producto Nº 12', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(130, 'Producto Nº 13', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(131, 'Producto Nº 14', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(132, 'Producto Nº 15', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(133, 'Producto Nº 16', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(134, 'Producto Nº 17', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(135, 'Producto Nº 18', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(136, 'Producto Nº 19', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(137, 'Producto Nº 20', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(138, 'Producto Nº 21', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(139, 'Producto Nº 22', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41'),
(140, 'Producto Nº 23', 'Descripcion del producto', 1, 0, '682b2-technics-q-c-222-204-7.jpg', 237, 40, 15, '2013-07-09 16:01:41', '2013-07-09 16:01:41');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
