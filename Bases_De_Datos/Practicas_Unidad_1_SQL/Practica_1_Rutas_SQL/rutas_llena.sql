-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2022 a las 04:52:24
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
-- Base de datos: `rutas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto`
--

CREATE TABLE `auto` (
  `serie` int(5) NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `modelo` int(10) DEFAULT NULL,
  `transmision` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `propietario` varchar(18) DEFAULT NULL,
  `conductor` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auto`
--

INSERT INTO `auto` (`serie`, `placa`, `modelo`, `transmision`, `color`, `pais`, `propietario`, `conductor`) VALUES
(1, 'AAA-AF2', 2022, 'Estandar', 'rojo', 'chino', 'A0YA981213HQRRHL00', 'a-1'),
(2, 'AGA-CY2', 2015, 'Automatico', 'azul', 'Mexico', 'AAPPC00607HQRBCRA', 'a-6'),
(3, 'C2A-DE2', 2002, 'Estandar', 'verde', 'EUA', 'BACY900618MQLASL2', 'a-9'),
(4, 'DFA-DK2', 2003, 'A', 'Automatico', 'Gris', 'BALR971019MPQRLN50', 'a-12'),
(5, 'DTA-ET2', 1996, 'Estandar', 'blanco', 'Taiwan', 'EIASN06030HJ1K0214', 'b-2'),
(6, 'DLA-DS2', 2017, 'Automatico', 'Rojo', 'Japon', 'EIGJ030306HMCNRSA9', 'b-5'),
(7, 'EUA-FP2', 2015, 'Estandar', 'Anaranjado', 'China', 'FERTY20148HFGN8975', 'b-7'),
(8, 'FRA-FWZ', 2020, 'Estandar', 'Morado', 'Mexico', 'GEIOL02365HNKJ8965', 'c-3'),
(9, 'A01-AAA', 2019, 'Automatico', 'Rosa', 'India', 'SAVA860927MDFNN09', 'c-4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `Licencia` varchar(5) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido_paterno` varchar(30) DEFAULT NULL,
  `apellido_materno` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`Licencia`, `nombre`, `apellido_paterno`, `apellido_materno`) VALUES
('a-1', 'cristian', 'gonzales', 'celis'),
('a-12', 'Rafael', 'Marquez', 'Marquez'),
('a-6', 'zayra', 'manriquez', 'alvarado'),
('a-9', 'adamaris', 'mex', 'jimenez'),
('b-2', 'eric', 'guzman', 'camacho'),
('b-5', 'brenda', 'luna', 'cruz'),
('b-7', 'angel', 'martinez', 'moreno'),
('c-3', 'suleyma', 'itza', 'tuyud'),
('c-4', 'bianca', 'kumul', 'baas'),
('c-8', 'irany', 'may', 'cabrera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `CURP` varchar(18) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido_paterno` varchar(30) DEFAULT NULL,
  `apellido_materno` varchar(30) DEFAULT NULL,
  `RFC` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`CURP`, `nombre`, `apellido_paterno`, `apellido_materno`, `RFC`) VALUES
('A0YA981213HQRRHL00', 'Alexis', 'Arcos', 'Yha', 'A0YA981213'),
('AAPPC00607HQRBCRA', 'Carlos', 'Aban', 'Puc', 'APPC006074'),
('BACY900618MQLASL2', 'Yazmin', 'Basoluto', 'Calli', 'BACY900618M'),
('BALR971019MPQRLN50', 'Rosa', 'Balam', 'Leonardo', 'BALQ971019'),
('EIASN06030HJ1K0214', 'Sandra', 'Enriquez', 'Garcia', 'EIAS060301'),
('EIGJ030306HMCNRSA9', 'Jose de Jesus', 'Enriquez', 'Garcia', 'EIGJ030306'),
('FERTY20148HFGN8975', 'Fernando', 'Camargo', 'Ramirez', 'EIMJ546212'),
('GEIOL02365HNKJ8965', 'Diego', 'Sanchez', 'Galindo', 'GEIOL02365'),
('SAVA860927MDFNN09', 'Ana_Angelica', 'Sanchez', 'Villegas', 'SAVA860927L67');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(5) NOT NULL,
  `Destino` varchar(40) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `kilometros` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_ruta`, `Destino`, `direccion`, `kilometros`) VALUES
(55100, 'San luis', 'Carretera Mexico', 13.2),
(55332, 'Cerro chiconautla', 'Teacamac edomex', 6.9),
(55342, 'Deportivo', 'Teacamac edomex', 2.7),
(55701, 'Indios verdes', 'Carretera Mexico', 12.2),
(55705, 'Ecatepec', 'Carretera Mexico', 15.2),
(55723, 'Tolcayuca', 'Carretera Hidalgo', 20.2),
(55881, 'Zumpango', 'Carretera mexico', 15.2),
(55882, 'Tizayuca', 'Carretera Mexico', 15.2),
(55932, 'Temascalapa', 'Carretera San luis', 12.2),
(55991, 'San cristobal', 'Carretera Mexico', 14.2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viaje`
--

CREATE TABLE `viaje` (
  `id_viaje` int(5) NOT NULL,
  `id_ruta` int(5) DEFAULT NULL,
  `serie` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `viaje`
--

INSERT INTO `viaje` (`id_viaje`, `id_ruta`, `serie`) VALUES
(11105, 55882, 5),
(11154, 55991, 9),
(11349, 55723, 6),
(11493, 55705, 8),
(11502, 55701, 7),
(11567, 55342, 1),
(11752, 55881, 4),
(11897, 55332, 2),
(11998, 55932, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`serie`),
  ADD KEY `indice1` (`propietario`),
  ADD KEY `indice2` (`conductor`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`Licencia`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`CURP`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id_ruta`);

--
-- Indices de la tabla `viaje`
--
ALTER TABLE `viaje`
  ADD PRIMARY KEY (`id_viaje`),
  ADD KEY `id_ruta` (`id_ruta`),
  ADD KEY `serie` (`serie`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auto`
--
ALTER TABLE `auto`
  ADD CONSTRAINT `auto_ibfk_1` FOREIGN KEY (`propietario`) REFERENCES `propietario` (`CURP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auto_ibfk_2` FOREIGN KEY (`conductor`) REFERENCES `conductor` (`Licencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `viaje`
--
ALTER TABLE `viaje`
  ADD CONSTRAINT `viaje_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id_ruta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `viaje_ibfk_2` FOREIGN KEY (`serie`) REFERENCES `auto` (`serie`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
