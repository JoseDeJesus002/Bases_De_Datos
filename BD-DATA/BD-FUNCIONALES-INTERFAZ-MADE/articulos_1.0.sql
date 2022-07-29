-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2022 a las 02:57:51
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
-- Base de datos: `articulos1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `Id_Articulo` int(11) NOT NULL,
  `Numero_Articulo` int(11) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`Id_Articulo`, `Numero_Articulo`, `Descripcion`) VALUES
(13121, 29, 'Sacapuntas_Azul'),
(17771, 42, 'Marca_Textos_Verde'),
(18641, 8, 'Lapiz_Mapped'),
(20132, 33, 'Tijeras_Mapped'),
(22367, 10, 'Cuaderno_Norma'),
(24527, 4, 'Sacapuntas_Azul'),
(25145, 14, 'Tijeras_Mapped'),
(29023, 35, 'Goma_Factis'),
(30025, 30, 'Marca_Textos_Verde'),
(30451, 38, 'Cuaderno_Norma'),
(31611, 6, 'Tijeras_Mapped'),
(33019, 49, 'Goma_Factis'),
(34471, 22, 'Colores_Norma'),
(36404, 16, 'Sacapuntas_Azul'),
(40270, 9, 'Tijeras_Mapped'),
(41021, 11, 'Goma_Factis'),
(51376, 23, 'Marca_Textos_Verde'),
(51502, 27, 'Tijeras_Mapped'),
(52619, 17, 'Lapiz_Mapped'),
(54156, 34, 'Cuaderno_Norma'),
(55413, 37, 'Goma_Factis'),
(55998, 7, 'Goma_Factis'),
(56299, 39, 'Lapiz_Mapped'),
(59315, 50, 'Goma_Factis'),
(59474, 12, 'Cuaderno_Norma'),
(59645, 2, 'Colores_Norma'),
(59978, 36, 'Cuaderno_Norma'),
(62010, 32, 'Marca_Textos_Verde'),
(63229, 46, 'Tijeras_Mapped'),
(67756, 26, 'Tijeras_Mapped'),
(69693, 47, 'Marca_Textos_Verde'),
(71321, 15, 'Colores_Norma'),
(73942, 1, 'Lapiz_Mapped'),
(74258, 41, 'Tijeras_Mapped'),
(74537, 20, 'Colores_Norma'),
(75586, 28, 'Cuaderno_Norma'),
(75662, 44, 'Cuaderno_Norma'),
(77827, 13, 'Sacapuntas_Azul'),
(79942, 3, 'Tijeras_Mapped'),
(81490, 25, 'Cuaderno_Norma'),
(81800, 19, 'Marca_Textos_Verde'),
(83618, 24, 'Cuaderno_Norma'),
(87600, 40, 'Goma_Factis'),
(88446, 43, 'Goma_Factis'),
(88820, 48, 'Marca_Textos_Verde'),
(89143, 5, 'Colores_Norma'),
(91338, 45, 'Tijeras_Mapped'),
(93328, 31, 'Lapiz_Mapped'),
(97702, 18, 'Marca_Textos_Verde'),
(97973, 21, 'Marca_Textos_Verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_fabrica`
--

