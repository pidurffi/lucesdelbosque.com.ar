-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-09-2019 a las 12:18:17
-- Versión del servidor: 5.6.41-84.1
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `luces01_2018`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `cantidad_adultos` int(11) NOT NULL DEFAULT '0',
  `cantidad_ninos` int(11) NOT NULL DEFAULT '0',
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `username_canonical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `email`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `username_canonical`, `email_canonical`) VALUES
(1, 'admin', 'admin@example.com', 1, 'qg8sjnavsmoogo80w0ck0ooow0k8s04', '$2y$13$vYeEqbWVD4ZQG8JjLzjv/OjedUyn9n.g/eOK0WmyZDWQDrX0h45dO', '2019-09-04 18:25:48', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 0, NULL, 'admin', 'admin@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeria` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `nombre`, `galeria`) VALUES
(1, 'Galería Home', 'a:6:{i:0;s:52:\"cropped/f96784f225fbed4e38bc4b8523c8743a9af880d5.jpg\";i:1;s:52:\"cropped/89afafdd65322df9a39d2b46563c4c9798637bf5.jpg\";i:2;s:52:\"cropped/432ee63a023c1885c950258125f7490249cd75c0.jpg\";i:3;s:52:\"cropped/76c8a3eb9937e348cb294c31b7d6d94d6577c641.jpg\";i:4;s:52:\"cropped/c708d55b11947d06e14edd11b686aef434e7ce11.jpg\";i:5;s:52:\"cropped/9d056aa6b03ac5d4026e2fd0da9016facb96cd70.jpg\";}'),
(2, '2 Personas - Superior', 'a:4:{i:0;s:52:\"cropped/a41e938d92053f9e4ac044c484c4aaef07594231.jpg\";i:1;s:52:\"cropped/c28ce68a5c98f737eb10b232238de23fbd88c8c3.jpg\";i:2;s:52:\"cropped/f9eae0e0c81fbf3a28aa9ac3b1dc9d388822d157.jpg\";i:3;s:52:\"cropped/01f6a4449c1a1b75c4cf8839f0671b6d6b1db8df.jpg\";}'),
(3, '2 Personas - Premium', 'a:8:{i:0;s:52:\"cropped/80b405ba36c1e85c985f47e6557f58c0ee2ac422.jpg\";i:1;s:52:\"cropped/f62c5abb33c8dc70cc7cab430811a9f952ac9495.jpg\";i:2;s:52:\"cropped/7c840e2723b7d7a79e012bf269ecfb0f15b5dc01.jpg\";i:3;s:52:\"cropped/6057361ee39f28387053f61479162033e7f13c00.jpg\";i:4;s:52:\"cropped/6acdd0c8f3edbda166ddedec44aef3f84a3287ff.jpg\";i:5;s:52:\"cropped/a777c8a60f9bbb17db670ba28685d65a5ddd4411.jpg\";i:6;s:52:\"cropped/290384efe9603827637ad2a9744bc1f7516f39af.jpg\";i:7;s:52:\"cropped/8e4781ac70fd0aa4de290cfaa3b9d6a11354cf96.jpg\";}'),
(4, '2 Personas - Classic', 'a:6:{i:0;s:52:\"cropped/47e389b8df8819e7f8e16236b3314b110bcb721d.jpg\";i:1;s:52:\"cropped/5c7d7030205455c0d2b3b3c2b7dc3f656ea47e56.jpg\";i:2;s:52:\"cropped/e8e63b4d6bfb0d4b1197ce6175d36563c7d1c661.jpg\";i:3;s:52:\"cropped/d41f529a3daf1610a91050368ea3afddd95acef8.jpg\";i:4;s:52:\"cropped/21e9ed5958d2dc9aad8d10fedac266a44d78d3e4.jpg\";i:5;s:52:\"cropped/6d02723f2d2cf53528e47ebc8d505254fd29c678.jpg\";}'),
(5, '3-5 Personas - Exclusivas', 'a:12:{i:0;s:52:\"cropped/fa125013898f4f7c51acd43878566d03e8aada33.jpg\";i:1;s:52:\"cropped/957950c1fcbe23f1820973a2001f7add0ba76721.jpg\";i:2;s:52:\"cropped/46cf7d9c2662326234780e8669a4012a6cee99a6.jpg\";i:3;s:52:\"cropped/a259a4de7213ddee1590d78fa3a405eb9587425e.jpg\";i:4;s:52:\"cropped/983050d0da9b121d701b195a399167fe58066138.jpg\";i:5;s:52:\"cropped/751b810cb5d8226637266d07d71ddf44c09cb1bd.jpg\";i:6;s:52:\"cropped/7b8ee8312a40736abe1cc54d7188d21625298aae.jpg\";i:7;s:52:\"cropped/5f494d35f54f88e395cf4e988352a8d5a8c5c344.jpg\";i:8;s:52:\"cropped/6237fe07ab9768d31dc2ea7b0ef6e87dd768ee24.jpg\";i:9;s:52:\"cropped/ab02845aee0eb20043d310c61690f22af22f33b5.jpg\";i:10;s:52:\"cropped/e9d7f666c21e3a59fc306c771c99692b241bebf5.jpg\";i:11;s:52:\"cropped/a20e090ff88e3c8f07f3aa2468b5e569c8e7926e.jpg\";}'),
(6, '3-5 Personas - Piedra Azul', 'a:6:{i:0;s:52:\"cropped/627418c64038af24296fb5ed4bcf1b6544d1bfb4.jpg\";i:1;s:52:\"cropped/b737d3e569f77982740f7ca60de2b79c118a2c6d.jpg\";i:2;s:52:\"cropped/f3bb128af5bcf052cc0f290847109bbc412ffd84.jpg\";i:3;s:52:\"cropped/c0cb0b3f3ea186b0f9c79ece14bd96a1ad4ca200.jpg\";i:4;s:52:\"cropped/de455892ee6aa9f28b69d97b0d1e8c7c52eb1956.jpg\";i:5;s:52:\"cropped/201dbc67cc5ce2a5d41716e775b1a645b167381f.jpg\";}'),
(7, '3-5 Personas - El Puente', 'a:7:{i:0;s:52:\"cropped/203b8d93eca6593419e65a7ff58f9c0e6141c27f.jpg\";i:1;s:52:\"cropped/ff4813fe3bddedd3660231f686e9903675fdd0b3.jpg\";i:2;s:52:\"cropped/c85768461295f3a5c22c7d2869076b90ea1d7e54.jpg\";i:3;s:52:\"cropped/2c065124e1027db297041dfe68a9bbc82fdad5d3.jpg\";i:4;s:52:\"cropped/0988fa62a2921c2c2308ebf2b8728ad67d12ad48.jpg\";i:5;s:52:\"cropped/50625bead5347ca274921771627fb338ff459c7d.jpg\";i:6;s:52:\"cropped/1e014fdb539d832fc12d4a00c6c2d025a857ec7e.jpg\";}'),
(8, '6-7 Personas - Cortaderas', 'a:6:{i:0;s:52:\"cropped/38cb86d3daa02f1a1e7941ecd9bfd08912bd558f.jpg\";i:1;s:52:\"cropped/edf66e7e84f773f52f30ceb660e8c8e713c78271.jpg\";i:2;s:52:\"cropped/2108b3f69f876135bdacd44d48d64f726bfa8956.jpg\";i:3;s:52:\"cropped/82bd88dda99d39ecf6c0eca10ed586e0e5590593.jpg\";i:4;s:52:\"cropped/7767193ba10b7cd5c1124e0ec1a23d48cb6f37aa.jpg\";i:5;s:52:\"cropped/aa5e820bbbf7241fbb539e7f33edbf19882988d5.jpg\";}'),
(9, '6-7 Personas - Mares', 'a:6:{i:0;s:52:\"cropped/753d3c2aafddaa46fdd9fa26dea082237382ddb6.jpg\";i:1;s:52:\"cropped/ea083b27a558e9f940f418844295c16ad37fc571.jpg\";i:2;s:52:\"cropped/f83a205e1aa8950260ce83711fa7350d9d9e243e.jpg\";i:3;s:52:\"cropped/6d029f36642dad136f609009434662462de1f1eb.jpg\";i:4;s:52:\"cropped/b2a20e3b0b8c9ac1e38287f53c2f4f8f4cd8b1fb.jpg\";i:5;s:52:\"cropped/485c9f330908b5db335a6c11c9c3883067aec5f1.jpg\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `generica` tinyint(1) DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`id`, `nombre`, `fecha_publicacion`, `fecha_vencimiento`, `generica`, `descripcion`, `mensaje`, `imagen`, `orden`) VALUES
(1, 'FÍNES DE SEMANAS', '2018-08-15', '2020-01-01', 1, 'Reservas mínimas 2 noches, desde 2 a 6 Personas', NULL, 'cropped/c71b82860beb934e9d9ffcb7a7bd0f6616e622f0.jpeg', 1),
(2, 'VERANO 2020', '2014-01-01', '2022-01-01', 1, 'Ya contamos con los valores para la próxima temporada de Verano 2020!!!!', NULL, 'cropped/f66938eb9f6940907ed6fc9ce6b99a96abccd0e6.jpg', 2),
(3, 'FERIADO 12 DE OCTUBRE', '2014-01-01', '2022-08-14', 1, 'Del 11 al 14 de Octubre, te esperamos para que disfrutes de unos días!!!', NULL, 'cropped/63b6a7b399bf7faf9fd000b61f63882df4ae4163.jpeg', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
