-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2022 a las 07:39:55
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
-- Base de datos: `agencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencia`
--

CREATE TABLE `agencia` (
  `ID_AGENCIA` int(5) NOT NULL,
  `ID_VUELO` int(5) DEFAULT NULL,
  `ID_HOTEL` int(5) DEFAULT NULL,
  `ID_SUCURSAL` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agencia`
--

INSERT INTO `agencia` (`ID_AGENCIA`, `ID_VUELO`, `ID_HOTEL`, `ID_SUCURSAL`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16),
(17, 17, 17, 17),
(18, 18, 18, 18),
(19, 19, 19, 19),
(20, 20, 20, 20),
(21, 21, 21, 21),
(22, 22, 22, 22),
(23, 23, 23, 23),
(24, 24, 24, 24),
(25, 25, 25, 25),
(26, 26, 26, 26),
(27, 27, 27, 27),
(28, 28, 28, 28),
(29, 29, 29, 29),
(30, 30, 30, 30),
(31, 31, 31, 31),
(32, 32, 32, 32),
(33, 33, 33, 33),
(34, 34, 34, 34),
(35, 35, 35, 35),
(36, 36, 36, 36),
(37, 37, 37, 37),
(38, 38, 38, 38),
(39, 39, 39, 39),
(40, 40, 40, 40),
(41, 41, 41, 41),
(42, 42, 42, 42),
(43, 43, 43, 43),
(44, 44, 44, 44),
(45, 45, 45, 45),
(46, 46, 46, 46),
(47, 47, 47, 47),
(48, 48, 48, 48),
(49, 49, 49, 49),
(50, 50, 50, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `ID_CLASE` int(5) NOT NULL,
  `TIPO` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`ID_CLASE`, `TIPO`) VALUES
(1, 'PRIMERA CLASE'),
(2, 'ECONOMICA'),
(3, 'PRIMERA CLASE'),
(4, 'PRIMERA CLASE'),
(5, 'EMPRESARIAL'),
(6, 'PRIMERA CLASE'),
(7, 'PRIMERA CLASE'),
(8, 'PRIMERA CLASE'),
(9, 'PRIMERA CLASE'),
(10, 'EMPRESARIAL'),
(11, 'ECONOMICA'),
(12, 'PRIMERA CLASE'),
(13, 'ECONOMICA'),
(14, 'ECONOMICA'),
(15, 'PRIMERA CLASE'),
(16, 'ECONOMICA'),
(17, 'EMPRESARIAL'),
(18, 'EMPRESARIAL'),
(19, 'EMPRESARIAL'),
(20, 'EMPRESARIAL'),
(21, 'PRIMERA CLASE'),
(22, 'ECONOMICA'),
(23, 'ECONOMICA'),
(24, 'PRIMERA CLASE'),
(25, 'ECONOMICA'),
(26, 'ECONOMICA'),
(27, 'EMPRESARIAL'),
(28, 'EMPRESARIAL'),
(29, 'ECONOMICA'),
(30, 'EMPRESARIAL'),
(31, 'ECONOMICA'),
(32, 'PRIMERA CLASE'),
(33, 'PRIMERA CLASE'),
(34, 'ECONOMICA'),
(35, 'ECONOMICA'),
(36, 'PRIMERA CLASE'),
(37, 'EMPRESARIAL'),
(38, 'ECONOMICA'),
(39, 'ECONOMICA'),
(40, 'EMPRESARIAL'),
(41, 'PRIMERA CLASE'),
(42, 'ECONOMICA'),
(43, 'ECONOMICA'),
(44, 'PRIMERA CLASE'),
(45, 'PRIMERA CLASE'),
(46, 'PRIMERA CLASE'),
(47, 'PRIMERA CLASE'),
(48, 'ECONOMICA'),
(49, 'PRIMERA CLASE'),
(50, 'EMPRESARIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `CURP` varchar(20) NOT NULL,
  `ID_SUCURSAL` int(5) DEFAULT NULL,
  `ID_AGENCIA` int(5) DEFAULT NULL,
  `NOMBRE` text DEFAULT NULL,
  `APELLIDO` text DEFAULT NULL,
  `TELEFONO` bigint(13) DEFAULT NULL,
  `E_MAIL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`CURP`, `ID_SUCURSAL`, `ID_AGENCIA`, `NOMBRE`, `APELLIDO`, `TELEFONO`, `E_MAIL`) VALUES
