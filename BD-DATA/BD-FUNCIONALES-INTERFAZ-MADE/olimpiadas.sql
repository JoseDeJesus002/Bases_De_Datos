-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2022 a las 20:07:25
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
-- Base de datos: `olimpiadas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisarios`
--

CREATE TABLE `comisarios` (
  `Id_Comisarios` int(10) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comisarios`
--

INSERT INTO `comisarios` (`Id_Comisarios`, `Tipo`) VALUES
(12789, 'Jurado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo-polideportivo`
--

CREATE TABLE `complejo-polideportivo` (
  `Id_Complejo-Polideportivo` int(10) NOT NULL,
  `Id_Complejo_Deportivo` int(10) NOT NULL,
  `Jefe_Organizacion` varchar(20) NOT NULL,
  `Area_Total` varchar(10) NOT NULL,
  `Indicacion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `complejo-polideportivo`
--

INSERT INTO `complejo-polideportivo` (`Id_Complejo-Polideportivo`, `Id_Complejo_Deportivo`, `Jefe_Organizacion`, `Area_Total`, `Indicacion`) VALUES
(23456, 342870, 'Juan Carlos', '234 Cm 2', 'Girar acomodar todo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo_deportivo`
--

CREATE TABLE `complejo_deportivo` (
  `Id_Complejo_Deportivo` int(10) NOT NULL,
  `Id_Clave` int(10) NOT NULL,
  `Jefe_Organizacion` varchar(20) NOT NULL,
  `Area_Total` varchar(10) NOT NULL,
  `Localizacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `complejo_deportivo`
--

INSERT INTO `complejo_deportivo` (`Id_Complejo_Deportivo`, `Id_Clave`, `Jefe_Organizacion`, `Area_Total`, `Localizacion`) VALUES
(342870, 765432, 'Juan Carlos', '234 Cm 2', 'Edificio 5 Cd Deport'),
(342872, 564378, 'Carlos Eduardo', '238 Cm 2', 'Edificio 9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo_deportivo_unico`
--

CREATE TABLE `complejo_deportivo_unico` (
  `Id_Complejo_Deportivo_Unicio` int(10) NOT NULL,
  `Id_Complejo_Deportivo` int(10) NOT NULL,
  `Jefe_Organizacion` varchar(20) NOT NULL,
  `Area_Total` varchar(10) NOT NULL,
  `Localizacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `complejo_deportivo_unico`
--

INSERT INTO `complejo_deportivo_unico` (`Id_Complejo_Deportivo_Unicio`, `Id_Complejo_Deportivo`, `Jefe_Organizacion`, `Area_Total`, `Localizacion`) VALUES
(456723, 342872, 'Carlos Eduardo', '238 Cm 2', 'Edificio 9_Cd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipamiento`
--

CREATE TABLE `equipamiento` (
  `Id_Equipamiento` int(10) NOT NULL,
  `Tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipamiento`
--

INSERT INTO `equipamiento` (`Id_Equipamiento`, `Tipo`) VALUES
(234567, 'Pesas_5Kg');

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

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`Id_Evento`, `Id_Equipamiento`, `Id_Comisarios`, `Id_Sede_Olimpica`, `Nombre`, `Fecha`, `Duracion`) VALUES
(768490, 234567, 12789, 675432, 'Jose de Jesus', '2022-06-24', '05:00:00');

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

--
-- Volcado de datos para la tabla `sede_olimpica`
--

INSERT INTO `sede_olimpica` (`Id_Sede_Olimpica`, `Id_Clave`, `Id_Complejo_Deportivo`, `Ubicacion`, `Presupuesto`) VALUES
(456732, 765432, 342870, 'Edificio 9', 20000),
(675432, 564378, 342872, 'Edificio 7', 30000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_complejo`
--

CREATE TABLE `tipo_complejo` (
  `Id_Clave` int(10) NOT NULL,
  `Descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_complejo`
--

INSERT INTO `tipo_complejo` (`Id_Clave`, `Descripcion`) VALUES
(564378, 'Solo un deporte'),
(765432, 'Variedad deportiva');

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
  ADD KEY `Id_Complejo_Deportivo` (`Id_Complejo_Deportivo`);

--
-- Indices de la tabla `complejo_deportivo`
--
ALTER TABLE `complejo_deportivo`
  ADD PRIMARY KEY (`Id_Complejo_Deportivo`),
  ADD KEY `Id_Clave` (`Id_Clave`);

--
-- Indices de la tabla `complejo_deportivo_unico`
--
ALTER TABLE `complejo_deportivo_unico`
  ADD PRIMARY KEY (`Id_Complejo_Deportivo_Unicio`),
  ADD KEY `Id_Complejo_Deportivo` (`Id_Complejo_Deportivo`);

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
  ADD PRIMARY KEY (`Id_Clave`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `complejo-polideportivo`
--
ALTER TABLE `complejo-polideportivo`
  ADD CONSTRAINT `complejo-polideportivo_ibfk_1` FOREIGN KEY (`Id_Complejo_Deportivo`) REFERENCES `complejo_deportivo` (`Id_Complejo_Deportivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `complejo_deportivo`
--
ALTER TABLE `complejo_deportivo`
  ADD CONSTRAINT `complejo_deportivo_ibfk_1` FOREIGN KEY (`Id_Clave`) REFERENCES `tipo_complejo` (`Id_Clave`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `complejo_deportivo_unico`
--
ALTER TABLE `complejo_deportivo_unico`
  ADD CONSTRAINT `complejo_deportivo_unico_ibfk_1` FOREIGN KEY (`Id_Complejo_Deportivo`) REFERENCES `complejo_deportivo` (`Id_Complejo_Deportivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Id_Sede_Olimpica`) REFERENCES `sede_olimpica` (`Id_Sede_Olimpica`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`Id_Comisarios`) REFERENCES `comisarios` (`Id_Comisarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evento_ibfk_3` FOREIGN KEY (`Id_Equipamiento`) REFERENCES `equipamiento` (`Id_Equipamiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD CONSTRAINT `mantenimiento_ibfk_1` FOREIGN KEY (`Id_Equipamiento`) REFERENCES `equipamiento` (`Id_Equipamiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sede_olimpica`
--
ALTER TABLE `sede_olimpica`
  ADD CONSTRAINT `sede_olimpica_ibfk_1` FOREIGN KEY (`Id_Complejo_Deportivo`) REFERENCES `complejo_deportivo` (`Id_Complejo_Deportivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sede_olimpica_ibfk_2` FOREIGN KEY (`Id_Clave`) REFERENCES `tipo_complejo` (`Id_Clave`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
