-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-08-2020 a las 12:13:33
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id14444016_paraisomap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Destinos`
--

CREATE TABLE `Destinos` (
  `Id` int(4) NOT NULL,
  `nombre` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `descripción` text COLLATE utf8_unicode_ci NOT NULL,
  `dificultad` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `niños` tinyint(1) NOT NULL,
  `agua` varchar(65) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Destinos';

--
-- Volcado de datos para la tabla `Destinos`
--

INSERT INTO `Destinos` (`Id`, `nombre`, `descripción`, `dificultad`, `niños`, `agua`) VALUES
(1, 'Monte Naranco', 'Monte Naranco. Es una sierra de 5 kilómetros de extensión que rodea la ciudad de Oviedo. El Pico Paisano es su cota más alta, con 632 metros de altura.', 'Baja', 1, 'si, bar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Destinos`
--
ALTER TABLE `Destinos`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
