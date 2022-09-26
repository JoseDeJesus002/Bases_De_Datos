-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2022 a las 03:55:56
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
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agua`
--

CREATE TABLE `agua` (
  `nombre_agua` varchar(50) NOT NULL,
  `sabor` varchar(50) DEFAULT NULL,
  `descripcion` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agua`
--

INSERT INTO `agua` (`nombre_agua`, `sabor`, `descripcion`) VALUES
('agua de coco', 'coco', 'coco sin azucar'),
('agua de fresa', 'fresa', 'fresa con hielo'),
('agua de guayaba', 'guayaba', 'guayaba sin hueso'),
('agua de limon', 'limon', 'agua con limon'),
('agua de mango', 'mango', 'mango'),
('agua de maracuya', 'pepino', 'maracuya y chia'),
('agua de melon', 'melon', 'melon'),
('agua de naranja', 'naranja', 'naranja con hojas'),
('agua de pepino', 'tuna', 'se puede combinar con limon'),
('agua de pinia', 'pinia', 'pinia para adelgazar'),
('agua de platano', 'platano', 'platano con agua'),
('agua de sandia', 'sandia', 'sandia'),
('agua de tamarindo', 'tamarindo', 'tamarindo cocido'),
('agua de tuna', 'limon', 'tuna'),
('crema de coco', 'coco', 'coco con crema de coco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clave_cliente` int(5) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clave_cliente`, `nombre`) VALUES
(1234, 'Gerard'),
(1499, 'Andres'),
(5435, 'Ana'),
(6903, 'Enzo'),
(8759, 'Eric');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guarnicion`
--

CREATE TABLE `guarnicion` (
  `nombre_guarnicion` varchar(50) NOT NULL,
  `ingrediente_principal` varchar(50) DEFAULT NULL,
  `ingredientes` varchar(60) DEFAULT NULL,
  `temperatura` float DEFAULT NULL,
  `porcion` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `guarnicion`
--

INSERT INTO `guarnicion` (`nombre_guarnicion`, `ingrediente_principal`, `ingredientes`, `temperatura`, `porcion`) VALUES
('apionabo', 'apionabo', 'manzana', 15, 379),
('carpaccio calabacin', 'calabaza', 'hierbas pimienta', 14, 259),
('cous cous', 'semola de trigo', 'colifor', 15, 253),
('ensalada de arroz rojo', 'arroz', 'col y calabacin', 15, 302),
('ensalada de hinojo', 'cebolla', 'almendras', 13, 176),
('ensalada de lentejas', 'lentejas', 'tomate aguacate y cebolla', 14, 120),
('escalvida', 'ajo', 'tomate cebolla pimiento y berenjena', 10, 390),
('Manzanas', 'Manzana', 'zanahoria menta y jengibre', 15, 234),
('puerros', 'puerros', 'guisantes y cogollos', 13, 342),
('rolitos de berenjena', 'zanahoria', 'pimiento y hierbas', 14, 498);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guisado`
--

CREATE TABLE `guisado` (
  `nombre_guisado` varchar(50) NOT NULL,
  `proteina` float DEFAULT NULL,
  `preparado` varchar(50) DEFAULT NULL,
  `tamanio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `guisado`
--

INSERT INTO `guisado` (`nombre_guisado`, `proteina`, `preparado`, `tamanio`) VALUES
('arroz a la mexicana', 156, 'arroz', 414),
('bistec en salsa', 144, 'bistec', 395),
('chicharron en salsa verde', 163, 'chicharron y chile', 438),
('chiles rellenos', 115, 'chiles', 103),
('cochinita pibil', 190, 'achiote', 386),
('frijoles charros', 168, 'frijoles', 166),
('mole verde con pollo', 140, 'mole', 283),
('nopales enmolados', 161, 'nopales', 257),
('rajas con crema', 131, 'chiles y crema', 359),
('tinga de pollo', 136, 'pollo', 453);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `clave_menu` int(5) NOT NULL,
  `sopa` varchar(50) DEFAULT NULL,
  `guisado` varchar(50) DEFAULT NULL,
  `guarnicion` varchar(50) DEFAULT NULL,
  `agua` varchar(50) DEFAULT NULL,
  `postre` varchar(50) DEFAULT NULL,
  `costo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`clave_menu`, `sopa`, `guisado`, `guarnicion`, `agua`, `postre`, `costo`) VALUES
(287, 'sopa huertana', 'chiles rellenos', 'ensalada de hinojo', 'agua de sandia', 'flan', 300),
(478, 'sopa huertana', 'rajas con crema', 'escalvida', 'agua de platano', 'gelatina de chocolate', 400),
(698, 'sopa casera', 'bistec en salsa', 'cous cous', 'agua de fresa', 'flan', 300),
(987, 'sopa casera', 'chiles rellenos', 'ensalada de hinojo', 'agua de pinia', 'flan de elote', 300),
(1124, 'sopa juliana', 'mole verde con pollo', 'ensalada de arroz rojo', 'agua de sandia', 'gelatina de chocolate', 400),
(1203, 'sopa de patata', 'mole verde con pollo', 'apionabo', 'agua de pinia', 'flan de elote', 200),
(2034, 'fideos vegetales', 'cochinita pibil', 'ensalada de arroz rojo', 'agua de tuna', 'brownies', 300),
(2458, 'sopa de patata', 'mole verde con pollo', 'ensalada de lentejas', 'agua de mango', 'pay de mango', 300),
(3024, 'sopa huertana', 'nopales enmolados', 'carpaccio calabacin', 'agua de platano', 'pay de limon', 300),
(3201, 'sopa de patata', 'chiles rellenos', 'ensalada de arroz rojo', 'agua de tuna', 'pay de mango', 400),
(3210, 'sopa huertana', 'rajas con crema', 'carpaccio calabacin', 'crema de coco', 'pay de mango', 300),
(5214, 'sopa de patata', 'tinga de pollo', 'Manzanas', 'agua de sandia', 'flan napolitano', 300),
(5218, 'sopa de patata', 'frijoles charros', 'escalvida', 'agua de pinia', 'gelatina de chocolate', 400),
(5219, 'sopa minestrone', 'nopales enmolados', 'puerros', 'agua de pepino', 'flan napolitano', 400),
(5283, 'sopa juliana', 'mole verde con pollo', 'escalvida', 'agua de mango', 'flan de elote', 400),
(5564, 'sopa juliana', 'chiles rellenos', 'ensalada de hinojo', 'agua de naranja', 'flan napolitano', 300),
(5679, 'sopa huertana', 'mole verde con pollo', 'ensalada de hinojo', 'agua de limon', 'gelatina de chocolate', 300),
(6214, 'sopa minestrone', 'chiles rellenos', 'ensalada de arroz rojo', 'agua de tamarindo', 'gelatina de chocolate', 400),
(6274, 'sopa casera', 'frijoles charros', 'ensalada de lentejas', 'agua de pinia', 'pay de mango', 400),
(6547, 'sopa de patata', 'mole verde con pollo', 'ensalada de hinojo', 'agua de platano', 'pay de mango', 300),
(6549, 'sopa huertana', 'chicharron en salsa verde', 'escalvida', 'agua de platano', 'pay de mango', 300),
(6748, 'sopa de patata', 'mole verde con pollo', 'escalvida', 'agua de tuna', 'gelatina de chocolate', 300),
(7531, 'sopa de alubias', 'nopales enmolados', 'ensalada de hinojo', 'agua de platano', 'flan napolitano', 300),
(8547, 'sopa casera', 'cochinita pibil', 'rolitos de berenjena', 'agua de pepino', 'pay de limon', 400),
(8845, 'fideos vegetales', 'chicharron en salsa verde', 'Manzanas', 'agua de guayaba', 'flan napolitano', 200),
(8854, 'sopa minestrone', 'tinga de pollo', 'puerros', 'crema de coco', 'postre de galleta', 300),
(9521, 'sopa juliana', 'frijoles charros', 'ensalada de lentejas', 'agua de naranja', 'pay de mango', 400),
(9561, 'sopa huertana', 'cochinita pibil', 'Manzanas', 'agua de naranja', 'gelatina de chocolate', 300),
(9657, 'sopa de alubias', 'nopales enmolados', 'escalvida', 'agua de pinia', 'pay de limon', 5698),
(9845, 'sopa huertana', 'mole verde con pollo', 'Manzanas', 'agua de sandia', 'gelatina de chocolate', 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(5) NOT NULL,
  `clave_cliente` int(5) DEFAULT NULL,
  `clave_menu` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `clave_cliente`, `clave_menu`) VALUES
(245, 1234, 5214),
(958, 6903, 6549),
(1425, 5435, 2458),
(2234, 5435, 8547),
(2364, 1499, 9521),
(4524, 8759, 6547),
(5235, 6903, 6274),
(5978, 5435, 6547),
(6214, 5435, 5218),
(6987, 8759, 6214),
(9641, 6903, 7531);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postre`
--

CREATE TABLE `postre` (
  `nombre_postre` varchar(50) NOT NULL,
  `sabor` varchar(50) DEFAULT NULL,
  `cantidad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `postre`
--

INSERT INTO `postre` (`nombre_postre`, `sabor`, `cantidad`) VALUES
('brownies', 'chocolate', '1000 gr'),
('flan', 'flan', '200 gr'),
('flan de elote', 'elote', '400 gr'),
('flan napolitano', 'gelatina', '100gr'),
('gelatina de chocolate', 'gelatina', '500 gr'),
('pay de limon', 'limon con galleta', '700 gr'),
('pay de mango', 'mango', '800 gr'),
('postre de galleta', 'galleta', '200 gr');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sopa`
--

CREATE TABLE `sopa` (
  `nombre_sopa` varchar(50) NOT NULL,
  `ingredientes` varchar(60) DEFAULT NULL,
  `fondo` varchar(50) DEFAULT NULL,
  `temperatura` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sopa`
--

INSERT INTO `sopa` (`nombre_sopa`, `ingredientes`, `fondo`, `temperatura`) VALUES
('fideos vegetales', 'ajo puerros y nabo', 'caldo de pollo', 33),
('sopa casera', 'zanahoria y pimiento rojo', 'caldo de pollo', 34),
('sopa de alubias', 'alubias apio y ajo', 'caldo de pollo', 40),
('sopa de patata', 'patata y puerro', 'caldo pollo', 38),
('sopa huertana', 'zanahorias nabos y jamon', 'caldo de pollo', 32),
('sopa juliana', 'puerro zanahoria repollo', 'caldo de pollo', 40),
('sopa minestrone', 'alubias y judias', 'caldo de pollo', 36);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agua`
--
ALTER TABLE `agua`
  ADD PRIMARY KEY (`nombre_agua`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clave_cliente`);

