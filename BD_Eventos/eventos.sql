-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 20:45:40
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
-- Base de datos: `eventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animador`
--

CREATE TABLE `animador` (
  `Codigo_Animador` int(10) NOT NULL,
  `Modelo` varchar(20) NOT NULL,
  `Talla` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_Clientes` int(12) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Domicilio` varchar(20) NOT NULL,
  `Telefono` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disfraz`
--

CREATE TABLE `disfraz` (
  `Id_Disfraz` int(10) NOT NULL,
  `Modelo` varchar(20) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Talla` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `Codigo` int(12) NOT NULL,
  `Id_Clientes` int(10) NOT NULL,
  `Codigo_Animadores` int(10) NOT NULL,
  `Id-Presentador` int(10) NOT NULL,
  `Descripcion` varchar(30) NOT NULL,
  `Horario` time NOT NULL,
  `Valor_Base` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentador`
--

CREATE TABLE `presentador` (
  `Id_Presentador` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Domicilio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animador`
--
ALTER TABLE `animador`
  ADD PRIMARY KEY (`Codigo_Animador`),
  ADD KEY `Modelo` (`Modelo`),
  ADD KEY `Talla` (`Talla`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Clientes`),
  ADD KEY `Nombre` (`Nombre`),
  ADD KEY `Apellido` (`Apellido`),
  ADD KEY `Domicilio` (`Domicilio`);

--
-- Indices de la tabla `disfraz`
--
ALTER TABLE `disfraz`
  ADD PRIMARY KEY (`Id_Disfraz`),
  ADD KEY `Modelo` (`Modelo`),
  ADD KEY `Talla` (`Talla`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `Id_Clientes` (`Id_Clientes`),
  ADD KEY `Codigo_Animadores` (`Codigo_Animadores`),
  ADD KEY `Id-Presentador` (`Id-Presentador`);

--
-- Indices de la tabla `presentador`
--
ALTER TABLE `presentador`
  ADD PRIMARY KEY (`Id_Presentador`),
  ADD KEY `Nombre` (`Nombre`),
  ADD KEY `Apellido` (`Apellido`),
  ADD KEY `Domicilio` (`Domicilio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animador`
--
ALTER TABLE `animador`
  ADD CONSTRAINT `animador_ibfk_1` FOREIGN KEY (`Modelo`) REFERENCES `disfraz` (`Modelo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animador_ibfk_2` FOREIGN KEY (`Talla`) REFERENCES `disfraz` (`Talla`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`Id-Presentador`) REFERENCES `presentador` (`Id_Presentador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`Id_Clientes`) REFERENCES `cliente` (`Id_Clientes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventos_ibfk_3` FOREIGN KEY (`Codigo_Animadores`) REFERENCES `animador` (`Codigo_Animador`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
