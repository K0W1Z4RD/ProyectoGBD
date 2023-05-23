-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2023 a las 09:19:52
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
-- Base de datos: `sat_global`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`ID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beatmakers`
--

CREATE TABLE `beatmakers` (
  `artistas_ID` int(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `beatmakers`
--

INSERT INTO `beatmakers` (`artistas_ID`, `username`, `email`, `password`) VALUES
(4, 'BMaster9000', 'beatmaster9000@gmail.com', 'pass1234'),
(7, 'DJBeats', 'djbeats@gmail.com', '12345abc'),
(5, 'DJMixer99', 'djmixer99@hotmail.com', 'securepass'),
(2, 'oldpurp', 'oldpurp@gmail.com', 'viejomorao'),
(1, 'ricorundat', 'ricorundat@gmail.com', 'bienricodato'),
(6, 'TheBeatWizard', 'thebeatwizard@yahoo.com', 'p@ssw0rd'),
(8, 'TheRealByte', 'therealbeatmaker@outlook.com', 'qwerty123'),
(3, 'zero', 'zero@gmail.com', '00passw0rd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cantantes`
--

CREATE TABLE `cantantes` (
  `artistas_ID` int(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cantantes`
--

INSERT INTO `cantantes` (`artistas_ID`, `username`, `email`, `password`) VALUES
(12, 'AnaCervantes', 'anabocervantes@gmail.com', 'mypass123'),
(13, 'CarlitosDobleA', 'carlos_aaaa@outlook.com', 'popstar12'),
(9, 'JuanitoBanana', 'juan.canta@gmail.com', 'mypass123'),
(14, 'Laureto', 'laueraa@gmail.com', 'singer23'),
(11, 'LuisPonzi', 'luissito@yahoo.com', 'rockstar777'),
(10, 'MariaPastori', 'maria_cantautora@hotmail.com', 'singer456'),
(15, 'ro.oberto', 'robertocantabien@yahoo.com', 'popstar12'),
(16, 'SofiSins', 'lasufiia@gmail.com', 'singer23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diseñadores`
--

CREATE TABLE `diseñadores` (
  `artistas_ID` int(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `diseñadores`
--

INSERT INTO `diseñadores` (`artistas_ID`, `username`, `email`, `password`) VALUES
(23, 'airesmoro', 'moroaire@gmail.com', 'mononomono'),
(20, 'bierutmaikel', 'elmaiky@gmail.com', 'kelokurabeirut'),
(17, 'chipkidd', 'ChipKidd@gmail.com', 'kidbarato234'),
(24, 'g.lois', 'georgelois@gmail.com', 'loelmejoris'),
(18, 'Janoff', 'robertojanoff@gmail.com', 'jajanoooff'),
(22, 'jbarnbrook', 'brook@gmail.com', 'passworld666'),
(21, 'massivignelli', 'vignelio@gmail.com', 'vigbignelly'),
(19, 'saville', 'elsavillo@gmail.com', 'savutosavut2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `artistas_ID` int(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `direccion` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`artistas_ID`, `username`, `email`, `password`, `direccion`) VALUES
(29, 'animal.sound', 'festival@animalsound.es', 'estaenmurcianovayas', 'RECINTO FERIAL LA FICA - Av. Primero de Mayo, 19, 30003 Murcia, '),
(30, 'fabrik.disco', 'lafabrica@gmail.com', 'makineeofabrikeeo', 'Av. de la Industria, 82, 28970 Humanes de Madrid, Madrid, España'),
(26, 'fibbenicassim', 'eventos@fib.es', 'el.fibras', 'Benicasim, 12560, Castellón'),
(28, 'marina.beachclub', 'entradas@Marinabcvalencia.es', 'elclubmascaro', 'Carrer Marina Real Juan Carlos I, 46011 Valencia, España'),
(25, 'ohvalencia', 'ohvalenciadiscoteca@gmail.com', 'lapeordiscoteca', 'Camí del Marjal, 52. Albal (Valencia)'),
(27, 'zevra', 'entradas@zebrafestival.es', 'lacabra666', ' Playa de Cullera - Cullera, Valencia, España ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_artista`
--

CREATE TABLE `perfil_artista` (
  `ID` int(255) NOT NULL,
  `ARTISTA_ID` varchar(32) DEFAULT NULL,
  `USERNAME` varchar(32) DEFAULT NULL,
  `BIOGRAFIA` varchar(128) DEFAULT NULL,
  `EMAIL_PUBLICO` varchar(64) DEFAULT NULL,
  `LINKS` varchar(32) DEFAULT NULL,
  `N_FOLLOWERS` int(64) DEFAULT NULL,
  `PROFILE_IMG` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil_artista`
--

INSERT INTO `perfil_artista` (`ID`, `ARTISTA_ID`, `USERNAME`, `BIOGRAFIA`, `EMAIL_PUBLICO`, `LINKS`, `N_FOLLOWERS`, `PROFILE_IMG`) VALUES
(1, '7', 'morad', 'Soy un artista de música urbana', 'morad@gmail.com', 'www.morad.com', 1000, 'imagen1.jpg'),
(2, '8', 'juanito', 'Cantante de pop y baladas', 'juanito@gmail.com', 'www.juanito.com', 500, 'imagen2.jpg'),
(3, '9', 'arterse', 'Productor de música electrónica', 'arteser@gmail.com', 'www.arteser.com', 800, 'imagen3.jpg'),
(4, '10', 'losjamones', 'Banda de rock alternativo', 'jamones@gmail.com', 'www.jamones.com', 1200, 'imagen4.jpg'),
(5, '2', 'mailisirus', 'Cantante de música country', 'maili@gmail.com', 'www.maili.com', 900, 'imagen5.jpg'),
(6, '3', 'donomar', 'Grupo de música latina', 'omar@gmail.com', 'www.donomar.com', 1500, 'imagen6.jpg'),
(7, '4', 'skrillex', 'Cantautor de música folk', 'skrillex@gmail.com', 'www.skrillex.com', 700, 'imagen7.jpg'),
(8, '5', 'dubaisouth', 'Dúo de música pop-rock', 'dubaisouth@gmail.com', 'www.dubaisouth.com', 2000, 'imagen8.jpg'),
(9, '28', 'marina.beachclub', 'El BEACH CLUB mas importante de Valencia', 'entredas@marinabvalenica.es', 'youtube.com/marinabeach', 21920, 'fotoperfilmarina.jpg'),
(10, '27', 'animalsound', 'El festival mas bestia de España, si se tenia que hacer en MURCIA.', 'entradas@animalsound.es', 'youtube.com/animalsound', 219313, 'animalperfil.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_posts`
--

CREATE TABLE `perfil_posts` (
  `posts_ID` int(255) NOT NULL,
  `perfil_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil_posts`
--

INSERT INTO `perfil_posts` (`posts_ID`, `perfil_ID`) VALUES
(2, 5),
(3, 9),
(4, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `ID` int(255) NOT NULL,
  `artista_ID` int(255) NOT NULL,
  `titulo` varchar(64) NOT NULL,
  `pais_ID` varchar(32) NOT NULL,
  `genero` varchar(64) NOT NULL,
  `N_Likes` varchar(64) NOT NULL,
  `src_Archivo` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`ID`, `artista_ID`, `titulo`, `pais_ID`, `genero`, `N_Likes`, `src_Archivo`) VALUES
(1, 1, 'nueva cancion con skinny flex <3', 'spain', 'drill', '210', 'fotodrill.jpg'),
(2, 2, 'os gusta como suena este beat?\r\n#yungbeef', 'spain', 'trap', '492', 'yungbeeftypebeat.mp4'),
(3, 28, 'este sabado 15 tenemos a omar montes en directo!\nos esperamos e', 'spain', 'reggaeton', '10210', 'omarmontes_marina.jpg'),
(4, 27, 'ya queda menos para el festival mas esperado de cullera', 'spain', 'reggaeton', '25213', 'videopromocional_playa.mp4'),
(5, 24, 'espero que os guste la portada para badbunny.', 'usa', 'anime', '103321', 'anime_badb.jpg'),
(6, 19, 'Mi cuadro saldrá a subasta el dia 20! mas información en mi perf', 'france', 'realismo', '5002', 'cuadro_realista.jpg'),
(7, 15, 'il mio amore nuova song', 'italy', 'trap', '100', 'songitaliani.mp4'),
(8, 11, 'pasito a pasito el nuevo hit del verano, no te lo puedes perder!', 'puertorico', 'reggaeton', '203123', 'despacitoalpasito.mp4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(100) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `artista_ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `username`, `email`, `password`, `artista_ID`) VALUES
(1, 'juan1musico', 'juan1_musico@gmail.com', 'contrellesa', 12),
(2, 'maria563ca', 'maria453ca@gmail.com', 'senyacoon', 15),
(3, 'carlos33pintor', 'carlospintor@gmail.com', '33leloso', 10),
(4, 'anaescala44', 'anaescala44@gmail.com', 'contrepessa4', 4),
(5, 'pedro55bain', 'pedro55baila@gmail.com', 'ananas662', 5),
(6, 'laura66es', 'laura6es@gmail.com', 'contraassa6', 16),
(7, 'pablerascoci', 'pablococi@gmail.com', '777lotto777', 7),
(8, 'sofia8tora', 'sofia8tora@gmail.com', 'toraxx2123', 18),
(9, 'carolina9', 'carolina9@gmail.com', 'guiterrassa', 9),
(10, 'felipe10foto', 'felipe10foto@gmail.com', 'fotosso1001', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_artista`
--

CREATE TABLE `usuario_artista` (
  `artistas_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_artista`
--

INSERT INTO `usuario_artista` (`artistas_ID`, `user_ID`) VALUES
(1, 9),
(9, 4),
(13, 4),
(2, 4),
(2, 6),
(1, 8),
(25, 8),
(3, 3),
(15, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `beatmakers`
--
ALTER TABLE `beatmakers`
  ADD PRIMARY KEY (`username`),
  ADD KEY `artistas2` (`artistas_ID`);

--
-- Indices de la tabla `cantantes`
--
ALTER TABLE `cantantes`
  ADD PRIMARY KEY (`username`),
  ADD KEY `artistas` (`artistas_ID`);

--
-- Indices de la tabla `diseñadores`
--
ALTER TABLE `diseñadores`
  ADD PRIMARY KEY (`username`),
  ADD KEY `artistas3` (`artistas_ID`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`username`),
  ADD KEY `artistas4` (`artistas_ID`);

--
-- Indices de la tabla `perfil_artista`
--
ALTER TABLE `perfil_artista`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `perfil_posts`
--
ALTER TABLE `perfil_posts`
  ADD KEY `posts_ID` (`posts_ID`),
  ADD KEY `perfil_ID` (`perfil_ID`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_artistas_posts` (`artista_ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_artistas_users` (`artista_ID`);

--
-- Indices de la tabla `usuario_artista`
--
ALTER TABLE `usuario_artista`
  ADD KEY `artistas_ID` (`artistas_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `beatmakers`
--
ALTER TABLE `beatmakers`
  ADD CONSTRAINT `artistas2` FOREIGN KEY (`artistas_ID`) REFERENCES `artistas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cantantes`
--
ALTER TABLE `cantantes`
  ADD CONSTRAINT `artistas` FOREIGN KEY (`artistas_ID`) REFERENCES `artistas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `diseñadores`
--
ALTER TABLE `diseñadores`
  ADD CONSTRAINT `artistas3` FOREIGN KEY (`artistas_ID`) REFERENCES `artistas` (`ID`);

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `artistas4` FOREIGN KEY (`artistas_ID`) REFERENCES `artistas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perfil_posts`
--
ALTER TABLE `perfil_posts`
  ADD CONSTRAINT `perfil_ID_PP` FOREIGN KEY (`perfil_ID`) REFERENCES `perfil_artista` (`ID`),
  ADD CONSTRAINT `posts_ID_PP` FOREIGN KEY (`posts_ID`) REFERENCES `publicaciones` (`ID`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `ID_artistas_posts` FOREIGN KEY (`artista_ID`) REFERENCES `artistas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `ID_artistas_users` FOREIGN KEY (`artista_ID`) REFERENCES `artistas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_artista`
--
ALTER TABLE `usuario_artista`
  ADD CONSTRAINT `artista_ID` FOREIGN KEY (`artistas_ID`) REFERENCES `artistas` (`ID`),
  ADD CONSTRAINT `usuario_ID` FOREIGN KEY (`user_ID`) REFERENCES `usuarios` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
