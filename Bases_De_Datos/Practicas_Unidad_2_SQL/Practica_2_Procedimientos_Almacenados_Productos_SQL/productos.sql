-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2022 a las 05:47:26
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productos`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `import` (IN `Nombre` VARCHAR(20), OUT `importe` FLOAT(10,2))   begin
select (costo*cantidad) into importe from producto where producto=nombre;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(5) NOT NULL,
  `producto` varchar(20) DEFAULT NULL,
  `costo` float(10,2) DEFAULT NULL,
  `cantidad` int(5) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `mayoreo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `producto`, `costo`, `cantidad`, `marca`, `mayoreo`) VALUES
(1, 'coca-cola', 24.50, 7, 'coca-cola', 'N'),
(2, 'sprite', 18.00, 9, 'coca-cola', 'N'),
(3, 'Fanta', 18.50, 10, 'coca-cola', 'S'),
(4, 'agua-mineral', 15.00, 11, 'ciel', 'S'),
(5, 'jugo-durazno', 11.50, 5, 'jumex', 'N'),
(6, 'squirt', 15.00, 4, 'pepsi', 'N');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
