-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2022 a las 06:57:12
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
-- Base de datos: `zoologicoo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `id_animal` varchar(50) NOT NULL,
  `id_especie` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal_zoo`
--

CREATE TABLE `animal_zoo` (
  `animal_zo` varchar(50) NOT NULL,
  `id_zoo` varchar(50) NOT NULL,
  `id_animal` varchar(50) NOT NULL,
  `fecha_llegada` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `id_especie` varchar(50) NOT NULL,
  `id_ext` varchar(50) NOT NULL,
  `familia` varchar(50) NOT NULL,
  `n_comun` varchar(50) NOT NULL,
  `l_origen` varchar(50) NOT NULL,
  `n_cientifico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extincion`
--

CREATE TABLE `extincion` (
  `id_ext` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zoologico`
--

CREATE TABLE `zoologico` (
  `id_zoo` varchar(50) NOT NULL,
  `año_fundacion` varchar(50) NOT NULL,
  `mts` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `diireccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD KEY `id_especie` (`id_especie`);

--
-- Indices de la tabla `animal_zoo`
--
ALTER TABLE `animal_zoo`
  ADD PRIMARY KEY (`animal_zo`),
  ADD KEY `id_zoo` (`id_zoo`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`id_especie`),
  ADD KEY `id_ext` (`id_ext`);

--
-- Indices de la tabla `extincion`
--
ALTER TABLE `extincion`
  ADD PRIMARY KEY (`id_ext`);

--
-- Indices de la tabla `zoologico`
--
ALTER TABLE `zoologico`
  ADD PRIMARY KEY (`id_zoo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`id_especie`) REFERENCES `especie` (`id_especie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `animal_zoo`
--
ALTER TABLE `animal_zoo`
  ADD CONSTRAINT `animal_zoo_ibfk_1` FOREIGN KEY (`id_zoo`) REFERENCES `zoologico` (`id_zoo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_zoo_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `especie`
--
ALTER TABLE `especie`
  ADD CONSTRAINT `especie_ibfk_1` FOREIGN KEY (`id_ext`) REFERENCES `extincion` (`id_ext`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
