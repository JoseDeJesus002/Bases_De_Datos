-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2022 a las 15:18:36
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
-- Base de datos: `zoologico`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_mag` (IN `id_zoo` INT, IN `magnitud` INT)   BEGIN
UPDATE zoologico SET TAMANO = magnitud WHERE ID_ZOOLOGICO = id_zoo;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `ID_ANIMAL` int(5) NOT NULL,
  `ID_ESPECIE` int(5) NOT NULL,
  `NOMBRE` varchar(15) NOT NULL,
  `FECHA` date NOT NULL,
  `SEXO` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales_extintos`
--

CREATE TABLE `animales_extintos` (
  `ID_ESPECIE` int(11) NOT NULL,
  `ID_EXTINCION` int(11) NOT NULL,
  `NOMBRE_COMUN` varchar(30) NOT NULL,
  `NOMBRE_CIENTIFICO` varchar(30) NOT NULL,
  `FAMILIA` varchar(30) NOT NULL,
  `PAIS_ORIGEN` varchar(30) NOT NULL,
  `FECHA_EXTINCION` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `animales_extintos`
--

INSERT INTO `animales_extintos` (`ID_ESPECIE`, `ID_EXTINCION`, `NOMBRE_COMUN`, `NOMBRE_CIENTIFICO`, `FAMILIA`, `PAIS_ORIGEN`, `FECHA_EXTINCION`) VALUES
(82, 1, 'FGDFG', 'SDD', 'DDDDDD', 'DDD', '2022-11-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal_zoologico`
--

CREATE TABLE `animal_zoologico` (
  `ID_ZOOLOGICO` int(5) NOT NULL,
  `ID_ANIMAL` int(5) NOT NULL,
  `FECHA_LLEGADA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `ID_ESPECIE` int(5) NOT NULL,
  `ID_EXTINCION` int(5) NOT NULL,
  `NOMBRE_COMUN` varchar(30) NOT NULL,
  `NOMBRE_CIENTIFICO` varchar(30) NOT NULL,
  `FAMILIA` varchar(30) NOT NULL,
  `PAIS_ORIGEN` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Disparadores `especie`
--
DELIMITER $$
CREATE TRIGGER `animal_extinto` BEFORE DELETE ON `especie` FOR EACH ROW INSERT INTO animales_extintos (ID_ESPECIE,ID_EXTINCION,NOMBRE_COMUN,NOMBRE_CIENTIFICO,FAMILIA,PAIS_ORIGEN,FECHA_EXTINCION)
VALUES(OLD.ID_ESPECIE,OLD.ID_EXTINCION,OLD.NOMBRE_COMUN,OLD.NOMBRE_CIENTIFICO,OLD.FAMILIA,OLD.PAIS_ORIGEN,NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extincion`
--

CREATE TABLE `extincion` (
  `ID_EXTINCION` int(5) NOT NULL,
  `DESCRIPCION` varchar(40) NOT NULL,
  `COLOR` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `extincion`
--

INSERT INTO `extincion` (`ID_EXTINCION`, `DESCRIPCION`, `COLOR`) VALUES
(1, 'alto', 'rojo'),
(2, 'medio', 'amarillo'),
(3, 'bajo', 'verde'),
(4, 'alto', 'rojo'),
(5, 'medio', 'amarillo'),
(6, 'bajo', 'verde'),
(7, 'medio', 'amarillo'),
(8, 'alto', 'rojo'),
(9, 'medio', 'amarillo'),
(10, 'bajo', 'verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zoologico`
--

CREATE TABLE `zoologico` (
  `ID_ZOOLOGICO` int(5) NOT NULL,
  `NOMBRE` varchar(15) NOT NULL,
  `DIRECCION` varchar(40) NOT NULL,
  `ANO_APERTURA` int(4) NOT NULL,
  `TAMANO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zoologico`
--

INSERT INTO `zoologico` (`ID_ZOOLOGICO`, `NOMBRE`, `DIRECCION`, `ANO_APERTURA`, `TAMANO`) VALUES
(52, 'Mauricio Rodrig', 'Calle pera num 500', 2002, 700);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`ID_ANIMAL`),
  ADD KEY `ID_ESPECIE` (`ID_ESPECIE`);

--
-- Indices de la tabla `animal_zoologico`
--
ALTER TABLE `animal_zoologico`
  ADD KEY `ID_ZOOLOGICO` (`ID_ZOOLOGICO`,`ID_ANIMAL`),
  ADD KEY `ID_ANIMAL` (`ID_ANIMAL`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`ID_ESPECIE`),
  ADD KEY `ID_EXTINCION` (`ID_EXTINCION`);

--
-- Indices de la tabla `extincion`
--
ALTER TABLE `extincion`
  ADD PRIMARY KEY (`ID_EXTINCION`);

--
-- Indices de la tabla `zoologico`
--
ALTER TABLE `zoologico`
  ADD PRIMARY KEY (`ID_ZOOLOGICO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`ID_ESPECIE`) REFERENCES `especie` (`ID_ESPECIE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `animal_zoologico`
--
ALTER TABLE `animal_zoologico`
  ADD CONSTRAINT `animal_zoologico_ibfk_1` FOREIGN KEY (`ID_ANIMAL`) REFERENCES `animal` (`ID_ANIMAL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_zoologico_ibfk_2` FOREIGN KEY (`ID_ZOOLOGICO`) REFERENCES `zoologico` (`ID_ZOOLOGICO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `especie`
--
ALTER TABLE `especie`
  ADD CONSTRAINT `especie_ibfk_1` FOREIGN KEY (`ID_EXTINCION`) REFERENCES `extincion` (`ID_EXTINCION`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
