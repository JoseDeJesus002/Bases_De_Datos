-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2022 a las 17:53:18
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
-- Base de datos: `eventoscompleta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animador`
--

CREATE TABLE `animador` (
  `CODIGO_ANIMADOR` int(5) NOT NULL,
  `MODELO_DISFRAZ` varchar(20) DEFAULT NULL,
  `APELLIDO` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `animador`
--

INSERT INTO `animador` (`CODIGO_ANIMADOR`, `MODELO_DISFRAZ`, `APELLIDO`) VALUES
(7, '7', 'McAughtry'),
(12, '12', 'Smullen'),
(13, '13', 'Pinnere'),
(15, '15', 'Stile'),
(17, '17', 'Kewzick'),
(25, '25', 'Goodrich'),
(40, '40', 'Amber'),
(46, '46', 'Zotto'),
(49, '49', 'Clemencet'),
(51, '51', 'Hagston'),
(59, '59', 'Scrace'),
(64, '64', 'Comport'),
(72, '72', 'Sharnock'),
(76, '76', 'Heathorn'),
(80, '80', 'Blasing'),
(88, '88', 'Eite'),
(92, '92', 'Errigo'),
(99, '99', 'De Michele'),
(1162, '1162', 'Broxup'),
(1923, 'ROBY11', 'MELLY'),
(2131, '2131', 'Clemas'),
(2835, '2835', 'Smalley'),
(5037, '5037', 'Sutliff'),
(6908, '6908', 'Armatidge'),
(8074, '8074', 'Hicklingbottom'),
(8642, 'LANGOSTA9', 'DURAN'),
(9112, '9112', 'Olufsen'),
(9764, 'POO9', 'CASTRO'),
(9876, 'CABALLO10', 'GUTIERREZ'),
(10293, 'BIMO10', 'MELMAN'),
(10298, 'MELMAN9', 'YORCH'),
(12345, 'VACA10', 'MENDEZ'),
(12457, 'OSO18', 'GARCIA'),
(13467, 'NINJA8', 'MATEOS'),
(13579, 'GATO8', 'GALDO'),
(23568, 'ROBOT8', 'FERNANDEZ'),
(24578, 'MARIO11', 'LUNA'),
(24680, 'POLLO14', 'DUARTE'),
(29384, 'SCOOBY12', 'MAY'),
(34679, 'TORTUGA12', 'SEGUNDO'),
(35689, 'ROSHI13', 'MARGARITA'),
(45780, 'KOALA11', 'MANZANARES'),
(46790, 'FOX13', 'MARCH'),
(54321, 'PERRO8', 'MORALEZ'),
(67890, 'BURRO12', 'JIMENEZ'),
(76431, 'RALF10', 'DURANGO'),
(83745, 'SUPERMAN9', 'CHEMA'),
(87542, 'SIMI14', 'DURAN'),
(92834, 'BATMAN10', 'CHARK'),
(97531, 'CARRO10', 'MARTE'),
(12374890, 'Toy Story_01', 'Willoway'),
(12374900, 'Toy Story_02', 'Gouldeby'),
(12374910, 'Toy Story_03', 'Glew'),
(12374920, 'Cars_01', 'Nornable'),
(12374930, 'Cars_02', 'Vasenkov'),
(12374940, 'Cars_3', 'Questier'),
(12374950, 'Duende_01', 'McCrorie'),
(12374960, 'Duende_02', 'Strother'),
(12374970, 'Blanca_Nieves_01', 'Mound'),
(12374980, 'Duermiente_01', 'Rigney'),
(12374990, 'Bunny_01', 'Breslane'),
(12375000, 'Bunny_02', 'Frisdick'),
(12375010, 'Bunny', 'Rutigliano'),
(12375020, 'Halo_01', 'Gutridge'),
(12375030, 'Halo_02', 'Foye'),
(12375040, 'Fruta_01', 'Tipping'),
(12375050, 'Fruta_02', 'Craigg'),
(12375060, 'Fruta_03', 'Tenaunt'),
(12375070, 'Fruta_04', 'Culvey'),
(12375080, 'Fruta_05', 'Ibbott'),
(12375090, 'Batman_01', 'Keford'),
(12375100, 'Batman_02', 'Kensy'),
(12375110, 'Jurassic_01', 'Wardrop'),
(12375120, 'Jurassic_02', 'Sloper'),
(12375130, 'Alien_01', 'Full'),
(12375140, 'Animals_01', 'Willows'),
(12375150, 'Animals_02', 'Huthart'),
(12375160, 'Animals_03', 'Schiefersten'),
(12375170, 'Animals_04', 'Allington'),
(12375180, 'Animals_05', 'Bernhart'),
(12375190, 'Star_01', 'Feeley'),
(12375200, 'Star_02', 'Domelow'),
(12375210, 'Terror_01', 'Karpets'),
(12375220, 'Terror_02', 'Fosh'),
(12375230, 'Profesion_01', 'Kellick'),
(12375240, 'Profession_02', 'Saunton'),
(12375250, 'Profesion_03', 'Skotcher'),
(12375260, 'Profesion_04', 'Forrestill'),
(12375270, 'Profesion_05', 'Grigoriev'),
(12375280, 'Prissioner_01', 'Eakly'),
(12375290, 'Animals_06', 'Dungay'),
(12375300, 'Person_01', 'Pache'),
(12375310, 'Star_03', 'Mepham'),
(12375320, 'Marvel_01', 'Flann'),
(12375330, 'Marvel_02', 'Eckford'),
(12375340, 'Marvel_03', 'Sheaf'),
(12375350, 'Marvel_04', 'Scarre'),
(12375360, 'Marvel_05', 'Bowick'),
(12375370, 'Marvel_06', 'Hannah'),
(12375380, 'Marvel_07', 'Bendelow');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLIENTE` int(5) NOT NULL,
  `NOMBRE` text DEFAULT NULL,
  `APELLIDO` text DEFAULT NULL,
  `DOMICILIO` text DEFAULT NULL,
  `TELEFONO` bigint(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_CLIENTE`, `NOMBRE`, `APELLIDO`, `DOMICILIO`, `TELEFONO`) VALUES
