-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2023 a las 13:05:34
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursosql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `email`) VALUES
(1, 'Aless', 'Diana', 'a.diana@gmail.com'),
(2, 'Ana', 'Perez', 'a.perez@gmail.com'),
(3, 'Beatriz', 'Caramelo', 'bcaramelo@gmail.com'),
(4, 'Julian', 'Diaz', 'j.diaz@gmail.com'),
(5, 'Marcos', 'Flores', 'm.flores@gmail.com'),
(6, 'Persi', 'Inventada', 'persii@gmail.com'),
(7, 'Tachibana', 'Kamado', 'tachkamado@gmail.com'),
(8, 'Hanika', 'Kia', 'hankiak@gmail.com'),
(9, 'Pablo', 'Leon', 'p.leon@gmail.com'),
(10, 'Eleanor', 'Gonzalez', 'elig@gmail.com'),
(11, 'Sandra', 'Ruiz', 'sandra.ruiz@gmail.co'),
(12, 'Katheryn', 'Bernardo', 'katber@gmail.com'),
(13, 'Soul', 'Soberano', 'ssoberano@gmail.com'),
(14, 'Barky', 'Pooh', 'barkypooh@gmail.com'),
(15, 'Dexter', 'Katrinus', 'dexterk@gmail.com'),
(16, 'Alessandra', 'Prueba', 'email@gmail.com'),
(17, 'Bea', 'Prueba', 'beaprueba@gmail.com'),
(18, 'Samsung', 'Desarrolladoras', 'samsungd@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
