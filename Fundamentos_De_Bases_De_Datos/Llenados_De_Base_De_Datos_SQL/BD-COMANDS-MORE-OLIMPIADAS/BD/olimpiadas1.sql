-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2022 a las 07:42:19
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
-- Base de datos: `olimpiadas1`
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
(50, 'Calificador');

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
(50, 50, 'Louise', '7304', 'San Pedro Sacatepéqu');

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
(50, 50, 'Gustav', '8721', '0 Laurel Trail');

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
(50, 50, 'Arvie', '7153', '0 Gerald Hill');

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
(50, 'Cascos');

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
(50, 50, 50, 50, 'Terry', '2022-02-20', '08:43:00');

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
(50, 50);

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
(50, 50, 50, '9 North Terrace', 2425);

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
(50, 'Deporte Unico');

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