CREATE TABLE `articulo_fabrica` (
  `Numero_Articulo` int(11) NOT NULL,
  `Id_Fabrica` int(6) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo_fabrica`
--

INSERT INTO `articulo_fabrica` (`Numero_Articulo`, `Id_Fabrica`, `Descripcion`) VALUES
(73942, 139283, 'Lapiz_Mapped'),
(59645, 236478, 'Colores_Norma'),
(79942, 326378, 'Tijeras_Mapped'),
(24527, 437489, 'Sacapuntas_Azul'),
(89143, 537468, 'Colores_Norma'),
(31611, 638490, 'Tijeras_Mapped'),
(55998, 738495, 'Goma_Factis'),
(18641, 836478, 'Lapiz_Mapped'),
(40270, 937485, 'Tijeras_Mapped'),
(22367, 103748, 'Cuaderno_Norma'),
(41021, 113748, 'Goma_Factis'),
(59474, 123847, 'Cuaderno_Norma'),
(77827, 133849, 'Sacapuntas_Azul'),
(25145, 143647, 'Tijeras_Mapped'),
(71321, 154758, 'Colores_Norma'),
(36404, 164859, 'Sacapuntas_Azul'),
(52619, 175840, 'Lapiz_Mapped'),
(97702, 184839, 'Marca_Textos_Verde'),
(81800, 193948, 'Marca_Textos_Verde'),
(74537, 204950, 'Colores_Norma'),
(97973, 214859, 'Marca_Textos_Verde'),
(34471, 224958, 'Colores_Norma'),
(51376, 233737, 'Marca_Textos_Verde'),
(83618, 243729, 'Cuaderno_Norma'),
(81490, 253849, 'Cuaderno_Norma'),
(67756, 262837, 'Tijeras_Mapped'),
(51502, 273748, 'Tijeras_Mapped'),
(75586, 283848, 'Cuaderno_Norma'),
(13121, 293049, 'Sacapuntas_Azul'),
(30025, 303728, 'Marca_Textos_Verde'),
(93328, 313988, 'Lapiz_Mapped'),
(62010, 323253, 'Marca_Textos_Verde'),
(20132, 332337, 'Tijeras_Mapped'),
(54156, 343728, 'Cuaderno_Norma'),
(29023, 353827, 'Goma_Factis'),
(59978, 363829, 'Cuaderno_Norma'),
(55413, 373829, 'Goma_Factis'),
(30451, 383478, 'Cuaderno_Norma'),
(56299, 393829, 'Lapiz_Mapped'),
(87600, 403029, 'Goma_Factis'),
(74258, 412920, 'Tijeras_Mapped'),
(17771, 420697, 'Marca_Textos_Verde'),
(88446, 436079, 'Goma_Factis'),
(75662, 445984, 'Cuaderno_Norma'),
(91338, 455948, 'Tijeras_Mapped'),
(63229, 465948, 'Tijeras_Mapped'),
(69693, 475096, 'Marca_Textos_Verde'),
(88820, 485968, 'Marca_Textos_Verde'),
(33019, 495960, 'Goma_Factis'),
(59315, 505849, 'Goma_Factis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabecera`
--

CREATE TABLE `cabecera` (
  `Id_Cabecera` int(6) NOT NULL,
  `Direccion_Envio` text NOT NULL,
  `Fecha_Produccion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cabecera`
--

INSERT INTO `cabecera` (`Id_Cabecera`, `Direccion_Envio`, `Fecha_Produccion`) VALUES
(1, '1 Towne Crossing', '2022-12-18'),
(2, '33479 Dawn Terrace', '2022-09-08'),
(3, '169 Sachtjen Parkway', '2022-12-26'),
(4, '16 Northfield Pass', '2022-05-10'),
(5, '678 Merrick Hill', '2022-11-04'),
(6, '07505 Mccormick Point', '2022-08-01'),
(7, '7 Loftsgordon Court', '2022-06-02'),
(8, '27244 Helena Point', '2022-05-21'),
(9, '59 International Lane', '2022-12-24'),
(10, '3287 Logan Plaza', '2022-11-14'),
(11, '49945 American Ash Terrace', '2022-09-27'),
(12, '11 Cordelia Parkway', '2022-11-11'),
(13, '64362 Golf Point', '2022-09-23'),
(14, '68 Monument Circle', '2022-09-25'),
(15, '9722 Canary Center', '2022-12-20'),
(16, '64427 Dakota Plaza', '2022-08-17'),
(17, '4 American Ash Trail', '2022-05-15'),
(18, '572 Fuller Plaza', '2022-10-02'),
(19, '967 2nd Park', '2022-09-29'),
(20, '5009 Homewood Terrace', '2022-09-29'),
(21, '36 Nobel Plaza', '2022-09-26'),
(22, '3 Prairie Rose Crossing', '2022-12-20'),
(23, '79785 Porter Place', '2022-09-08'),
(24, '2 Harbort Center', '2022-08-22'),
(25, '022 Helena Pass', '2022-12-04'),
(26, '005 Steensland Lane', '2022-06-05'),
(27, '8 Anderson Drive', '2022-01-04'),
(28, '6073 Reinke Terrace', '2022-03-19'),
(29, '57723 Bunker Hill Way', '2022-05-04'),
(30, '997 Anniversary Point', '2022-02-17'),
(31, '281 Elgar Street', '2022-01-24'),
(32, '426 Drewry Avenue', '2022-04-06'),
(33, '00 Fordem Plaza', '2022-11-23'),
(34, '04759 Shopko Alley', '2022-12-28'),
(35, '28 Sycamore Terrace', '2022-12-20'),
(36, '321 Pepper Wood Trail', '2022-01-07'),
(37, '76 Packers Plaza', '2022-07-09'),
(38, '73582 Elmside Circle', '2022-12-14'),
(39, '78 Ruskin Drive', '2022-02-20'),
(40, '349 Badeau Street', '2022-05-23'),
(41, '0611 Elka Terrace', '2022-06-14'),
(42, '68 Oak Circle', '2022-09-13'),
(43, '55737 Grover Pass', '2022-12-10'),
(44, '32716 Crescent Oaks Hill', '2022-05-16'),
(45, '80 Bluejay Trail', '2022-11-17'),
(46, '4 Buhler Place', '2022-12-17'),
(47, '61023 Montana Trail', '2022-09-04'),
(48, '82 Coleman Court', '2022-11-02'),
(49, '23 Veith Place', '2022-12-01'),
(50, '0 Moose Lane', '2022-11-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_Cliente` int(6) NOT NULL,
  `Id_Pedidos` varchar(6) NOT NULL,
  `Direccion` text NOT NULL,
  `Limite_Credito` int(3) NOT NULL,
  `Saldo` int(6) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_Cliente`, `Id_Pedidos`, `Direccion`, `Limite_Credito`, `Saldo`, `Descuento`, `Nombre`) VALUES
(126518, '453042', '61 Veith Junction', 26, 2646, 1, 'Odie'),
(128259, '151768', '4645 American Center', 52, 7851, 37, 'Dominik'),
(128524, '370624', '1147 Stone Corner Place', 66, 8574, 28, 'Hermann'),
(152374, '481270', '96879 Dixon Hill', 34, 3040, 29, 'Wiley'),
(169197, '868907', '74 Moose Avenue', 77, 5982, 63, 'Wilfred'),
(175587, '900606', '891 Forest Crossing', 32, 4500, 55, 'Dennie'),
(183400, '849138', '701 Fairfield Avenue', 78, 5522, 4, 'Cornell'),
(241481, '690661', '32849 Anniversary Park', 45, 9939, 43, 'Eddy'),
(268061, '823417', '5249 Elmside Point', 10, 5161, 34, 'Dare'),
(293799, '155710', '9604 Harbort Center', 77, 2215, 87, 'Gayle'),
(310442, '736566', '4 Barnett Parkway', 38, 4253, 15, 'Brnaba'),
(314989, '404563', '2265 Delaware Hill', 94, 2421, 46, 'Orazio'),
(326277, '233865', '54 Mcguire Center', 51, 110, 31, 'Brnaby'),
(331557, '514220', '19 Superior Parkway', 76, 9228, 88, 'Hallsy'),
(332356, '487140', '234 Killdeer Place', 81, 7859, 31, 'Fitzgerald'),
(337360, '122209', '714 Dorton Hill', 11, 8690, 80, 'Herc'),
(348442, '360612', '8 Parkside Junction', 41, 6561, 12, 'Logan'),
(383015, '439989', '29 Mockingbird Junction', 74, 2443, 37, 'Tarrance'),
(389269, '912733', '0 Drewry Avenue', 75, 8132, 52, 'Aristotle'),
(416052, '527650', '14728 Dunning Plaza', 99, 6296, 61, 'Urbano'),
(447013, '800030', '83982 Hoffman Crossing', 27, 7183, 1, 'Carolus'),
(462257, '799598', '09535 Lerdahl Hill', 65, 9064, 39, 'Angeli'),
(502783, '285131', '1655 Hudson Place', 8, 1347, 22, 'Edik'),
(512915, '114854', '06 Lotheville Way', 32, 4888, 90, 'Bertrand'),
(517824, '465180', '971 Riverside Trail', 36, 4792, 49, 'Ban'),
(518017, '813726', '857 Norway Maple Park', 88, 314, 4, 'Davis'),
(519304, '414735', '3571 Weeping Birch Drive', 40, 2011, 70, 'Harman'),
(525568, '408451', '7202 South Trail', 91, 6466, 99, 'Dennet'),
(546891, '396700', '932 Bluejay Road', 86, 9025, 30, 'Israel'),
(557321, '965395', '140 Straubel Alley', 28, 4251, 66, 'Sherwynd'),
(607102, '512831', '6948 Butterfield Place', 31, 2959, 95, 'Kennett'),
(607830, '201539', '6 Elmside Point', 32, 6717, 46, 'Massimo'),
(737450, '775659', '20 Armistice Lane', 92, 9918, 17, 'Kimball'),
(759112, '840501', '0489 Welch Crossing', 42, 7177, 91, 'Siegfried'),
(759645, '920915', '29 Thackeray Alley', 99, 7510, 92, 'Daryl'),
(762223, '376590', '21608 Everett Circle', 90, 5356, 75, 'Estevan'),
(768641, '531667', '1781 Rigney Road', 60, 6118, 50, 'Maxim'),
(809350, '824661', '0 Magdeline Pass', 56, 1470, 94, 'Jarret'),
(814929, '263069', '50131 Elmside Alley', 1, 2433, 84, 'Forbes'),
(818219, '845462', '766 Transport Point', 28, 1193, 58, 'Maximilianus'),
(819974, '785434', '683 Springview Alley', 31, 1106, 13, 'Walther'),
(821779, '856684', '2791 Melvin Point', 4, 7975, 97, 'Thane'),
(825503, '932741', '322 Larry Lane', 21, 6179, 24, 'Jaye'),
(867083, '284575', '99 Schmedeman Junction', 60, 7412, 98, 'Skylar'),
(871908, '680020', '99 Dakota Circle', 69, 2121, 99, 'Caesar'),
(876921, '276344', '5 Dayton Drive', 20, 8338, 32, 'Arny'),
(879337, '673153', '22 Hanover Place', 53, 4627, 76, 'Marve'),
(919025, '377477', '97 Eastwood Drive', 95, 6392, 56, 'Markus'),
(945643, '503207', '5771 Rutledge Way', 6, 6269, 48, 'Horton'),
(983044, '972689', '94 Norway Maple Place', 63, 737, 62, 'Nappie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo`
--

CREATE TABLE `cuerpo` (
  `Numero_Pedido` int(11) NOT NULL,
  `Id_Articulo` int(11) NOT NULL,
  `Cantidad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuerpo`
--

INSERT INTO `cuerpo` (`Numero_Pedido`, `Id_Articulo`, `Cantidad`) VALUES
(115926, 79942, 25),
(125836, 31611, 98),
(130225, 24527, 1),
(142137, 88820, 66),
(150689, 36404, 41),
(161417, 59978, 8),
(165257, 52619, 82),
(185794, 87600, 99),
(199038, 73942, 93),
(214281, 33019, 31),
(229054, 69693, 72),
(249018, 29023, 47),
(256419, 40270, 6),
(272697, 77827, 77),
(278762, 56299, 12),
(285330, 89143, 54),
(306538, 22367, 64),
(345422, 55413, 89),
(379009, 18641, 82),
(382360, 83618, 15),
(398466, 75586, 79),
(401495, 30025, 78),
(413933, 59645, 75),
(450295, 74258, 43),
(510806, 88446, 24),
(525649, 67756, 16),
(534870, 13121, 64),
(552550, 54156, 33),
(567211, 74537, 15),
(584567, 51376, 3),
(598731, 51502, 75),
(612436, 55998, 2),
(626073, 59474, 62),
(689545, 97702, 97),
(702537, 59315, 16),
(764462, 75662, 11),
(768346, 62010, 67),
(779167, 81490, 71),
(787136, 20132, 25),
(816262, 97973, 51),
(826492, 30451, 12),
(831436, 81800, 99),
(864436, 34471, 35),
(864469, 93328, 57),
(873675, 41021, 97),
(886954, 71321, 63),
(902507, 25145, 61),
(906321, 63229, 90),
(946713, 91338, 39),
(951470, 17771, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabrica`
--

CREATE TABLE `fabrica` (
  `Id_Fabrica` int(6) NOT NULL,
  `Telefono` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fabrica`
--

INSERT INTO `fabrica` (`Id_Fabrica`, `Telefono`) VALUES
(103748, 3846635334),
(113748, 4259002518),
(123847, 6663763475),
(133849, 6568373671),
(139283, 5486071564),
(143647, 1441733773),
(154758, 1022033396),
(164859, 9824830655),
(175840, 5266381420),
(184839, 6351696209),
(193948, 3269836376),
(204950, 5138369035),
(214859, 8052026429),
(224958, 6122085597),
(233737, 7156634547),
(236478, 2171243261),
(243729, 9583141819),
(253849, 2764065080),
(262837, 6395124973),
(273748, 1479615013),
(283848, 2338478345),
(293049, 9872718971),
(303728, 7232610097),
(313988, 6708261217),
(323253, 2989763425),
(326378, 5481633589),
(332337, 2147206062),
(343728, 7338505268),
(353827, 3528713826),
(363829, 5986025868),
(373829, 2087163294),
(383478, 4099394513),
(393829, 7971630261),
(403029, 2721801811),
(412920, 7064030491),
(420697, 4441853136),
(436079, 8254241649),
(437489, 8239186110),
(445984, 8304535369),
(455948, 3335111885),
(465948, 4197319883),
(475096, 2713568848),
(485968, 9193052450),
(495960, 8108836145),
(505849, 8494461016),
(537468, 9107914337),
(638490, 5536368681),
(738495, 1918748011),
(836478, 1274446969),
(937485, 2361015743);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Id_Pedidos` varchar(6) NOT NULL,
  `Id_Cabecera` int(6) NOT NULL,
  `Numero_Pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Id_Pedidos`, `Id_Cabecera`, `Numero_Pedido`) VALUES
('233865', 1, 199038),
('370624', 2, 413933),
('151768', 3, 115926),
('799598', 4, 130225),
('453042', 5, 285330),
('813726', 6, 125836),
('824661', 7, 612436),
('512831', 8, 379009),
('201539', 9, 256419),
('114854', 10, 306538),
('900606', 11, 873675),
('514220', 12, 626073),
('122209', 13, 272697),
('408451', 14, 902507),
('845462', 15, 886954),
('785434', 16, 150689),
('503207', 17, 165257),
('285131', 18, 689545),
('965395', 19, 831436),
('920915', 20, 567211),
('800030', 21, 816262),
('856684', 22, 864436),
('849138', 23, 584567),
('465180', 24, 382360),
('527650', 25, 779167),
('439989', 26, 525649),
('284575', 27, 598731),
('404563', 28, 398466),
('680020', 29, 534870),
('481270', 30, 401495),
('531667', 31, 864469),
('376590', 32, 768346),
('276344', 33, 787136),
('673153', 34, 552550),
('396700', 35, 249018),
('736566', 36, 161417),
('377477', 37, 345422),
('155710', 38, 826492),
('972689', 39, 278762),
('868907', 40, 185794),
('690661', 41, 450295),
('263069', 42, 951470),
('775659', 43, 510806),
('360612', 44, 764462),
('414735', 45, 946713),
('487140', 46, 906321),
('912733', 47, 229054),
('840501', 48, 142137),
('932741', 49, 214281),
('823417', 50, 702537);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`Id_Articulo`);

--
-- Indices de la tabla `articulo_fabrica`
--
ALTER TABLE `articulo_fabrica`
  ADD KEY `Numero_Articulo` (`Id_Fabrica`),
  ADD KEY `Numero_Articulo_2` (`Numero_Articulo`);

--
-- Indices de la tabla `cabecera`
--
ALTER TABLE `cabecera`
  ADD PRIMARY KEY (`Id_Cabecera`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Cliente`),
  ADD KEY `Id_Pedidos` (`Id_Pedidos`);

--
-- Indices de la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD PRIMARY KEY (`Numero_Pedido`),
  ADD KEY `Numero_Articulo` (`Id_Articulo`);

--
-- Indices de la tabla `fabrica`
--
ALTER TABLE `fabrica`
  ADD PRIMARY KEY (`Id_Fabrica`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Id_Pedidos`),
  ADD KEY `Cabecera` (`Id_Cabecera`,`Numero_Pedido`),
  ADD KEY `Numero_Pedido` (`Numero_Pedido`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo_fabrica`
--
ALTER TABLE `articulo_fabrica`
  ADD CONSTRAINT `articulo_fabrica_ibfk_2` FOREIGN KEY (`Id_Fabrica`) REFERENCES `fabrica` (`Id_Fabrica`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulo_fabrica_ibfk_3` FOREIGN KEY (`Numero_Articulo`) REFERENCES `articulos` (`Id_Articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Id_Pedidos`) REFERENCES `pedidos` (`Id_Pedidos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD CONSTRAINT `cuerpo_ibfk_1` FOREIGN KEY (`Id_Articulo`) REFERENCES `articulos` (`Id_Articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`Numero_Pedido`) REFERENCES `cuerpo` (`Numero_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`Id_Cabecera`) REFERENCES `cabecera` (`Id_Cabecera`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