('02akHJ6', 14, 14, 'Clarence', 'Pate', 9577146953, 'cpated@woothemes.com'),
('1DpiatZDe', 44, 44, 'Francesca', 'Bazelle', 9275203245, 'fbazelle17@tmall.com'),
('1ETAhvq', 9, 9, 'Banky', 'Redfield', 3428795749, 'bredfield8@redcross.'),
('2523c4u2rAw1', 18, 18, 'Caspar', 'Allicock', 4822942865, 'callicockh@mac.com'),
('31i7jg01BH', 13, 13, 'Myrtle', 'Hrishanok', 7726383053, 'mhrishanokc@gov.uk'),
('47cKuHFPYD9T', 4, 4, 'Arlina', 'Full', 9564170038, 'afull3@boston.com'),
('6bPf8CtBkJ', 22, 22, 'Ambrosio', 'Biaggelli', 5274883159, 'abiaggellil@parallel'),
('6NU6ZmOgQi7A', 1, 1, 'Kai', 'Shaddock', 9178283309, 'kshaddock0@webnode.c'),
('8K98WtIZB61', 37, 37, 'Van', 'Offen', 7844657217, 'voffen10@dion.ne.jp'),
('9KK34cPJNFb4', 23, 23, 'Ashley', 'Mueller', 2529841675, 'amuellerm@apache.org'),
('9Ltljuj', 5, 5, 'Maegan', 'Crabtree', 1624172749, 'mcrabtree4@bbb.org'),
('cChtjB1', 10, 10, 'Huntington', 'Taig', 5041517153, 'htaig9@yandex.ru'),
('CUGH5yT85TL', 47, 47, 'Suzie', 'Ollerton', 5091749805, 'sollerton1a@redcross'),
('DC4sfAsK4n4b', 41, 41, 'Jamil', 'Maggi', 9663966772, 'jmaggi14@seesaa.net'),
('DLILafGf5', 36, 36, 'Gabe', 'Paty', 9565238889, 'gpatyz@mit.edu'),
('ffBPTiVkrTW', 31, 31, 'Rey', 'Mar', 1006452693, 'rmaru@shutterfly.com'),
('GNgniHm0fPnr', 33, 33, 'Quintin', 'Rockell', 3232516114, 'qrockellw@comsenz.co'),
('H6YY50', 38, 38, 'Reeta', 'Elcome', 3058911730, 'relcome11@histats.co'),
('Isy4oO', 8, 8, 'Aurthur', 'Vero', 5347683612, 'avero7@jugem.jp'),
('ivlnhzKGGlx', 29, 29, 'Bradney', 'Randalson', 7163364012, 'brandalsons@google.d'),
('Jhx8PQ', 40, 40, 'Corinne', 'Archbold', 7938212496, 'carchbold13@123-reg.'),
('K3jyRFC4PohY', 25, 25, 'Borden', 'Goldson', 6118736679, 'bgoldsono@forbes.com'),
('kkhk4IO', 49, 49, 'Holly', 'Aldred', 1296942386, 'haldred1c@mtv.com'),
('KKizwaV', 27, 27, 'Esta', 'Bysh', 1989135414, 'ebyshq@elegantthemes'),
('kKrKPzkDq86', 46, 46, 'Aguistin', 'Sissot', 3232078376, 'asissot19@wordpress.'),
('KpBB9US', 19, 19, 'Hyman', 'Condie', 4744188517, 'hcondiei@webs.com'),
('mV56CP', 20, 20, 'Jackie', 'Thowless', 1658628590, 'jthowlessj@home.pl'),
('nBcdgQhY81', 28, 28, 'Hallie', 'Zannotelli', 1262731174, 'hzannotellir@dropbox'),
('niY2nN5', 39, 39, 'Guendolen', 'Tripean', 7241763141, 'gtripean12@nationalg'),
('NqrgOQ', 12, 12, 'Meridith', 'Cockill', 9819316010, 'mcockillb@ehow.com'),
('NRuGtgqgf', 15, 15, 'Gaspard', 'Taberer', 9135739291, 'gtaberere@stanford.e'),
('oXHkdUS', 35, 35, 'Julianna', 'Georgeou', 7817504683, 'jgeorgeouy@wundergro'),
('PHFjTtPVt', 32, 32, 'Helga', 'Skokoe', 2736579564, 'hskokoev@unicef.org'),
('PmdrIXDU1Q', 16, 16, 'Dolorita', 'Lasseter', 4297253660, 'dlasseterf@netvibes.'),
('qBc9Ck7', 3, 3, 'Hermione', 'Shovel', 9757830260, 'hshovel2@fotki.com'),
('rJYxtx86b', 43, 43, 'Hestia', 'Plues', 1508287606, 'hplues16@theguardian'),
('rrEbsHJj6Z', 11, 11, 'Cyndie', 'Saing', 2689557938, 'csainga@opera.com'),
('ttqrbtk', 30, 30, 'Caleb', 'Birbeck', 5503479223, 'cbirbeckt@amazon.co.'),
('uPfe6ldcI5LC', 2, 2, 'Corrie', 'Bonar', 9455296946, 'cbonar1@nasa.gov'),
('V7Gnn0E', 45, 45, 'Gaven', 'McVicar', 9191863327, 'gmcvicar18@indiatime'),
('VCmmZk3RakRN', 42, 42, 'Alfonse', 'Critchlow', 1771542049, 'acritchlow15@nyu.edu'),
('w0DKor2yz', 34, 34, 'Morgen', 'Cossey', 4135799915, 'mcosseyx@comsenz.com'),
('womA7alpY', 17, 17, 'Quillan', 'Kilford', 2791306452, 'qkilfordg@delicious.'),
('xc9y78tx', 21, 21, 'Koo', 'Monsey', 5749592667, 'kmonseyk@illinois.ed'),
('XcbTKI', 7, 7, 'Del', 'Consterdine', 2784961790, 'dconsterdine6@dion.n'),
('Xm81ZGYZ8B', 6, 6, 'Bern', 'Dils', 2632657697, 'bdils5@clickbank.net'),
('Yb3jpXCPu', 24, 24, 'Viviene', 'Landreth', 5428923922, 'vlandrethn@reuters.c'),
('yD1xi2', 50, 50, 'Katharine', 'Tomaszewski', 7394417852, 'ktomaszewski1d@wiley'),
('Yus9uXyrd', 26, 26, 'Bjorn', 'Canacott', 5151756851, 'bcanacottp@ezinearti'),
('ZsH21CIg1', 48, 48, 'Cass', 'Shyres', 5989062356, 'cshyres1b@geocities.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `ID_HOTEL` int(5) NOT NULL,
  `ID_REGIMEN` int(5) DEFAULT NULL,
  `NO_ESTRELLAS` int(5) DEFAULT NULL,
  `FH_SALIDA` datetime DEFAULT NULL,
  `FH_ENTRADA` datetime DEFAULT NULL,
  `NOMBRE` text DEFAULT NULL,
  `DIRECCION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`ID_HOTEL`, `ID_REGIMEN`, `NO_ESTRELLAS`, `FH_SALIDA`, `FH_ENTRADA`, `NOMBRE`, `DIRECCION`) VALUES
(1, 1, 5, '2022-01-15 05:04:19', '2021-09-09 18:57:01', 'Cherianne', '9761 Roth Drive'),
(2, 2, 1, '2022-03-05 04:38:17', '2022-06-21 05:56:16', 'Guthrey', '209 Quincy Terrace'),
(3, 3, 3, '2022-07-08 09:38:24', '2022-05-21 15:32:47', 'Bev', '12 Elka Trail'),
(4, 4, 2, '2022-01-31 09:17:46', '2022-06-02 10:59:30', 'Eada', '9 Havey Terrace'),
(5, 5, 1, '2022-04-22 23:47:57', '2022-04-16 09:14:16', 'Blanca', '59 Golf Alley'),
(6, 6, 1, '2021-07-30 21:07:27', '2022-04-19 02:43:09', 'Marline', '91 Lawn Park'),
(7, 7, 4, '2021-09-13 17:24:02', '2022-07-03 20:14:24', 'Federica', '60091 Corben Place'),
(8, 8, 5, '2022-01-26 15:45:58', '2022-07-07 10:33:47', 'Teodoor', '21 Division Lane'),
(9, 9, 3, '2022-04-22 10:18:30', '2021-08-31 01:38:11', 'Peri', '0 Westerfield Place'),
(10, 10, 5, '2022-04-21 16:03:46', '2022-07-01 21:51:36', 'Neda', '68 Logan Parkway'),
(11, 11, 2, '2021-09-16 13:00:05', '2022-05-26 07:37:07', 'Sabra', '88212 Golf Course Way'),
(12, 12, 1, '2021-08-29 17:53:59', '2022-02-28 09:33:04', 'Cam', '367 Hayes Park'),
(13, 13, 2, '2022-05-06 20:42:34', '2022-02-14 14:24:00', 'Jerry', '36665 Truax Center'),
(14, 14, 3, '2022-04-29 07:55:51', '2021-11-06 05:04:52', 'Kent', '09275 Sutherland Avenue'),
(15, 15, 3, '2021-07-29 13:23:24', '2022-06-16 14:49:49', 'Mufi', '2515 Kedzie Drive'),
(16, 16, 1, '2021-10-09 19:52:17', '2022-04-02 12:25:12', 'Kipp', '85787 Eagan Avenue'),
(17, 17, 1, '2021-12-27 20:08:42', '2021-08-17 17:59:23', 'Giacopo', '2231 Rockefeller Road'),
(18, 18, 2, '2022-02-12 04:49:49', '2021-07-31 16:07:45', 'Claribel', '34 Kingsford Lane'),
(19, 19, 5, '2022-05-05 08:00:10', '2022-04-29 07:58:06', 'Randy', '68847 Texas Crossing'),
(20, 20, 1, '2022-05-15 21:11:11', '2021-12-17 07:36:30', 'Sharia', '2070 Rowland Lane'),
(21, 21, 2, '2022-02-18 02:04:03', '2021-11-16 08:18:38', 'Cordy', '642 Ryan Road'),
(22, 22, 5, '2021-12-28 00:10:51', '2022-06-16 06:04:50', 'Ronald', '004 Coolidge Crossing'),
(23, 23, 5, '2021-10-31 08:29:07', '2021-12-12 18:41:23', 'Osgood', '677 Service Court'),
(24, 24, 2, '2022-02-28 14:42:17', '2021-12-23 15:14:53', 'Gertie', '099 Village Green Way'),
(25, 25, 2, '2021-09-20 06:33:10', '2021-08-10 05:33:27', 'Craggie', '6162 Golf View Place'),
(26, 26, 5, '2021-08-14 16:12:29', '2021-11-08 14:39:55', 'Eldin', '0 Vera Trail'),
(27, 27, 3, '2022-05-04 12:21:25', '2021-12-01 18:34:55', 'Anya', '2 Bultman Center'),
(28, 28, 1, '2022-05-05 22:20:30', '2021-09-10 01:08:25', 'Mallory', '2 Norway Maple Road'),
(29, 29, 3, '2022-07-01 06:26:06', '2022-02-09 18:20:06', 'Irena', '4603 Northfield Point'),
(30, 30, 4, '2021-09-30 21:47:03', '2021-08-26 09:01:32', 'Drusy', '110 International Junction'),
(31, 31, 4, '2022-04-27 09:34:57', '2022-07-26 00:43:23', 'Paton', '3 Montana Pass'),
(32, 32, 4, '2022-05-06 14:03:21', '2021-12-27 15:08:21', 'Georgena', '110 Vermont Drive'),
(33, 33, 1, '2022-07-16 11:27:08', '2021-08-25 01:11:08', 'Ardath', '66065 Portage Alley'),
(34, 34, 2, '2022-04-08 11:58:20', '2021-12-18 12:17:13', 'Pia', '6238 Elmside Way'),
(35, 35, 3, '2021-11-28 06:23:35', '2022-05-26 15:50:10', 'Nicholle', '75 Veith Park'),
(36, 36, 1, '2022-01-31 15:20:15', '2021-11-08 11:12:27', 'Jackelyn', '15957 Texas Place'),
(37, 37, 2, '2022-01-29 04:17:47', '2022-05-31 03:05:31', 'Brinna', '7 Straubel Pass'),
(38, 38, 2, '2022-06-02 19:13:24', '2022-05-09 14:14:34', 'Marlon', '630 Express Place'),
(39, 39, 5, '2022-07-02 04:00:26', '2022-02-06 19:57:05', 'Eduard', '698 Granby Court'),
(40, 40, 5, '2022-06-30 13:47:23', '2022-03-03 19:02:18', 'Red', '21259 Dovetail Pass'),
(41, 41, 1, '2022-04-27 16:02:06', '2021-12-18 02:02:37', 'Wyatan', '6039 Vermont Terrace'),
(42, 42, 1, '2021-12-19 15:55:00', '2021-11-23 00:17:42', 'Catlee', '67193 Schurz Way'),
(43, 43, 4, '2022-07-06 17:19:10', '2021-10-21 15:06:21', 'Hi', '20213 Tony Park'),
(44, 44, 1, '2022-05-21 15:29:16', '2021-07-29 10:29:47', 'Zonda', '3115 Mayer Trail'),
(45, 45, 4, '2022-05-09 13:06:19', '2021-09-21 01:36:57', 'Aluino', '5863 Superior Park'),
(46, 46, 5, '2022-04-18 13:05:48', '2022-02-17 07:41:06', 'Jameson', '72 8th Street'),
(47, 47, 4, '2022-01-14 20:40:37', '2021-10-22 09:22:42', 'Kiel', '2 Spaight Avenue'),
(48, 48, 3, '2022-03-13 08:50:42', '2021-10-05 23:07:07', 'Sandye', '17084 Kim Park'),
(49, 49, 4, '2022-06-27 08:18:25', '2021-10-10 00:37:05', 'Miran', '2731 Myrtle Lane'),
(50, 50, 5, '2021-10-19 04:15:57', '2022-01-30 08:13:11', 'Casandra', '2 Acker Avenue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen`
--

CREATE TABLE `regimen` (
  `ID_REGIMEN` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regimen`
--

INSERT INTO `regimen` (`ID_REGIMEN`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `ID_SUCURSAL` int(5) NOT NULL,
  `ID_AGENCIA` int(5) DEFAULT NULL,
  `DIRECCION` text DEFAULT NULL,
  `PROVINCIA` text DEFAULT NULL,
  `CD` text DEFAULT NULL,
  `TELEFONO` bigint(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`ID_SUCURSAL`, `ID_AGENCIA`, `DIRECCION`, `PROVINCIA`, `CD`, `TELEFONO`) VALUES
(1, 1, '33 Bunting Road', NULL, 'Yangjingziwan', 553),
(2, 2, '17 Bluestem Lane', NULL, 'Kertai', 962),
(3, 3, '63 Montana Lane', NULL, 'Caspisapa', 270),
(4, 4, '8 Anzinger Circle', NULL, 'Belém', 144),
(5, 5, '67 Jenifer Plaza', NULL, 'Vuzenica', 149),
(6, 6, '3158 Basil Park', NULL, 'Dawan', 422),
(7, 7, '0579 Emmet Hill', NULL, 'Tinumpuk', 524),
(8, 8, '3745 Drewry Street', NULL, 'Pongola', 231),
(9, 9, '28257 Delladonna Road', NULL, 'Bagadó', 518),
(10, 10, '777 Linden Street', NULL, 'Jankomir', 844),
(11, 11, '1677 Sommers Road', 'Veracruz Llave', 'Manlio Fabio Altamirano', 729),
(12, 12, '0 Sachs Point', NULL, 'Borovikha', 466),
(13, 13, '9 International Pass', NULL, 'Pavlovka', 448),
(14, 14, '6 Hayes Parkway', 'Norrbotten', 'Kalix', 606),
(15, 15, '542 Dixon Drive', NULL, 'Orzesze', 776),
(16, 16, '38386 Eagle Crest Park', 'Leiria', 'Casal Velho', 970),
(17, 17, '188 Emmet Center', NULL, 'Kętrzyn', 293),
(18, 18, '8966 Thompson Lane', 'Manitoba', 'Morden', 512),
(19, 19, '142 Autumn Leaf Terrace', NULL, 'Belén de Escobar', 909),
(20, 20, '7 Dunning Terrace', NULL, 'Ramat Yishay', 344),
(21, 21, '2290 3rd Way', 'Lorraine', 'Nancy', 502),
(22, 22, '7 Ramsey Way', 'Kuala Lumpur', 'Kuala Lumpur', 642),
(23, 23, '68802 Bowman Court', NULL, 'Bhamdoûn el Mhatta', 852),
(24, 24, '9 Anniversary Road', NULL, 'Samdrup Jongkhar', 680),
(25, 25, '51 Monica Road', NULL, 'Kulpin', 383),
(26, 26, '68195 Maywood Crossing', NULL, 'Aţ Ţawīlah', 434),
(27, 27, '013 Larry Junction', NULL, 'Tianshan', 497),
(28, 28, '96986 Heffernan Court', NULL, 'Demba', 260),
(29, 29, '186 Sage Terrace', NULL, 'Kołczygłowy', 786),
(30, 30, '50 Harbort Circle', 'Gotland', 'Visby', 793),
(31, 31, '2037 Thompson Hill', 'Norrbotten', 'Kalix', 494),
(32, 32, '982 Rusk Court', NULL, 'Otun', 316),
(33, 33, '80729 Briar Crest Point', NULL, 'Kisesa', 232),
(34, 34, '9 Drewry Place', NULL, 'Qīr Moāv', 432),
(35, 35, '1874 Gulseth Avenue', NULL, 'Qingyang', 840),
(36, 36, '51 Bayside Park', NULL, 'Cabangahan', 214),
(37, 37, '3656 Quincy Road', NULL, 'Drien Rampak', 100),
(38, 38, '2 Meadow Vale Plaza', NULL, 'Manutapen', 814),
(39, 39, '1022 Karstens Hill', NULL, 'Dushi', 991),
(40, 40, '69021 Brentwood Parkway', 'Porto', 'Duas Igrejas', 152),
(41, 41, '81849 Eastwood Road', NULL, 'Yantak', 832),
(42, 42, '986 Brown Place', NULL, 'Thị Trấn Lâm', 190),
(43, 43, '6 Hagan Place', NULL, 'Ambatofinandrahana', 164),
(44, 44, '6885 Comanche Pass', NULL, 'Tumu’ertai', 641),
(45, 45, '123 Florence Hill', NULL, 'President Roxas', 937),
(46, 46, '68865 Carpenter Street', NULL, 'Beitai', 505),
(47, 47, '47 Loeprich Trail', NULL, 'El Cortezo', 603),
(48, 48, '8 Mendota Street', NULL, 'Ochakovo-Matveyevskoye', 570),
(49, 49, '8 Pierstorff Center', 'Norrbotten', 'Luleå', 330),
(50, 50, '25 Service Way', NULL, 'Triesenberg', 926);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `ID_VUELO` int(5) NOT NULL,
  `ID_CLASE` int(5) DEFAULT NULL,
  `FH_SALIDA` datetime DEFAULT NULL,
  `FH_LLEGADA` datetime DEFAULT NULL,
  `ORIGEN` text DEFAULT NULL,
  `DESTINO` text DEFAULT NULL,
  `NO_PLAZAS` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`ID_VUELO`, `ID_CLASE`, `FH_SALIDA`, `FH_LLEGADA`, `ORIGEN`, `DESTINO`, `NO_PLAZAS`) VALUES
(1, 1, '2021-11-05 20:51:10', '2022-04-08 23:52:14', 'Tripoli', 'Asamboka', 273),
(2, 2, '2022-03-03 16:07:37', '2022-06-01 20:52:18', 'Dalududalu', 'Stupari', 168),
(3, 3, '2021-09-13 09:41:34', '2021-10-09 06:18:38', 'Ivanec', 'Bungsuan', 469),
(4, 4, '2022-03-26 09:24:55', '2022-05-26 02:27:05', 'Guanyinsi', 'Birsa', 481),
(5, 5, '2022-03-27 07:06:05', '2022-01-28 17:34:08', 'Pingya', 'Salamnunggal', 491),
(6, 6, '2022-01-28 01:49:10', '2021-10-05 22:08:05', 'Sadská', 'Icononzo', 457),
(7, 7, '2022-02-13 01:33:13', '2021-11-04 16:34:10', 'Dzuunmod', 'Jefferson City', 325),
(8, 8, '2021-11-23 20:43:19', '2021-08-13 05:43:30', 'Karang Tengah', 'Ferreira do Alentejo', 322),
(9, 9, '2021-10-02 01:03:14', '2022-04-13 00:51:14', 'Rominimbang', 'Bejsce', 430),
(10, 10, '2021-11-07 04:25:09', '2022-04-16 20:50:53', 'Sumberagung', 'Gualán', 290),
(11, 11, '2022-06-21 11:56:13', '2022-05-29 09:42:07', 'Sarvābād', 'Buzhakan', 220),
(12, 12, '2021-09-03 08:01:37', '2021-12-17 17:06:09', 'Lyubashivka', 'Emiliano Zapata', 307),
(13, 13, '2022-04-07 08:45:11', '2021-12-26 16:55:34', 'Ribeirão Preto', 'Krajan Jamprong', 426),
(14, 14, '2022-03-17 08:12:47', '2022-01-07 00:19:43', 'Helsingborg', 'Karanganyar', 129),
(15, 15, '2022-05-05 12:17:17', '2021-11-18 00:54:00', 'Palopat', 'Kepel', 276),
(16, 16, '2021-12-29 16:53:02', '2021-10-29 09:29:28', 'Lomintsevskiy', 'Umm as Summāq', 103),
(17, 17, '2021-08-18 22:01:53', '2021-09-02 04:08:00', 'Tagasilay', 'Huari', 450),
(18, 18, '2021-10-20 18:50:10', '2021-10-17 10:20:50', 'Nancha', 'Xinhe', 407),
(19, 19, '2021-08-24 00:53:33', '2021-10-16 13:06:12', 'Świnna', 'Guanabacoa', 205),
(20, 20, '2021-08-02 09:38:21', '2022-06-02 07:34:06', 'Xiushan', 'Magan', 207),
(21, 21, '2021-10-12 05:58:28', '2021-11-17 13:47:27', 'Kawasaki', 'Shahbā', 306),
(22, 22, '2022-01-16 15:13:59', '2021-08-15 02:40:10', 'Niandou', 'Ubatuba', 486),
(23, 23, '2022-02-20 03:55:24', '2022-03-27 06:51:57', 'Sambogunung', 'Bébédja', 355),
(24, 24, '2022-04-01 11:52:28', '2021-08-11 04:17:35', 'Liuji', 'Nzega', 120),
(25, 25, '2022-02-05 12:55:10', '2022-06-03 19:12:39', 'Bailiang', 'Makueni', 291),
(26, 26, '2022-07-18 20:28:59', '2021-10-13 10:09:04', 'Agbannawag', 'Sandwīp', 425),
(27, 27, '2021-12-15 20:25:05', '2022-01-01 13:39:49', 'Humble', 'Pittsburgh', 373),
(28, 28, '2022-05-21 13:29:10', '2022-02-05 05:06:58', 'Kadujajar', 'Yanmenkou', 331),
(29, 29, '2021-12-08 00:21:55', '2021-12-16 06:30:04', 'Bowang', 'Topdac', 206),
(30, 30, '2021-09-09 11:03:50', '2022-01-10 08:12:26', 'Mawa', 'Wodzisław Śląski', 391),
(31, 31, '2022-01-19 02:43:35', '2022-07-17 11:34:43', 'Tsowkêy', 'Repušnica', 321),
(32, 32, '2022-04-21 23:18:51', '2022-03-23 03:22:24', 'Naval', 'El Retorno', 359),
(33, 33, '2022-03-14 04:16:19', '2021-09-19 04:24:48', 'Richard-Toll', 'Xekar', 155),
(34, 34, '2021-12-27 14:13:05', '2022-04-11 23:21:40', 'Xianyi', 'Quatre Bornes', 165),
(35, 35, '2021-08-28 18:26:53', '2022-03-07 01:57:18', 'Lenger', 'Chimbas', 377),
(36, 36, '2022-01-19 16:52:37', '2022-07-19 08:44:08', 'Aracruz', 'Shimokizukuri', 303),
(37, 37, '2021-08-17 21:35:08', '2022-04-17 23:33:31', 'Hacıhüseynli', 'Sumber', 265),
(38, 38, '2021-11-22 13:25:45', '2021-09-30 04:23:08', 'Bilhó', 'Bol', 161),
(39, 39, '2021-08-01 09:58:28', '2022-07-14 21:08:33', 'Neya', 'Dodol', 468),
(40, 40, '2021-09-15 22:39:02', '2021-10-23 09:49:44', 'Cukanguncal', 'Lālmohan', 356),
(41, 41, '2022-05-26 19:28:12', '2022-01-02 22:56:10', 'Gandu', 'Asopía', 361),
(42, 42, '2021-10-09 01:18:21', '2021-11-10 21:09:35', 'Vilufushi', 'Jiukou', 434),
(43, 43, '2021-12-18 22:09:33', '2022-06-04 18:23:00', 'Lucé', 'Yŏnggwang-ŭp', 148),
(44, 44, '2022-04-24 20:01:28', '2022-05-19 09:14:22', 'Ust’-Koksa', 'Kalkara', 126),
(45, 45, '2022-06-27 14:05:32', '2021-08-31 09:33:45', 'Mancogeh', 'Zavitinsk', 451),
(46, 46, '2021-08-20 03:38:26', '2022-03-11 05:03:04', 'Krajan Battal', 'München', 155),
(47, 47, '2021-10-11 12:13:50', '2022-05-25 12:54:25', 'Nice', 'Suchy Dąb', 259),
(48, 48, '2022-06-02 10:22:57', '2022-06-08 05:37:05', 'Jakubów', 'Lubichowo', 146),
(49, 49, '2022-03-29 23:32:33', '2021-10-23 05:43:13', 'Sophia Antipolis', 'Haolibao', 224),
(50, 50, '2022-07-22 15:22:02', '2021-09-10 12:39:17', 'Gyumri', 'Auriflama', 338);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agencia`
--
ALTER TABLE `agencia`
  ADD PRIMARY KEY (`ID_AGENCIA`),
  ADD UNIQUE KEY `VUELO` (`ID_VUELO`),
  ADD UNIQUE KEY `HOTEL` (`ID_HOTEL`),
  ADD UNIQUE KEY `SUCURSAL` (`ID_SUCURSAL`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`ID_CLASE`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CURP`),
  ADD UNIQUE KEY `AGENCIA` (`ID_AGENCIA`),
  ADD KEY `ID_SUCURSAL` (`ID_SUCURSAL`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`ID_HOTEL`),
  ADD UNIQUE KEY `REGIMEN` (`ID_REGIMEN`);

--
-- Indices de la tabla `regimen`
--
ALTER TABLE `regimen`
  ADD PRIMARY KEY (`ID_REGIMEN`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`ID_SUCURSAL`),
  ADD UNIQUE KEY `AGENCIA` (`ID_AGENCIA`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`ID_VUELO`),
  ADD UNIQUE KEY `CLASE` (`ID_CLASE`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agencia`
--
ALTER TABLE `agencia`
  ADD CONSTRAINT `agencia_ibfk_1` FOREIGN KEY (`ID_VUELO`) REFERENCES `vuelo` (`ID_VUELO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agencia_ibfk_2` FOREIGN KEY (`ID_HOTEL`) REFERENCES `hotel` (`ID_HOTEL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agencia_ibfk_3` FOREIGN KEY (`ID_SUCURSAL`) REFERENCES `sucursal` (`ID_SUCURSAL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_SUCURSAL`) REFERENCES `sucursal` (`ID_SUCURSAL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`ID_REGIMEN`) REFERENCES `regimen` (`ID_REGIMEN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD CONSTRAINT `vuelo_ibfk_1` FOREIGN KEY (`ID_CLASE`) REFERENCES `clase` (`ID_CLASE`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
