-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 05:03:58
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
-- Base de datos: `articulos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `Numero_pedido` int(11) NOT NULL,
  `Numero_Fabrica` int(11) NOT NULL,
  `Descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_fabrica`
--

CREATE TABLE `articulos_fabrica` (
  `Numero_articulo` int(11) NOT NULL,
  `Numero_Fabrica` int(11) NOT NULL,
  `Descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabecera`
--

CREATE TABLE `cabecera` (
  `id_cliente` int(4) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `fecha_producto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(4) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `limite_credito` double NOT NULL,
  `saldo` float NOT NULL,
  `descuento` int(2) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `direccion`, `limite_credito`, `saldo`, `descuento`, `nombre`) VALUES
(1234, '', 30000, 15000, 20, 'Eduardo Martinez Sanchez'),
(4567, '', 25000, 10000, 25, 'Selene Camacho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo`
--

CREATE TABLE `cuerpo` (
  `Numero_pedido` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabrica`
--

CREATE TABLE `fabrica` (
  `Numero_Fabrica` int(11) NOT NULL,
  `Telefono` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `cabecera` varchar(5) NOT NULL,
  `cuerpo` varchar(5) NOT NULL,
  `id_cliente` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`Numero_pedido`),
  ADD KEY `Numero_Fabrica` (`Numero_Fabrica`),
  ADD KEY `Descripcion` (`Descripcion`);

--
-- Indices de la tabla `articulos_fabrica`
--
ALTER TABLE `articulos_fabrica`
  ADD PRIMARY KEY (`Numero_articulo`),
  ADD KEY `Numero_Fabrica` (`Numero_Fabrica`),
  ADD KEY `Descripcion` (`Descripcion`);

--
-- Indices de la tabla `cabecera`
--
ALTER TABLE `cabecera`
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `direccion` (`direccion`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `direccion` (`direccion`);

--
-- Indices de la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD KEY `Numero_pedido` (`Numero_pedido`);

--
-- Indices de la tabla `fabrica`
--
ALTER TABLE `fabrica`
  ADD PRIMARY KEY (`Numero_Fabrica`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD KEY `cliente` (`id_cliente`),
  ADD KEY `cuerpo` (`cuerpo`),
  ADD KEY `cabecera` (`cabecera`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`Numero_pedido`) REFERENCES `cuerpo` (`Numero_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulos_fabrica`
--
ALTER TABLE `articulos_fabrica`
  ADD CONSTRAINT `articulos_fabrica_ibfk_1` FOREIGN KEY (`Numero_Fabrica`) REFERENCES `fabrica` (`Numero_Fabrica`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulos_fabrica_ibfk_2` FOREIGN KEY (`Descripcion`) REFERENCES `articulos` (`Descripcion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cabecera`
--
ALTER TABLE `cabecera`
  ADD CONSTRAINT `cabecera_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cabecera_ibfk_2` FOREIGN KEY (`direccion`) REFERENCES `clientes` (`direccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
