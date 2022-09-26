-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2022 a las 15:40:50
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'Jurado'),
(2, 'Calificador'),
(3, 'Calificador'),
(4, 'Visualizador'),
(5, 'Calificador'),
(6, 'Jurado'),
(7, 'Jurado'),
(8, 'Visualizador'),
(9, 'Visualizador'),
(10, 'Visualizador'),
(11, 'Visualizador'),
(12, 'Visualizador'),
(13, 'Jurado'),
(14, 'Visualizador'),
(15, 'Calificador'),
(16, 'Calificador'),
(17, 'Visualizador'),
(18, 'Visualizador'),
(19, 'Calificador'),
(20, 'Visualizador'),
(21, 'Calificador'),
(22, 'Visualizador'),
(23, 'Jurado'),
(24, 'Jurado'),
(25, 'Calificador'),
(26, 'Calificador'),
(27, 'Jurado'),
(28, 'Calificador'),
(29, 'Visualizador'),
(30, 'Jurado'),
(31, 'Jurado'),
(32, 'Visualizador'),
(33, 'Jurado'),
(34, 'Calificador'),
(35, 'Jurado'),
(36, 'Calificador'),
(37, 'Visualizador'),
(38, 'Visualizador'),
(39, 'Visualizador'),
(40, 'Jurado'),
(41, 'Visualizador'),
(42, 'Visualizador'),
(43, 'Calificador'),
(44, 'Visualizador'),
(45, 'Visualizador'),
(46, 'Jurado'),
(47, 'Calificador'),
(48, 'Visualizador'),
(49, 'Jurado'),
(50, 'Calificador'),
(51, 'Trencher'),
(52, 'Scraper'),
(53, 'Skid-Steer'),
(54, 'Skid-Steer'),
(55, 'Scraper'),
(56, 'Dump Truck'),
(57, 'Compactor'),
(58, 'Trencher'),
(59, 'Bulldozer'),
(60, 'Excavator'),
(61, 'Grader'),
(62, 'Dragline'),
(63, 'Backhoe'),
(64, 'Scraper'),
(65, 'Excavator'),
(66, 'Grader'),
(67, 'Bulldozer'),
(68, 'Scraper'),
(69, 'Dragline'),
(70, 'Crawler'),
(71, 'Skid-Steer'),
(72, 'Scraper'),
(73, 'Grader'),
(74, 'Bulldozer'),
(75, 'Dump Truck'),
(76, 'Skid-Steer'),
(77, 'Trencher'),
(78, 'Dump Truck'),
(79, 'Excavator'),
(80, 'Dragline'),
(81, 'Dragline'),
(82, 'Compactor'),
(83, 'Backhoe'),
(84, 'Dragline'),
(85, 'Skid-Steer'),
(86, 'Crawler'),
(87, 'Backhoe'),
(88, 'Grader'),
(89, 'Dump Truck'),
(90, 'Grader'),
(91, 'Grader'),
(92, 'Dump Truck'),
(93, 'Dump Truck'),
(94, 'Dragline'),
(95, 'Crawler'),
(96, 'Crawler'),
(97, 'Compactor'),
(98, 'Bulldozer'),
(99, 'Scraper'),
(100, 'Compactor');

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
(1, 1, 'Davon', '6204', 'Juren'),
(2, 2, 'Madelle', '5895', 'Danyang'),
(3, 3, 'Aigneis', '3988', 'Huangzhai'),
(4, 4, 'Naoma', '7547', 'San Francisco'),
(5, 5, 'Angele', '1855', 'Höllviken'),
(6, 6, 'Lisa', '723', 'Donglu'),
(7, 7, 'Jayme', '2482', 'Petrolina de Goiás'),
(8, 8, 'Garrard', '8839', 'Bonik'),
(9, 9, 'Jacinta', '4664', 'Tsagaanchuluut'),
(10, 10, 'Corney', '6922', 'Jawhar'),
(11, 11, 'Jeralee', '8978', 'Matou'),
(12, 12, 'Mickie', '7887', 'Ngorongoro'),
(13, 13, 'Sherie', '1055', 'Líbeznice'),
(14, 14, 'Dewitt', '3442', 'Bondo'),
(15, 15, 'Michael', '4820', 'Zeerust'),
(16, 16, 'Douglas', '9328', 'Almirante'),
(17, 17, 'Lorinda', '7102', 'Baitu'),
(18, 18, 'Madella', '5638', 'Santa Ana'),
(19, 19, 'Gordon', '4341', 'Bến Cầu'),
(20, 20, 'Magdalena', '6534', 'Klavdiyevo-Tarasove'),
(21, 21, 'Matilde', '9019', 'Gurlan'),
(22, 22, 'Cristobal', '2086', 'Lins'),
(23, 23, 'Elwyn', '2104', 'San Diego'),
(24, 24, 'Broddy', '6788', 'Dongshi'),
(25, 25, 'Layton', '4361', 'Donggang'),
(26, 26, 'Fina', '163', 'Černovice'),
(27, 27, 'Theodora', '6833', 'Lipu'),
(28, 28, 'Kelvin', '9740', 'Ćuprija'),
(29, 29, 'Brina', '4946', 'Liuzuo'),
(30, 30, 'Kristan', '7312', 'Gon’ba'),
(31, 31, 'Cherrita', '1080', 'Pontarlier'),
(32, 32, 'Winifred', '4928', 'Jiaotan'),
(33, 33, 'Sidney', '5736', 'Firminy'),
(34, 34, 'Esteban', '3609', 'Beibao'),
(35, 35, 'Kara', '4351', 'Nanaimo'),
(36, 36, 'Allene', '9609', 'Huanipaca'),
(37, 37, 'Clark', '3225', 'Bamusso'),
(38, 38, 'Papagena', '4409', 'Rogowo'),
(39, 39, 'Erminia', '2015', 'Wudabao'),
(40, 40, 'Phedra', '7107', 'Derzhavīnsk'),
(41, 41, 'Domeniga', '3717', 'Ponjen'),
(42, 42, 'Benyamin', '696', 'Novhorod-Sivers’kyy'),
(43, 43, 'Liuka', '806', 'Maniowy'),
(44, 44, 'Aretha', '3358', 'Waxi'),
(45, 45, 'Christophe', '8873', 'Al Wardānīn'),
(46, 46, 'Arlinda', '602', 'Little Rock'),
(47, 47, 'Orelia', '1790', 'Xiaohe'),
(48, 48, 'Francesca', '4509', 'Don Matías'),
(49, 49, 'Elayne', '9106', 'Kukichūō'),
(50, 50, 'Louise', '7304', 'San Pedro Sacatepéqu'),
(51, 51, 'Myrwyn', '77611', 'Lengkeng'),
(52, 52, 'Rockwell', '14621', 'Dacheng'),
(53, 53, 'Ulrikaumeko', '83700', 'Angoulême'),
(54, 54, 'Foster', '23373', 'Oranjestad'),
(55, 55, 'Tyrus', '51020', 'Kalidawir'),
(56, 56, 'Wallas', '87784', 'Krivaja'),
(57, 57, 'Bethena', '94951', 'Pittsburgh'),
(58, 58, 'Sheri', '85213', 'Chengguan'),
(59, 59, 'Red', '55463', 'Portela'),
(60, 60, 'Claudia', '69652', 'Santo Niño'),
(61, 61, 'Sonja', '59670', 'Entebbe'),
(62, 62, 'Curtis', '46772', 'Guararema'),
(63, 63, 'Elias', '65874', 'Dasha'),
(64, 64, 'Kendrick', '31601', 'Sidoger Lebak'),
(65, 65, 'Naoma', '41799', 'Brzeźnica'),
(66, 66, 'Goldia', '16642', 'Kralice na Hané'),
(67, 67, 'Amabelle', '46252', 'Codrington'),
(68, 68, 'Cordie', '28518', 'Zhouling'),
(69, 69, 'Felipa', '29146', 'Xinhe'),
(70, 70, 'Penni', '71767', 'Somdet'),
(71, 71, 'Morris', '68605', 'George Town'),
(72, 72, 'Atlante', '24200', 'Victoria'),
(73, 73, 'Carlie', '43073', 'Buôn Ma Thuột'),
(74, 74, 'Hoebart', '32534', 'Aksarka'),
(75, 75, 'Pandora', '88174', 'Independencia'),
(76, 76, 'Darbie', '46921', 'Pozhang'),
(77, 77, 'Emile', '27739', 'Casalinho'),
(78, 78, 'Kaleb', '30412', 'Culacling'),
(79, 79, 'Terrence', '95438', 'Khoroshëvo-Mnevniki'),
(80, 80, 'Aggie', '40894', 'Bimbo'),
(81, 81, 'Lotty', '23025', 'Haukivuori'),
(82, 82, 'Langsdon', '62527', 'Jiefang'),
(83, 83, 'Elvera', '17922', 'Morelos'),
(84, 84, 'Saudra', '11566', 'Derviçian'),
(85, 85, 'Gustave', '89439', 'Qozonketkan'),
(86, 86, 'Lanita', '55931', 'Qiantang'),
(87, 87, 'Giustina', '58466', 'Santa María Ixhuatán'),
(88, 88, 'Palm', '48787', 'Blinsung'),
(89, 89, 'Gilli', '89279', 'Lárdos'),
(90, 90, 'Archie', '71512', 'Al Mayādīn'),
(91, 91, 'Guenna', '87177', 'Dongjie'),
(92, 92, 'Sonja', '58608', 'Milówka'),
(93, 93, 'Adriaens', '52641', 'Jaru'),
(94, 94, 'Elinor', '86180', 'Hushan'),
(95, 95, 'Bendick', '14976', 'Jingling'),
(96, 96, 'Tiena', '23431', 'La Huerta'),
(97, 97, 'Cherry', '89324', 'Nunguan'),
(98, 98, 'Mike', '82959', 'Dunkerque'),
(99, 99, 'Marcelle', '85277', 'Trondheim'),
(100, 100, 'Page', '87344', 'Shuangzhu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo_deportivo_unico`
--

CREATE TABLE `complejo_deportivo_unico` (
  `Id_Complejo_Deportivo_Unico` int(10) NOT NULL,
  `Id_Complejo_Deportivo` int(10) NOT NULL,
  `Jefe_Organizacion` varchar(20) NOT NULL,
  `Area_Total` varchar(10) NOT NULL,
  `Localizacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `complejo_deportivo_unico`
--

INSERT INTO `complejo_deportivo_unico` (`Id_Complejo_Deportivo_Unico`, `Id_Complejo_Deportivo`, `Jefe_Organizacion`, `Area_Total`, `Localizacion`) VALUES
(1, 1, 'Harlie', '3466', '4534 Ilene Park'),
(2, 2, 'Susi', '4110', '56596 Northport Park'),
(3, 3, 'Sharlene', '1584', '166 Spenser Plaza'),
(4, 4, 'Vivi', '8336', '78225 Park Meadow Pa'),
(5, 5, 'Conrade', '6256', '442 Little Fleur Par'),
(6, 6, 'Cybil', '2093', '2566 Clemons Court'),
(7, 7, 'Ariella', '1039', '377 Rieder Center'),
(8, 8, 'Waring', '7000', '653 Packers Avenue'),
(9, 9, 'Goddart', '3948', '66185 Knutson Trail'),
(10, 10, 'Tadio', '7321', '270 Roxbury Hill'),
(11, 11, 'Nolly', '4124', '9685 Shopko Circle'),
(12, 12, 'Renae', '3049', '15 Red Cloud Crossin'),
(13, 13, 'Hillary', '5595', '0547 Hauk Avenue'),
(14, 14, 'Gerti', '3394', '6278 3rd Center'),
(15, 15, 'Haze', '2564', '516 Oak Park'),
(16, 16, 'Leena', '1301', '45834 Ridgeview Cros'),
(17, 17, 'Odelia', '1334', '4903 La Follette Jun'),
(18, 18, 'Chelsy', '8578', '544 Cascade Street'),
(19, 19, 'Syd', '4674', '64 Drewry Way'),
(20, 20, 'Dorthy', '9936', '01101 Di Loreto Poin'),
(21, 21, 'Alexio', '6450', '19640 Summerview All'),
(22, 22, 'Yule', '5888', '9 Village Terrace'),
(23, 23, 'Obie', '4994', '91 Susan Junction'),
(24, 24, 'Arleen', '1434', '79 Gulseth Terrace'),
(25, 25, 'Kendal', '4134', '05643 Granby Trail'),
(26, 26, 'Marcille', '9181', '5 Thierer Street'),
(27, 27, 'Vlad', '2347', '0289 Spohn Pass'),
(28, 28, 'Riane', '5976', '67 Karstens Hill'),
(29, 29, 'Stanislaw', '8987', '0956 Anniversary Cro'),
(30, 30, 'Kimble', '6011', '00773 Mariners Cove '),
(31, 31, 'Sari', '7267', '58213 Harbort Trail'),
(32, 32, 'Dorice', '8183', '48 Del Sol Drive'),
(33, 33, 'Zebulon', '9456', '3 Helena Court'),
(34, 34, 'Giulia', '6092', '5665 Waubesa Center'),
(35, 35, 'Harrie', '4731', '58 Ridgeway Pass'),
(36, 36, 'Manfred', '6753', '79 Vahlen Road'),
(37, 37, 'Merry', '8650', '74 Amoth Road'),
(38, 38, 'Urbano', '7943', '6 Elka Court'),
(39, 39, 'Filmer', '2805', '11026 Dexter Crossin'),
(40, 40, 'Pasquale', '3992', '393 Dakota Lane'),
(41, 41, 'Star', '851', '338 Doe Crossing Dri'),
(42, 42, 'Keir', '5889', '33841 New Castle Pas'),
(43, 43, 'Charity', '1439', '1 Orin Way'),
(44, 44, 'Flem', '4449', '58 Golden Leaf Alley'),
(45, 45, 'Caspar', '3260', '5 La Follette Park'),
(46, 46, 'Cissy', '8056', '501 Kennedy Center'),
(47, 47, 'Tani', '5226', '66 Cherokee Street'),
(48, 48, 'Heidie', '4289', '50 Waxwing Parkway'),
(49, 49, 'Ginger', '7664', '1207 Brickson Park A'),
(50, 50, 'Gustav', '8721', '0 Laurel Trail'),
(51, 51, 'Clayborne', '82688', 'Mamedkala'),
(52, 52, 'Lilith', '15446', 'Przeworsk'),
(53, 53, 'Jori', '82834', 'Liushun'),
(54, 54, 'Shayne', '34885', 'Jorong Lauk'),
(55, 55, 'Levi', '52883', 'Macroom'),
(56, 56, 'Jacquelynn', '62887', 'Khon San'),
(57, 57, 'Felicity', '50854', 'Baie-Saint-Paul'),
(58, 58, 'Selia', '48013', 'Mačkovec'),
(59, 59, 'Georges', '11513', 'Nanbin'),
(60, 60, 'Ermengarde', '89824', 'Proptisht'),
(61, 61, 'Valdemar', '38927', 'Jinsheng'),
(62, 62, 'Caesar', '48301', 'Sangojar'),
(63, 63, 'Cecily', '90033', 'Shijing'),
(64, 64, 'Izzy', '91719', 'Chelopech'),
(65, 65, 'Shauna', '59034', 'Benito Juarez'),
(66, 66, 'Corabelle', '16011', 'Tancheng'),
(67, 67, 'Fawne', '73389', 'Santa María de Capar'),
(68, 68, 'Winnie', '97690', 'Staré Město'),
(69, 69, 'Davida', '59403', 'Šmarje pri Jelšah'),
(70, 70, 'Kerby', '16726', 'Yaozhou'),
(71, 71, 'Spencer', '50578', 'Cimaragas'),
(72, 72, 'Paolina', '63892', 'Mpulungu'),
(73, 73, 'Blake', '16721', 'Xindian'),
(74, 74, 'Esra', '61047', 'Kagoshima-shi'),
(75, 75, 'Chloette', '14615', 'Roriz'),
(76, 76, 'Mario', '64459', 'Phú Mỹ'),
(77, 77, 'Thorpe', '10907', 'Deauville'),
(78, 78, 'Whitman', '37223', 'Kirovgrad'),
(79, 79, 'Brice', '90690', 'Kobylanka'),
(80, 80, 'Florella', '63538', 'Zapolyarnyy'),
(81, 81, 'Odille', '35241', 'Oslo'),
(82, 82, 'Chanda', '65115', 'Gedian'),
(83, 83, 'Lucy', '53996', 'Xinzhai'),
(84, 84, 'Pattin', '67890', 'Masjid'),
(85, 85, 'Wit', '12851', 'Huacachi'),
(86, 86, 'Guilbert', '35472', 'Dabola'),
(87, 87, 'Ninnetta', '65866', 'Valinhos'),
(88, 88, 'Susann', '43638', 'La Virgen'),
(89, 89, 'Marja', '23728', 'Lavia'),
(90, 90, 'Willetta', '81433', 'Dzaoudzi'),
(91, 91, 'Adria', '26565', 'Leskolovo'),
(92, 92, 'Terrell', '25116', 'Wattala'),
(93, 93, 'Lyda', '54430', 'Xihe'),
(94, 94, 'Chen', '24336', 'Puerto Rico'),
(95, 95, 'Jabez', '46119', 'Alvaro Obregon'),
(96, 96, 'Fabio', '86362', 'Baro Kunda'),
(97, 97, 'Yancy', '47407', 'Almodôvar'),
(98, 98, 'Crystie', '59176', 'Hohhot'),
(99, 99, 'Tedie', '81835', 'Torsby'),
(100, 100, 'Constancy', '84296', 'Reims');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejo_polideportivo`
--

CREATE TABLE `complejo_polideportivo` (
  `Id_Complejo_Polideportivo` int(10) NOT NULL,
  `Id_Complejo_Deportivo` int(10) NOT NULL,
  `Jefe_Organizacion` varchar(20) NOT NULL,
  `Area_Total` varchar(10) NOT NULL,
  `Indicacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `complejo_polideportivo`
--

INSERT INTO `complejo_polideportivo` (`Id_Complejo_Polideportivo`, `Id_Complejo_Deportivo`, `Jefe_Organizacion`, `Area_Total`, `Indicacion`) VALUES
(1, 1, 'Colas', '1696', '6 Lakeland Park'),
(2, 2, 'Bellina', '2334', '4 Veith Trail'),
(3, 3, 'Walther', '1528', '9291 Crowley Alley'),
(4, 4, 'Harlene', '4599', '99346 Arizona Place'),
(5, 5, 'Durante', '8615', '23067 Glendale Pass'),
(6, 6, 'Manny', '3940', '059 Petterle Drive'),
(7, 7, 'Bellina', '1524', '9493 Rutledge Plaza'),
(8, 8, 'Emelita', '7464', '600 Superior Junction'),
(9, 9, 'Jarid', '5518', '2 Corben Plaza'),
(10, 10, 'Mikel', '7487', '8210 Elmside Point'),
(11, 11, 'Jude', '5980', '1 Meadow Ridge Alley'),
(12, 12, 'Corene', '9946', '041 Hazelcrest Park'),
(13, 13, 'Tripp', '3241', '0037 Bluestem Parkway'),
(14, 14, 'Faustina', '5688', '6 Hansons Place'),
(15, 15, 'Anna', '850', '7 Chive Hill'),
(16, 16, 'Buiron', '5567', '1136 Hudson Lane'),
(17, 17, 'Daveta', '9781', '9263 Blue Bill Park Junction'),
(18, 18, 'Alphonso', '2203', '46 Clemons Parkway'),
(19, 19, 'Jarib', '1348', '661 Porter Trail'),
(20, 20, 'Carolyne', '3261', '832 Northfield Plaza'),
(21, 21, 'Opal', '5409', '6 Dryden Drive'),
(22, 22, 'Kendra', '2946', '4715 Parkside Street'),
(23, 23, 'Nikolia', '3270', '53 Meadow Vale Drive'),
(24, 24, 'Abramo', '7753', '89177 Vahlen Junction'),
(25, 25, 'Vannie', '7612', '43 Haas Hill'),
(26, 26, 'Alon', '5324', '797 3rd Drive'),
(27, 27, 'Loreen', '3753', '5 Thierer Trail'),
(28, 28, 'Juditha', '2842', '573 Holmberg Plaza'),
(29, 29, 'Fleming', '4944', '7 Scott Avenue'),
(30, 30, 'Natalie', '9300', '2050 Ridge Oak Street'),
(31, 31, 'Ernesto', '3331', '7 Almo Parkway'),
(32, 32, 'Alphonse', '9327', '86 Harper Court'),
(33, 33, 'Muffin', '8399', '89948 Debra Place'),
(34, 34, 'Suki', '4121', '43 Sauthoff Center'),
(35, 35, 'Kendal', '7611', '6278 Welch Alley'),
(36, 36, 'Sandro', '870', '57 Troy Hill'),
(37, 37, 'Bradney', '9955', '069 Pennsylvania Court'),
(38, 38, 'Jane', '5796', '49474 Anhalt Parkway'),
(39, 39, 'Sheila-kathryn', '8425', '10331 School Avenue'),
(40, 40, 'Penrod', '3322', '72 Rieder Trail'),
(41, 41, 'Letisha', '2612', '3471 Eagle Crest Center'),
(42, 42, 'Darn', '1271', '4350 Duke Park'),
(43, 43, 'Robina', '775', '0320 Homewood Alley'),
(44, 44, 'Valenka', '3976', '7 Fairview Hill'),
(45, 45, 'Eunice', '3059', '1808 Gulseth Park'),
(46, 46, 'Ransell', '501', '0 Lakewood Gardens Avenue'),
(47, 47, 'Lucian', '701', '9 Kinsman Circle'),
(48, 48, 'Roxi', '3243', '08 Luster Terrace'),
(49, 49, 'Micki', '4407', '6787 Fisk Drive'),
(50, 50, 'Arvie', '7153', '0 Gerald Hill'),
(51, 51, 'Odille', '638596', 'Miscellaneous'),
(52, 52, 'Anna-diana', '455974', 'n/a'),
(53, 53, 'Ophelia', '945624', 'n/a'),
(54, 54, 'Batsheva', '828743', 'Consumer Services'),
(55, 55, 'Leanna', '950447', 'Consumer Services'),
(56, 56, 'Jolene', '944358', 'Health Care'),
(57, 57, 'Darb', '624580', 'Technology'),
(58, 58, 'Ciel', '908476', 'Transportation'),
(59, 59, 'Emery', '679765', 'Health Care'),
(60, 60, 'Robb', '157330', 'n/a'),
(61, 61, 'Zackariah', '486963', 'Finance'),
(62, 62, 'Dagny', '872506', 'Technology'),
(63, 63, 'Josi', '400235', 'n/a'),
(64, 64, 'Hulda', '804881', 'Finance'),
(65, 65, 'Suzanna', '790945', 'Health Care'),
(66, 66, 'Olia', '243945', 'Technology'),
(67, 67, 'Reggi', '556477', 'Consumer Non-Durables'),
(68, 68, 'Nicole', '900923', 'Public Utilities'),
(69, 69, 'Nariko', '587917', 'Transportation'),
(70, 70, 'Isabelle', '842271', 'Health Care'),
(71, 71, 'Blondelle', '100536', 'Health Care'),
(72, 72, 'Giustino', '292169', 'Public Utilities'),
(73, 73, 'Courtnay', '939057', 'n/a'),
(74, 74, 'Alphard', '610134', 'Health Care'),
(75, 75, 'Jobey', '678317', 'Energy'),
(76, 76, 'Etienne', '834938', 'n/a'),
(77, 77, 'Brenda', '553937', 'Finance'),
(78, 78, 'Moyra', '146432', 'Health Care'),
(79, 79, 'Myrtie', '933753', 'Consumer Non-Durables'),
(80, 80, 'Rodney', '868499', 'Public Utilities'),
(81, 81, 'Wendeline', '394756', 'Capital Goods'),
(82, 82, 'Ulysses', '356516', 'Basic Industries'),
(83, 83, 'Tiphanie', '73373', 'n/a'),
(84, 84, 'Anestassia', '157435', 'n/a'),
(85, 85, 'Aksel', '872640', 'Consumer Services'),
(86, 86, 'Lexi', '433310', 'Capital Goods'),
(87, 87, 'Janaye', '655273', 'n/a'),
(88, 88, 'Thatch', '304803', 'Capital Goods'),
(89, 89, 'Ted', '625492', 'Technology'),
(90, 90, 'Cori', '719650', 'Health Care'),
(91, 91, 'Quintilla', '789097', 'Miscellaneous'),
(92, 92, 'Antoine', '673234', 'Capital Goods'),
(93, 93, 'Francesco', '605149', 'Consumer Services'),
(94, 94, 'Hadley', '833171', 'Consumer Durables'),
(95, 95, 'Agnella', '110725', 'Finance'),
(96, 96, 'Courtney', '867452', 'Technology'),
(97, 97, 'Pauly', '824638', 'n/a'),
(98, 98, 'Pren', '63189', 'Consumer Services'),
(99, 99, 'Carline', '123782', 'Consumer Services'),
(100, 100, 'Drucill', '618506', 'Finance');

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
(1, 'Bicicleta'),
(2, 'Cascos'),
(3, 'Patines'),
(4, 'Bicicleta'),
(5, 'Pesas'),
(6, 'vendas'),
(7, 'Balones'),
(8, 'Chamarras'),
(9, 'Tenis'),
(10, 'vendas'),
(11, 'Barras'),
(12, 'Tenis'),
(13, 'Cascos'),
(14, 'Bicicleta'),
(15, 'Barras'),
(16, 'Pesas'),
(17, 'Gorros'),
(18, 'Chamarras'),
(19, 'Chamarras'),
(20, 'vendas'),
(21, 'Cascos'),
(22, 'Barras'),
(23, 'Bicicleta'),
(24, 'Aros'),
(25, 'Patines'),
(26, 'Barras'),
(27, 'vendas'),
(28, 'Cascos'),
(29, 'Chamarras'),
(30, 'Bicicleta'),
(31, 'Barras'),
(32, 'Chamarras'),
(33, 'vendas'),
(34, 'Pesas'),
(35, 'Tenis'),
(36, 'Chamarras'),
(37, 'Cascos'),
(38, 'Cascos'),
(39, 'Barras'),
(40, 'Gorros'),
(41, 'Chamarras'),
(42, 'Barras'),
(43, 'Bicicleta'),
(44, 'Bicicleta'),
(45, 'Pesas'),
(46, 'Bicicleta'),
(47, 'Bicicleta'),
(48, 'Tenis'),
(49, 'Pesas'),
(50, 'Cascos'),
(51, 'Plastic'),
(52, 'Plastic'),
(53, 'Plastic'),
(54, 'Glass'),
(55, 'Stone'),
(56, 'Brass'),
(57, 'Granite'),
(58, 'Rubber'),
(59, 'Glass'),
(60, 'Glass'),
(61, 'Rubber'),
(62, 'Granite'),
(63, 'Vinyl'),
(64, 'Brass'),
(65, 'Glass'),
(66, 'Steel'),
(67, 'Steel'),
(68, 'Wood'),
(69, 'Plastic'),
(70, 'Plexiglass'),
(71, 'Rubber'),
(72, 'Plexiglass'),
(73, 'Plexiglass'),
(74, 'Granite'),
(75, 'Brass'),
(76, 'Plexiglass'),
(77, 'Granite'),
(78, 'Vinyl'),
(79, 'Granite'),
(80, 'Brass'),
(81, 'Wood'),
(82, 'Vinyl'),
(83, 'Plexiglass'),
(84, 'Aluminum'),
(85, 'Vinyl'),
(86, 'Glass'),
(87, 'Brass'),
(88, 'Glass'),
(89, 'Rubber'),
(90, 'Vinyl'),
(91, 'Stone'),
(92, 'Aluminum'),
(93, 'Plastic'),
(94, 'Granite'),
(95, 'Steel'),
(96, 'Steel'),
(97, 'Stone'),
(98, 'Plastic'),
(99, 'Plexiglass'),
(100, 'Wood');

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
(1, 1, 1, 1, 'Carlo', '2021-11-25', '04:53:00'),
(2, 2, 2, 2, 'Kippy', '2022-05-09', '11:05:00'),
(3, 3, 3, 3, 'Phineas', '2021-11-01', '02:58:00'),
(4, 4, 4, 4, 'Royall', '2022-06-27', '04:28:00'),
(5, 5, 5, 5, 'Jacinthe', '2022-03-10', '04:45:00'),
(6, 6, 6, 6, 'Bud', '2022-03-12', '09:21:00'),
(7, 7, 7, 7, 'Myra', '2022-01-09', '04:04:00'),
(8, 8, 8, 8, 'Lucas', '2021-11-29', '04:51:00'),
(9, 9, 9, 9, 'Maiga', '2021-12-19', '11:38:00'),
(10, 10, 10, 10, 'Jemima', '2021-07-31', '11:48:00'),
(11, 11, 11, 11, 'Osmund', '2022-01-12', '05:45:00'),
(12, 12, 12, 12, 'Adelbert', '2022-02-02', '02:28:00'),
(13, 13, 13, 13, 'Oberon', '2022-04-23', '05:45:00'),
(14, 14, 14, 14, 'Hermina', '2021-10-23', '05:36:00'),
(15, 15, 15, 15, 'Nichol', '2021-08-17', '11:28:00'),
(16, 16, 16, 16, 'Cecelia', '2022-05-11', '05:03:00'),
(17, 17, 17, 17, 'Theodor', '2022-04-05', '02:09:00'),
(18, 18, 18, 18, 'Crichton', '2022-04-17', '12:12:00'),
(19, 19, 19, 19, 'Iolanthe', '2022-05-29', '12:59:00'),
(20, 20, 20, 20, 'Geri', '2021-09-23', '06:04:00'),
(21, 21, 21, 21, 'Maighdiln', '2022-03-15', '10:25:00'),
(22, 22, 22, 22, 'Manya', '2021-10-06', '06:33:00'),
(23, 23, 23, 23, 'Kate', '2022-01-05', '10:57:00'),
(24, 24, 24, 24, 'Enrique', '2022-01-19', '08:08:00'),
(25, 25, 25, 25, 'Sandor', '2021-11-07', '09:36:00'),
(26, 26, 26, 26, 'Annemarie', '2021-12-17', '04:40:00'),
(27, 27, 27, 27, 'Koral', '2022-04-14', '08:30:00'),
(28, 28, 28, 28, 'Broderic', '2021-12-14', '06:30:00'),
(29, 29, 29, 29, 'Horatia', '2022-05-23', '07:38:00'),
(30, 30, 30, 30, 'Giustino', '2022-01-09', '05:32:00'),
(31, 31, 31, 31, 'Ario', '2022-06-04', '04:53:00'),
(32, 32, 32, 32, 'Jacky', '2022-05-10', '11:35:00'),
(33, 33, 33, 33, 'Cris', '2022-04-27', '10:39:00'),
(34, 34, 34, 34, 'Reinald', '2021-11-22', '02:07:00'),
(35, 35, 35, 35, 'Joey', '2021-11-12', '01:22:00'),
(36, 36, 36, 36, 'Marlene', '2022-07-23', '09:46:00'),
(37, 37, 37, 37, 'Valaree', '2021-12-10', '06:53:00'),
(38, 38, 38, 38, 'Urbain', '2022-02-02', '08:00:00'),
(39, 39, 39, 39, 'Mariann', '2021-10-26', '02:55:00'),
(40, 40, 40, 40, 'Darwin', '2021-11-28', '12:17:00'),
(41, 41, 41, 41, 'Cletus', '2022-02-28', '07:34:00'),
(42, 42, 42, 42, 'Bran', '2021-08-22', '09:31:00'),
(43, 43, 43, 43, 'Erma', '2022-07-20', '03:40:00'),
(44, 44, 44, 44, 'Gerladina', '2021-10-17', '06:07:00'),
(45, 45, 45, 45, 'Karlan', '2021-09-07', '09:21:00'),
(46, 46, 46, 46, 'Floria', '2021-10-13', '07:29:00'),
(47, 47, 47, 47, 'Ardine', '2022-01-24', '05:37:00'),
(48, 48, 48, 48, 'Eduino', '2022-03-04', '04:05:00'),
(49, 49, 49, 49, 'Faber', '2022-03-03', '02:26:00'),
(50, 50, 50, 50, 'Terry', '2022-02-20', '08:43:00'),
(51, 51, 51, 51, 'Rand', '2022-05-14', '15:01:00'),
(52, 52, 52, 52, 'Windham', '2022-01-15', '23:11:00'),
(53, 53, 53, 53, 'Therine', '2021-10-06', '01:02:00'),
(54, 54, 54, 54, 'Ashby', '2022-02-23', '20:29:00'),
(55, 55, 55, 55, 'Noah', '2021-11-26', '12:03:00'),
(56, 56, 56, 56, 'Kendra', '2021-08-11', '13:13:00'),
(57, 57, 57, 57, 'Trixie', '2022-05-08', '09:38:00'),
(58, 58, 58, 58, 'Case', '2022-01-06', '05:23:00'),
(59, 59, 59, 59, 'Ian', '2021-10-19', '20:56:00'),
(60, 60, 60, 60, 'Chiquita', '2022-01-07', '00:43:00'),
(61, 61, 61, 61, 'Sydney', '2021-11-05', '06:46:00'),
(62, 62, 62, 62, 'Biddie', '2021-12-18', '06:32:00'),
(63, 63, 63, 63, 'Dallas', '2022-05-18', '12:52:00'),
(64, 64, 64, 64, 'Barbe', '2022-07-22', '15:24:00'),
(65, 65, 65, 65, 'Briana', '2021-08-09', '04:57:00'),
(66, 66, 66, 66, 'Tobit', '2021-11-06', '13:24:00'),
(67, 67, 67, 67, 'Nichole', '2021-08-21', '03:21:00'),
(68, 68, 68, 68, 'Harv', '2022-01-03', '11:51:00'),
(69, 69, 69, 69, 'Jay', '2022-05-06', '18:24:00'),
(70, 70, 70, 70, 'Rudolf', '2022-05-08', '14:35:00'),
(71, 71, 71, 71, 'Deborah', '2022-03-11', '13:50:00'),
(72, 72, 72, 72, 'Minerva', '2022-04-23', '20:06:00'),
(73, 73, 73, 73, 'Hermy', '2022-07-04', '16:45:00'),
(74, 74, 74, 74, 'Dyana', '2021-11-13', '05:01:00'),
(75, 75, 75, 75, 'Ethan', '2022-04-01', '11:41:00'),
(76, 76, 76, 76, 'Correy', '2022-07-15', '16:44:00'),
(77, 77, 77, 77, 'Brandy', '2021-09-10', '07:05:00'),
(78, 78, 78, 78, 'Janaya', '2021-09-12', '06:33:00'),
(79, 79, 79, 79, 'Julio', '2022-01-11', '11:14:00'),
(80, 80, 80, 80, 'Raychel', '2022-01-05', '21:29:00'),
(81, 81, 81, 81, 'Katherina', '2022-03-26', '13:04:00'),
(82, 82, 82, 82, 'Merell', '2022-04-15', '21:15:00'),
(83, 83, 83, 83, 'Adham', '2021-08-07', '12:23:00'),
(84, 84, 84, 84, 'Faydra', '2022-02-24', '04:22:00'),
(85, 85, 85, 85, 'Vassili', '2021-08-15', '19:29:00'),
(86, 86, 86, 86, 'Erek', '2021-10-24', '23:39:00'),
(87, 87, 87, 87, 'Jenica', '2022-03-06', '23:55:00'),
(88, 88, 88, 88, 'Rickard', '2021-11-13', '01:23:00'),
(89, 89, 89, 89, 'Tomasine', '2022-03-15', '17:33:00'),
(90, 90, 90, 90, 'Dynah', '2021-08-06', '08:19:00'),
(91, 91, 91, 91, 'Ingmar', '2022-03-19', '23:36:00'),
(92, 92, 92, 92, 'Mickie', '2022-06-17', '20:59:00'),
(93, 93, 93, 93, 'Stanfield', '2022-07-18', '08:49:00'),
(94, 94, 94, 94, 'Maurine', '2021-10-07', '07:20:00'),
(95, 95, 95, 95, 'Grata', '2022-07-14', '23:20:00'),
(96, 96, 96, 96, 'Graham', '2022-04-01', '17:25:00'),
(97, 97, 97, 97, 'Jock', '2022-05-07', '07:46:00'),
(98, 98, 98, 98, 'Oliy', '2021-12-09', '20:53:00'),
(99, 99, 99, 99, 'Ettie', '2022-07-17', '03:18:00'),
(100, 100, 100, 100, 'Austin', '2022-05-18', '00:46:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `Id_Mantenimiento` int(10) NOT NULL,
  `Id_Equipamiento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`Id_Mantenimiento`, `Id_Equipamiento`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100);

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
(1, 1, 1, '33360 Utah Road', 33029),
(2, 2, 2, '913 Badeau Place', 30755),
(3, 3, 3, '387 Pepper Wood Terr', 21665),
(4, 4, 4, '9709 Rutledge Court', 22939),
(5, 5, 5, '869 Ludington Plaza', 37668),
(6, 6, 6, '0420 Sugar Circle', 43710),
(7, 7, 7, '560 Bonner Crossing', 48780),
(8, 8, 8, '43 Roth Terrace', 97978),
(9, 9, 9, '090 Tennessee Point', 17589),
(10, 10, 10, '40299 Mariners Cove ', 72530),
(11, 11, 11, '74464 Westport Avenu', 15846),
(12, 12, 12, '91 Burrows Street', 30146),
(13, 13, 13, '5 Meadow Valley Plaz', 70300),
(14, 14, 14, '936 Golf Course Terr', 77176),
(15, 15, 15, '89 Green Ridge Road', 44854),
(16, 16, 16, '9443 Dexter Way', 60600),
(17, 17, 17, '4 Fisk Terrace', 17003),
(18, 18, 18, '82352 Shoshone Circl', 41160),
(19, 19, 19, '4101 Westridge Cente', 93804),
(20, 20, 20, '864 Oak Lane', 89808),
(21, 21, 21, '68 Eastlawn Court', 27409),
(22, 22, 22, '88999 Corry Center', 9450),
(23, 23, 23, '30867 Granby Alley', 27382),
(24, 24, 24, '59 Schurz Crossing', 93621),
(25, 25, 25, '81645 Gateway Alley', 69282),
(26, 26, 26, '16293 Tennyson Plaza', 2237),
(27, 27, 27, '63102 Crescent Oaks ', 24350),
(28, 28, 28, '6 Leroy Plaza', 42876),
(29, 29, 29, '83 Mifflin Street', 97567),
(30, 30, 30, '711 American Terrace', 11925),
(31, 31, 31, '62 Bellgrove Junctio', 10944),
(32, 32, 32, '50 Di Loreto Trail', 76166),
(33, 33, 33, '48 Dryden Road', 22214),
(34, 34, 34, '944 Scott Crossing', 48965),
(35, 35, 35, '78378 Meadow Ridge C', 10121),
(36, 36, 36, '07 Beilfuss Pass', 33561),
(37, 37, 37, '61968 Cherokee Hill', 58141),
(38, 38, 38, '9 Northport Plaza', 9354),
(39, 39, 39, '8 Thompson Alley', 10846),
(40, 40, 40, '05 Menomonie Drive', 6015),
(41, 41, 41, '52638 Kipling Juncti', 40696),
(42, 42, 42, '3 Dahle Road', 39101),
(43, 43, 43, '4316 Schmedeman Plaz', 46094),
(44, 44, 44, '25500 Dixon Center', 69490),
(45, 45, 45, '9933 Ramsey Terrace', 2320),
(46, 46, 46, '55 Cambridge Center', 76803),
(47, 47, 47, '17089 Anhalt Road', 82447),
(48, 48, 48, '2 Porter Drive', 1319),
(49, 49, 49, '7 Sage Drive', 79945),
(50, 50, 50, '9 North Terrace', 2425),
(51, 51, 51, 'Novopokrovka', 65807),
(52, 52, 52, 'Skeldon', 25653),
(53, 53, 53, 'Ambatondrazaka', 87444),
(54, 54, 54, 'Ichuña', 81395),
(55, 55, 55, 'Santa Cruz', 27941),
(56, 56, 56, 'Kayu Agung', 84772),
(57, 57, 57, 'Barrinha', 13226),
(58, 58, 58, 'Loughrea', 13636),
(59, 59, 59, 'Dresden', 85963),
(60, 60, 60, 'Ourozinho', 96744),
(61, 61, 61, 'Poste de Flacq', 98343),
(62, 62, 62, 'Västerås', 22278),
(63, 63, 63, 'Gložan', 26500),
(64, 64, 64, 'Wolanów', 70491),
(65, 65, 65, 'Bjuv', 29159),
(66, 66, 66, 'Kandang Timur', 35372),
(67, 67, 67, 'Kutorejo', 35492),
(68, 68, 68, 'Mīrpur Māthelo', 31290),
(69, 69, 69, 'Datang', 37161),
(70, 70, 70, 'Newbiggin', 85495),
(71, 71, 71, 'Coyah', 78023),
(72, 72, 72, 'Busilak', 2172),
(73, 73, 73, 'Ranisoba', 14662),
(74, 74, 74, 'Kota Bharu', 35080),
(75, 75, 75, 'Rostokino', 16124),
(76, 76, 76, 'Obrera', 59320),
(77, 77, 77, 'Shaykh al Ḩadīd', 83775),
(78, 78, 78, 'San Quintin', 45829),
(79, 79, 79, 'Oslo', 70131),
(80, 80, 80, 'Obong', 41007),
(81, 81, 81, 'Loma Bonita', 11898),
(82, 82, 82, 'Krasnokuts’k', 35175),
(83, 83, 83, 'Jayyūs', 15898),
(84, 84, 84, 'Cần Giờ', 61565),
(85, 85, 85, 'Tam Bình', 6497),
(86, 86, 86, 'Täby', 53837),
(87, 87, 87, 'Rossosh’', 48624),
(88, 88, 88, 'Phon Phisai', 35541),
(89, 89, 89, 'Shajia’ao', 98908),
(90, 90, 90, 'Zwierzyń', 77928),
(91, 91, 91, 'Soldato-Aleksandrovs', 52055),
(92, 92, 92, 'Sylvan Lake', 12041),
(93, 93, 93, 'København', 8316),
(94, 94, 94, 'Jiyang', 6106),
(95, 95, 95, 'Barrosa', 95677),
(96, 96, 96, 'Khonj', 62201),
(97, 97, 97, 'São José', 6905),
(98, 98, 98, 'Fengmu', 8736),
(99, 99, 99, 'Huiqi', 84374),
(100, 100, 100, 'Tosno', 50863);

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
(1, 'Deporte Unico'),
(2, 'Polideportivo'),
(3, 'Polideportivo'),
(4, 'Deporte Unico'),
(5, 'Polideportivo'),
(6, 'Polideportivo'),
(7, 'Polideportivo'),
(8, 'Deporte Unico'),
(9, 'Polideportivo'),
(10, 'Polideportivo'),
(11, 'Deporte Unico'),
(12, 'Polideportivo'),
(13, 'Polideportivo'),
(14, 'Polideportivo'),
(15, 'Polideportivo'),
(16, 'Deporte Unico'),
(17, 'Polideportivo'),
(18, 'Polideportivo'),
(19, 'Polideportivo'),
(20, 'Deporte Unico'),
(21, 'Polideportivo'),
(22, 'Deporte Unico'),
(23, 'Polideportivo'),
(24, 'Deporte Unico'),
(25, 'Deporte Unico'),
(26, 'Deporte Unico'),
(27, 'Deporte Unico'),
(28, 'Polideportivo'),
(29, 'Polideportivo'),
(30, 'Polideportivo'),
(31, 'Deporte Unico'),
(32, 'Polideportivo'),
(33, 'Polideportivo'),
(34, 'Polideportivo'),
(35, 'Polideportivo'),
(36, 'Polideportivo'),
(37, 'Polideportivo'),
(38, 'Polideportivo'),
(39, 'Polideportivo'),
(40, 'Deporte Unico'),
(41, 'Deporte Unico'),
(42, 'Deporte Unico'),
(43, 'Polideportivo'),
(44, 'Polideportivo'),
(45, 'Polideportivo'),
(46, 'Deporte Unico'),
(47, 'Deporte Unico'),
(48, 'Deporte Unico'),
(49, 'Polideportivo'),
(50, 'Deporte Unico'),
(51, 'Lane'),
(52, 'Circle'),
(53, 'Avenue'),
(54, 'Avenue'),
(55, 'Alley'),
(56, 'Center'),
(57, 'Parkway'),
(58, 'Terrace'),
(59, 'Avenue'),
(60, 'Trail'),
(61, 'Parkway'),
(62, 'Park'),
(63, 'Hill'),
(64, 'Way'),
(65, 'Center'),
(66, 'Avenue'),
(67, 'Junction'),
(68, 'Court'),
(69, 'Terrace'),
(70, 'Crossing'),
(71, 'Plaza'),
(72, 'Park'),
(73, 'Center'),
(74, 'Crossing'),
(75, 'Court'),
(76, 'Junction'),
(77, 'Parkway'),
(78, 'Point'),
(79, 'Road'),
(80, 'Park'),
(81, 'Center'),
(82, 'Trail'),
(83, 'Crossing'),
(84, 'Avenue'),
(85, 'Parkway'),
(86, 'Alley'),
(87, 'Drive'),
(88, 'Way'),
(89, 'Place'),
(90, 'Court'),
(91, 'Drive'),
(92, 'Circle'),
(93, 'Pass'),
(94, 'Junction'),
(95, 'Terrace'),
(96, 'Parkway'),
(97, 'Plaza'),
(98, 'Terrace'),
(99, 'Center'),
(100, 'Hill');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comisarios`
--
ALTER TABLE `comisarios`
  ADD PRIMARY KEY (`Id_Comisarios`);

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
  ADD PRIMARY KEY (`Id_Complejo_Deportivo_Unico`),
  ADD KEY `Id_Complejo_Deportivo` (`Id_Complejo_Deportivo`);

--
-- Indices de la tabla `complejo_polideportivo`
--
ALTER TABLE `complejo_polideportivo`
  ADD PRIMARY KEY (`Id_Complejo_Polideportivo`),
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
-- Filtros para la tabla `complejo_polideportivo`
--
ALTER TABLE `complejo_polideportivo`
  ADD CONSTRAINT `complejo_polideportivo_ibfk_1` FOREIGN KEY (`Id_Complejo_Deportivo`) REFERENCES `complejo_deportivo` (`Id_Complejo_Deportivo`) ON DELETE CASCADE ON UPDATE CASCADE;

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
