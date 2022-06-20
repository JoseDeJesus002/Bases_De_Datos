-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 20:45:35
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camioneros`
--

CREATE TABLE `camioneros` (
  `CURP` varchar(12) NOT NULL,
  `Matricula` varchar(10) NOT NULL,
  `Id_Paquete` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Telefono` int(13) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Poblacion` varchar(20) NOT NULL,
  `Salario` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiones`
--

CREATE TABLE `camiones` (
  `Matricula` varchar(10) NOT NULL,
  `CURP` varchar(12) NOT NULL,
  `Modelo` varchar(20) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Potencia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `Id_Paquete` int(10) NOT NULL,
  `Id_Provincia` int(20) NOT NULL,
  `Descripcion` varchar(30) NOT NULL,
  `Destinatario` varchar(20) NOT NULL,
  `Direccion_Destinatario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `Id_Provincia` int(20) NOT NULL,
  `Nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camioneros`
--
ALTER TABLE `camioneros`
  ADD PRIMARY KEY (`CURP`),
  ADD KEY `Matricula` (`Matricula`),
  ADD KEY `Id_Paquete` (`Id_Paquete`);

--
-- Indices de la tabla `camiones`
--
ALTER TABLE `camiones`
  ADD PRIMARY KEY (`Matricula`),
  ADD KEY `CURP` (`CURP`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`Id_Paquete`),
  ADD KEY `Id_Provincia` (`Id_Provincia`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`Id_Provincia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camioneros`
--
ALTER TABLE `camioneros`
  ADD CONSTRAINT `camioneros_ibfk_1` FOREIGN KEY (`CURP`) REFERENCES `camiones` (`CURP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `camioneros_ibfk_2` FOREIGN KEY (`Matricula`) REFERENCES `camiones` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `camioneros_ibfk_3` FOREIGN KEY (`Id_Paquete`) REFERENCES `paquete` (`Id_Paquete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD CONSTRAINT `paquete_ibfk_1` FOREIGN KEY (`Id_Provincia`) REFERENCES `provincia` (`Id_Provincia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