(117, 'Reider', 'Olivelli', '8230 Di Loreto Street', 5579661574),
(123, 'Lizabeth', 'Giovanitti', '03 Moose Crossing', 7448450291),
(145, 'Hillery', 'Vallintine', '54 Oakridge Avenue', 3316387933),
(180, 'Maddie', 'Dadley', '21 Westend Way', 1024208082),
(255, 'Tuesday', 'Jori', '273 Reindahl Center', 1678604749),
(345, 'Harley', 'Ferry', '471 Vera Point', 7321455048),
(359, 'Aubine', 'Behnen', '49 Sundown Center', 5663435560),
(385, 'Hailey', 'Hierro', '30 Summit Pass', 3963495212),
(452, 'Zabrina', 'Beniesh', '6405 Sheridan Place', 1080888165),
(482, 'Job', 'Astle', '3 Meadow Vale Park', 1529345923),
(525, 'Timmie', 'Wingeatt', '69465 Laurel Crossing', 4198075975),
(528, 'Sibilla', 'Braim', '2 Transport Lane', 2343848397),
(530, 'Donella', 'Fawdery', '37255 Holmberg Park', 2095515070),
(570, 'Nikolia', 'Origan', '699 Badeau Avenue', 3454167628),
(599, 'Byrann', 'Tatters', '3144 Kedzie Parkway', 8850390690),
(632, 'Siffre', 'Meagher', '93 Iowa Place', 8454424050),
(643, 'Rockwell', 'Wevell', '205 Hoard Pass', 8743049542),
(681, 'Dayle', 'Terran', '1683 Glendale Parkway', 5699010453),
(744, 'Gaelan', 'Egel', '42169 Mccormick Alley', 9141855948),
(767, 'Robert', 'Moens', '1450 Gina Junction', 6683621690),
(769, 'Annmarie', 'Scudamore', '1846 Birchwood Drive', 5668142453),
(775, 'Aviva', 'Hryskiewicz', '310 Manitowish Street', 7388262959),
(795, 'Augustine', 'Vallentin', '98 Declaration Trail', 2355495679),
(893, 'Lilian', 'Larwell', '492 Welch Lane', 9445141038),
(977, 'Winston', 'Convery', '94 High Crossing Hill', 1175183457),
(1923, 'BIEL', 'ANDA', 'Vall Castañeda', 2709304628),
(8642, 'HUGO', 'MARTINEZ', 'La Cisneros del Mirador', 546184633),
(9764, 'MARTIN', 'MORAL', 'Esquivel de Arriba', 3281135836),
(9876, 'YARELY', 'CARRERA', 'Berrios de Arriba', 5514543757),
(10293, 'MAR', 'ALMOTE', 'O Ozuna', 2724642458),
(10298, 'ANDRES', 'PARTIDA', 'Vall Escudero de Lemos', 2706027285),
(12345, 'JUAN', 'PEREZ', 'Villa Orellana de Ulla', 5520384637),
(12457, 'ERICK', 'SORIA', 'Vall Valadez Baja', 3254628547),
(13467, 'NOE', 'PULIDO', 'Vall Ortiz', 1228614487),
(13579, 'PONCHO', 'CORNEJO', 'El Salcido del Pozo', 5515473945),
(23568, 'ALMA', 'MARCELA', 'As Oliva', 3242269635),
(24578, 'MELISA', 'FRANK', 'Vall Monte', 1284246907),
(24680, 'ANA', 'RELLY', 'Lake Carmelaport', 521345343),
(29384, 'SERGIO', 'GERMAN', 'El Alonso de Ulla', 2709872728),
(34679, 'GEMA', 'MARCK', 'L Muñoz', 3342368630),
(35689, 'MIEL', 'CARRASCO', 'As Armijo', 2822578490),
(45780, 'LUCA', 'ZARATE', 'Hurtado de Arriba', 3328616379),
(46790, 'DAVID', 'MEJIA', 'Los Arevalo Medio', 2878414085),
(54321, 'PEDRO', 'GOMEZ', 'Gaytan de la Sierra', 5523578467),
(67890, 'LOLA', 'GARCIA', 'As Armijo', 5524745767),
(76431, 'ENRIQUE', 'ROX', 'Vall Valentin de San Pedro', 2628598018),
(83745, 'NILA', 'BURGO', 'Batista del Pozo', 2932490628),
(87542, 'MARIO', 'VALENCIA', 'Esquivel de Arriba', 3258981358),
(92834, 'LEO', 'LAZARO', 'O Arias del Pozo', 9324769258),
(97531, 'FRANCISCO', 'OTERO', 'A Briones', 5244154723),
(100000, 'Alejandra', 'Costell', '10 Farmco Lane', 5585979660),
(100010, 'Carol-jean', 'Archibald', '71414 Mosinee Road', 5513160380),
(100020, 'Boot', 'Tomkins', '26610 Sundown Hill', 5582354758),
(100030, 'Errick', 'LLelweln', '73 Wayridge Point', 5573625198),
(100040, 'Boonie', 'Dufoure', '6844 Fremont Drive', 558273921245),
(100050, 'Alexandra', 'Stagg', '40169 Arkansas Park', 5565734892),
(100060, 'Eula', 'McElrath', '21722 Lakeland Alley', 5537465095),
(100070, 'Olimpia', 'Strachan', '01 Bay Way', 556730934582),
(100080, 'Nonnah', 'Lundie', '32257 Southridge Park', 5565849034),
(100090, 'Wendeline', 'Petric', '40221 Commercial Terrace', 55647395480),
(100100, 'Kaine', 'Vasyutin', '7972 Little Fleur Road', 5587908354),
(100110, 'Cloe', 'Carlisi', '23197 Bartillon Trail', 5538490123),
(100120, 'Nick', 'Gue', '83416 Hanover Way', 5587401292367),
(100130, 'Robinia', 'Reddoch', '68831 Thackeray Way', 5587302957),
(100140, 'Zenia', 'Daykin', '5176 Orin Road', 5569709253),
(100150, 'Kaile', 'Casero', '3104 Laurel Junction', 5578921465),
(100160, 'Kylynn', 'Child', '2429 Aberg Trail', 5596830265),
(100170, 'Evelyn', 'Brigshaw', '7 Burning Wood Terrace', 5586930253),
(100180, 'Lin', 'Lynagh', '1105 Sauthoff Place', 8675890234),
(100190, 'Edmon', 'Sutworth', '6737 Debs Court', 5586902378),
(100200, 'Rolando', 'Woodhall', '601 Steensland Road', 5589301725),
(100210, 'Jefferey', 'Mollett', '9 Mariners Cove Parkway', 5589035467),
(100220, 'Felicio', 'Mungane', '814 Starling Road', 5509376893),
(100230, 'Jennie', 'Cicutto', '16 Golf Hill', 5509376892),
(100240, 'Meridel', 'Kleen', '11353 Barnett Trail', 5586901235),
(100250, 'Antonia', 'Slatten', '25 Stephen Court', 5568902367),
(100260, 'Elsi', 'Wilcox', '0 Sachs Road', 55768902365),
(100270, 'Ramsey', 'Sneesby', '20559 Graedel Junction', 55869012347),
(100280, 'Carrie', 'McRobb', '4354 Express Terrace', 5578930125),
(100290, 'Barry', 'MacAlaster', '993 Kenwood Trail', 5586903267),
(100300, 'Mart', 'Chang', '58 Orin Terrace', 5578932647),
(100310, 'Vassili', 'Vuitte', '894 Warrior Crossing', 5598034678),
(100320, 'Patsy', 'Braz', '03 Myrtle Place', 5589034781),
(100330, 'Sissie', 'Benger', '18 Evergreen Terrace', 55934048475),
(100340, 'Chev', 'Dubery', '5 Eastwood Pass', 55869037264),
(100350, 'Valeria', 'O Caherny', '11286 Thackeray Parkway', 5585979660),
(100360, 'Albert', 'De Bell', '056 Maple Center', 5513160380),
(100370, 'Rosalyn', 'Giacovazzo', '7 Tennessee Street', 5582354758),
(100380, 'Hannie', 'McKillop', '60 Waxwing Center', 5573625198),
(100390, 'Thane', 'Aucock', '8589 Onsgard Drive', 558273921245),
(100400, 'Giorgi', 'Worsalls', '6 Luster Junction', 5565734892),
(100410, 'Thedric', 'Bliss', '59 Old Gate Drive', 5537465095),
(100420, 'Laurence', 'Pratton', '254 Sage Park', 556730934582),
(100430, 'Hillyer', 'Strettell', '595 Forster Junction', 5565849034),
(100440, 'Derrick', 'Firman', '22 Kenwood Pass', 55647395480),
(100450, 'Cory', 'Balch', '2 Ruskin Avenue', 5587908354),
(100460, 'Rosco', 'Bartels', '847 Gale Alley', 5538490123),
(100470, 'Anastassia', 'Rois', '51 Emmet Lane', 5587401292367),
(100480, 'Shirl', 'Longcake', '7 Thackeray Drive', 5587302957),
(100490, 'Mellie', 'Reide', '9 Atwood Lane', 5569709253);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disfraz`
--

CREATE TABLE `disfraz` (
  `MODELO_DISFRAZ` varchar(20) NOT NULL,
  `NOMBRE` text DEFAULT NULL,
  `TALLA` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `disfraz`
--

INSERT INTO `disfraz` (`MODELO_DISFRAZ`, `NOMBRE`, `TALLA`) VALUES
('1162', 'Snowy owl', 13),
('12', 'Tortoise, indian star', 18),
('13', 'Swan, trumpeter', 20),
('15', 'Bat-eared fox', 15),
('17', 'Blackish oystercatcher', 15),
('2131', 'Defassa waterbuck', 19),
('25', 'Black kite', 10),
('2835', 'Chestnut weaver', 7),
('40', 'Salmon, sockeye', 8),
('46', 'Sloth, hoffman\'s', 12),
('49', 'Roller, lilac-breasted', 20),
('5037', 'Columbian rainbow boa', 15),
('51', 'Viper, egyptian', 11),
('59', 'Phalarope, red', 14),
('64', 'Turaco, violet-crested', 19),
('6908', 'Starfish, crown of thorns', 16),
('7', 'Sheep, stone', 17),
('72', 'Plover, three-banded', 15),
('76', 'Bear, sloth', 9),
('80', 'Turkey, common', 10),
('8074', 'Sifaka, verreaux\'s', 16),
('88', 'Elephant, asian', 9),
('9112', 'White-cheeked pintail', 12),
('92', 'Dove, galapagos', 8),
('99', 'Quail, gambel\'s', 15),
('Alien_01', 'Alien_Green', 50),
('Animals_01', 'Tiburon_Azul', 40),
('Animals_02', 'Oso_Cafe', 50),
('Animals_03', 'Oso_Blanco', 60),
('Animals_04', 'Mapache', 70),
('Animals_05', 'Leon', 50),
('Animals_06', 'Araña', 60),
('BATMAN10', 'BATMAN', 10),
('Batman_01', 'Batman_Classic', 60),
('Batman_02', 'Joker', 40),
('BIMO10', 'BIMO', 10),
('Blanca_Nieves_01', 'Blanca_Nieves_princesa', 30),
('Bunny', 'Conejo_Blanco_mujer', 50),
('Bunny_01', 'Conejo_Blanco', 60),
('Bunny_02', 'Conejo_Gris', 40),
('BURRO12', 'BURRO', 12),
('CABALLO10', 'CABALLO', 10),
('CARRO10', 'CARRO', 10),
('Cars_01', 'Mcqueen_carro', 40),
('Cars_02', 'Mate_mascara', 20),
('Cars_3', 'Sally_Carro', 40),
('Duende_01', 'Duende_Verde', 40),
('Duende_02', 'Duende_Blanca_nieves', 50),
('Duermiente_01', 'Bella_durmiente', 40),
('FOX13', 'FOX', 13),
('Fruta_01', 'Fresa', 50),
('Fruta_02', 'Sandia', 60),
('Fruta_03', 'Pera', 50),
('Fruta_04', 'Manzana', 60),
('Fruta_05', 'Naranja', 50),
('GATO8', 'GATO', 8),
('Halo_01', 'Master_Chief', 50),
('Halo_02', 'Master_Chief_Negro', 40),
('Jurassic_01', 'Dino_Jur', 60),
('Jurassic_02', 'Dino_Tricerat', 50),
('KOALA11', 'KOALA', 11),
('LANGOSTA9', 'LANGOSTA', 9),
('MARIO11', 'MARIO', 11),
('Marvel_01', 'Spider-man', 50),
('Marvel_02', 'Dr-Strange', 60),
('Marvel_03', 'Wanda', 70),
('Marvel_04', 'Groot', 50),
('Marvel_05', 'Iron-Man', 60),
('Marvel_06', 'Iron-Man-Black', 60),
('Marvel_07', 'Dr-Octopus', 60),
('MELMAN9', 'MELMAN', 9),
('NINJA8', 'NINJA', 8),
('OSO18', 'OSO', 18),
('PERRO8', 'PERRO', 8),
('Person_01', 'Arabe', 40),
('POLLO14', 'POLLO', 14),
('POO9', 'POO', 9),
('Prissioner_01', 'Ladron', 50),
('Profesion_01', 'Policia', 30),
('Profesion_03', 'Militar', 30),
('Profesion_04', 'Arquitecto', 50),
('Profesion_05', 'Futbolista', 40),
('Profession_02', 'Bombero', 50),
('RALF10', 'RALF', 10),
('ROBOT8', 'ROBOT', 8),
('ROBY11', 'ROBY', 11),
('ROSHI13', 'ROSHI', 8),
('SCOOBY12', 'SCOOBY', 12),
('SIMI14', 'SIMI', 14),
('Star_01', 'Star_Wars_Ray', 60),
('Star_02', 'Star_Wars_Artur', 50),
('Star_03', 'Star_Wars_Diji_Rin', 60),
('SUPERMAN9', 'SUPERMAN', 9),
('Terror_01', 'Anabelle', 60),
('Terror_02', 'Doctor_Psicopata', 40),
('TORTUGA12', 'TORTUGA', 12),
('Toy Story_01', 'Toy story Guddy', 35.5),
('Toy Story_02', 'Buzzlightyear_Morado', 40),
('Toy Story_03', 'Jessie_Vaquera', 30),
('VACA10', 'VACA', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `CODIGO` int(5) NOT NULL,
  `CODIGO_ANIMADOR` int(5) DEFAULT NULL,
  `ID_PRESENTADOR` int(5) DEFAULT NULL,
  `ID_CLIENTE` int(5) DEFAULT NULL,
  `DESCRIPCION` text DEFAULT NULL,
  `VALOR_BASE` int(5) DEFAULT NULL,
  `HORARIO` time DEFAULT NULL,
  `FECHA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`CODIGO`, `CODIGO_ANIMADOR`, `ID_PRESENTADOR`, `ID_CLIENTE`, `DESCRIPCION`, `VALOR_BASE`, `HORARIO`, `FECHA`) VALUES
