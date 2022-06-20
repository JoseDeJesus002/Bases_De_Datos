-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 20:45:55
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
-- Base de datos: `olimpiadas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisarios`
--

CREATE TABLE `comisarios` (
  `Id_Comisarios` int(10) NOT NULL,
  `Tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo-polideportivo`
--

CREATE TABLE `complejo-polideportivo` (
  `Id_Complejo-Polideportivo` int(10) NOT NULL,
  `Jefe_Organizacion` varchar(20) NOT NULL,
  `Area_Total` int(10) NOT NULL,
  `Indicacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo_deporte_unico`
--

CREATE TABLE `complejo_deporte_unico` (
  `Id_Complejo_Deporte_Unico` int(10) NOT NULL,
  `Id_Complejo-Deportivo` int(10) NOT NULL,
  `Jefe-Organizacion` varchar(20) NOT NULL,
  `Area_Total` int(10) NOT NULL,
  `Localizacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo_deportivo`
--

CREATE TABLE `complejo_deportivo` (
  `Id_Complejo_Deportivo` int(10) NOT NULL,
  `Jefe_Organizacion` varchar(20) NOT NULL,
  `Area_Total` int(10) NOT NULL,
  `Localizacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipamiento`
--

CREATE TABLE `equipamiento` (
  `Id_Equipamiento` int(10) NOT NULL,
  `Tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Id_Evento` int(10) NOT NULL,
  `Id_Equipamiento` int(10) NOT NULL,
  `Id_Comisarios` int(10) NOT NULL,
  `Id_Sede_Olimpica` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `Duracion` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `Id_Mantenimiento` int(10) NOT NULL,
  `Id_Equipamiento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede_olimpica`
--

CREATE TABLE `sede_olimpica` (
  `Id_Sede_Olimpica` int(10) NOT NULL,
  `Id_Clave` int(10) NOT NULL,
  `Id_Complejo_Deportivo` int(10) NOT NULL,
  `Ubicacion` varchar(20) NOT NULL,
  `Presupuesto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_complejo`
--

CREATE TABLE `tipo_complejo` (
  `Id_Clave` int(10) NOT NULL,
  `Id_Complejo-Polideportivo` int(10) NOT NULL,
  `Descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comisarios`
--
ALTER TABLE `comisarios`
  ADD PRIMARY KEY (`Id_Comisarios`);

--
-- Indices de la tabla `complejo-polideportivo`
--
ALTER TABLE `complejo-polideportivo`
  ADD PRIMARY KEY (`Id_Complejo-Polideportivo`),
  ADD KEY `Jefe_Organizacion` (`Jefe_Organizacion`),
  ADD KEY `Area_Total` (`Area_Total`);

--
-- Indices de la tabla `complejo_deporte_unico`
--
ALTER TABLE `complejo_deporte_unico`
  ADD PRIMARY KEY (`Id_Complejo_Deporte_Unico`),
  ADD KEY `Jefe-Organizacion` (`Jefe-Organizacion`),
  ADD KEY `Area_Total` (`Area_Total`),
  ADD KEY `Localizacion` (`Localizacion`),
  ADD KEY `Id_Complejo-Deportivo` (`Id_Complejo-Deportivo`);

--
-- Indices de la tabla `complejo_deportivo`
--
ALTER TABLE `complejo_deportivo`
  ADD PRIMARY KEY (`Id_Complejo_Deportivo`),
  ADD KEY `Jefe_Organizacion` (`Jefe_Organizacion`,`Area_Total`,`Localizacion`);

--
-- Indices de la tabla `equipamiento`
--
ALTER TABLE `equipamiento`
  ADD PRIMARY KEY (`Id_Equipamiento`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`Id_Evento`),
  ADD KEY `Id_Equipamiento` (`Id_Equipamiento`),
  ADD KEY `id_Complejo_Deportivo` (`Id_Comisarios`),
  ADD KEY `Id_Sede_Olimpica` (`Id_Sede_Olimpica`),
  ADD KEY `Id_Comisarios` (`Id_Comisarios`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`Id_Mantenimiento`),
  ADD KEY `Id_Equipamiento` (`Id_Equipamiento`);

--
-- Indices de la tabla `sede_olimpica`
--
ALTER TABLE `sede_olimpica`
  ADD PRIMARY KEY (`Id_Sede_Olimpica`),
  ADD KEY `Id_Clave` (`Id_Clave`),
  ADD KEY `Id_Complejo_Deportivo` (`Id_Complejo_Deportivo`);

--
-- Indices de la tabla `tipo_complejo`
--
ALTER TABLE `tipo_complejo`
  ADD PRIMARY KEY (`Id_Clave`),
  ADD KEY `Id_Complejo-Polideportivo` (`Id_Complejo-Polideportivo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `complejo_deporte_unico`
--
ALTER TABLE `complejo_deporte_unico`
  ADD CONSTRAINT `complejo_deporte_unico_ibfk_1` FOREIGN KEY (`Id_Complejo-Deportivo`) REFERENCES `complejo_deportivo` (`Id_Complejo_Deportivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipamiento`
--
ALTER TABLE `equipamiento`
  ADD CONSTRAINT `equipamiento_ibfk_1` FOREIGN KEY (`Id_Equipamiento`) REFERENCES `mantenimiento` (`Id_Equipamiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Id_Sede_Olimpica`) REFERENCES `sede_olimpica` (`Id_Sede_Olimpica`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`Id_Comisarios`) REFERENCES `comisarios` (`Id_Comisarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evento_ibfk_3` FOREIGN KEY (`Id_Equipamiento`) REFERENCES `equipamiento` (`Id_Equipamiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sede_olimpica`
--
ALTER TABLE `sede_olimpica`
  ADD CONSTRAINT `sede_olimpica_ibfk_1` FOREIGN KEY (`Id_Complejo_Deportivo`) REFERENCES `complejo_deportivo` (`Id_Complejo_Deportivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sede_olimpica_ibfk_2` FOREIGN KEY (`Id_Clave`) REFERENCES `tipo_complejo` (`Id_Clave`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_complejo`
--
ALTER TABLE `tipo_complejo`
  ADD CONSTRAINT `tipo_complejo_ibfk_1` FOREIGN KEY (`Id_Complejo-Polideportivo`) REFERENCES `complejo-polideportivo` (`Id_Complejo-Polideportivo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
