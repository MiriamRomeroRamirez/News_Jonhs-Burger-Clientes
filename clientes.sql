-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2022 a las 04:04:27
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, '[crepizzas]'),
(2, '[complemento]'),
(3, '[ingre_extras]'),
(4, '[hamburguesas]'),
(5, '[hot_dog]'),
(6, '[refrescos]'),
(7, '[papas]'),
(8, '[crepas_especial]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_producto` int(11) NOT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_producto`, `descripcion`, `precio`, `id_categoria`) VALUES
(1, 'Nutella', 40, 1),
(2, 'Philadelphia', 40, 1),
(3, 'Crema de avellanas', 35, 1),
(4, 'Cajeta', 35, 1),
(5, 'Frambuesa', 30, 1),
(6, 'Fresa', 30, 1),
(7, 'Manzana', 30, 1),
(8, 'Piña', 30, 1),
(9, 'Zarzamora', 30, 1),
(10, 'Carnes frías', 60, 2),
(11, 'Hawaiana', 55, 2),
(12, 'Peperoni', 50, 2),
(13, 'Salchicha', 50, 2),
(14, 'Jamón', 45, 2),
(15, 'Queso manchego', 40, 2),
(16, 'Malteada fresa', 55, 3),
(17, 'Malteada oreo', 55, 3),
(18, 'Malteada mazapan', 55, 3),
(19, 'Malteada chocolate', 50, 3),
(20, 'Malteada vainilla', 50, 3),
(21, 'Helado chocolate', 17, 3),
(22, 'Helado fresa', 17, 3),
(23, 'Helado oreo', 17, 3),
(24, 'Helado vainilla', 17, 3),
(25, 'Plátano frito', 35, 3),
(26, 'Kitkat', 20, 4),
(27, 'Milky way', 20, 4),
(28, 'M&Ms', 20, 4),
(29, 'Snickers', 20, 4),
(30, 'Ferrero y muibon', 15, 4),
(31, 'Kinder delice', 15, 4),
(32, 'Nuez', 15, 4),
(33, 'Fresas', 10, 4),
(34, 'Lechera', 10, 4),
(35, 'Oreo', 10, 4),
(36, 'Philadelphia', 10, 4),
(37, 'Plátano', 10, 4),
(38, 'Mazapan', 5, 4),
(39, 'Carlos V', 5, 4),
(40, 'Kranky', 5, 4),
(41, 'Clásica', 45, 5),
(42, 'Americana(Tocino)', 55, 5),
(43, 'Hawaiana (quesillo, jamón, piña)', 65, 5),
(44, 'Pizzaburguer (quesillo, peperonni)', 65, 5),
(45, 'Clásica doble', 65, 5),
(46, 'Sencillo', 25, 6),
(47, 'Americana(Tocino)', 35, 6),
(48, 'Hawaiana (quesillo, jamón, piña)', 40, 6),
(49, 'Pizajocho (quessillo, peperonni)', 40, 6),
(50, 'Refrescos', 17, 7),
(51, 'Naturales', 45, 8),
(52, 'Adobadas', 45, 8),
(53, 'Chipotle', 45, 8),
(54, 'Jalapeño', 45, 8),
(55, 'Pimienta limón', 45, 8),
(56, 'Queso', 45, 8),
(57, 'Crepa gansito', 45, 9),
(58, 'Crepa chocorrol', 45, 9),
(59, 'Crepa Carlos V', 65, 9),
(60, 'Crepa kranky', 65, 9),
(61, 'Crepa hersheys', 65, 9),
(62, 'Crepa mazapan', 65, 9),
(63, 'Crepa kitkat', 65, 9),
(64, 'Crepa milky way', 65, 9),
(65, 'Crepa M&Ms', 65, 9),
(66, 'Crepa snickers', 65, 9),
(67, 'Crepa ferrero', 65, 9),
(68, 'Crepa kinder delice', 65, 9),
(69, 'Crepa oreo', 65, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