(12374900, 12374900, 100010, 100010, 'Cena familiar', 51717, '12:02:00', '2022-12-19'),
(12374910, 12374910, 100020, 100020, 'Cumpleaños', 34265, '04:37:00', '2016-05-22'),
(12374920, 12374920, 100030, 100030, 'boda con XV', 86159, '05:22:00', '0000-00-00'),
(12374930, 12374930, 100040, 100040, 'boda con XV', 57857, '07:34:00', '0000-00-00'),
(12374940, 12374940, 100050, 100050, 'boda con XV', 88597, '06:30:00', '2027-06-21'),
(12374950, 12374950, 100060, 100060, 'Cumpleaños', 38193, '08:37:00', '2022-08-22'),
(12374960, 12374960, 100070, 100070, 'Cumpleaños', 89654, '09:51:00', '1995-09-22'),
(12374970, 12374970, 100080, 100080, 'boda con XV', 17506, '07:04:00', '2023-03-22'),
(12374980, 12374980, 100090, 100090, 'Cumpleaños', 10283, '06:42:00', '2004-01-12'),
(12374990, 12374990, 100100, 100100, 'Graduacion de preparatoria', 81507, '11:34:00', '2016-02-21'),
(12375000, 12375000, 100110, 100110, 'Jardin para XV', 96045, '04:56:00', '1980-11-29'),
(12375010, 12375010, 100120, 100120, 'Fiesta de trabajo', 22801, '01:02:00', '2035-07-23'),
(12375020, 12375020, 100130, 100130, 'Jardin para XV', 28330, '08:03:00', '2064-10-10'),
(12375030, 12375030, 100140, 100140, 'Cumpleaños', 85702, '06:07:00', '2026-09-22'),
(12375040, 12375040, 100150, 100150, 'Cumpleaños', 81611, '10:49:00', '2012-02-23'),
(12375050, 12375050, 100160, 100160, 'Graduacion universidad', 51578, '09:55:00', '1982-09-22'),
(12375060, 12375060, 100170, 100170, 'Cena familiar', 13782, '10:19:00', '2030-03-22'),
(12375070, 12375070, 100180, 100180, 'Jardin para XV', 58997, '04:12:00', '2017-02-22'),
(12375080, 12375080, 100190, 100190, 'Graduacion de preparatoria', 25798, '08:22:00', '2025-12-23'),
(12375090, 12375090, 100200, 100200, 'boda con XV', 93229, '09:22:00', '2017-11-22'),
(12375100, 12375100, 100210, 100210, 'Graduacion de preparatoria', 57265, '12:15:00', '2012-01-21'),
(12375110, 12375110, 100220, 100220, 'Fiesta de trabajo', 43812, '09:07:00', '1994-02-22'),
(12375120, 12375120, 100230, 100230, 'Cumpleaños', 20472, '11:26:00', '2004-09-21'),
(12375130, 12375130, 100240, 100240, 'Graduacion de preparatoria', 67982, '01:32:00', '0000-00-00'),
(12375140, 12375140, 100250, 100250, 'Cumpleaños', 65306, '05:23:00', '2041-02-02'),
(12375150, 12375150, 100260, 100260, 'Graduacion de preparatoria', 57306, '06:48:00', '2034-03-15'),
(12375160, 12375160, 100270, 100270, 'boda con XV', 41788, '03:03:00', '2022-02-18'),
(12375170, 12375170, 100280, 100280, 'Fiesta de trabajo', 63624, '08:37:00', '2012-02-19'),
(12375180, 12375180, 100290, 100290, 'boda con XV', 25695, '11:46:00', '2012-02-20'),
(12375190, 12375190, 100300, 100300, 'Graduacion de preparatoria', 1429, '08:08:00', '2032-02-06'),
(12375200, 12375200, 100310, 100310, 'Cumpleaños', 10108, '01:16:00', '2022-02-09'),
(12375210, 12375210, 100320, 100320, 'Graduacion universidad', 13946, '11:33:00', '2012-02-16'),
(12375220, 12375220, 100330, 100330, 'Graduacion universidad', 49913, '12:42:00', '2042-02-22'),
(12375230, 12375230, 100340, 100340, 'Fiesta de trabajo', 22645, '01:52:00', '2012-02-23'),
(12375240, 12375240, 100350, 100350, 'Cena familiar', 394, '05:58:00', '0000-00-00'),
(12375250, 12375250, 100360, 100360, 'Jardin para XV', 35343, '06:51:00', '2015-03-22'),
(12375260, 12375260, 100370, 100370, 'Graduacion de preparatoria', 67791, '01:06:00', '2001-08-21'),
(12375270, 12375270, 100380, 100380, 'Cena familiar', 55590, '06:31:00', '2001-02-20'),
(12375280, 12375280, 100390, 100390, 'Graduacion de preparatoria', 32251, '09:53:00', '2011-02-02'),
(12375290, 12375290, 100400, 100400, 'Graduacion de preparatoria', 60549, '09:48:00', '2021-07-23'),
(12375300, 12375300, 100410, 100410, 'Fiesta de trabajo', 93482, '03:22:00', '2029-09-22'),
(12375310, 12375310, 100420, 100420, 'Graduacion universidad', 74486, '01:47:00', '2017-02-02'),
(12375320, 12375320, 100430, 100430, 'Jardin para XV', 24340, '05:14:00', '2012-02-25'),
(12375330, 12375330, 100440, 100440, 'Cena familiar', 21357, '09:58:00', '2014-12-14'),
(12375340, 12375340, 100450, 100450, 'Cumpleaños', 98514, '06:08:00', '2011-02-11'),
(12375350, 12375350, 100460, 100460, 'Jardin para XV', 15243, '02:39:00', '2014-08-23'),
(12375360, 12375360, 100470, 100470, 'Cumpleaños', 67722, '07:30:00', '2011-02-19'),
(12375370, 12375370, 100480, 100480, 'Cena familiar', 14472, '04:32:00', '2027-01-23'),
(12375380, 12375380, 100490, 100490, 'Cena familiar', 26498, '06:10:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentador`
--

CREATE TABLE `presentador` (
  `ID_PRESENTADOR` int(5) NOT NULL,
  `NOMBRE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `presentador`
--

INSERT INTO `presentador` (`ID_PRESENTADOR`, `NOMBRE`) VALUES
(111, 'Jehu'),
(122, 'Berk'),
(247, 'Euell'),
(333, 'Monte'),
(351, 'Maye'),
(394, 'Lira'),
(481, 'Abbye'),
(488, 'Merrel'),
(548, 'Batholomew'),
(586, 'Jerrilee'),
(608, 'Brinna'),
(630, 'Redd'),
(653, 'Vic'),
(692, 'Lavinie'),
(700, 'Julianne'),
(709, 'Emory'),
(777, 'Marcy'),
(779, 'Edgar'),
(821, 'Barret'),
(852, 'Sigismond'),
(867, 'Bernardine'),
(881, 'Minda'),
(962, 'Pris'),
(977, 'Flory'),
(987, 'Bruno'),
(1923, 'PEREZ'),
(8642, 'CARMEN'),
(9764, 'ROSA'),
(9876, 'PETRA'),
(10293, 'MORGAN'),
(10298, 'SHELSON'),
(12345, 'CARLOS'),
(12457, 'LUSY'),
(13467, 'POL'),
(13579, 'PAOLA'),
(23568, 'ANGELA'),
(24578, 'HAL'),
(24680, 'YOLANDA'),
(29384, 'ORTIZ'),
(34679, 'LUIS'),
(35689, 'RAUL'),
(45780, 'ERIKA'),
(46790, 'MARGARET'),
(54321, 'CARLA'),
(67890, 'LALO'),
(76431, 'PAMELA'),
(83745, 'GABILAN'),
(87542, 'FREDY'),
(92834, 'PEREZ'),
(97531, 'LISA'),
(100000, 'Dorothee'),
(100010, 'Anselma'),
(100020, 'Wit'),
(100030, 'Leigha'),
(100040, 'Albertine'),
(100050, 'Meriel'),
(100060, 'Greg'),
(100070, 'Thornton'),
(100080, 'Cicily'),
(100090, 'Rolph'),
(100100, 'Lindsey'),
(100110, 'Osbourne'),
(100120, 'Otho'),
(100130, 'Laverna'),
(100140, 'Sibelle'),
(100150, 'Padraic'),
(100160, 'Titos'),
(100170, 'Gerty'),
(100180, 'Mina'),
(100190, 'Clayson'),
(100200, 'Zaria'),
(100210, 'Stacia'),
(100220, 'Vinson'),
(100230, 'Halley'),
(100240, 'Ariela'),
(100250, 'Percival'),
(100260, 'Jerad'),
(100270, 'Yorgos'),
(100280, 'Tripp'),
(100290, 'Hymie'),
(100300, 'Gavan'),
(100310, 'Vivien'),
(100320, 'Timoteo'),
(100330, 'Kimbra'),
(100340, 'Aldis'),
(100350, 'Virge'),
(100360, 'Tobe'),
(100370, 'Calley'),
(100380, 'Lilith'),
(100390, 'Bonnee'),
(100400, 'Rhoda'),
(100410, 'Meta'),
(100420, 'Tamqrah'),
(100430, 'Viki'),
(100440, 'Heida'),
(100450, 'Cacilie'),
(100460, 'Robbi'),
(100470, 'Marketa'),
(100480, 'Geoffry'),
(100490, 'Tiphani');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animador`
--
ALTER TABLE `animador`
  ADD PRIMARY KEY (`CODIGO_ANIMADOR`),
  ADD KEY `modelo` (`MODELO_DISFRAZ`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `disfraz`
--
ALTER TABLE `disfraz`
  ADD PRIMARY KEY (`MODELO_DISFRAZ`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`CODIGO`),
  ADD KEY `codigo` (`CODIGO_ANIMADOR`),
  ADD KEY `presetador` (`ID_PRESENTADOR`),
  ADD KEY `cliente` (`ID_CLIENTE`);

--
-- Indices de la tabla `presentador`
--
ALTER TABLE `presentador`
  ADD PRIMARY KEY (`ID_PRESENTADOR`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animador`
--
ALTER TABLE `animador`
  ADD CONSTRAINT `animador_ibfk_1` FOREIGN KEY (`MODELO_DISFRAZ`) REFERENCES `disfraz` (`MODELO_DISFRAZ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`ID_PRESENTADOR`) REFERENCES `presentador` (`ID_PRESENTADOR`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`ID_PRESENTADOR`) REFERENCES `presentador` (`ID_PRESENTADOR`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventos_ibfk_3` FOREIGN KEY (`CODIGO_ANIMADOR`) REFERENCES `animador` (`CODIGO_ANIMADOR`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventos_ibfk_4` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
