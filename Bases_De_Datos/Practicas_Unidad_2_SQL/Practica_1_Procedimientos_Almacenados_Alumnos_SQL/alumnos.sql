-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2022 a las 00:42:49
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumnos`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `edadx` (IN `matri` INT, IN `anio_futuro` INT, IN `anio_actual` INT, OUT `Edad_Anio` INT)   begin
select Edad+(anio_futuro-anio_actual) Into Edad_Anio From alumnoss where Matricula=matri;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `IMC` (IN `mat` INT, OUT `IMCS` FLOAT(5,2))   begin
select (Peso/(Estatura*Estatura)) Into IMCS FROM alumnoss where Matricula=mat;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_alum` (IN `Matri` INT(5), `Nom` VARCHAR(32), `ap` VARCHAR(32), `am` VARCHAR(32), `edad` INT(2), `estado` VARCHAR(32), `peso` INT(4))   insert into alumnoss values(Matri,Nom,ap,am,edad,estado,peso)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_edad` (IN `matri` INT, IN `anios_aument` INT)   begin
update alumnoss set Edad=Edad+anios_aument where Matricula=matri;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_peso` (IN `matri` INT(5), IN `porcentaje` FLOAT(4))   UPDATE alumnoss set Peso=Peso+(Peso/porcentaje) Where Matricula=matri$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `muestra_mat` (IN `Mat` INT(5))   begin
select *from alumnoss where Matricula=Mat;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `peso_menor` (IN `Masa` INT(4))   begin
select * from alumnoss where Peso<Masa;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnoss`
--

CREATE TABLE `alumnoss` (
  `Matricula` int(5) NOT NULL,
  `Nombre` varchar(32) DEFAULT NULL,
  `Apellido_paterno` varchar(32) DEFAULT NULL,
  `Apellido_materno` varchar(32) DEFAULT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Estado` varchar(32) DEFAULT NULL,
  `Peso` float DEFAULT NULL,
  `Estatura` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnoss`
--

INSERT INTO `alumnoss` (`Matricula`, `Nombre`, `Apellido_paterno`, `Apellido_materno`, `Edad`, `Estado`, `Peso`, `Estatura`) VALUES
(10510, 'Emanuel', 'Ramirez', 'Camacho', 18, 'EDOMEX', 60, 1.68),
(10511, 'Manuel', 'Avila', 'Dominguez', 19, 'CDMX', 88, 1.70),
(10512, 'Fernando', 'Rodriguez', 'Martinez', 20, 'Michoacan', 75, 1.50),
(10513, 'Paulina', 'Dominguez', 'Herrera', 18, 'Colima', 80, 1.80),
(10514, 'Paula', 'Jazmin', 'Rodriguez', 22, 'Monterrey', 60, 1.90),
(10515, 'Jatziri', 'Avalez', 'Perez', 23, 'EDOMEX', 65, 1.50),
(10516, 'Monserrat', 'Ramirez', 'Ortiz', 19, 'CDMX', 80, 1.60),
(10517, 'Bety', 'Camacho', 'Ortiz', 18, 'Veracruz', 70, 1.80),
(10518, 'Katy', 'Ramirez', 'Fuente', 18, 'Chiapas', 60, 1.60),
(10519, 'Oscar', 'Garcia', 'Garcia', 18, 'Queretaro', 65, 1.65),
(10520, 'Omar', 'Ramirez', 'Ortiz', 20, 'EDOMEX', 70, 1.74),
(10521, 'Juan', 'Camacho', 'Martinez', 22, 'Mexico', 70, 1.75),
(10522, 'Jair', 'Marquez', 'Santana', 22, 'Monterrey', 80, 1.79);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnoss`
--
ALTER TABLE `alumnoss`
  ADD PRIMARY KEY (`Matricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
