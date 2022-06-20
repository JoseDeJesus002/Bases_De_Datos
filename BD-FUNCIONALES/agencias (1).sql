-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2022 a las 02:21:21
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
-- Base de datos: `agencias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencia`
--

CREATE TABLE `agencia` (
  `ID_AGENCIA` int(10) NOT NULL,
  `ID_VUELO` int(10) NOT NULL,
  `ID_HOTEL` int(10) NOT NULL,
  `ID_SUCURSAL` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `ID_CLASE` int(10) NOT NULL,
  `TURISTA` int(11) NOT NULL,
  `PRIMERA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `CURP` varchar(12) NOT NULL,
  `ID_SUCURSAL` int(10) NOT NULL,
  `ID_AGENCIA` int(10) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20) NOT NULL,
  `TELEFONO` int(13) NOT NULL,
  `E-MAIL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `ID_HOTEL` int(10) NOT NULL,
  `ID_AGENCIA` int(10) NOT NULL,
  `ID_REGIMEN` int(10) NOT NULL,
  `N_ESTRELLAS` int(5) NOT NULL,
  `F/H_ENTRADA` datetime NOT NULL,
  `F/H_SALIDAS` datetime NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `DIRECCION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen`
--

CREATE TABLE `regimen` (
  `ID_REGIMEN` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regimen`
--

INSERT INTO `regimen` (`ID_REGIMEN`) VALUES
(134589);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `ID_SUCURSAL` int(10) NOT NULL,
  `ID_AGENCIA` int(10) NOT NULL,
  `DIRECCION` int(20) NOT NULL,
  `PROVINCIA` int(20) NOT NULL,
  `CD` int(20) NOT NULL,
  `TELEFONO` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `ID_VUELO` int(10) NOT NULL,
  `ID_AGENCIA` int(10) NOT NULL,
  `ID_CLASE` int(10) NOT NULL,
  `F/H_SALIDA` datetime NOT NULL,
  `F/H_LLEGADA` datetime NOT NULL,
  `ORIGEN` varchar(20) NOT NULL,
  `DESTINO` varchar(20) NOT NULL,
  `N_PLAZAS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agencia`
--
ALTER TABLE `agencia`
  ADD PRIMARY KEY (`ID_AGENCIA`),
  ADD KEY `ID_VUELO` (`ID_VUELO`),
  ADD KEY `ID_HOTEL` (`ID_HOTEL`),
  ADD KEY `ID_SUCURSAL` (`ID_SUCURSAL`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`ID_CLASE`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CURP`),
  ADD KEY `ID_SUCURSAL` (`ID_SUCURSAL`),
  ADD KEY `ID_AGENCIA` (`ID_AGENCIA`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`ID_HOTEL`),
  ADD KEY `ID_REGIMEN` (`ID_REGIMEN`),
  ADD KEY `ID_AGENCIA` (`ID_AGENCIA`);

--
-- Indices de la tabla `regimen`
--
ALTER TABLE `regimen`
  ADD PRIMARY KEY (`ID_REGIMEN`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`ID_SUCURSAL`),
  ADD KEY `ID_AGENCIA` (`ID_AGENCIA`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`ID_VUELO`),
  ADD KEY `ID_CLASE` (`ID_CLASE`),
  ADD KEY `ID_AGENCIA` (`ID_AGENCIA`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agencia`
--
ALTER TABLE `agencia`
  ADD CONSTRAINT `agencia_ibfk_1` FOREIGN KEY (`ID_AGENCIA`) REFERENCES `cliente` (`ID_AGENCIA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agencia_ibfk_2` FOREIGN KEY (`ID_HOTEL`) REFERENCES `hotel` (`ID_HOTEL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_AGENCIA`) REFERENCES `agencia` (`ID_AGENCIA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`ID_REGIMEN`) REFERENCES `regimen` (`ID_REGIMEN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotel_ibfk_2` FOREIGN KEY (`ID_AGENCIA`) REFERENCES `agencia` (`ID_AGENCIA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`ID_AGENCIA`) REFERENCES `agencia` (`ID_AGENCIA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD CONSTRAINT `vuelo_ibfk_1` FOREIGN KEY (`ID_CLASE`) REFERENCES `clase` (`ID_CLASE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelo_ibfk_2` FOREIGN KEY (`ID_AGENCIA`) REFERENCES `agencia` (`ID_AGENCIA`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
