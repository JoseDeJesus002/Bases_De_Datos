-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2022 a las 08:11:38
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `camioneros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camionero`
--

CREATE TABLE `camionero` (
  `CURP` varchar(18) NOT NULL,
  `Matricula` varchar(14) NOT NULL,
  `Codigo_Paquete` varchar(6) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Telefono` int(13) NOT NULL,
  `Direccion` text NOT NULL,
  `Poblacion` int(5) NOT NULL,
  `Salario` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `camionero`
--

INSERT INTO `camionero` (`CURP`, `Matricula`, `Codigo_Paquete`, `Nombre`, `Telefono`, `Direccion`, `Poblacion`, `Salario`) VALUES
('EIGJ030306HMCNRSA9', 'LWH-15-23', 'CD5589', 'Ricardo', 558597966, 'Calle pinos num 500', 50, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiones`
--

CREATE TABLE `camiones` (
  `Matricula` varchar(14) NOT NULL,
  `CURP` varchar(18) DEFAULT NULL,
  `Modelo` varchar(10) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `camiones`
--

INSERT INTO `camiones` (`Matricula`, `CURP`, `Modelo`, `Tipo`) VALUES
('LWH-15-23', 'EIGJ030306HMCNRSA9', 'VAN', 'DIESEL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `Codigo_Paquete` varchar(6) NOT NULL,
  `Codigo_Provincia` varchar(5) NOT NULL,
  `Descripcion` text NOT NULL,
  `Destinatario` varchar(20) NOT NULL,
  `Direccion_Destinatario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paquete`
--

INSERT INTO `paquete` (`Codigo_Paquete`, `Codigo_Provincia`, `Descripcion`, `Destinatario`, `Direccion_Destinatario`) VALUES
('CD5589', '5589', 'Audifonos negros, Xiaomi', 'Jose de Jesus', 'Calle Manzana num 500 ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `Codigo_Provincia` varchar(5) NOT NULL,
  `Nombre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`Codigo_Provincia`, `Nombre`) VALUES
('5589', 'Tecamac');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camionero`
--
ALTER TABLE `camionero`
  ADD PRIMARY KEY (`CURP`),
  ADD KEY `Matricula` (`Matricula`),
  ADD KEY `Codigo_Paquete` (`Codigo_Paquete`);

--
-- Indices de la tabla `camiones`
--
ALTER TABLE `camiones`
  ADD PRIMARY KEY (`Matricula`),
  ADD KEY `FK` (`CURP`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`Codigo_Paquete`),
  ADD KEY `Codigo_Provincia` (`Codigo_Provincia`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`Codigo_Provincia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camionero`
--
ALTER TABLE `camionero`
  ADD CONSTRAINT `camionero_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `camiones` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `camionero_ibfk_2` FOREIGN KEY (`Codigo_Paquete`) REFERENCES `paquete` (`Codigo_Paquete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD CONSTRAINT `paquete_ibfk_1` FOREIGN KEY (`Codigo_Provincia`) REFERENCES `provincia` (`Codigo_Provincia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
