-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2022 a las 08:11:58
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fabrica_prod`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `Numero_Articulo` int(11) NOT NULL,
  `Id_Fabrica` int(6) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`Numero_Articulo`, `Id_Fabrica`, `Descripcion`) VALUES
(45, 523598, 'Lapiz_Color azul Bicolor');

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
(45, 523598, 'Lpaiz_Color azul Bicolor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabecera`
--

CREATE TABLE `cabecera` (
  `Id_Cabecera` int(6) NOT NULL,
  `Id_Cliente` int(6) NOT NULL,
  `Direccion_Envio` text NOT NULL,
  `Fecha_Produccion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cabecera`
--

INSERT INTO `cabecera` (`Id_Cabecera`, `Id_Cliente`, `Direccion_Envio`, `Fecha_Produccion`) VALUES
(56874, 598712, 'Calle pedregal num 78, CDMX', '2022-03-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_Cliente` int(6) NOT NULL,
  `Direccion` text NOT NULL,
  `Limite_Credito` int(3) NOT NULL,
  `Saldo` int(6) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_Cliente`, `Direccion`, `Limite_Credito`, `Saldo`, `Descuento`, `Nombre`) VALUES
(598712, 'Calle pedegal num 78, CDMX', 100, 10000, 10, ' Vanesa Ramirez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo`
--

CREATE TABLE `cuerpo` (
  `Numero_Pedido` int(11) NOT NULL,
  `Numero_Articulo` int(11) NOT NULL,
  `Cantidad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuerpo`
--

INSERT INTO `cuerpo` (`Numero_Pedido`, `Numero_Articulo`, `Cantidad`) VALUES
(524, 45, 20);

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
(523598, 5587412315);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Id_Pedidos` varchar(6) NOT NULL,
  `Id_Cabecera` int(6) NOT NULL,
  `Numero_Pedido` int(11) NOT NULL,
  `Id_Cliente` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Id_Pedidos`, `Id_Cabecera`, `Numero_Pedido`, `Id_Cliente`) VALUES
('52367', 56874, 524, 598712);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`Numero_Articulo`),
  ADD KEY `Id_Fabrica` (`Id_Fabrica`);

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
  ADD PRIMARY KEY (`Id_Cabecera`),
  ADD KEY `Id_Cliente` (`Id_Cliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD PRIMARY KEY (`Numero_Pedido`),
  ADD KEY `Numero_Articulo` (`Numero_Articulo`);

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
  ADD KEY `Cabecera` (`Id_Cabecera`,`Numero_Pedido`,`Id_Cliente`),
  ADD KEY `Id_Cliente` (`Id_Cliente`),
  ADD KEY `Numero_Pedido` (`Numero_Pedido`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo_fabrica`
--
ALTER TABLE `articulo_fabrica`
  ADD CONSTRAINT `articulo_fabrica_ibfk_1` FOREIGN KEY (`Numero_Articulo`) REFERENCES `articulos` (`Numero_Articulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulo_fabrica_ibfk_2` FOREIGN KEY (`Id_Fabrica`) REFERENCES `fabrica` (`Id_Fabrica`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cabecera`
--
ALTER TABLE `cabecera`
  ADD CONSTRAINT `cabecera_ibfk_1` FOREIGN KEY (`Id_Cliente`) REFERENCES `cliente` (`Id_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD CONSTRAINT `cuerpo_ibfk_1` FOREIGN KEY (`Numero_Articulo`) REFERENCES `articulos` (`Numero_Articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`Id_Cliente`) REFERENCES `cliente` (`Id_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`Numero_Pedido`) REFERENCES `cuerpo` (`Numero_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`Id_Cabecera`) REFERENCES `cabecera` (`Id_Cabecera`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