--
-- Indices de la tabla `guarnicion`
--
ALTER TABLE `guarnicion`
  ADD PRIMARY KEY (`nombre_guarnicion`);

--
-- Indices de la tabla `guisado`
--
ALTER TABLE `guisado`
  ADD PRIMARY KEY (`nombre_guisado`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`clave_menu`),
  ADD KEY `indice1` (`sopa`),
  ADD KEY `indice2` (`guisado`),
  ADD KEY `indice3` (`guarnicion`),
  ADD KEY `indice4` (`agua`),
  ADD KEY `indice5` (`postre`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `indice1` (`clave_cliente`),
  ADD KEY `indice2` (`clave_menu`);

--
-- Indices de la tabla `postre`
--
ALTER TABLE `postre`
  ADD PRIMARY KEY (`nombre_postre`);

--
-- Indices de la tabla `sopa`
--
ALTER TABLE `sopa`
  ADD PRIMARY KEY (`nombre_sopa`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`sopa`) REFERENCES `sopa` (`nombre_sopa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`guisado`) REFERENCES `guisado` (`nombre_guisado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_3` FOREIGN KEY (`guarnicion`) REFERENCES `guarnicion` (`nombre_guarnicion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_4` FOREIGN KEY (`agua`) REFERENCES `agua` (`nombre_agua`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_ibfk_5` FOREIGN KEY (`postre`) REFERENCES `postre` (`nombre_postre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`clave_cliente`) REFERENCES `cliente` (`clave_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`clave_menu`) REFERENCES `menu` (`clave_menu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
