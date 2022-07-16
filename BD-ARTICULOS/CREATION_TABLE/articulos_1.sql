-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2022 a las 17:23:57
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
-- Base de datos: `articulos_1`
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
(97973, 21, 'Marca_Textos_Verde'),
(107887, 58, 'Plastic'),
(143664, 91, 'Aluminum'),
(166413, 97, 'Brass'),
(179202, 53, 'Steel'),
(180303, 71, 'Vinyl'),
(190401, 77, 'Plexiglass'),
(216573, 99, 'Aluminum'),
(227966, 81, 'Stone'),
(244528, 79, 'Wood'),
(255608, 88, 'Wood'),
(285618, 86, 'Aluminum'),
(299285, 63, 'Plastic'),
(300464, 57, 'Aluminum'),
(307203, 82, 'Plexiglass'),
(313730, 98, 'Granite'),
(325637, 100, 'Vinyl'),
(342269, 55, 'Glass'),
(346862, 66, 'Plexiglass'),
(404337, 51, 'Plastic'),
(423763, 90, 'Brass'),
(425514, 87, 'Brass'),
(443633, 73, 'Rubber'),
(444318, 94, 'Plexiglass'),
(447531, 93, 'Plastic'),
(532649, 68, 'Vinyl'),
(542508, 84, 'Brass'),
(565960, 52, 'Wood'),
(594045, 78, 'Plexiglass'),
(596661, 70, 'Plastic'),
(620025, 62, 'Plastic'),
(620898, 64, 'Plexiglass'),
(634644, 69, 'Rubber'),
(680000, 95, 'Rubber'),
(704425, 61, 'Vinyl'),
(714122, 85, 'Steel'),
(716560, 92, 'Steel'),
(737237, 96, 'Aluminum'),
(753231, 83, 'Steel'),
(759035, 59, 'Plastic'),
(771407, 60, 'Rubber'),
(775353, 65, 'Plexiglass'),
(776594, 75, 'Vinyl'),
(783341, 54, 'Glass'),
(832353, 72, 'Plexiglass'),
(854174, 89, 'Wood'),
(856988, 80, 'Steel'),
(916331, 67, 'Brass'),
(937187, 74, 'Glass'),
(994931, 56, 'Brass'),
(995707, 76, 'Glass');

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
(1, 139283, 'Lapiz_Mapped'),
(2, 236478, 'Colores_Norma'),
(3, 326378, 'Tijeras_Mapped'),
(4, 437489, 'Sacapuntas_Azul'),
(5, 537468, 'Colores_Norma'),
(6, 638490, 'Tijeras_Mapped'),
(7, 738495, 'Goma_Factis'),
(8, 836478, 'Lapiz_Mapped'),
(9, 937485, 'Tijeras_Mapped'),
(10, 103748, 'Cuaderno_Norma'),
(11, 113748, 'Goma_Factis'),
(12, 123847, 'Cuaderno_Norma'),
(13, 133849, 'Sacapuntas_Azul'),
(14, 143647, 'Tijeras_Mapped'),
(15, 154758, 'Colores_Norma'),
(16, 164859, 'Sacapuntas_Azul'),
(17, 175840, 'Lapiz_Mapped'),
(18, 184839, 'Marca_Textos_Verde'),
(19, 193948, 'Marca_Textos_Verde'),
(20, 204950, 'Colores_Norma'),
(21, 214859, 'Marca_Textos_Verde'),
(22, 224958, 'Colores_Norma'),
(23, 233737, 'Marca_Textos_Verde'),
(24, 243729, 'Cuaderno_Norma'),
(25, 253849, 'Cuaderno_Norma'),
(26, 262837, 'Tijeras_Mapped'),
(27, 273748, 'Tijeras_Mapped'),
(28, 283848, 'Cuaderno_Norma'),
(29, 293049, 'Sacapuntas_Azul'),
(30, 303728, 'Marca_Textos_Verde'),
(31, 313988, 'Lapiz_Mapped'),
(32, 323253, 'Marca_Textos_Verde'),
(33, 332337, 'Tijeras_Mapped'),
(34, 343728, 'Cuaderno_Norma'),
(35, 353827, 'Goma_Factis'),
(36, 363829, 'Cuaderno_Norma'),
(37, 373829, 'Goma_Factis'),
(38, 383478, 'Cuaderno_Norma'),
(39, 393829, 'Lapiz_Mapped'),
(40, 403029, 'Goma_Factis'),
(41, 412920, 'Tijeras_Mapped'),
(42, 420697, 'Marca_Textos_Verde'),
(43, 436079, 'Goma_Factis'),
(44, 445984, 'Cuaderno_Norma'),
(45, 455948, 'Tijeras_Mapped'),
(46, 465948, 'Tijeras_Mapped'),
(47, 475096, 'Marca_Textos_Verde'),
(48, 485968, 'Marca_Textos_Verde'),
(49, 495960, 'Goma_Factis'),
(50, 505849, 'Goma_Factis'),
(51, 400198, 'Plexiglass'),
(52, 193891, 'Granite'),
(53, 987736, 'Plexiglass'),
(54, 822284, 'Plexiglass'),
(55, 517857, 'Rubber'),
(56, 238401, 'Plastic'),
(57, 895630, 'Glass'),
(58, 927021, 'Wood'),
(59, 524309, 'Plastic'),
(60, 921106, 'Plastic'),
(61, 250000, 'Glass'),
(62, 771291, 'Plexiglass'),
(63, 492542, 'Stone'),
(64, 720384, 'Wood'),
(65, 446389, 'Stone'),
(66, 434472, 'Wood'),
(67, 947334, 'Plastic'),
(68, 965932, 'Glass'),
(69, 876939, 'Stone'),
(70, 540744, 'Plexiglass'),
(71, 282194, 'Wood'),
(72, 279575, 'Glass'),
(73, 823029, 'Rubber'),
(74, 274038, 'Plastic'),
(75, 477743, 'Steel'),
(76, 868460, 'Aluminum'),
(77, 184811, 'Aluminum'),
(78, 927672, 'Wood'),
(79, 731741, 'Wood'),
(80, 767365, 'Vinyl'),
(81, 654815, 'Aluminum'),
(82, 296748, 'Steel'),
(83, 798320, 'Rubber'),
(84, 379895, 'Steel'),
(85, 959119, 'Wood'),
(86, 432349, 'Plexiglass'),
(87, 520024, 'Vinyl'),
(88, 536303, 'Steel'),
(89, 491109, 'Wood'),
(90, 355938, 'Plastic'),
(91, 799886, 'Rubber'),
(92, 908105, 'Plastic'),
(93, 231755, 'Vinyl'),
(94, 820404, 'Steel'),
(95, 517847, 'Glass'),
(96, 509265, 'Rubber'),
(97, 476352, 'Vinyl'),
(98, 935730, 'Stone'),
(99, 781012, 'Stone'),
(100, 733528, 'Rubber');

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
(50, '0 Moose Lane', '2022-11-07'),
(132340, '9 Bayside Park', '2022-06-12'),
(136385, '473 Washington Court', '2023-05-16'),
(196896, '4 Troy Point', '2021-04-22'),
(200614, '3 Ronald Regan Circle', '2022-10-27'),
(203155, '6878 Veith Street', '2022-08-21'),
(227664, '7227 Waubesa Circle', '2022-12-31'),
(233580, '20584 Oak Crossing', '2019-10-12'),
(244485, '7132 Veith Hill', '2019-07-10'),
(255658, '4687 Sachtjen Trail', '2020-01-19'),
(268679, '832 Dexter Circle', '2023-06-12'),
(302234, '917 Ludington Point', '2021-06-19'),
(302614, '6116 8th Point', '2020-09-22'),
(309357, '29 Ruskin Alley', '2023-02-02'),
(316945, '55138 Mayfield Street', '2019-05-11'),
(350544, '7654 Hazelcrest Crossing', '2024-06-11'),
(366196, '165 Lakeland Road', '2021-11-13'),
(379314, '66 Sundown Pass', '2023-01-09'),
(381641, '425 Claremont Drive', '2020-04-26'),
(397574, '65798 East Park', '2023-11-04'),
(415595, '18 Brickson Park Point', '2020-08-22'),
(425394, '879 Golf Place', '2021-07-26'),
(434429, '33 Grasskamp Road', '2019-01-28'),
(448787, '75 Hoffman Trail', '2019-06-23'),
(467489, '91 Dahle Plaza', '2020-10-29'),
(483409, '03822 Nevada Pass', '2021-10-22'),
(503816, '752 Becker Center', '2023-11-05'),
(504807, '77700 Mosinee Court', '2023-07-04'),
(517329, '16 Londonderry Road', '2020-12-06'),
(530232, '3851 Welch Hill', '2019-07-17'),
(542098, '62447 Eagan Crossing', '2023-08-02'),
(555133, '62 High Crossing Pass', '2021-01-25'),
(561648, '18 West Avenue', '2021-08-03'),
(563748, '4 Granby Trail', '2022-06-20'),
(619262, '87 Springview Circle', '2023-07-12'),
(632031, '5163 Kensington Court', '2023-10-21'),
(663986, '19114 Northridge Court', '2021-07-13'),
(679174, '62 Trailsway Lane', '2020-03-22'),
(699167, '143 Armistice Park', '2020-09-06'),
(700603, '83 Amoth Junction', '2023-11-09'),
(707750, '23415 Menomonie Way', '2021-07-03'),
(754768, '3 Fair Oaks Terrace', '2021-12-10'),
(817148, '42 Namekagon Avenue', '2022-10-26'),
(829715, '31 Schmedeman Terrace', '2020-07-08'),
(888937, '83009 Twin Pines Pass', '2024-01-20'),
(913935, '3879 Forest Run Point', '2023-03-19'),
(925479, '3 Randy Park', '2019-08-24'),
(957805, '64 Old Shore Alley', '2020-09-18'),
(964875, '57 Graceland Trail', '2022-11-07'),
(978765, '31 Dayton Road', '2019-06-20'),
(995315, '365 Morningstar Circle', '2024-04-22');

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
(108726, '890462', '86 Maywood Avenue', 59, 9452, 52, 'Winna'),
(121729, '533072', '72682 Springview Way', 58, 6068, 48, 'Vidovic'),
(126518, '453042', '61 Veith Junction', 26, 2646, 1, 'Odie'),
(128259, '151768', '4645 American Center', 52, 7851, 37, 'Dominik'),
(128524, '370624', '1147 Stone Corner Place', 66, 8574, 28, 'Hermann'),
(130298, '480933', '13867 Corry Park', 44, 3794, 55, 'Kimberley'),
(134945, '597184', '305 Vidon Lane', 58, 3260, 45, 'Thayne'),
(145171, '383071', '062 Tennyson Hill', 52, 9719, 44, 'Sophronia'),
(152374, '481270', '96879 Dixon Hill', 34, 3040, 29, 'Wiley'),
(169197, '868907', '74 Moose Avenue', 77, 5982, 63, 'Wilfred'),
(175587, '900606', '891 Forest Crossing', 32, 4500, 55, 'Dennie'),
(177023, '219736', '6030 Chinook Crossing', 90, 2858, 86, 'Ashil'),
(180759, '443520', '06 Kipling Road', 38, 4525, 95, 'Cindy'),
(183400, '849138', '701 Fairfield Avenue', 78, 5522, 4, 'Cornell'),
(211976, '773530', '08265 Parkside Drive', 13, 2534, 75, 'Winnah'),
(238255, '763829', '122 Clove Road', 89, 6650, 100, 'Chevalier'),
(241481, '690661', '32849 Anniversary Park', 45, 9939, 43, 'Eddy'),
(256076, '891302', '6845 Pawling Avenue', 46, 5717, 16, 'Tann'),
(266017, '110405', '76 Glacier Hill Terrace', 80, 4710, 33, 'Manya'),
(268061, '823417', '5249 Elmside Point', 10, 5161, 34, 'Dare'),
(280527, '109480', '6 Village Green Crossing', 91, 3449, 58, 'Isaac'),
(286985, '351218', '0 Brickson Park Place', 75, 5962, 35, 'Kathryne'),
(293799, '155710', '9604 Harbort Center', 77, 2215, 87, 'Gayle'),
(302058, '166595', '738 Vera Court', 59, 3738, 3, 'Arlie'),
(310442, '736566', '4 Barnett Parkway', 38, 4253, 15, 'Brnaba'),
(313752, '477436', '8767 Del Sol Trail', 35, 1574, 81, 'Guthry'),
(314989, '404563', '2265 Delaware Hill', 94, 2421, 46, 'Orazio'),
(326277, '233865', '54 Mcguire Center', 51, 110, 31, 'Brnaby'),
(331350, '798673', '5749 Clemons Drive', 1, 9828, 80, 'Marybelle'),
(331557, '514220', '19 Superior Parkway', 76, 9228, 88, 'Hallsy'),
(332356, '487140', '234 Killdeer Place', 81, 7859, 31, 'Fitzgerald'),
(337360, '122209', '714 Dorton Hill', 11, 8690, 80, 'Herc'),
(348442, '360612', '8 Parkside Junction', 41, 6561, 12, 'Logan'),
(362108, '969797', '0205 Bayside Trail', 83, 5755, 89, 'Nancey'),
(365643, '618796', '530 Leroy Center', 79, 8768, 39, 'Malorie'),
(383015, '439989', '29 Mockingbird Junction', 74, 2443, 37, 'Tarrance'),
(389269, '912733', '0 Drewry Avenue', 75, 8132, 52, 'Aristotle'),
(389320, '390470', '91 Jenna Crossing', 58, 1965, 59, 'Everett'),
(416052, '527650', '14728 Dunning Plaza', 99, 6296, 61, 'Urbano'),
(419970, '604901', '85316 Division Park', 56, 1889, 88, 'Stillmann'),
(447013, '800030', '83982 Hoffman Crossing', 27, 7183, 1, 'Carolus'),
(455280, '530382', '6 Saint Paul Court', 61, 6006, 9, 'Chico'),
(462257, '799598', '09535 Lerdahl Hill', 65, 9064, 39, 'Angeli'),
(485060, '290855', '1 Sheridan Hill', 12, 3154, 37, 'Mignonne'),
(490239, '791340', '04719 Bowman Pass', 45, 9545, 83, 'Cal'),
(502783, '285131', '1655 Hudson Place', 8, 1347, 22, 'Edik'),
(512915, '114854', '06 Lotheville Way', 32, 4888, 90, 'Bertrand'),
(517824, '465180', '971 Riverside Trail', 36, 4792, 49, 'Ban'),
(518017, '813726', '857 Norway Maple Park', 88, 314, 4, 'Davis'),
(519304, '414735', '3571 Weeping Birch Drive', 40, 2011, 70, 'Harman'),
(525568, '408451', '7202 South Trail', 91, 6466, 99, 'Dennet'),
(527410, '283311', '73 Old Gate Avenue', 51, 8221, 82, 'Carmelia'),
(546891, '396700', '932 Bluejay Road', 86, 9025, 30, 'Israel'),
(557321, '965395', '140 Straubel Alley', 28, 4251, 66, 'Sherwynd'),
(566440, '798657', '3898 Toban Point', 54, 4332, 11, 'Ethyl'),
(592433, '612573', '6038 Graedel Place', 19, 6643, 86, 'Shem'),
(607102, '512831', '6948 Butterfield Place', 31, 2959, 95, 'Kennett'),
(607830, '201539', '6 Elmside Point', 32, 6717, 46, 'Massimo'),
(609693, '199262', '6 Armistice Way', 80, 8672, 61, 'Lori'),
(629904, '491912', '22 Division Junction', 4, 4849, 1, 'Linus'),
(648548, '590343', '5378 Rusk Lane', 48, 5644, 81, 'Benedicto'),
(657559, '356830', '78320 Reinke Way', 68, 1037, 43, 'Bret'),
(666772, '758534', '246 Hoard Alley', 33, 3339, 48, 'Maynard'),
(718916, '130066', '99599 Swallow Street', 47, 7219, 35, 'Mikey'),
(730350, '716483', '34 Blackbird Street', 99, 1801, 52, 'Antoine'),
(737450, '775659', '20 Armistice Lane', 92, 9918, 17, 'Kimball'),
(744490, '564101', '0634 Longview Point', 11, 6496, 74, 'Elmore'),
(759112, '840501', '0489 Welch Crossing', 42, 7177, 91, 'Siegfried'),
(759645, '920915', '29 Thackeray Alley', 99, 7510, 92, 'Daryl'),
(762223, '376590', '21608 Everett Circle', 90, 5356, 75, 'Estevan'),
(763684, '606996', '75659 Bluejay Way', 97, 3085, 4, 'Shawn'),
(766244, '302354', '57 Lakewood Terrace', 63, 6295, 93, 'Fredi'),
(768641, '531667', '1781 Rigney Road', 60, 6118, 50, 'Maxim'),
(771541, '305511', '89 Stuart Road', 38, 4978, 18, 'Omero'),
(783924, '234313', '9762 Schurz Circle', 27, 4762, 83, 'Arley'),
(801138, '549263', '12809 Fallview Alley', 14, 1695, 92, 'Ariadne'),
(809350, '824661', '0 Magdeline Pass', 56, 1470, 94, 'Jarret'),
(814929, '263069', '50131 Elmside Alley', 1, 2433, 84, 'Forbes'),
(818219, '845462', '766 Transport Point', 28, 1193, 58, 'Maximilianus'),
(818844, '439343', '32952 Mesta Point', 78, 1951, 8, 'Marena'),
(819974, '785434', '683 Springview Alley', 31, 1106, 13, 'Walther'),
(821779, '856684', '2791 Melvin Point', 4, 7975, 97, 'Thane'),
(825503, '932741', '322 Larry Lane', 21, 6179, 24, 'Jaye'),
(866455, '677929', '1834 Morningstar Place', 30, 3066, 25, 'Torie'),
(867083, '284575', '99 Schmedeman Junction', 60, 7412, 98, 'Skylar'),
(871908, '680020', '99 Dakota Circle', 69, 2121, 99, 'Caesar'),
(876921, '276344', '5 Dayton Drive', 20, 8338, 32, 'Arny'),
(879337, '673153', '22 Hanover Place', 53, 4627, 76, 'Marve'),
(887023, '646586', '131 Spaight Drive', 70, 2874, 100, 'Yasmin'),
(899387, '386040', '369 Lindbergh Plaza', 71, 3578, 98, 'Dionis'),
(908843, '301430', '44146 Golf View Crossing', 74, 4308, 42, 'Bing'),
(918495, '566112', '66 Bluestem Plaza', 11, 3477, 53, 'Melanie'),
(919025, '377477', '97 Eastwood Drive', 95, 6392, 56, 'Markus'),
(945643, '503207', '5771 Rutledge Way', 6, 6269, 48, 'Horton'),
(955716, '666248', '6046 Ohio Park', 13, 5424, 65, 'Solly'),
(955842, '561083', '6 Shelley Trail', 92, 3990, 57, 'Belvia'),
(974335, '464669', '455 Dwight Hill', 64, 6029, 52, 'Mariette'),
(983044, '972689', '94 Norway Maple Place', 63, 737, 62, 'Nappie'),
(987563, '966548', '2884 Crest Line Plaza', 18, 8921, 92, 'Greta'),
(994288, '595308', '68 Fisk Drive', 94, 9974, 80, 'George');

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
(131137, 190401, 43),
(142137, 88820, 66),
(143609, 216573, 19),
(150689, 36404, 41),
(161417, 59978, 8),
(165257, 52619, 82),
(167542, 704425, 38),
(168437, 255608, 77),
(171481, 404337, 72),
(185794, 87600, 99),
(187252, 179202, 29),
(199038, 73942, 93),
(213577, 107887, 16),
(213998, 680000, 94),
(214281, 33019, 31),
(225649, 994931, 12),
(229054, 69693, 72),
(249018, 29023, 47),
(256419, 40270, 6),
(258522, 771407, 47),
(272697, 77827, 77),
(278762, 56299, 12),
(285330, 89143, 54),
(302690, 716560, 34),
(306538, 22367, 64),
(314169, 916331, 50),
(316540, 594045, 59),
(317797, 832353, 26),
(339081, 753231, 81),
(345422, 55413, 89),
(356201, 180303, 14),
(379009, 18641, 82),
(382360, 83618, 15),
(387233, 854174, 57),
(387898, 313730, 3),
(388823, 532649, 100),
(398466, 75586, 79),
(401495, 30025, 78),
(413809, 714122, 67),
(413933, 59645, 75),
(427228, 856988, 95),
(442617, 620025, 95),
(450295, 74258, 43),
(455329, 300464, 32),
(471942, 143664, 11),
(496295, 166413, 21),
(506513, 995707, 73),
(509230, 620898, 38),
(510806, 88446, 24),
(518124, 737237, 58),
(521834, 542508, 69),
(525649, 67756, 16),
(534870, 13121, 64),
(552550, 54156, 33),
(567211, 74537, 15),
(575277, 447531, 1),
(584567, 51376, 3),
(598731, 51502, 75),
(603553, 307203, 18),
(612436, 55998, 2),
(618113, 759035, 49),
(626073, 59474, 62),
(655988, 783341, 89),
(661770, 634644, 46),
(671126, 299285, 31),
(679890, 423763, 25),
(689545, 97702, 97),
(702537, 59315, 16),
(732012, 342269, 89),
(741892, 596661, 97),
(746712, 227966, 49),
(758545, 443633, 12),
(764462, 75662, 11),
(768346, 62010, 67),
(779167, 81490, 71),
(786286, 346862, 24),
(787136, 20132, 25),
(816262, 97973, 51),
(817547, 775353, 72),
(826492, 30451, 12),
(831436, 81800, 99),
(861376, 244528, 76),
(864436, 34471, 35),
(864469, 93328, 57),
(873675, 41021, 97),
(875855, 444318, 83),
(886954, 71321, 63),
(893151, 937187, 83),
(902507, 25145, 61),
(906321, 63229, 90),
(946713, 91338, 39),
(948013, 325637, 87),
(951470, 17771, 23),
(972439, 285618, 29),
(981010, 425514, 37),
(987113, 776594, 61),
(991022, 565960, 70);

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
(184811, 3435615057),
(184839, 6351696209),
(193891, 5123030300),
(193948, 3269836376),
(204950, 5138369035),
(214859, 8052026429),
(224958, 6122085597),
(231755, 9782405829),
(233737, 7156634547),
(236478, 2171243261),
(238401, 6523509346),
(243729, 9583141819),
(250000, 7669542680),
(253849, 2764065080),
(262837, 6395124973),
(273748, 1479615013),
(274038, 8804844205),
(279575, 2659258998),
(282194, 2204031588),
(283848, 2338478345),
(293049, 9872718971),
(296748, 2374064776),
(303728, 7232610097),
(313988, 6708261217),
(323253, 2989763425),
(326378, 5481633589),
(332337, 2147206062),
(343728, 7338505268),
(353827, 3528713826),
(355938, 1702725183),
(363829, 5986025868),
(373829, 2087163294),
(379895, 8228155972),
(383478, 4099394513),
(393829, 7971630261),
(400198, 5592465324),
(403029, 2721801811),
(412920, 7064030491),
(420697, 4441853136),
(432349, 1879078243),
(434472, 1755014756),
(436079, 8254241649),
(437489, 8239186110),
(445984, 8304535369),
(446389, 3757734537),
(455948, 3335111885),
(465948, 4197319883),
(475096, 2713568848),
(476352, 7528618255),
(477743, 6113111301),
(485968, 9193052450),
(491109, 3042137506),
(492542, 4863255514),
(495960, 8108836145),
(505849, 8494461016),
(509265, 1079140463),
(517847, 6032710781),
(517857, 6008862737),
(520024, 4828025350),
(524309, 6425067305),
(536303, 2898195083),
(537468, 9107914337),
(540744, 2318254443),
(638490, 5536368681),
(654815, 2019045598),
(720384, 9463109745),
(731741, 3575337423),
(733528, 2335037234),
(738495, 1918748011),
(767365, 6699163751),
(771291, 9108882582),
(781012, 5085746183),
(798320, 5224406653),
(799886, 3445460360),
(820404, 7909212422),
(822284, 9892519852),
(823029, 3602676986),
(836478, 1274446969),
(868460, 8691453380),
(876939, 5062518390),
(895630, 4299795496),
(908105, 7727696756),
(921106, 4458009881),
(927021, 4563284344),
(927672, 8527452622),
(935730, 7045937749),
(937485, 2361015743),
(947334, 2127624275),
(959119, 6058978737),
(965932, 2771969052),
(987736, 9577787273);

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
('823417', 50, 702537),
('356830', 132340, 496295),
('283311', 136385, 741892),
('758534', 196896, 387233),
('219736', 200614, 143609),
('301430', 203155, 575277),
('549263', 227664, 861376),
('166595', 233580, 506513),
('604901', 244485, 316540),
('199262', 255658, 817547),
('606996', 268679, 455329),
('666248', 302234, 972439),
('491912', 302614, 302690),
('566112', 309357, 213998),
('597184', 316945, 521834),
('798657', 350544, 258522),
('890462', 366196, 387898),
('234313', 379314, 991022),
('716483', 381641, 948013),
('595308', 397574, 339081),
('109480', 415595, 981010),
('480933', 425394, 509230),
('891302', 434429, 746712),
('564101', 448787, 603553),
('533072', 467489, 427228),
('110405', 483409, 518124),
('464669', 503816, 167542),
('763829', 504807, 655988),
('966548', 517329, 131137),
('561083', 530232, 442617),
('439343', 542098, 187252),
('290855', 555133, 732012),
('443520', 561648, 225649),
('612573', 563748, 661770),
('969797', 619262, 875855),
('530382', 632031, 893151),
('302354', 663986, 471942),
('305511', 679174, 356201),
('618796', 699167, 679890),
('351218', 700603, 171481),
('798673', 707750, 213577),
('677929', 754768, 388823),
('390470', 817148, 786286),
('383071', 829715, 317797),
('791340', 888937, 618113),
('477436', 913935, 413809),
('386040', 925479, 758545),
('130066', 957805, 671126),
('646586', 964875, 987113),
('773530', 978765, 314169),
('590343', 995315, 168437);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`Id_Articulo`),
  ADD KEY `Numero_Articulo` (`Numero_Articulo`);

--
-- Indices de la tabla `articulo_fabrica`
--
ALTER TABLE `articulo_fabrica`
  ADD PRIMARY KEY (`Numero_Articulo`),
  ADD KEY `Numero_Articulo` (`Id_Fabrica`);

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
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`Numero_Articulo`) REFERENCES `articulo_fabrica` (`Numero_Articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulo_fabrica`
--
ALTER TABLE `articulo_fabrica`
  ADD CONSTRAINT `articulo_fabrica_ibfk_2` FOREIGN KEY (`Id_Fabrica`) REFERENCES `fabrica` (`Id_Fabrica`) ON DELETE CASCADE ON UPDATE CASCADE;

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
