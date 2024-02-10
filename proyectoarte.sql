-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-10-2023 a las 04:43:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoarte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(2, 'Remedios Varo, entre lo espiritual y la magia\r\n', 'Cuando se fue de España, en 1937, dejó atrás para siempre un país acosado por la guerra civil. Cuatro años más tarde huyó de la ocupación nazi en Francia al abordar en Marsella el buque Serpa Pinto, con destino a México.', 'Poco antes de morir, a comienzos de la década de 1960, Remedios Varo realizó un tríptico que sintetiza los hitos de la vida nómade de esta gran buscadora: una de las pinturas se titula La huída.\r\n\r\nVaro se volvería célebre como una de las \"tres brujas del arte\". Junto con Kati Horna y Leonora Carrington, íntima amiga a la que había conocido en París, apeló al surrealismo para integrar múltiples intereses que incluyeron el misticismo, la alquimia, el psicoanálisis, la magia y la astrología.\r\n\r\nConstelaciones se titulará justamente la muestra antológica que abrirá la temporada 2020 del Malba, centrada en esta etapa americana donde Varo alcanzó su madurez profesional. Incluirá Simpatía (La rabia del gato), obra de 1955 por la que Eduardo Costantini pagó este año 3,1 millones de dólares para sumarla a su colección personal, e Ícono (1945), otra pintura donada al museo por el empresario al fundarlo en 2001.\r\n\r\nEl interés de la artista por la espiritualidad se reveló temprano, a mediados de la década de 1930, cuando integró en Barcelona el grupo de vanguardia catalana Logicofobista. Una variante del surrealismo, \"fóbica a la lógica\".');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `precio` int(60) NOT NULL,
  `stock` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `shop`
--

INSERT INTO `shop` (`id`, `titulo`, `precio`, `stock`) VALUES
(1, 'Those Eyes', 40, 2),
(2, 'Watch Me', 50, 3),
(3, 'Those Eyes', 40, 2),
(4, 'Watch Me', 50, 3),
(5, 'Box Eye', 35, 3),
(6, 'Box Eye', 35, 3),
(7, 'Don´t Cry', 50, 4),
(8, 'Birthay', 20, 5),
(10, 'Dont Look At Me', 60, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `password`) VALUES
(1, 'Ruth', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Laura', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
