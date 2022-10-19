-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2022 a las 05:58:36
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
-- Base de datos: `zoo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie_animal`
--

CREATE TABLE `especie_animal` (
  `Id_Especie_Animal` int(5) NOT NULL,
  `clave_Semaforo` int(5) DEFAULT NULL,
  `Nombre_comun` varchar(30) DEFAULT NULL,
  `Nombre_cientifico` varchar(30) DEFAULT NULL,
  `familia_a_pertenece` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especie_animal`
--

INSERT INTO `especie_animal` (`Id_Especie_Animal`, `clave_Semaforo`, `Nombre_comun`, `Nombre_cientifico`, `familia_a_pertenece`) VALUES
(97441, 10210, 'Le?n', 'Panthera_leo', 'Mam?feros'),
(97442, 10211, 'Tigre', 'Panthera_tigris', 'Mam?feros'),
(97443, 10213, 'Caballo', 'Equus_caballus', 'Mam?feros'),
(97444, 10214, 'Burro', 'Equus_asinus', 'Mam?feros'),
(97445, 10215, 'Ballena', 'Balaenoptera_musculus', 'Mam?feros'),
(97446, 10216, 'Gallo', 'Gallus_gallus', 'Aves'),
(97447, 10217, 'Camale?n', 'Chamaleon', 'Reptiles'),
(97448, 10218, 'Boa_de_Dum?ril', 'Acantrophis_dumerili', 'Reptiles'),
(97449, 10219, 'Cocodrilo_enano', 'Osteolaemus_tetraspis', 'Reptiles'),
(97450, 10220, 'Ant?lope_acu?tico', 'Kobus_ellipsyprimnus', 'Mam?feros'),
(97451, 10530, 'Gorri?n', 'Passer_domesticus', 'Aves'),
(97452, 10531, 'Lagarto', 'Lacerta_lepida', 'Reptiles'),
(97453, 10532, 'B?falo_rojo', 'Syncerus_caffer_nanus', 'Mam?feros'),
(97454, 10533, 'Pit?n', 'Python_regius', 'Reptiles'),
(97455, 10534, 'Cebra_de_Grant', 'Equus_burchelli_boehmi', 'Mamíferos'),
(97456, 10535, 'Dik_Dik_de_kirik', 'Madoqua_kirkii', 'Mamíferos'),
(97457, 10536, 'Cisne', 'Cygnus_olor', 'Aves'),
(97458, 10537, 'Cocodrilo', 'Crocodylus_niloticus', 'Reptiles'),
(97459, 10538, 'Chimpancé', 'Pan_troglodytes', 'Mamíferos'),
(97460, 10539, 'Tucán_grande', 'Ramphastos_toco', 'Aves'),
(97461, 21090, 'Pato', 'Tyto_tenebricosa', 'Aves'),
(97462, 21091, 'Vívora', 'Vipera_latasti', 'Reptiles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_animal`
--

CREATE TABLE `info_animal` (
  `Num_identificacion` int(5) NOT NULL,
  `Id_Especie_Animal` int(5) DEFAULT NULL,
  `familia` varchar(30) DEFAULT NULL,
  `Sexo` varchar(5) DEFAULT NULL,
  `anio_nacimiento` int(5) DEFAULT NULL,
  `Pais_Origen` varchar(30) DEFAULT NULL,
  `Id_zoologico` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `info_animal`
--

INSERT INTO `info_animal` (`Num_identificacion`, `Id_Especie_Animal`, `familia`, `Sexo`, `anio_nacimiento`, `Pais_Origen`, `Id_zoologico`) VALUES
(88410, 97441, 'Mamíferos', 'M', 1998, 'África', 4651),
(88411, 97442, 'Mamíferos', 'M', 1999, 'Estados_Unidos', 8545),
(88412, 97443, 'Mamíferos', 'H', 1991, 'Estados_Unidos', 1510),
(88413, 97444, 'Mamíferos', 'H', 1993, 'Reino Unido', 4152),
(88414, 97445, 'Mamíferos', 'M', 1997, 'Estados_Unidos', 5104),
(88415, 97446, 'Mamíferos', 'H', 1992, 'Estados_Unidos', 5814),
(88416, 97447, 'Aves', 'H', 1991, 'Rusia', 4812),
(88417, 97448, 'Reptiles', 'H', 1990, 'Alemania', 3581),
(88418, 97449, 'Reptiles', 'M', 1998, 'Estados_Unidos', 1452),
(88419, 97450, 'Reptiles', 'M', 1997, 'Canadá', 6580),
(88420, 97451, 'Mamíferos', 'H', 1999, 'Estados_Unidos', 2764),
(88421, 97452, 'Aves', 'M', 1994, 'Estados_Unidos', 7520),
(88422, 97453, 'Reptiles', 'H', 1992, 'Estados_Unidos', 3394),
(88423, 97454, 'Mamíferos', 'M', 1990, 'China', 5110),
(88424, 97455, 'Reptiles', 'H', 1991, 'Estados_Unidos', 1028),
(88425, 97456, 'Mamíferos', 'M', 1999, 'Estados_Unidos', 8847),
(88426, 97457, 'Mamíferos', 'H', 1994, 'Estados_Unidos', 99341),
(88427, 97458, 'Aves', 'M', 1993, 'Europa', 2553),
(88428, 97459, 'Reptiles', 'H', 1998, 'Asia', 5978),
(88429, 97460, 'Mamíferos', 'M', 1991, 'China', 9520),
(88430, 97461, 'Aves', 'M', 1997, 'Alemania', 9471),
(88431, 97462, 'Aves', 'H', 1992, 'Australia', 9012);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semaforo_extincion`
--

CREATE TABLE `semaforo_extincion` (
  `clave_Semaforo` int(5) NOT NULL,
  `AR_Rojo` varchar(10) DEFAULT NULL,
  `RM_Amarillo` varchar(10) DEFAULT NULL,
  `BR_Vede` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `semaforo_extincion`
--

INSERT INTO `semaforo_extincion` (`clave_Semaforo`, `AR_Rojo`, `RM_Amarillo`, `BR_Vede`) VALUES
(1521, '122', '2', '4'),
(10210, 'NO', 'NO', 'BR_Verde'),
(10211, 'AR_Rojo', 'NO', 'NO'),
(10212, 'NO', 'RM_Amarill', 'NO'),
(10213, 'NO', 'NO', 'BR_Verde'),
(10214, 'NO', 'RM_Amarill', 'NO'),
(10215, 'AR_Rojo', 'NO', 'NO'),
(10216, 'NO', 'NO', 'BR_Verde'),
(10217, 'NO', 'RM_Amarill', 'NO'),
(10218, 'NO', 'NO', 'BR_Verde'),
(10219, 'NO', 'NO', 'BR_Verde'),
(10220, 'NO', 'NO', 'BR_Verde'),
(10530, 'NO', 'NO', 'BR_Verde'),
(10531, 'NO', 'NO', 'BR_Verde'),
(10532, 'NO', 'NO', 'BR_Verde'),
(10533, 'AR_Rojo', 'NO', 'NO'),
(10534, 'NO', 'RM_Amarill', 'NO'),
(10535, 'NO', 'RM_Amarill', 'NO'),
(10536, 'NO', 'NO', 'BR_Verde'),
(10537, 'NO', 'RM_Amarill', 'NO'),
(10538, 'AR_Rojo', 'NO', 'NO'),
(10539, 'AR_Rojo', 'NO', 'NO'),
(21002, 'NO', 'NO', 'BR_Verde'),
(21090, 'NO', 'NO', 'BR_Verde'),
(21091, 'NO', 'NO', 'BR_Verde'),
(21093, 'NO', 'NO', 'BR_Verde'),
(21094, 'NO', 'RM_Amarill', 'NO'),
(21095, 'NO', 'RM_Amarill', 'NO'),
(21096, 'NO', 'RM_Amarill', 'NO'),
(21097, 'AR_Rojo', 'NO', 'NO'),
(21098, 'AR_Rojo', 'NO', 'NO'),
(21099, 'AR_Rojo', 'NO', 'NO'),
(94571, 'NO', 'NO', 'BR_Verde'),
(94572, 'NO', 'NO', 'BR_Verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zoologico`
--

CREATE TABLE `zoologico` (
  `Id_zoologico` int(5) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Ciudad` varchar(30) DEFAULT NULL,
  `Pais` varchar(30) DEFAULT NULL,
  `Tamanio` int(10) DEFAULT NULL,
  `anio_apertura` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zoologico`
--

INSERT INTO `zoologico` (`Id_zoologico`, `Nombre`, `Ciudad`, `Pais`, `Tamanio`, `anio_apertura`) VALUES
(147, 'Zool?gico_de_Le?n', 'Le?n', 'Mexico', 45000, 1993),
(1028, 'Zool?gico_Smithsonian', 'Washington', 'Estados_Unidos', 66000, 1889),
(1099, 'Zool?gico_de_Chapultepec', 'CDMX', 'Mexico', 16000, 1894),
(1452, 'Hogle_Zoo', 'Salt_Lake_City', 'Estados_Unidos', 17000, 1960),
(1457, 'Tuzoofari', 'Hidalgo', 'Mexico', 19000, 1991),
(1510, 'Zool?gico_Bronx', 'Nueva York', 'Estados_Unidos', 107000, 1902),
(2247, 'Zool?gicode_Altiplano', 'Tlaxcala', 'Mexico', 13400, 1998),
(2553, 'Tiergarten_Schonbrunn', 'Austria', 'Europa', 15000, 1984),
(2764, 'Zool?gico_Conservatorio', 'Minnesota', 'Estados_Unidos', 6900, 1936),
(2997, 'Zool?gico_Los_Coyotes', 'Coyoac?n', 'Mexico', 23000, 2002),
(3394, 'Zool?gico_Oakland', 'Oakland', 'Estados_Unidos', 1580, 1941),
(3581, 'Zool?gico_Berl?n', 'Berl?n', 'Alemania', 19400, 1913),
(3733, 'Aviario_Moctezuma', 'CDMX', 'Mexico', 19000, 1995),
(4152, 'Zoo_de_Londres', 'London', 'Reino Unido', 5000, 1828),
(4651, 'Zoologico_Nacionalesd_Africa', 'Sudafrica', 'Africa', 9000, 1916),
(4812, 'Zool?gico_Mosc?', 'Mosc?', 'Rusia', 21000, 1990),
(5104, 'Zool?gico_Henry_Doorly', 'Omaha', 'Estados_Unidos', 7800, 2003),
(5110, 'Zool?gico_Beijing', 'Beijing', 'China', 14500, 1906),
(5200, 'Zool?gico_de_Zacango', 'Toluca', 'Mexico', 17888, 1997),
(5814, 'Zool?gico_Columbus', 'Ohio', 'Estados_Unidos', 214000, 1999),
(5978, 'Zool?gico_Singapur', 'Singapur', 'Asia', 68000, 1982),
(6541, 'Bioparque_Estrella', 'Estado_de_Mexico', 'Mexico', 17000, 1983),
(6574, 'Zool?gico_de_Guadalajara', 'Guadalajara', 'Mexico', 23000, 2001),
(6580, 'Zool?gico_Toronto', 'Toronto', 'Canad?', 287000, 2001),
(6623, 'Ecoparque_R?o', 'Orizaba', 'Mexico', 12000, 1988),
(7302, 'Zool?gico_Praga', 'Praga', 'Chequia', 14000, 1989),
(7520, 'Zool?gico_Filadelfia', 'Filadelfia', 'Estados_Unidos', 17000, 1874),
(7741, 'Loro_Parque', 'Tenerife', 'Espania', 69000, 1888),
(7910, 'Africam_Safari', 'Puebla', 'Mexico', 80000, 1991),
(8032, 'Zool?gico_Chester', 'Inglaterra', 'Reino_Unido', 155000, 1993),
(8410, 'Zool?gico_Wellington', 'Wellington', 'Nueva_Zelanda', 12000, 1997),
(8545, 'Zool?gico_San_Diego', 'San_diego', 'Estados_Unidos', 40000, 2010),
(8731, 'Zool?gico_Montana_de_Gales', 'Norte_de_Gales', 'Reino_Unido', 13000, 1999),
(8847, 'Riverbanks_Zoo', 'Columbia', 'Estados_Unidos', 68800, 1956),
(9012, 'Zool?gico_Taronga', 'S?dney', 'Australia', 23000, 2000),
(9311, 'Zool?gico_San_Juan_Arag?n', 'Estado_de_Mexico', 'Mexico', 13000, 1889),
(9471, 'Zoologischer_Garten', 'Berl?n', 'Alemania', 647810, 1899),
(9520, 'Zool?gico_Pek?n', 'Pek?n', 'China', 36000, 1966),
(9566, 'Zool?gico_Parque_Pueblo', 'Nezahualc?yotl', 'Mexico', 6000, 1990),
(99341, 'Zool?gico_Los_Angeles', 'California_90027', 'Estados_Unidos', 54000, 1996);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `especie_animal`
--
ALTER TABLE `especie_animal`
  ADD PRIMARY KEY (`Id_Especie_Animal`),
  ADD KEY `indice1` (`clave_Semaforo`);

--
-- Indices de la tabla `info_animal`
--
ALTER TABLE `info_animal`
  ADD PRIMARY KEY (`Num_identificacion`),
  ADD KEY `indice1` (`Id_zoologico`),
  ADD KEY `indice2` (`Id_Especie_Animal`);

--
-- Indices de la tabla `semaforo_extincion`
--
ALTER TABLE `semaforo_extincion`
  ADD PRIMARY KEY (`clave_Semaforo`);

--
-- Indices de la tabla `zoologico`
--
ALTER TABLE `zoologico`
  ADD PRIMARY KEY (`Id_zoologico`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `especie_animal`
--
ALTER TABLE `especie_animal`
  ADD CONSTRAINT `especie_animal_ibfk_1` FOREIGN KEY (`clave_Semaforo`) REFERENCES `semaforo_extincion` (`clave_Semaforo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `info_animal`
--
ALTER TABLE `info_animal`
  ADD CONSTRAINT `info_animal_ibfk_1` FOREIGN KEY (`Id_Especie_Animal`) REFERENCES `especie_animal` (`Id_Especie_Animal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `info_animal_ibfk_2` FOREIGN KEY (`Id_zoologico`) REFERENCES `zoologico` (`Id_zoologico`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
