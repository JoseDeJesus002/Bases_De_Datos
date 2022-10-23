-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2022 a las 19:54:09
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
-- Base de datos: `american_truck`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camionero`
--

CREATE TABLE `camionero` (
  `CURP` varchar(18) NOT NULL,
  `Matricula` varchar(14) NOT NULL,
  `Codigo_Paquete` varchar(6) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Telefono` int(13) NOT NULL,
  `Direccion` text NOT NULL,
  `Poblacion` int(5) NOT NULL,
  `Salario` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `camionero`
--

INSERT INTO `camionero` (`CURP`, `Matricula`, `Codigo_Paquete`, `Nombre`, `Telefono`, `Direccion`, `Poblacion`, `Salario`) VALUES
('104026', '62', '62', 'Hedy', 2147483647, '88 Westend Hill', 730141, 63100),
('124244', '35', '35', 'Aeriell', 2147483647, '15 Luster Park', 851840, 71667),
('138166', '31', '31', 'Shirl', 2147483647, '98 Fieldstone Drive', 282667, 71761),
('138482', '76', '76', 'Lela', 2147483647, '05 Northland Court', 635317, 74135),
('141419', '75', '75', 'Ailina', 2147483647, '8 Mallard Circle', 465913, 28321),
('143351', '49', '49', 'Adamo', 2147483647, '52 Northwestern Trail', 416314, 10229),
('163553', '70', '70', 'Falkner', 1391074258, '51 Mccormick Way', 318499, 24261),
('169655', '3', '3', 'Dame', 2147483647, '05477 Kenwood Park', 392262, 70252),
('178727', '90', '90', 'Jasper', 2147483647, '6594 Rieder Pass', 180429, 54210),
('193299', '66', '66', 'Bill', 2147483647, '6447 Maple Trail', 815820, 85645),
('202758', '99', '99', 'Osbert', 2147483647, '36 Moland Road', 856274, 39788),
('207159', '88', '88', 'Elly', 1374050347, '4229 Shasta Hill', 308874, 89591),
('227951', '63', '63', 'Borg', 2147483647, '79047 Canary Road', 537920, 23536),
('232509', '44', '44', 'Sashenka', 2147483647, '3738 Rusk Point', 692183, 72111),
('232780', '2', '2', 'Charil', 2147483647, '72189 Shelley Park', 490597, 67866),
('266111', '38', '38', 'Dee', 2147483647, '4 Swallow Junction', 922179, 96660),
('269734', '39', '39', 'Dukey', 2147483647, '95366 South Lane', 727929, 59269),
('270637', '6', '6', 'Farleigh', 2087411238, '0 Fuller Place', 653503, 56721),
('272057', '24', '24', 'Wilone', 2147483647, '29 Waubesa Point', 236258, 31246),
('293812', '69', '69', 'Kelly', 2147483647, '6 Anderson Lane', 428901, 50618),
('315538', '15', '15', 'Corrie', 2147483647, '01108 Summer Ridge Place', 629598, 40352),
('316905', '37', '37', 'Mickie', 2147483647, '86886 Sutteridge Circle', 176425, 81533),
('320169', '34', '34', 'Harald', 2147483647, '2 Morningstar Street', 447519, 54840),
('326339', '77', '77', 'Keir', 2147483647, '7 Doe Crossing Drive', 343475, 53816),
('328416', '58', '58', 'Janene', 1607628075, '7952 Norway Maple Lane', 259120, 55050),
('343252', '32', '32', 'Hortensia', 2147483647, '42441 Harbort Terrace', 63694, 96916),
('355983', '84', '84', 'Hanson', 2147483647, '0358 Grim Parkway', 760171, 14400),
('356515', '51', '51', 'Jonie', 2147483647, '86995 Forster Road', 444667, 41193),
('362334', '8', '8', 'Bron', 2147483647, '47768 Trailsway Junction', 485078, 85611),
('362969', '4', '4', 'Nat', 2147483647, '09268 Eagan Way', 654818, 56093),
('365887', '98', '98', 'Ashly', 2147483647, '46914 Sauthoff Road', 494965, 61922),
('368524', '14', '14', 'Rhea', 2147483647, '51 Packers Circle', 582272, 66283),
('377215', '64', '64', 'Osbert', 2147483647, '42464 Alpine Way', 355113, 71454),
('386054', '87', '87', 'Bethena', 2147483647, '8168 Center Point', 956294, 26974),
('398935', '95', '95', 'Annice', 2147483647, '4 Homewood Place', 537637, 96033),
('418750', '28', '28', 'Vincenz', 2147483647, '15970 Shoshone Drive', 136157, 94806),
('419071', '80', '80', 'Burke', 1587967150, '7 Delladonna Hill', 625768, 72262),
('434492', '29', '29', 'Margaret', 2147483647, '6 Lake View Lane', 729319, 14828),
('448149', '79', '79', 'Joshuah', 1485172714, '48 Jackson Park', 364086, 21902),
('469614', '19', '19', 'Emmeline', 2147483647, '25305 Manley Lane', 963285, 52764),
('474079', '72', '72', 'Elfreda', 2147483647, '2073 Burrows Drive', 113855, 56511),
('476029', '43', '43', 'Harriett', 1163803296, '91832 Crest Line Road', 664584, 94797),
('480604', '40', '40', 'Darlleen', 2147483647, '26933 Columbus Circle', 396619, 34752),
('486786', '91', '91', 'Yulma', 2147483647, '901 Sommers Pass', 740798, 80188),
('504225', '97', '97', 'Janice', 2147483647, '60211 Raven Pass', 88184, 29047),
('507300', '23', '23', 'Gladys', 2147483647, '938 Anhalt Drive', 563150, 72132),
('511055', '10', '10', 'Muhammad', 2147483647, '9 Waxwing Plaza', 389492, 94400),
('513591', '1', '1', 'Geoffry', 1972416165, '93 Shasta Junction', 271931, 60981),
('514799', '52', '52', 'Aigneis', 2147483647, '9212 Clove Place', 904746, 37588),
('523452', '13', '13', 'Blaine', 2147483647, '76 Warbler Terrace', 901628, 17400),
('531090', '16', '16', 'Evangelina', 2147483647, '069 Scofield Lane', 548299, 31610),
('550471', '61', '61', 'Wyndham', 2147483647, '7 Duke Hill', 990773, 64652),
('553878', '82', '82', 'Luke', 2147483647, '84355 Macpherson Alley', 453520, 10570),
('566374', '71', '71', 'Annamarie', 2147483647, '23 Golf Street', 419442, 86116),
('569623', '36', '36', 'Elmore', 2147483647, '73 Pine View Crossing', 761684, 36806),
('574297', '86', '86', 'Antonino', 1303023597, '947 Continental Terrace', 267503, 24539),
('576212', '94', '94', 'Merrill', 2147483647, '82 Moland Trail', 292031, 99031),
('610787', '83', '83', 'Isadora', 2147483647, '221 Carpenter Parkway', 798972, 54383),
('612185', '47', '47', 'Web', 2147483647, '0319 Manley Circle', 700162, 34138),
('612186', '96', '96', 'Andrus', 2147483647, '28669 Harper Trail', 427892, 26496),
('624348', '67', '67', 'Gert', 2147483647, '38355 Lake View Road', 404512, 70111),
('628053', '57', '57', 'Marwin', 2147483647, '12086 Oneill Way', 245065, 93991),
('637236', '7', '7', 'Gerladina', 2147483647, '89 Golden Leaf Plaza', 652922, 87932),
('640248', '65', '65', 'Gilberta', 2116330859, '9430 Oneill Road', 261467, 49130),
('644019', '45', '45', 'Dar', 2147483647, '630 Pierstorff Trail', 534021, 32874),
('649592', '92', '92', 'Nevile', 2147483647, '8283 Manufacturers Park', 265173, 97356),
('663609', '50', '50', 'Worthington', 2147483647, '145 Browning Hill', 803080, 17972),
('665564', '12', '12', 'Desmond', 2147483647, '2 Northland Way', 583989, 25688),
('667038', '54', '54', 'Bertina', 2147483647, '449 Grayhawk Place', 103749, 79378),
('675318', '73', '73', 'Theda', 2147483647, '8321 2nd Junction', 457788, 22809),
('676885', '9', '9', 'Hester', 2147483647, '061 Hudson Pass', 850787, 44463),
('680752', '22', '22', 'Magda', 2147483647, '67 Surrey Park', 811322, 36892),
('688099', '56', '56', 'Anthony', 2147483647, '7 Elmside Pass', 793355, 50033),
('692113', '100', '100', 'Vite', 2147483647, '38 Rockefeller Hill', 89187, 62685),
('694165', '59', '59', 'Elly', 2147483647, '0265 La Follette Junction', 246940, 59225),
('701612', '55', '55', 'Janos', 2147483647, '992 Sullivan Court', 567620, 41551),
('713583', '53', '53', 'Garvin', 2147483647, '17 Sachs Alley', 559590, 86223),
('717703', '18', '18', 'Gusty', 2147483647, '4750 Loftsgordon Avenue', 779983, 17242),
('725266', '74', '74', 'Abeu', 2147483647, '261 Melvin Road', 552843, 17799),
('731054', '68', '68', 'Seka', 2147483647, '261 Independence Crossing', 486596, 60787),
('734229', '20', '20', 'Tobit', 2147483647, '382 Kinsman Street', 375252, 84139),
('743990', '93', '93', 'Gerry', 2147483647, '5 Grim Trail', 928123, 85248),
('778995', '85', '85', 'Hallsy', 2147483647, '285 Forest Dale Parkway', 55772, 10167),
('781043', '11', '11', 'Moshe', 2147483647, '04137 Kipling Avenue', 912162, 65036),
('793057', '26', '26', 'Briggs', 2147483647, '61198 Roth Trail', 578936, 81032),
('798540', '27', '27', 'Chic', 2147483647, '46102 Grasskamp Street', 185722, 65611),
('808318', '48', '48', 'Gisela', 2147483647, '18 Vernon Place', 460894, 40417),
('832495', '81', '81', 'Ammamaria', 2147483647, '79 Vermont Crossing', 879732, 60550),
('839828', '17', '17', 'Ulrick', 2147483647, '563 Lakewood Hill', 379996, 54287),
('845095', '21', '21', 'Geri', 2147483647, '8 Schlimgen Place', 733143, 94182),
('895737', '42', '42', 'Dilan', 2099882514, '93 Alpine Avenue', 446476, 19433),
('910735', '33', '33', 'Natasha', 2147483647, '56199 Shasta Crossing', 836730, 63308),
('948255', '78', '78', 'Marguerite', 2147483647, '59274 Portage Place', 591566, 84803),
('949041', '89', '89', 'Tristam', 2147483647, '50 Nancy Drive', 213116, 77527),
('962290', '25', '25', 'Katusha', 1837268069, '913 Harbort Parkway', 779074, 23327),
('966902', '60', '60', 'Esme', 2147483647, '54 Heath Crossing', 91201, 63021),
('968090', '41', '41', 'Gayle', 2147483647, '35267 Mandrake Hill', 556942, 22824),
('976843', '30', '30', 'Aubrey', 2147483647, '75708 Rockefeller Pass', 521875, 27139),
('977791', '5', '5', 'Charlton', 2147483647, '98 Forster Place', 76026, 30410),
('994007', '46', '46', 'Wayne', 2147483647, '78806 Toban Alley', 532700, 43099);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiones`
--

CREATE TABLE `camiones` (
  `Matricula` varchar(14) NOT NULL,
  `Modelo` int(10) NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `camiones`
--

INSERT INTO `camiones` (`Matricula`, `Modelo`, `Tipo`) VALUES
('1', 1996, 'Automatico'),
('10', 1992, 'Automatico'),
('100', 2002, 'Standar'),
('11', 2000, 'Automatico'),
('12', 2005, 'Standar'),
('13', 1999, 'Automatico'),
('14', 2006, 'Standar'),
('15', 2012, 'Standar'),
('16', 1998, 'Automatico'),
('17', 1995, 'Standar'),
('18', 1990, 'Automatico'),
('19', 2002, 'Automatico'),
('2', 1993, 'Automatico'),
('20', 2004, 'Standar'),
('21', 2010, 'Automatico'),
('22', 2000, 'Standar'),
('23', 2002, 'Automatico'),
('24', 2011, 'Automatico'),
('25', 1995, 'Standar'),
('26', 1994, 'Standar'),
('27', 1999, 'Standar'),
('28', 2004, 'Standar'),
('29', 2001, 'Automatico'),
('3', 1995, 'Automatico'),
('30', 2010, 'Standar'),
('31', 2008, 'Standar'),
('32', 2006, 'Automatico'),
('33', 1964, 'Automatico'),
('34', 2010, 'Automatico'),
('35', 2001, 'Automatico'),
('36', 2004, 'Automatico'),
('37', 2004, 'Standar'),
('38', 2009, 'Standar'),
('39', 2011, 'Standar'),
('4', 1985, 'Standar'),
('40', 2003, 'Standar'),
('41', 2013, 'Standar'),
('42', 1996, 'Standar'),
('43', 1995, 'Automatico'),
('44', 1992, 'Automatico'),
('45', 2009, 'Standar'),
('46', 2010, 'Standar'),
('47', 1977, 'Automatico'),
('48', 2007, 'Standar'),
('49', 1996, 'Standar'),
('5', 2009, 'Automatico'),
('50', 1988, 'Standar'),
('51', 2002, 'Standar'),
('52', 2009, 'Automatico'),
('53', 2009, 'Standar'),
('54', 2007, 'Standar'),
('55', 2001, 'Standar'),
('56', 1995, 'Standar'),
('57', 2006, 'Standar'),
('58', 1994, 'Standar'),
('59', 1994, 'Automatico'),
('6', 2004, 'Automatico'),
('60', 2003, 'Automatico'),
('61', 2012, 'Standar'),
('62', 2001, 'Standar'),
('63', 1991, 'Automatico'),
('64', 2009, 'Automatico'),
('65', 1995, 'Standar'),
('66', 2010, 'Automatico'),
('67', 1957, 'Automatico'),
('68', 2011, 'Automatico'),
('69', 2012, 'Standar'),
('7', 1967, 'Standar'),
('70', 1987, 'Standar'),
('71', 1987, 'Automatico'),
('72', 2010, 'Standar'),
('73', 1994, 'Standar'),
('74', 1997, 'Automatico'),
('75', 1993, 'Standar'),
('76', 1997, 'Automatico'),
('77', 2009, 'Automatico'),
('78', 2011, 'Standar'),
('79', 2012, 'Standar'),
('8', 2004, 'Standar'),
('80', 2011, 'Standar'),
('81', 2007, 'Standar'),
('82', 1996, 'Standar'),
('83', 1994, 'Automatico'),
('84', 1999, 'Automatico'),
('85', 2006, 'Automatico'),
('86', 2007, 'Automatico'),
('87', 1994, 'Standar'),
('88', 1984, 'Automatico'),
('89', 1993, 'Automatico'),
('9', 1996, 'Standar'),
('90', 2000, 'Standar'),
('91', 1969, 'Standar'),
('92', 2007, 'Automatico'),
('93', 1996, 'Automatico'),
('94', 1996, 'Standar'),
('95', 2005, 'Standar'),
('96', 2008, 'Automatico'),
('97', 1992, 'Automatico'),
('98', 2002, 'Automatico'),
('99', 2013, 'Standar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `Codigo_Paquete` varchar(6) NOT NULL,
  `Codigo_Provincia` varchar(5) NOT NULL,
  `Descripcion` text NOT NULL,
  `Destinatario` varchar(20) NOT NULL,
  `Direccion_Destinatario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paquete`
--

INSERT INTO `paquete` (`Codigo_Paquete`, `Codigo_Provincia`, `Descripcion`, `Destinatario`, `Direccion_Destinatario`) VALUES
('1', '1', 'Grande', 'Guyang', '685'),
('10', '10', 'pequeño', 'Trondheim', '1781'),
('100', '100', 'Mediano', 'Sedan', '0'),
('11', '11', 'Mediano', 'Huibu', '80'),
('12', '12', 'pequeño', 'Tamaulipas', '08'),
('13', '13', 'pequeño', 'Tekstil’shchiki', '174'),
('14', '14', 'pequeño', 'Mesa', '51499'),
('15', '15', 'pequeño', 'Quimbaya', '0254'),
('16', '16', 'pequeño', 'Duran', '9'),
('17', '17', 'Mediano', 'Melaka', '63'),
('18', '18', 'pequeño', 'Manga', '500'),
('19', '19', 'pequeño', 'Budziszewice', '37572'),
('2', '2', 'Mediano', 'Massy', '3'),
('20', '20', 'Mediano', 'Quinchía', '62'),
('21', '21', 'pequeño', 'Río Tercero', '04989'),
('22', '22', 'Mediano', 'Bélel', '51'),
('23', '23', 'Grande', 'Sambilawang', '192'),
('24', '24', 'Grande', 'Puqian', '788'),
('25', '25', 'pequeño', 'Yangsa', '6'),
('26', '26', 'Grande', 'Neftekamsk', '744'),
('27', '27', 'pequeño', 'Raposos', '62370'),
('28', '28', 'Grande', 'Domoni', '003'),
('29', '29', 'Mediano', 'Wonorejo', '951'),
('3', '3', 'Mediano', 'Changshan', '4'),
('30', '30', 'Grande', 'Montilla', '50'),
('31', '31', 'Mediano', 'Kirkland', '90'),
('32', '32', 'Grande', 'Debeljaca', '07'),
('33', '33', 'Grande', 'Hà Tinh', '9333'),
('34', '34', 'pequeño', 'Stockholm', '43'),
('35', '35', 'pequeño', 'Rijeka', '31'),
('36', '36', 'Mediano', 'Krasne', '3'),
('37', '37', 'pequeño', 'Zlotoryja', '7'),
('38', '38', 'Mediano', 'Vlasenica', '330'),
('39', '39', 'pequeño', 'Sävsjö', '9'),
('4', '4', 'pequeño', 'Budapest', '7981'),
('40', '40', 'pequeño', 'Jedlová', '316'),
('41', '41', 'pequeño', 'Bhatpara Abhaynagar', '319'),
('42', '42', 'Mediano', '????? ???????', '0472'),
('43', '43', 'Grande', 'Yinying', '64'),
('44', '44', 'Grande', 'Abaca', '09570'),
('45', '45', 'pequeño', 'Longgang', '2'),
('46', '46', 'Mediano', 'Bayan', '313'),
('47', '47', 'pequeño', 'Jinli', '289'),
('48', '48', 'Mediano', 'Tiko', '637'),
('49', '49', 'pequeño', 'Nahiyat Ghammas', '65433'),
('5', '5', 'pequeño', 'Elx/Elche', '2459'),
('50', '50', 'pequeño', 'Zdovbytsya', '07598'),
('51', '51', 'Grande', 'Tópaga', '4962'),
('52', '52', 'pequeño', 'Sanjwal', '689'),
('53', '53', 'pequeño', 'Ol’ginka', '35446'),
('54', '54', 'Mediano', 'Hongkou', '2549'),
('55', '55', 'Grande', 'København', '77'),
('56', '56', 'Grande', 'Socota', '29'),
('57', '57', 'Grande', 'Trelleborg', '7'),
('58', '58', 'pequeño', 'Fucheng', '1'),
('59', '59', 'Mediano', 'Chita', '4028'),
('6', '6', 'pequeño', 'Konduga', '45'),
('60', '60', 'Mediano', 'Huya', '13061'),
('61', '61', 'Grande', 'Znamenskoye', '3968'),
('62', '62', 'Grande', 'Yanhe', '7'),
('63', '63', 'pequeño', 'La Floresta', '7'),
('64', '64', 'pequeño', 'Lapsze Nizne', '51053'),
('65', '65', 'pequeño', 'Évry', '677'),
('66', '66', 'Mediano', 'Ordóñez', '5409'),
('67', '67', 'Grande', 'Anjirserapat', '1371'),
('68', '68', 'pequeño', 'Krajan Dua Sumbersar', '62'),
('69', '69', 'Mediano', 'Luar', '8521'),
('7', '7', 'pequeño', 'Soutinho', '383'),
('70', '70', 'pequeño', 'Gaurnadi', '80995'),
('71', '71', 'Mediano', 'Pecigrad', '6468'),
('72', '72', 'Grande', 'Burum', '1'),
('73', '73', 'Grande', 'Shahkot', '49'),
('74', '74', 'pequeño', 'Huangtugang', '529'),
('75', '75', 'Mediano', 'Tiandiba', '92'),
('76', '76', 'Grande', 'Storozhnytsya', '81'),
('77', '77', 'Grande', 'Masalovka', '732'),
('78', '78', 'pequeño', 'Vendychany', '92489'),
('79', '79', 'pequeño', 'Kafr ad Dawwar', '34'),
('8', '8', 'Mediano', 'Gonzalo Pizarro', '977'),
('80', '80', 'pequeño', 'Curug', '31'),
('81', '81', 'pequeño', 'Berlin', '97056'),
('82', '82', 'Grande', 'Pakis', '74'),
('83', '83', 'Mediano', 'Ziguinchor', '841'),
('84', '84', 'pequeño', 'Nanfeng', '75297'),
('85', '85', 'Grande', 'Algueirão', '86'),
('86', '86', 'Mediano', 'Ghouazi', '660'),
('87', '87', 'pequeño', 'Além', '9'),
('88', '88', 'Grande', 'Tyumen', '15'),
('89', '89', 'Grande', 'Beicheng', '7'),
('9', '9', 'Mediano', 'Huxiaoqiao', '574'),
('90', '90', 'pequeño', 'Sievi', '9'),
('91', '91', 'Mediano', 'Colonia Yguazú', '9039'),
('92', '92', 'Mediano', 'Bejsce', '89854'),
('93', '93', 'pequeño', 'Sanqu', '220'),
('94', '94', 'Grande', 'Sukamaju', '9827'),
('95', '95', 'Grande', 'Patenongan', '263'),
('96', '96', 'Mediano', 'Afonsoeiro', '08'),
('97', '97', 'Mediano', 'Guanba', '714'),
('98', '98', 'pequeño', 'Kozhevnikovo', '44303'),
('99', '99', 'Grande', 'Mucumpiz', '91');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `Codigo_Provincia` varchar(5) NOT NULL,
  `Nombre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`Codigo_Provincia`, `Nombre`) VALUES
