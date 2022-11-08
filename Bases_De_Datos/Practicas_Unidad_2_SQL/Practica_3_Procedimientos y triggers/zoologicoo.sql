-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2022 a las 02:05:58
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(5) NOT NULL,
  `id_especie` int(5) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `sexo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `animal`
--

INSERT INTO `animal` (`id_animal`, `id_especie`, `nombre`, `fecha`, `sexo`) VALUES
(1, 1, 'Pablo', '2022-03-27', 'Macho'),
(2, 2, 'lola', '2021-12-11', 'Hembra'),
(3, 3, 'Pedro', '2022-07-09', 'Macho'),
(4, 4, 'Juan', '2022-02-03', 'Macho'),
(5, 5, 'Javier', '2022-02-02', 'Macho'),
(6, 6, 'Lupe', '2022-04-06', 'Hembra'),
(7, 7, 'Mau', '2022-08-06', 'Macho'),
(8, 8, 'Mariana', '2022-08-21', 'Hembra'),
(9, 9, 'Juano', '2022-07-24', 'Macho'),
(10, 10, 'Petra', '2021-11-22', 'Hembra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal_zoologico`
--

CREATE TABLE `animal_zoologico` (
  `id_animal_zoologico` int(11) NOT NULL,
  `id_zoologico` int(5) NOT NULL,
  `id_animal` int(5) NOT NULL,
  `fecha_llegada` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `animal_zoologico`
--

INSERT INTO `animal_zoologico` (`id_animal_zoologico`, `id_zoologico`, `id_animal`, `fecha_llegada`) VALUES
(1, 1, 1, '2021-12-09 20:22:54'),
(2, 2, 2, '2021-11-07 13:23:38'),
(3, 3, 3, '2021-11-07 04:12:11'),
(4, 4, 4, '2022-10-17 22:21:19'),
(5, 5, 5, '2022-07-19 17:42:28'),
(6, 6, 6, '2022-02-07 10:27:21'),
(7, 7, 7, '2022-03-20 13:21:36'),
(8, 8, 8, '2022-04-08 07:30:03'),
(9, 9, 9, '2022-02-12 10:05:33'),
(10, 10, 10, '2022-04-07 21:17:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `id_especie` int(5) NOT NULL,
  `id_extincion` int(5) NOT NULL,
  `nombre_comun` varchar(15) NOT NULL,
  `nombre_cientifico` varchar(15) NOT NULL,
  `familia` varchar(15) NOT NULL,
  `pais_origen` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especie`
--

INSERT INTO `especie` (`id_especie`, `id_extincion`, `nombre_comun`, `nombre_cientifico`, `familia`, `pais_origen`) VALUES
(1, 1, 'Oso', 'Ursidae', 'ursus', 'canada'),
(2, 2, 'Tiburon', 'Selachimorpha', 'Peces', 'mexico'),
(3, 3, 'Lobo', 'Canis Lupus', 'canino', 'mexico'),
(4, 4, 'pinguino', 'Spheniscidae', 'Ave', 'argentina'),
(5, 5, 'Jirafa', 'Giraffa', 'Jirafa', 'africa'),
(6, 6, 'rinoceronte', 'rhinocerotidae', 'Rino', 'africa'),
(7, 7, 'Aguila', 'aquila', 'Ave', 'mexico'),
(8, 8, 'Iguana', 'Iguanidae', 'Reptil', 'mexico'),
(9, 9, 'Leon', 'Pantera Leo', 'Felino', 'africa'),
(10, 10, 'Pantera', 'Panthera', 'Felino', 'africa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extincion`
--

CREATE TABLE `extincion` (
  `id_extincion` int(5) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `color` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `extincion`
--

INSERT INTO `extincion` (`id_extincion`, `descripcion`, `color`) VALUES
(1, 'alto', 'rojo'),
(2, 'medio', 'amarillo'),
(3, 'bajo', 'verde'),
(4, 'alto', 'rojo'),
(5, 'bajo', 'verde'),
(6, 'bajo', 'verde'),
(7, 'bajo', 'verde'),
(8, 'alto', 'rojo'),
(9, 'medio', 'amarillo'),
(10, 'alto', 'rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zoologico`
--

CREATE TABLE `zoologico` (
  `id_zoologico` int(5) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `ano_apertura` year(4) NOT NULL,
  `tamano` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zoologico`
--

INSERT INTO `zoologico` (`id_zoologico`, `nombre`, `direccion`, `ano_apertura`, `tamano`) VALUES
(1, 'Zoologico huell', 'cdmx', 1998, 322),
(2, 'Zoologico de ch', 'cdmx', 1955, 167),
(3, 'Zoologico de Sa', 'San diego', 1988, 155),
(4, 'Zoologico de To', 'Toronto', 1996, 165),
(5, 'Zoologico del B', 'New York', 1997, 167),
(6, 'Omahas Henry', 'Omaha', 1973, 396),
(7, 'Bejin Zoo', 'Pekin', 1985, 125),
(8, 'Zooogico de ber', 'Berlin', 1978, 250),
(9, 'Loro Parque', 'Puerto de la cruz', 1992, 169),
(10, 'Zoologico de Lo', 'Los Angeles', 1998, 329);

--
-- Disparadores `zoologico`
--
DELIMITER $$
CREATE TRIGGER `zoologicos_inha` BEFORE DELETE ON `zoologico` FOR EACH ROW INSERT INTO zoologicos_inhabilitados(ID_ZOOLOGICO,NOMBRE,DIRECCION,ANO_APERTURA,TAMANO)
VALUES (OLD.ID_ZOOLOGICO,OLD.NOMBRE,OLD.DIRECCION,NOW(),OLD.TAMANO)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zoologicos_inhabilitados`
--

CREATE TABLE `zoologicos_inhabilitados` (
  `id_zoologico` int(5) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `ano_apertura` year(4) NOT NULL,
  `tamano` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD KEY `ID_ESPECIE` (`id_especie`);

--
-- Indices de la tabla `animal_zoologico`
--
ALTER TABLE `animal_zoologico`
  ADD PRIMARY KEY (`id_animal_zoologico`),
  ADD KEY `ID_ZOOLOGICO` (`id_zoologico`,`id_animal`),
  ADD KEY `ID_ANIMAL` (`id_animal`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`id_especie`),
  ADD KEY `ID_EXTINCION` (`id_extincion`);

--
-- Indices de la tabla `extincion`
--
ALTER TABLE `extincion`
  ADD PRIMARY KEY (`id_extincion`);

--
-- Indices de la tabla `zoologico`
--
ALTER TABLE `zoologico`
  ADD PRIMARY KEY (`id_zoologico`);

--
-- Indices de la tabla `zoologicos_inhabilitados`
--
ALTER TABLE `zoologicos_inhabilitados`
  ADD PRIMARY KEY (`id_zoologico`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`id_especie`) REFERENCES `especie` (`id_especie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `animal_zoologico`
--
ALTER TABLE `animal_zoologico`
  ADD CONSTRAINT `animal_zoologico_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_zoologico_ibfk_2` FOREIGN KEY (`id_zoologico`) REFERENCES `zoologico` (`id_zoologico`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `especie`
--
ALTER TABLE `especie`
  ADD CONSTRAINT `especie_ibfk_1` FOREIGN KEY (`id_extincion`) REFERENCES `extincion` (`id_extincion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
