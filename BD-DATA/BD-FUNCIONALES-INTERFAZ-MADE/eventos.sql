-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2022 a las 08:11:23
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
-- Base de datos: `eventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animador`
--

CREATE TABLE `animador` (
  `Codigo_Animador` int(6) NOT NULL,
  `Modelo` varchar(15) NOT NULL,
  `Talla` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `animador`
--

INSERT INTO `animador` (`Codigo_Animador`, `Modelo`, `Talla`) VALUES
(96321, 'Mickey-Mouse', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_Clientes` int(6) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Domicilio` text NOT NULL,
  `Telefono` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id_Clientes`, `Nombre`, `Apellido`, `Domicilio`, `Telefono`) VALUES
(55987, 'Selene', 'Camacho', 'Calle Norte Num 600 Av.Los sauces', 558762314);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disfraz`
--

CREATE TABLE `disfraz` (
  `Id_Disfraz` int(6) NOT NULL,
  `Modelo` varchar(15) NOT NULL,
  `Talla` int(3) NOT NULL,
  `Nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `disfraz`
--

INSERT INTO `disfraz` (`Id_Disfraz`, `Modelo`, `Talla`, `Nombre`) VALUES
(95987, 'Mickey-Mouse', 22, 'Mickey_Mouse_Red');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Codigo_Evento` varchar(6) NOT NULL,
  `Id_Clientes` int(6) NOT NULL,
  `Codigo_Animador` int(6) NOT NULL,
  `Id_Presentador` int(6) NOT NULL,
  `Descripcion` text NOT NULL,
  `Horario` time NOT NULL,
  `Valor_Base` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`Codigo_Evento`, `Id_Clientes`, `Codigo_Animador`, `Id_Presentador`, `Descripcion`, `Horario`, `Valor_Base`) VALUES
('AC234', 55987, 96321, 559876, 'Juegos-Fiesta de 5 Años con globos  ', '18:20:00', 6000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentador`
--

CREATE TABLE `presentador` (
  `Id_Presentador` int(6) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Domicilio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `presentador`
--

INSERT INTO `presentador` (`Id_Presentador`, `Nombre`, `Apellido`, `Domicilio`) VALUES
(559876, 'Rodrigo', 'Humberto', 'Calle Jose Maria Num 7 Col.Ejidos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animador`
--
ALTER TABLE `animador`
  ADD PRIMARY KEY (`Codigo_Animador`),
  ADD KEY `Modelo` (`Modelo`,`Talla`),
  ADD KEY `Talla` (`Talla`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_Clientes`);

--
-- Indices de la tabla `disfraz`
--
ALTER TABLE `disfraz`
  ADD PRIMARY KEY (`Id_Disfraz`),
  ADD KEY `Modelo` (`Talla`),
  ADD KEY `Modelo_2` (`Modelo`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`Codigo_Evento`),
  ADD KEY `Id_Clientes` (`Id_Clientes`,`Codigo_Animador`,`Id_Presentador`),
  ADD KEY `Codigo_Animador` (`Codigo_Animador`),
  ADD KEY `Id_Presentador` (`Id_Presentador`);

--
-- Indices de la tabla `presentador`
--
ALTER TABLE `presentador`
  ADD PRIMARY KEY (`Id_Presentador`);

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
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Codigo_Animador`) REFERENCES `animador` (`Codigo_Animador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`Id_Clientes`) REFERENCES `clientes` (`Id_Clientes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evento_ibfk_3` FOREIGN KEY (`Id_Presentador`) REFERENCES `presentador` (`Id_Presentador`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