('1', 'Tonghae'),
('10', 'Vokhaïkó'),
('100', 'Fontainebl'),
('11', 'Maicao'),
('12', 'Horten'),
('13', 'Pyshchug'),
('14', 'Marte'),
('15', 'Longmen'),
('16', 'Bella Vist'),
('17', 'Jiulong'),
('18', 'Vitarte'),
('19', 'Balas'),
('2', 'Emmen'),
('20', 'Aradac'),
('21', 'Humaitá'),
('22', 'Paris 19'),
('23', 'Pallisa'),
('24', 'Liyang'),
('25', 'Zheleznovo'),
('26', 'Heicheng'),
('27', 'Saguenay'),
('28', 'San Marcos'),
('29', 'Pont-Audem'),
('3', 'Dalang'),
('30', 'Strelitsa'),
('31', 'Simpang'),
('32', 'Varennes'),
('33', 'Sulo'),
('34', 'Bolkhov'),
('35', 'A? ?il‘'),
('36', 'Matara'),
('37', 'Drammen'),
('38', 'Pribyslav'),
('39', 'Gadon'),
('4', 'Asadabad'),
('40', 'Lugang'),
('41', 'Sibulan'),
('42', 'Deqing'),
('43', 'Cikeper'),
('44', 'Tulay na L'),
('45', 'Puutura'),
('46', 'Sicamous'),
('47', 'Da’anshan'),
('48', 'Sairam'),
('49', 'Mawlamyine'),
('5', 'Smetowo Gr'),
('50', 'Muzidian'),
('51', 'Cherbourg-'),
('52', 'Ijero-Ekit'),
('53', 'Abovyan'),
('54', 'Yuelai'),
('55', 'Shal’skiy'),
('56', 'Shaxi'),
('57', 'Auray'),
('58', 'Oslo'),
('59', 'Beiquan'),
('6', 'Lubao'),
('60', 'Birnin Keb'),
('61', 'Guanzhuang'),
('62', 'Nakanojoma'),
('63', 'La Rochell'),
('64', 'Fengle'),
('65', 'Göteborg'),
('66', 'Yarabamba'),
('67', 'Al Mazar'),
('68', 'Puma'),
('69', 'Huanggu'),
('7', 'Lobanovo'),
('70', 'Sovetsk'),
('71', 'Carangola'),
('72', 'San Juan'),
('73', 'Bum Bum'),
('74', 'Joutseno'),
('75', 'Dera Murad'),
('76', 'Xiaoyan'),
('77', 'Al Mughayy'),
('78', 'Higetegera'),
('79', 'Minami-rin'),
('8', 'Halmstad'),
('80', 'Labuan'),
('81', 'Singapore'),
('82', 'Araguaína'),
('83', 'Västervik'),
('84', 'Libertad'),
('85', 'Kicevo'),
('86', 'Kostyantyn'),
('87', 'Gielniów'),
('88', 'Arjawinang'),
('89', 'El Potrero'),
('9', 'Newark'),
('90', 'Xiaotao'),
('91', 'Saue'),
('92', 'Catujal'),
('93', 'Dianzi'),
('94', 'Mucumpiz'),
('95', 'Yeri'),
('96', 'Vidual'),
('97', 'Iwade'),
('98', 'Debrecen'),
('99', 'Qiandong');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camionero`
--
ALTER TABLE `camionero`
  ADD PRIMARY KEY (`CURP`),
  ADD KEY `Matricula` (`Matricula`),
  ADD KEY `Codigo_Paquete` (`Codigo_Paquete`);

--
-- Indices de la tabla `camiones`
--
ALTER TABLE `camiones`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`Codigo_Paquete`),
  ADD KEY `Codigo_Provincia` (`Codigo_Provincia`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`Codigo_Provincia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camionero`
--
ALTER TABLE `camionero`
  ADD CONSTRAINT `camionero_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `camiones` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `camionero_ibfk_2` FOREIGN KEY (`Codigo_Paquete`) REFERENCES `paquete` (`Codigo_Paquete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD CONSTRAINT `paquete_ibfk_1` FOREIGN KEY (`Codigo_Provincia`) REFERENCES `provincia` (`Codigo_Provincia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
