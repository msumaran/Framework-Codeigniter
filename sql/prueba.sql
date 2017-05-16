-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-05-2017 a las 15:06:25
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `tipo_inbound` enum('exploración','consideración','decisión') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'consideración',
  `tipo` enum('contacto','prospecto','cliente') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cliente',
  `estado` enum('Activo','Perdido','Abandonado') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Activo',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nro_colaboradores` int(20) NOT NULL,
  `via` enum('correo','web','telefono','recomendacion') COLLATE utf8_unicode_ci NOT NULL,
  `score` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `lead_score` int(3) NOT NULL,
  `lead_afinidad` int(4) NOT NULL,
  `brief` enum('si','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `razon_social` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contacto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` text COLLATE utf8_unicode_ci,
  `distrito` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefonos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_contacto` timestamp NULL DEFAULT NULL,
  `interno` enum('si','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `fecha_aniversario` date DEFAULT NULL,
  `analytics` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giros_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `tipo_inbound`, `tipo`, `estado`, `name`, `nro_colaboradores`, `via`, `score`, `lead_score`, `lead_afinidad`, `brief`, `correo`, `web`, `razon_social`, `contacto`, `ruc`, `dni`, `direccion`, `distrito`, `telefonos`, `fecha_inicio`, `fecha_contacto`, `interno`, `fecha_aniversario`, `analytics`, `created_at`, `updated_at`, `giros_id`) VALUES
(1, 'decisión', 'cliente', 'Abandonado', 'Britanico', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Britanico', '', '20523223162', NULL, 'Av Arequipa 2344', 'Miraflores', '4586187', '2013-11-21', NULL, 'no', '2014-03-05', '', '2014-01-16 09:42:45', '2014-01-16 09:42:45', 12),
(2, 'decisión', 'contacto', 'Abandonado', 'Saftepay', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Saftepay', '', '20523476891', NULL, 'Av Angamos 1567', 'Surco', '789654', '2013-11-21', NULL, 'no', '2014-01-10', '', '2014-01-16 09:42:45', '2014-01-16 09:42:45', 11),
(3, 'decisión', 'contacto', 'Abandonado', 'Corporación Jerau', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Corporaci', '', '29523223167', NULL, 'Av Iquitos 2456', 'La Victoria', '4586178', '2013-11-21', NULL, 'no', '2013-11-29', '', '2014-01-16 09:42:45', '2014-01-16 09:42:45', 2),
(4, 'decisión', 'cliente', 'Abandonado', 'Universidad De Ciencias Aplicadas', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Universidad De Ciencias Aplicadas', '', '20553223169', NULL, 'Av Primavera 1987', 'La Molina', '6786187', '2013-11-21', NULL, 'no', '2013-11-28', '', '2014-01-16 09:42:45', '2014-01-16 09:42:45', 12),
(5, 'consideración', 'contacto', 'Perdido', 'Instituto De San Pablo', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Instituto De San Pablo', '', '20983223198', NULL, 'Av Las Palmeras', 'San Isidro', '4586174', '2013-11-21', NULL, 'no', '2013-11-19', '', '2014-01-16 09:42:45', '2014-01-16 09:42:45', 12),
(7, 'decisión', 'contacto', 'Perdido', 'Nativos Digitales', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Nativos Digitales', '', '20523223161', NULL, 'Av San Luis 2147 dpto 302', 'San Borja', '6915472', '0000-00-00', NULL, 'si', '0000-00-00', '', '2014-01-16 09:42:45', '2014-01-16 09:42:45', 13),
(8, 'consideración', 'contacto', 'Abandonado', 'Cmac Piura S.a.c', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Cmac Piura S.a.c', '', '20113604248', NULL, 'Jr Ayacucho n 350-Centro Civico-Piura-Piura-Piura', 'Piura', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-22 21:19:29', '0000-00-00 00:00:00', 8),
(9, 'decisión', 'contacto', 'Abandonado', 'Asociacion Civil San Juan Bautista/ Parque Del Recuerdo', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Asociacion Civil San Juan Bautista/ Parque Del Recuerdo', '', '20523223161', NULL, 'MZA. K LOTE. 1 URB. TAHUAYCANI (COSTADO LINEAS DEL TREN) AREQUIPA - AREQUIPA - SACHACA', '', '6187070', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-22 21:56:37', '0000-00-00 00:00:00', 14),
(10, 'consideración', 'contacto', 'Abandonado', 'Mapfre Peru Vida Compa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Mapfre Peru Vida Compa', '', '20418896915', NULL, 'AV. 28 DE JULIO NRO. 873  LIMA - LIMA - MIRAFLORES', '', '2133333', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:27:54', '0000-00-00 00:00:00', 14),
(11, 'consideración', 'contacto', 'Abandonado', 'Tecnologia De Materiales S.a.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Tecnologia De Materiales S.a.', '', '20123531389', NULL, 'AV. ALAMEDA LOS HORIZONTES NRO. 905 URB. LOT.PRE URBA H. DE VILLA LIMA - LIMA - CHORRILLOS', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:28:43', '0000-00-00 00:00:00', 2),
(12, 'consideración', 'contacto', 'Abandonado', 'Fundacion Para El Desarrollo Agrario', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Fundacion Para El Desarrollo Agrario', '', '20101259014', NULL, 'JR. CAMILO CARRILLO NRO. 325 LIMA - LIMA - JESUS MARIA', '', '4335726/ 4313794', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:30:35', '0000-00-00 00:00:00', 14),
(13, 'consideración', 'contacto', 'Abandonado', 'Maquinaria Nacional S.a. Peru', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Maquinaria Nacional S.a. Peru', '', '20503258901', NULL, 'AV. CRISTOBAL DE PERALTA NORT NRO. 968 URB. SAN IDELFONSO DE MONTERRI LIMA - LIMA - SANTIAGO DE SURCO', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:31:34', '0000-00-00 00:00:00', 3),
(14, 'consideración', 'contacto', 'Abandonado', 'Diveimport S.a.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Diveimport S.a.', '', '20502797230', NULL, 'AV. NICOLAS ARRIOLA NRO. 500 LIMA - LIMA - LA VICTORIA', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:32:20', '0000-00-00 00:00:00', 3),
(17, 'decisión', 'cliente', 'Abandonado', 'Contacto Corredores De Seguros Sa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Contacto Corredores De Seguros Sa', '', '20109922731', NULL, 'AV. DEL PINAR NRO. 180 DPTO. 902 URB. CHACARILLA DEL ESTANQUE LIMA - LIMA - SANTIAGO DE SURCO', '', ' 616 6565', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:35:20', '0000-00-00 00:00:00', 14),
(18, 'decisión', 'contacto', 'Abandonado', 'Lapices Y Conexos S.a. Layconsa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Lapices Y Conexos S.a. Layconsa', '', '20100190100', NULL, 'CAL. ERNESTO GUNTHER NRO. 245 Z.I. PARQUE INDUSTRIAL AREQUIPA - AREQUIPA - AREQUIPA', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:36:17', '0000-00-00 00:00:00', 13),
(19, 'decisión', 'cliente', 'Abandonado', 'Oral Health S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Oral Health S.a.c.', '', '20473719615 ', NULL, 'CAL. SOR TITA NRO. 136 INT. 304 LIMA - LIMA - MIRAFLORES', '', '273-1208', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:36:50', '0000-00-00 00:00:00', 10),
(20, 'consideración', 'contacto', 'Abandonado', 'Universidad De Lima', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Universidad De Lima', '', '20107798049', NULL, 'AV. JAVIER PRADO ESTE NRO. 4600 URB. FUNDO MONTERRICO CHICO LIMA - LIMA - SANTIAGO DE SURCO', '', '4376767', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:37:22', '0000-00-00 00:00:00', 12),
(21, 'decisión', 'contacto', 'Perdido', 'Oficina Nacional De Procesos Electorales', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Oficina Nacional De Procesos Electorales', '', '20291973851', NULL, 'JR. WASHINGTON NRO. 1894 LIMA - LIMA - LIMA', '', '417-0630', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:38:29', '0000-00-00 00:00:00', 14),
(22, 'consideración', 'contacto', 'Perdido', 'Universidad Autonoma Del Peru S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Universidad Autonoma Del Peru S.a.c.', '', '20521449731', NULL, 'CAR. PANAMERICANA SUR KM. 16.3 MZA. A LOTE. 06 LIMA - LIMA - VILLA EL SALVADOR', '', '7153333 ', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:40:00', '0000-00-00 00:00:00', 12),
(23, 'consideración', 'contacto', 'Abandonado', 'Central Media S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Central Media S.a.c.', '', '20508164191', NULL, 'JR. ESPAÑA NRO. 550 URB. ORRANTIA DEL MAR LIMA - LIMA - MAGDALENA DEL MA', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:40:46', '0000-00-00 00:00:00', 13),
(24, 'consideración', 'contacto', 'Abandonado', 'Magia Comunicaciones S.a.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Magia Comunicaciones S.a.', '', '20332705262', NULL, 'JR. GENERAL BORGONO NRO. 1189 LIMA - LIMA - MIRAFLORES', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:41:32', '0000-00-00 00:00:00', 13),
(25, 'decisión', 'contacto', 'Perdido', 'Latin Brands S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Latin Brands S.a.c.', '', '20521395118', NULL, 'AV. LOS INCAS NRO. 172 INT. 401A LIMA - LIMA - SAN ISIDRO', '', '514-6900', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:44:58', '0000-00-00 00:00:00', 13),
(26, 'consideración', 'contacto', 'Abandonado', 'El S A', 0, 'correo', 'F', 0, 0, 'no', '', '', 'El S A', '', '20100108705 ', NULL, 'AV. PROL IQUITOS NRO. 2625 URB. SAN EUGENIO (ALT. DE LA AV. JAVIER PRADO ESTE) LIMA - LIMA - LINCE', '', '213-7070', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:45:49', '0000-00-00 00:00:00', 2),
(27, 'decisión', 'contacto', 'Abandonado', 'Volcan Compania Minera S.a.a.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Volcan Compania Minera S.a.a.', '', '20383045267', NULL, 'AV. MANUEL OLGUIN NRO. 375 URB. LOS GRANADOS LIMA - LIMA - SANTIAGO DE SURCO', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:46:39', '0000-00-00 00:00:00', 14),
(28, 'consideración', 'contacto', 'Abandonado', 'Empresa Administradora Chungar S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Empresa Administradora Chungar S.a.c.', '', '20100025591', NULL, 'AV. MANUEL OLGUIN NRO. 375 URB. LOS GRANADOS LIMA - LIMA - SANTIAGO DE SURCO', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:47:25', '0000-00-00 00:00:00', 14),
(29, 'consideración', 'contacto', 'Abandonado', 'Palacio Electronico S.a.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Palacio Electronico S.a.', '', '20109444228', NULL, 'AV. BENAVIDES NRO. 347 INT. 59 (CRUCE DE LARCO CON BENAVIDES) LIMA - LIMA - MIRAFLORES', '', '4440416/ 2011800', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 16:55:00', '0000-00-00 00:00:00', 5),
(30, 'consideración', 'contacto', 'Abandonado', 'Fundacion Academia Diplomatica Del Peru', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Fundacion Academia Diplomatica Del Peru', '', '20108022451', NULL, 'AV. FAUSTINO SÁNCHEZ CARRIÓN NRO. 335 URB. SANTA ROSA LIMA - LIMA - SAN ISIDRO', '', ' 2043500 / 2042400', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:00:41', '0000-00-00 00:00:00', 12),
(31, 'consideración', 'contacto', 'Abandonado', 'Samitex Sa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Samitex Sa', '', '20348511824', NULL, 'AV. PROL. IQUITOS NRO. 2625 (2DO PISO) LIMA - LIMA - LINCE', '', '213 1300 ', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:01:48', '0000-00-00 00:00:00', 5),
(32, 'consideración', 'contacto', 'Abandonado', 'Tiendas Peruanas Sa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Tiendas Peruanas Sa', '', '20493020618', NULL, 'AV. AVIACION NRO. 2405 (PISO 3) LIMA - LIMA - SAN BORJA', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:04:28', '0000-00-00 00:00:00', 2),
(33, 'consideración', 'contacto', 'Abandonado', 'Adams S A', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Adams S A', '', '20100108616', NULL, 'AV. PROL IQUITOS NRO. 2625 URB. SAN EUGENIO (ALT. JAVIER PRADO ESTE) LIMA - LIMA - LINCE', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:05:13', '0000-00-00 00:00:00', 5),
(34, 'decisión', 'contacto', 'Abandonado', 'R - Chemical S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'R - Chemical S.a.c.', '', '20492677206 ', NULL, 'AV. BUENAVISTA NRO. 165 INT. 401 URB. CHACARILLA LIMA - LIMA - SAN BORJA', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:06:36', '0000-00-00 00:00:00', 14),
(35, 'decisión', 'contacto', 'Abandonado', 'Rash Peru S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Rash Peru S.a.c.', '', '20378890161', NULL, 'AV. SALAVERRY NRO. 3310  LIMA - LIMA - MAGDALENA DEL MAR', '', '264-2600', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:07:40', '0000-00-00 00:00:00', 5),
(36, 'consideración', 'contacto', 'Perdido', 'Empresa Editora El Comercio S.a.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Empresa Editora El Comercio S.a.', '', '20143229816', NULL, 'JR. ANTONIO MIROQUESADA NRO. 300 LIMA - LIMA - LIMA', '', '311-6500', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:21:21', '0000-00-00 00:00:00', 14),
(37, 'consideración', 'contacto', 'Abandonado', 'Audiopost S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Audiopost S.a.c.', '', '20187266026', NULL, 'CAL. LOS LIBERTADORES NRO. 125 (CRUCE AV.CAMINO REAL CON CHOQUEHUANCA) LIMA - LIMA - SAN ISIDRO', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:24:38', '0000-00-00 00:00:00', 11),
(38, 'consideración', 'contacto', 'Abandonado', '11 Y 6', 0, 'correo', 'F', 0, 0, 'no', '', '', '11 Y 6 Entretenimiento S.a.c', '', '20517232522', NULL, 'AV. BENAVIDES NRO. 501 INT. 408 LIMA - LIMA - MIRAFLORES', '', '652-6284 ', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:25:22', '0000-00-00 00:00:00', 11),
(39, 'decisión', 'contacto', 'Abandonado', 'Maestro Peru Sociedad Anonima', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Maestro Peru Sociedad Anonima', '', '20112273922', NULL, 'JR. SAN LORENZO NRO. 881 LIMA - LIMA - SURQUILLO', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:30:03', '0000-00-00 00:00:00', 5),
(40, 'consideración', 'contacto', 'Abandonado', 'Terra Networks Peru S.a.c', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Terra Networks Peru S.a.c', '', '20432807160', NULL, 'CAL. LOS SAUCES NRO. 374 INT. 903 CONJ. PASEO PRADO  LIMA - LIMA - SAN ISIDRO', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:30:42', '0000-00-00 00:00:00', 9),
(41, 'decisión', 'cliente', 'Abandonado', 'Auroco Publicidad S A', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Auroco Publicidad S A', '', '20111409391', NULL, 'JR. TRINIDAD MORAN NRO. 362  LIMA - LIMA - LINCE', '', '4216591', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:31:29', '0000-00-00 00:00:00', 9),
(42, 'decisión', 'cliente', 'Abandonado', 'Hunter Douglas Peru S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Hunter Douglas Peru S.a.c.', '', '20516444178', NULL, 'JR. JOSE GALDEANO Y MENDOZA NRO. 750 URB. PARQUE UNION (URBANIZACION ZONA INDUSTRIAL) LIMA - LIMA - LIMA', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:33:12', '0000-00-00 00:00:00', 14),
(43, 'consideración', 'contacto', 'Abandonado', 'Seguro Social De Salud', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Seguro Social De Salud', '', '20131257750', NULL, 'AV. DOMINGO CUETO NRO. 120 LIMA - LIMA - JESUS MARIA', '', '2657000 /2656000', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:34:01', '0000-00-00 00:00:00', 10),
(44, 'consideración', 'contacto', 'Abandonado', 'Jurado Nacional De Elecciones', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Jurado Nacional De Elecciones', '', '20131378549', NULL, 'JR. LAMPA NRO. 946 LIMA - LIMA - LIMA', '', '3111700 ', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:34:54', '0000-00-00 00:00:00', 14),
(45, 'decisión', 'contacto', 'Abandonado', 'Instituto Tecnologico De La Produccion', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Instituto Tecnologico De La Produccion', '', '20131369477', NULL, 'CAR. VENTANILLA NRO. K5.2 FND. OQUENDO PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO', '', '5770116 / 5770118 ', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-01-23 17:43:04', '0000-00-00 00:00:00', 14),
(46, 'decisión', 'contacto', 'Abandonado', 'Iver', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Iver', '', '20523223161', NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, '', '2014-02-05 21:24:45', '0000-00-00 00:00:00', NULL),
(47, 'consideración', 'contacto', 'Abandonado', 'Icam', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Icam', '', '2052323161', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-05 21:26:28', '0000-00-00 00:00:00', 14),
(48, 'decisión', 'contacto', 'Abandonado', 'Merino', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Merino', '', '35465776877', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-05 22:59:04', '0000-00-00 00:00:00', 9),
(49, 'decisión', 'contacto', 'Abandonado', 'Hamster', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Hamster', '', '24424243223', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-06 22:38:42', '0000-00-00 00:00:00', 14),
(50, 'consideración', 'contacto', 'Abandonado', '2wbtl', 0, 'correo', 'F', 0, 0, 'no', '', '', '2wbtl', '', '335255245', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-07 14:18:05', '0000-00-00 00:00:00', 11),
(51, 'decisión', 'contacto', 'Perdido', 'The Style Institute', 0, 'correo', 'F', 0, 0, 'no', '', '', 'The Style Institute', '', '422343577', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-10 15:09:35', '0000-00-00 00:00:00', 14),
(54, 'decisión', 'contacto', 'Abandonado', 'Unimar', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Unimar', '', '7688779854', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-11 14:19:31', '0000-00-00 00:00:00', 14),
(55, 'decisión', 'contacto', 'Abandonado', 'Caja Piura', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Caja Piura', '', '7474238984219', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-11 16:10:53', '0000-00-00 00:00:00', 8),
(57, 'decisión', 'cliente', 'Abandonado', 'Promotora Opción', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Promotora Opción', '', '20100341914', NULL, 'CAL. GENERAL SALAVERRY NRO. 152 LIMA - LIMA ', ' MIRAFLORES', '7123500', '2014-02-11', NULL, 'no', '2014-11-25', '', '2014-02-11 22:27:17', '0000-00-00 00:00:00', 8),
(58, 'consideración', 'contacto', 'Abandonado', 'The Style Institute', 0, 'correo', 'F', 0, 0, 'no', '', '', 'The Style Institute', '', '20544021711', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-12 16:30:11', '0000-00-00 00:00:00', 1),
(60, 'decisión', 'contacto', 'Abandonado', 'Coolbox', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Coolbox', '', '668698', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-12 22:44:03', '0000-00-00 00:00:00', 9),
(61, 'decisión', 'cliente', 'Abandonado', 'Grupo Emprendedor De Comunicaciones', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Grupo Emprendedor De Comunicaciones', '', '20512934952', NULL, 'Miraflores', 'Miraflores ', '6522422', '2014-02-01', NULL, 'no', '0000-00-00', '', '2014-02-17 17:03:31', '0000-00-00 00:00:00', 4),
(62, 'decisión', 'contacto', 'Abandonado', 'Antica', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Antica', '', '325556666', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-18 14:13:47', '0000-00-00 00:00:00', 14),
(63, 'decisión', 'contacto', 'Abandonado', 'Puig Peru', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Puig Peru', '', '98147427412943', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-20 17:31:37', '0000-00-00 00:00:00', 14),
(64, 'decisión', 'contacto', 'Abandonado', 'Bodytech', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Bodytech', '', '7457889999999999999', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-25 20:27:11', '0000-00-00 00:00:00', 14),
(65, 'decisión', 'contacto', 'Perdido', 'Automotriz Gildemeister', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Automotriz Gildemeister', '', '20503258901', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-02-25 23:03:59', '0000-00-00 00:00:00', 3),
(68, 'decisión', 'contacto', 'Perdido', 'Los Portales Sa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Los Portales Sa', '', '20301837896', NULL, 'JR. MARISCAL LA MAR NRO. 991 (ESQUINA AV. DEL EJERCITO 1205-1215-1225) ', 'MAGDALENA DEL MAR ', '', '2014-03-04', NULL, 'no', '2014-03-08', '', '2014-03-06 18:16:33', '0000-00-00 00:00:00', 14),
(69, 'decisión', 'contacto', 'Abandonado', 'Besco S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Besco S.a.c.', '', '20416162299', NULL, 'AV. PASEO DE LA REPUBLICA NRO. 3245 INT. 1101 URB. SAN ISIDRO (EDIFICIO EL SENADOR) ', 'SAN ISIDRO', '', '1998-09-24', NULL, 'no', '1998-09-15', '', '2014-03-11 16:44:15', '0000-00-00 00:00:00', 14),
(71, 'decisión', 'contacto', 'Abandonado', 'Dulce Regalo', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Dulce Regalo', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-03-14 14:36:47', '0000-00-00 00:00:00', 4),
(72, 'decisión', 'contacto', 'Abandonado', 'Michael Espiritu', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Michael Espiritu', '', '0000000000', NULL, 'xxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxx', '0000000', '2014-03-11', NULL, 'no', '2014-03-14', '', '2014-03-15 01:31:08', '0000-00-00 00:00:00', 14),
(73, 'decisión', 'contacto', 'Abandonado', 'Kausay Wasi', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Kausay Wasi', '', '99999999999', NULL, 'Tarapaca Street S/N Coya, Calca | Cusco – Peru', '', '', '2013-01-01', NULL, 'no', '2013-01-01', '', '2014-03-17 14:35:58', '0000-00-00 00:00:00', 10),
(74, 'decisión', 'contacto', 'Abandonado', 'Sielsa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Sielsa', '', '999999999', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-03-17 16:48:10', '0000-00-00 00:00:00', 14),
(75, 'decisión', 'contacto', 'Abandonado', 'Josue Diaz', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Josue Diaz', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-03-18 22:12:37', '0000-00-00 00:00:00', 9),
(76, 'decisión', 'contacto', 'Abandonado', 'Corporación Sandoval', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Corporaci', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-03-24 14:04:43', '0000-00-00 00:00:00', 14),
(77, 'decisión', 'contacto', 'Abandonado', 'Luboil Sac', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Luboil Sac', '', '20543259081', NULL, 'Carlos de la Condamine 351, Urb. San José', 'Callao', '304-3812', '2014-03-24', NULL, 'no', '0000-00-00', '', '2014-03-24 23:52:52', '0000-00-00 00:00:00', 14),
(78, 'decisión', 'contacto', 'Abandonado', 'Las Carteras De Mi Abuela', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Las Carteras De Mi Abuela', '', '000000000', NULL, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Lima', '12344567', '2014-03-26', NULL, 'no', '2014-03-26', '', '2014-03-26 20:48:14', '0000-00-00 00:00:00', 2),
(80, 'consideración', 'contacto', 'Abandonado', 'Universidad Privada Del Norte', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Universidad Privada Del Norte', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-03-27 22:39:37', '0000-00-00 00:00:00', 12),
(81, 'decisión', 'contacto', 'Abandonado', 'Buho', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Buho', '', '1234556677', NULL, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Los Olivos', '12345', '2014-03-31', NULL, 'no', '2014-03-31', '', '2014-03-31 23:15:30', '0000-00-00 00:00:00', 4),
(82, 'decisión', 'contacto', 'Abandonado', 'Schettini Rent A Car', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Schettini Rent A Car', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-04-02 16:34:40', '0000-00-00 00:00:00', 3),
(83, 'decisión', 'contacto', 'Abandonado', 'Poderosa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Poderosa', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-04-02 16:56:22', '0000-00-00 00:00:00', 14),
(84, 'decisión', 'contacto', 'Abandonado', 'Lan', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Lan', '', '123344455', NULL, 'xxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxx', '1234567', '2014-04-02', NULL, 'no', '2014-04-02', '', '2014-04-03 15:50:32', '0000-00-00 00:00:00', 6),
(85, 'consideración', 'contacto', 'Abandonado', 'Wiinti S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Wiinti S.a.c.', '', '20548183279', NULL, 'Cal. Gaspar Hernandez Nro. 964', 'LIMA', '', '2012-05-31', NULL, 'no', '2012-06-04', '', '2014-04-04 16:43:56', '0000-00-00 00:00:00', 9),
(86, 'decisión', 'contacto', 'Abandonado', 'Pt Market', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Pt Market', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-04-04 16:57:34', '0000-00-00 00:00:00', 14),
(87, 'decisión', 'contacto', 'Abandonado', 'Motored', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Motored', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-04-07 15:47:19', '0000-00-00 00:00:00', 14),
(88, 'decisión', 'contacto', 'Abandonado', 'Lideratum Procesos S.a.c.', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Lideratum Procesos S.a.c.', '', '20546216048', NULL, 'Av, Conquistadores 948 of. 2 B', 'San Isidro ', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-04-07 21:05:12', '0000-00-00 00:00:00', 12),
(89, 'decisión', 'contacto', 'Abandonado', 'Managed Solutions', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Managed Solutions', '', '000000000', NULL, 'Calle 7 de Junio 195 Oficina 1001', 'Miraflores', '2418697', '2014-04-14', NULL, 'no', '2014-04-14', '', '2014-04-14 21:55:50', '0000-00-00 00:00:00', 8),
(90, 'decisión', 'contacto', 'Perdido', 'Invogastore', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Invogastore', '', '5364546776767878', NULL, '', '', '', '2014-04-16', NULL, 'no', '0000-00-00', '', '2014-04-16 14:09:18', '0000-00-00 00:00:00', 14),
(91, 'decisión', 'contacto', 'Abandonado', 'Haciendo Peru', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Haciendo Peru', '', '00000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-04-16 14:31:51', '0000-00-00 00:00:00', 11),
(92, 'decisión', 'contacto', 'Abandonado', 'Vocé Salon', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Voc', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-04-22 14:02:02', '0000-00-00 00:00:00', 14),
(93, 'decisión', 'contacto', 'Abandonado', 'Allemant', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Allemant', '', '00000000', NULL, 'xxxxxxxxxdddddddddddddd', 'Lima', '', '2014-04-22', NULL, 'no', '0000-00-00', '', '2014-04-22 16:09:11', '0000-00-00 00:00:00', 8),
(94, 'decisión', 'contacto', 'Abandonado', 'Banco Del Comercio', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Banco Del Comercio', '', '42934194717403', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-04-23 23:41:35', '0000-00-00 00:00:00', 14),
(95, 'decisión', 'contacto', 'Abandonado', 'Javier Aguirre De La Cruz', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Javier Aguirre De La Cruz', '', '000000000000', NULL, 'xxxxxxxxxxxxxxxxxxxsfgluh', 'Lima', '987576469', '2014-04-25', NULL, 'no', '2014-04-25', '', '2014-04-25 22:20:57', '0000-00-00 00:00:00', 5),
(96, 'decisión', 'contacto', 'Abandonado', 'Inversiones La Cruz', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Inversiones La Cruz', '', '00000000000', NULL, 'dddddddddddddddddddd', 'Lima', '1234567', '2014-04-29', NULL, 'no', '2014-04-29', '', '2014-04-29 18:20:58', '0000-00-00 00:00:00', 8),
(97, 'decisión', 'contacto', 'Abandonado', 'Aje', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Aje', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-07 13:52:25', '0000-00-00 00:00:00', 14),
(98, 'consideración', 'contacto', 'Abandonado', 'Rimac', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Rimac', '', '0000000000', NULL, 'dhfgkjsfkñlañ', 'Lima', '12456789', '2014-05-07', NULL, 'no', '2014-05-07', '', '2014-05-07 21:23:36', '0000-00-00 00:00:00', 8),
(99, 'decisión', 'contacto', 'Abandonado', 'Aplasta.com', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Aplasta.com', '', '55555555', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-08 14:35:32', '0000-00-00 00:00:00', 14),
(100, 'decisión', 'contacto', 'Abandonado', 'Cusa', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Cusa', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-09 14:29:26', '0000-00-00 00:00:00', 14),
(101, 'consideración', 'contacto', 'Abandonado', 'Samsung', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Samsung', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-09 16:40:10', '0000-00-00 00:00:00', 14),
(102, 'decisión', 'contacto', 'Activo', 'IAB', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Iab', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-09 21:36:44', '0000-00-00 00:00:00', 14),
(103, 'decisión', 'contacto', 'Abandonado', 'Ingeco', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Ingeco', '', '12346789', NULL, '', 'Lima', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-14 14:36:42', '0000-00-00 00:00:00', 14),
(104, 'consideración', 'contacto', 'Abandonado', 'Moshi Moshi Sushi', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Moshi Moshi Sushi', '', '12345678', NULL, 'José Gálvez Barrenechea 476', 'San Isidro', '999999999999999999', '2014-05-14', NULL, 'no', '0000-00-00', '', '2014-05-14 20:23:50', '0000-00-00 00:00:00', 5),
(105, 'decisión', 'contacto', 'Abandonado', 'Direcci', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Direcci', '', '1346790', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-15 18:11:48', '0000-00-00 00:00:00', 11),
(106, 'decisión', 'contacto', 'Abandonado', 'Cafeina', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Cafeina', '', '2222222222', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-19 18:26:23', '0000-00-00 00:00:00', 14),
(107, 'consideración', 'contacto', 'Abandonado', 'Epe', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Epe', '', '225254364', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-19 21:53:50', '0000-00-00 00:00:00', 12),
(108, 'decisión', 'cliente', 'Abandonado', 'Marco Peruana', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Marco Peruana', '', '20100006538', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-22 13:50:19', '0000-00-00 00:00:00', 14),
(109, 'decisión', 'contacto', 'Perdido', 'Teoma Labs Sac', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Teoma Labs Sac', '', '20543302199', NULL, 'CAL. SAN AUGUSTO AURELIO MZA. I1 LOTE. 01C URB. VILLA MARINA (ALT. AV. LOS PINOS Y ALAMEDA SUR) ', 'Chorrillos', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-23 21:37:12', '0000-00-00 00:00:00', 14),
(110, 'decisión', 'contacto', 'Abandonado', 'Proper', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Proper', '', '3333333333', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-28 16:38:19', '0000-00-00 00:00:00', 14),
(111, 'decisión', 'contacto', 'Abandonado', 'Giordano Righetti', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Giordano Righetti', '', '2222222222', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-05-28 23:31:02', '0000-00-00 00:00:00', 14),
(113, 'consideración', 'contacto', 'Abandonado', 'Domiruth Travle', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Domiruth Travle', '', '55555555', NULL, 'Av. Petit Thours 4305', 'Miraflores ', '2156000', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-02 15:50:29', '0000-00-00 00:00:00', 6),
(114, 'decisión', 'contacto', 'Abandonado', 'P', 0, 'correo', 'F', 0, 0, 'no', '', '', 'P', '', '523634565675', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-02 22:50:56', '0000-00-00 00:00:00', 14),
(115, 'decisión', 'contacto', 'Abandonado', 'Hibu', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Hibu', '', '364545586677998', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-02 23:26:01', '0000-00-00 00:00:00', 14),
(116, 'consideración', 'contacto', 'Abandonado', 'Delosi S.a', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Delosi S.a', '', '20100123330 ', NULL, 'AVENIDA JAVIER PRADO OESTE #1650', 'San Isidro', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-03 20:11:47', '0000-00-00 00:00:00', 5),
(117, 'decisión', 'contacto', 'Abandonado', 'Grupo Rpp', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Grupo Rpp', '', '1346587697', NULL, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '', '2014-06-06', NULL, 'no', '2014-06-06', '', '2014-06-06 19:43:03', '0000-00-00 00:00:00', 9),
(118, 'consideración', 'contacto', 'Abandonado', 'Pro Raid', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Pro Raid', '', '55555555', NULL, 'Miraflores', 'Miraflores', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-10 21:39:55', '0000-00-00 00:00:00', 3),
(119, 'consideración', 'contacto', 'Abandonado', 'Overlandes', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Overlandes', '', '5555555', NULL, 'Miraflores', 'Miraflores', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-10 21:48:49', '0000-00-00 00:00:00', 9),
(120, 'consideración', 'contacto', 'Abandonado', 'Euromotors', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Euromotors', '', '5555555', NULL, 'Domingo Orue', 'Surquillo', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-10 21:52:31', '0000-00-00 00:00:00', 3),
(121, 'consideración', 'contacto', 'Abandonado', 'Braillard', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Braillard', '', '55555555', NULL, 'av. paseo la republica ', 'La victoria', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-10 21:53:07', '0000-00-00 00:00:00', 3),
(122, 'decisión', 'contacto', 'Abandonado', 'Gu', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Gu', '', '555555', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-10 22:11:07', '0000-00-00 00:00:00', 14),
(123, 'consideración', 'contacto', 'Abandonado', 'Rpp', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Rpp', '', '5555', NULL, 'Av. Paseo de la República', 'San Isidro', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-11 22:11:47', '0000-00-00 00:00:00', 9),
(124, 'decisión', 'contacto', 'Perdido', 'Xtreme Team', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Xtreme Team', '', '3333333333', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-12 14:14:03', '0000-00-00 00:00:00', 14),
(126, 'decisión', 'contacto', 'Abandonado', 'Grupo Socopur', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Grupo Socopur', '', '555555555', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-13 16:47:20', '0000-00-00 00:00:00', 3),
(127, 'decisión', 'contacto', 'Abandonado', 'Ssang Yong', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Ssang Yong', '', '5555555', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-13 22:04:49', '0000-00-00 00:00:00', 3),
(129, 'consideración', 'contacto', 'Perdido', 'Univesidad Agraria La Molina', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Univesidad Agraria La Molina', '', '20147897406', NULL, 'AV. LA MOLINA NRO. SN LA MOLINA (CRUCE DE J. PRADO ESTE CON AV. LA MOLINA) ', 'LA MOLINA', '', '2014-06-23', NULL, 'no', '0000-00-00', '', '2014-06-24 17:01:18', '0000-00-00 00:00:00', 12),
(130, 'consideración', 'contacto', 'Abandonado', 'Krasnamur', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Krasnamur', '', '123567889', NULL, 'ddddddddddddd', '', '', '2014-06-24', NULL, 'no', '0000-00-00', '', '2014-06-25 00:37:48', '0000-00-00 00:00:00', 2),
(131, 'decisión', 'contacto', 'Abandonado', 'Javier Paredes', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Javier Paredes', '', '10764691', NULL, '', 'Miraflores', '991353122', '2014-06-25', NULL, 'si', '2014-06-25', '', '2014-06-25 14:17:49', '0000-00-00 00:00:00', 14),
(132, 'decisión', 'contacto', 'Abandonado', 'Bodybasics', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Bodybasics', '', '2356546474', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-25 21:07:02', '0000-00-00 00:00:00', 14),
(133, 'decisión', 'contacto', 'Perdido', 'Mec', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Mec', '', '442325552464', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-26 16:04:36', '0000-00-00 00:00:00', 14),
(135, 'decisión', 'contacto', 'Abandonado', 'Payless Peru', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', '900000000000000', NULL, 'Calle Martir Olaya 129 Ofic. 804 ', 'Miraflores', '', '2014-06-26', NULL, 'no', '0000-00-00', '', '2014-06-26 21:06:33', '0000-00-00 00:00:00', 2),
(136, 'decisión', 'contacto', 'Abandonado', 'Instituto de Formación Bancaria', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Instituto de Formación Bancaria', '', '5555555', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-06-27 17:26:54', '0000-00-00 00:00:00', 12),
(137, 'decisión', 'contacto', 'Abandonado', 'IFB', 0, 'correo', 'F', 0, 0, 'no', '', '', 'INST.DE FORMACION BANCARIA-IFB  ', '', '20294864092  ', NULL, 'AV. AVENIDA SANTIAGO DE SURCO #4717  ', 'Santiago de Surco', '2255208 - 2251414 - 2020900 ', '2014-07-01', NULL, 'no', '0000-00-00', '', '2014-07-01 20:11:53', '0000-00-00 00:00:00', 12),
(138, 'decisión', 'contacto', 'Abandonado', 'La República Digital', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Grupo La República Digital', '', '20548565554', NULL, 'Camaná 320', 'Cercado de Lima', '711-6000', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-04 17:29:13', '0000-00-00 00:00:00', 11),
(139, 'decisión', 'contacto', 'Activo', 'Heurística', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', '3333333333', NULL, '', '', '', '0000-00-00', NULL, 'si', '0000-00-00', '', '2014-07-07 22:56:10', '0000-00-00 00:00:00', 14),
(140, 'decisión', 'contacto', 'Abandonado', 'SUSALUD', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', '00000000000000', NULL, '', '', '', '2014-07-08', NULL, 'no', '0000-00-00', '', '2014-07-08 14:16:58', '0000-00-00 00:00:00', 10),
(141, 'consideración', 'contacto', 'Abandonado', 'CAMARA DE COMERCIO DE LIMA', 0, 'correo', 'F', 0, 0, 'no', '', '', 'CAMARA DE COMERCIO DE LIMA', '', '20101266819', NULL, 'AV. GIUSEPPE GARIBALDI NRO. 396 ', 'JESUS MARIA', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-09 13:48:33', '0000-00-00 00:00:00', 14),
(142, 'consideración', 'contacto', 'Abandonado', 'DECORTINAS', 0, 'correo', 'F', 0, 0, 'no', '', '', 'GUADALMINA SAC', '', '20492135144', NULL, 'Emilio Cavenecia 220 oficina 11', 'San Isidro.', '440 1886', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-09 23:16:55', '0000-00-00 00:00:00', 14),
(143, 'decisión', 'contacto', 'Abandonado', 'IsoTools', 0, 'correo', 'F', 0, 0, 'no', '', '', 'ISOTOOLS EXCELLENCE PERU SOCIEDAD ANONIMA CERRADA-ISOTOOLS EXCELLENCE PERU S.A.C.', '', '20556605816', NULL, 'AV. LARCO NRO. 1150 INT. 806 LIMA - LIMA ', 'MIRAFLORES', '', '2014-07-10', NULL, 'no', '2014-02-19', '', '2014-07-10 19:15:48', '0000-00-00 00:00:00', 7),
(144, 'decisión', 'contacto', 'Perdido', 'Hawaiian Tropic', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Hawaiian Tropic', '', '9736373383635373', NULL, 'hkdnadskasdasdkasd', 'ndkandkadsaisdjda', '245566446', '2014-07-11', NULL, 'no', '0000-00-00', '', '2014-07-11 14:59:19', '0000-00-00 00:00:00', 14),
(145, 'decisión', 'contacto', 'Perdido', 'Schick', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Schick', '', '4723939383992', NULL, 'ndKHBDaskdandas', 'dasfefeefa', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-11 16:32:09', '0000-00-00 00:00:00', 14),
(147, 'decisión', 'contacto', 'Abandonado', 'Eduardo Gonzalez', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', '000000002', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-15 16:26:02', '0000-00-00 00:00:00', 14),
(148, 'decisión', 'contacto', 'Perdido', 'Nuevo Mundo', 0, 'correo', 'F', 0, 0, 'no', '', '', '1224364356545', '', '525355225', NULL, '', '', '', '0000-00-00', NULL, 'no', '2014-08-23', '', '2014-07-23 15:46:55', '0000-00-00 00:00:00', 14),
(149, 'decisión', 'contacto', 'Abandonado', 'Bruno Crespo', 0, 'correo', 'F', 0, 0, 'no', '', '', '14241153355', '', '23344455', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-23 17:12:06', '0000-00-00 00:00:00', 14),
(150, 'consideración', 'contacto', 'Activo', 'comScore ', 0, 'correo', 'F', 0, 0, 'no', '', '', 'comScore Peru SAC', '', '20471615251', NULL, 'Calle Begonias 415, Edif. Begonias Piso 11 Of. 1115', 'San Isidro', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-23 20:53:48', '0000-00-00 00:00:00', 13),
(151, 'decisión', 'contacto', 'Perdido', 'Avansys', 0, 'correo', 'F', 0, 0, 'no', '', '', 'INSTITUTO DE EDUCACION SUPERIOR TECNOLOGICO PRIVADO RED AVANSYS SAC', '', '20349287111', NULL, 'JR. URUGUAY NRO. 514 LIMA', 'Lima', '4115888', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-25 22:13:37', '0000-00-00 00:00:00', 12),
(152, 'consideración', 'contacto', 'Abandonado', 'Daniel Alejandro', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Daniel Alejandro', '', '00000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-07-31 20:31:28', '0000-00-00 00:00:00', 14),
(153, 'decisión', 'contacto', 'Perdido', 'Grupo Vital', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Omnia Médica S.A.C.', '', '20100349061', NULL, 'Jr. Mariscal la Mar Nro. 991 (3er. Piso)', 'Magdalena', '627-1000', '2014-07-31', NULL, 'no', '0000-00-00', '', '2014-07-31 20:34:50', '0000-00-00 00:00:00', 10),
(154, 'decisión', 'contacto', 'Abandonado', 'Jockey Plaza', 0, 'correo', 'F', 0, 0, 'no', '', '', 'ADMINISTRADORA JOCKEY PLAZA SHOPPING CENTER SA', '', '20306841506', NULL, 'Av. Javier Prado Este 4200 Monterrico', 'Santiago de Surco', '716-2000 Anexo:1420', '2014-08-01', NULL, 'no', '0000-00-00', '', '2014-08-01 21:09:39', '0000-00-00 00:00:00', 2),
(155, 'decisión', 'contacto', 'Abandonado', 'PLAN VITAL', 0, 'correo', 'F', 0, 0, 'no', '', '', 'EMERGENCIA MEDICA S.A', '', '20111058823', NULL, 'JR. MARISCAL LA MAR NRO. 991 (3ER. PISO) ', 'MAGDALENA DEL MAR', '', '2014-08-01', NULL, 'no', '2014-08-01', '', '2014-08-01 21:15:31', '0000-00-00 00:00:00', 10),
(156, 'decisión', 'contacto', 'Abandonado', 'SOLO ATOMIZADORES', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', '0000000000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-08-04 14:37:26', '0000-00-00 00:00:00', 13),
(158, 'decisión', 'contacto', 'Abandonado', 'BARLETTA', 0, 'correo', 'F', 0, 0, 'no', '', '', 'BARLETTA S.A.', '', '20122278337', NULL, 'AV. SEPARADORA INDUSTRIAL NRO. 475 Z.I. LOS ALAMOS', 'ATE', '989156614', '2014-08-04', NULL, 'no', '0000-00-00', '', '2014-08-04 19:14:05', '0000-00-00 00:00:00', 5),
(159, 'decisión', 'contacto', 'Abandonado', 'Carlo Mautino', 0, 'correo', 'F', 0, 0, 'no', '', '', 'SIAMO EIRL', '', '20556866296', NULL, 'CAL. NUEVA ESPARTA NRO. 141 URB. ORRANTIA DEL MAR ', 'San Isidro', '', '2014-08-05', NULL, 'no', '0000-00-00', '', '2014-08-05 16:28:43', '0000-00-00 00:00:00', 12),
(160, 'consideración', 'contacto', 'Abandonado', 'EPENSA', 0, 'correo', 'F', 0, 0, 'no', '', '', 'GRUPO EPENSA SA', '', '20554694153', NULL, 'JR. JORGE SALAZAR ARAOZ NRO. 171', 'La Victoria', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-08-05 17:18:17', '0000-00-00 00:00:00', 11),
(161, 'decisión', 'cliente', 'Activo', 'Banco Financiero', 0, 'correo', 'F', 0, 0, 'no', '', '', 'BANCO FINANCIERO DEL PERU', '', '20100105862', NULL, 'AV. RICARDO PALMA NRO. 278 RES. MIRAFLORES (OVALO CENTRAL DE MIRAFLORES)', 'Miraflores', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-08-05 17:40:40', '0000-00-00 00:00:00', 8),
(162, 'consideración', 'contacto', 'Abandonado', 'AMERICA TELEVISION', 0, 'correo', 'F', 0, 0, 'no', '', '', 'CIA PERUANA DE RADIODIFUSION S A', '', '20100049008', NULL, 'JR. MONTERO ROSAS NRO. 1099 URB. SANTA BEATRIZ', 'LIMA', '', '2014-08-07', NULL, 'no', '0000-00-00', '', '2014-08-08 17:55:01', '0000-00-00 00:00:00', 11),
(163, 'decisión', 'contacto', 'Abandonado', 'PRAYAGA', 0, 'correo', 'F', 0, 0, 'no', '', '', 'GRUPO PRAYAGA', '', '20392825933', NULL, 'CAL. LAS GOLONDRINAS NRO. 393 DPTO. 401 ', 'San Isidro', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-08-12 15:43:11', '0000-00-00 00:00:00', 9),
(164, 'decisión', 'contacto', 'Abandonado', 'PARTES & STYLOS', 0, 'correo', 'F', 0, 0, 'no', '', '', 'PARTES & STYLOS SRL', '', '20492603695', NULL, 'AV. ANGAMOS ESTE MZA. B LOTE. 58 DPTO. 302 URB. PAPA JUAN XXIII', 'San Borja', '796 2491', '2014-08-11', NULL, 'no', '0000-00-00', '', '2014-08-12 15:49:39', '0000-00-00 00:00:00', 13),
(165, 'decisión', 'contacto', 'Perdido', 'Keeway', 0, 'correo', 'F', 0, 0, 'no', '', '', '831740127097214', '', '1424335252', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-08-15 20:02:31', '0000-00-00 00:00:00', 14),
(166, 'decisión', 'contacto', 'Activo', 'BSH Electrodomésticos S.A.C. ', 0, 'correo', 'F', 0, 0, 'no', '', '', 'BSH Electrodomésticos S.A.C. ', '', '20330444372', NULL, 'AV. ELMER FAUCETT NRO. 3551 ', 'Callao', '714 7400 Ext. 5294', '2014-08-25', NULL, 'no', '0000-00-00', '', '2014-08-26 14:42:10', '0000-00-00 00:00:00', 14),
(167, 'decisión', 'contacto', 'Abandonado', 'DIMFER', 0, 'correo', 'F', 0, 0, 'no', '', '', 'DISTRIBUIDORA E IMPORTADORA DE MADERA Y FERRETERIA S.A.C', '', '20512240195', NULL, '', '', '', '2006-01-02', NULL, 'no', '2006-01-02', '', '2014-08-27 14:19:48', '0000-00-00 00:00:00', 13),
(168, 'decisión', 'contacto', 'Abandonado', 'AUNA', 0, 'correo', 'F', 0, 0, 'no', '', '', 'GRUPO SALUD DEL PERÚ S.A.C  ', '', '20477840427 ', NULL, 'AV. gUARDIA CIVIL 451 SAN BORJA', 'SAN BORJA', '205 3500', '2014-08-27', NULL, 'no', '0000-00-00', '', '2014-08-27 22:45:17', '0000-00-00 00:00:00', 10),
(169, 'consideración', 'contacto', 'Abandonado', 'The Phoenix Club', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', '20137416540  ', NULL, 'JR. JIRON SANTA LUISA #205  ', 'San Isidro', '4409076  ', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-08-29 20:06:08', '0000-00-00 00:00:00', 14),
(170, 'decisión', 'contacto', 'Abandonado', 'PETROPERU', 0, 'correo', 'F', 0, 0, 'no', '', '', 'PETROLEOS DEL PERU PETROPERU S.A  ', '', '20100128218 ', NULL, 'AV. AVENIDA ENRIQUE CANAVAL MOREYRA #150  ', 'San Isidro', '2117800 / 6145000 ', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-08-30 01:32:02', '0000-00-00 00:00:00', 14),
(171, 'decisión', 'contacto', 'Abandonado', 'Cristal', 0, 'correo', 'F', 0, 0, 'no', '', '', '445566666', '', '4683839393', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-09-05 20:29:03', '0000-00-00 00:00:00', 14),
(172, 'decisión', 'contacto', 'Abandonado', 'Backus Ice ', 0, 'correo', 'F', 74, 0, 'no', '', '', '445566666', '', '4683839393', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-09-16 22:34:08', '0000-00-00 00:00:00', 5),
(173, 'decisión', 'contacto', 'Abandonado', 'Confederación de Nacionalidades Amazónicas del Perú - CONAP', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', '00000000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-09-23 18:43:15', '0000-00-00 00:00:00', 14),
(174, 'decisión', 'contacto', 'Abandonado', 'Acce Auto S.A', 0, 'correo', 'F', 0, 0, 'no', '', '', 'Acce Auto S.A.', '', '20384423508', NULL, 'AV. AVENIDA GUILLERMO DANSEY 2070', 'Lima', '', '1998-03-20', NULL, 'no', '0000-00-00', '', '2014-09-29 15:46:30', '0000-00-00 00:00:00', 3),
(175, 'decisión', 'contacto', 'Abandonado', 'Dazzler', 0, 'correo', 'F', 0, 0, 'no', '', '', '132532554455', '', '3424234', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-09-29 19:07:02', '0000-00-00 00:00:00', 14),
(176, 'decisión', 'contacto', 'Abandonado', 'ABC Capacitaciones', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', '0000000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-10-04 03:20:53', '0000-00-00 00:00:00', 1),
(177, 'decisión', 'cliente', 'Abandonado', 'ESSALUD', 0, 'correo', 'F', 0, 0, 'no', '', '', 'ESSALUD', '', '00000000', NULL, '000000', '000000', '000000', '2014-10-06', NULL, 'no', '0000-00-00', '', '2014-10-06 14:23:20', '0000-00-00 00:00:00', 10),
(178, 'decisión', 'contacto', 'Abandonado', 'UNIVERSIDAD DEL PACIFICO', 0, 'correo', 'F', 0, 0, 'no', '', '', 'UNIVERSIDAD DEL PACIFICO', '', '20109705129', NULL, 'AV. SALAVERRY NRO. 2020 ', 'JESUS MARIA', '', '2014-10-07', NULL, 'no', '0000-00-00', '', '2014-10-07 21:09:51', '0000-00-00 00:00:00', 12),
(179, 'decisión', 'contacto', 'Activo', 'MAKRO', 0, 'correo', 'F', 0, 0, 'no', '', '', 'MAKRO', '', '0000000', NULL, 'Av. Jorge chavez 1218 ', 'SURCO', '', '2014-10-23', NULL, 'no', '0000-00-00', '', '2014-10-24 16:03:44', '0000-00-00 00:00:00', 2),
(180, 'decisión', 'contacto', 'Abandonado', 'G Y H Contratistas', 0, 'correo', 'F', 0, 0, 'no', '', '', 'G Y H Contratistas', '', '00000000', NULL, '', '', '', '0000-00-00', NULL, 'no', '0000-00-00', '', '2014-10-27 22:53:15', '0000-00-00 00:00:00', 14),
(181, 'consideración', 'contacto', 'Abandonado', 'Mercao Negro', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Nicolas Valcarcel', '000000', NULL, '0000', 'SURCO', '000', '2014-10-31', NULL, 'no', '2014-10-31', '', '2014-10-31 21:28:06', '0000-00-00 00:00:00', 0),
(182, 'consideración', 'contacto', 'Abandonado', 'Consultora Peruana', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Javier Gutierrez', '00000000', NULL, '0000', 'Miraflores', 'ooo', '2014-10-31', NULL, 'no', '2014-10-31', '', '2014-10-31 22:08:40', '0000-00-00 00:00:00', 0),
(183, 'consideración', 'contacto', 'Abandonado', 'San Ignacio de Recalde School', 0, 'correo', 'F', 0, 0, 'no', 'egarcia@sir.edu.pe', '', '', 'Eva Garcia', NULL, NULL, '', '', '211-9430 anexo 2102', '2014-11-10', NULL, 'no', NULL, '', '2014-11-10 20:12:07', '0000-00-00 00:00:00', 12),
(184, 'consideración', 'contacto', 'Abandonado', 'Colegio Trener de Monterrico', 0, 'correo', 'F', 0, 0, 'no', 'azegarra@trener.edu.pe', '', '', 'Adania Zegarra', NULL, NULL, '', '', '705-1500', '2014-11-10', NULL, 'no', NULL, '', '2014-11-10 20:13:30', '0000-00-00 00:00:00', 12),
(185, 'consideración', 'contacto', 'Abandonado', 'Colegio Pitagoras', 0, 'correo', 'F', 0, 0, 'no', 'marketing@pitagoras.edu.pe', '', '', 'Wendy Cruz (Asistente)', NULL, NULL, '', '', '719-4523', '2014-11-10', NULL, 'no', NULL, '', '2014-11-10 20:58:09', '0000-00-00 00:00:00', 12),
(186, 'consideración', 'contacto', 'Abandonado', 'Kuchi Salón y Spa', 0, 'correo', 'F', 0, 0, 'no', 'marketing@spakuchi.com', '', '', 'Marita De la Rosa', NULL, NULL, '', '', '225-9232', '2014-11-11', NULL, 'no', NULL, '', '2014-11-11 14:11:07', '0000-00-00 00:00:00', 14),
(187, 'decisión', 'contacto', 'Abandonado', 'VLG', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Fernando Boloña', '000000', NULL, '-', '-', '-', '2014-11-11', NULL, 'no', '2014-11-11', '', '2014-11-11 14:48:10', '0000-00-00 00:00:00', 13),
(188, 'consideración', 'contacto', 'Abandonado', 'Intrigue Salón', 0, 'correo', 'F', 0, 0, 'no', 'sistemas@intrigue.com.pe', '', '', 'no se', NULL, NULL, '', 'Surco', '717-6944', '2014-11-11', NULL, 'no', NULL, '', '2014-11-11 15:28:50', '0000-00-00 00:00:00', 14),
(189, 'consideración', 'contacto', 'Abandonado', 'Revista SoHo', 0, 'correo', 'F', 0, 0, 'no', 'rmorales@comunica2sac.com', '', '', 'Rodrigo Morales', NULL, NULL, '', '', '610-4242', '2014-11-11', NULL, 'no', NULL, '', '2014-11-11 15:51:09', '0000-00-00 00:00:00', 4),
(190, 'consideración', 'contacto', 'Abandonado', 'Specci Salón y Spa', 0, 'correo', 'F', 0, 0, 'no', 'Vlastra@specchi.com.pe  / marketing@specchi.com.pe', '', '', 'Vanessa Lastra-encargada Gisela-Asist', NULL, NULL, '', '', '717-5757 / 717-5754', '2014-11-13', NULL, 'no', NULL, '', '2014-11-13 16:32:07', '0000-00-00 00:00:00', 14);
INSERT INTO `clientes` (`id`, `tipo_inbound`, `tipo`, `estado`, `name`, `nro_colaboradores`, `via`, `score`, `lead_score`, `lead_afinidad`, `brief`, `correo`, `web`, `razon_social`, `contacto`, `ruc`, `dni`, `direccion`, `distrito`, `telefonos`, `fecha_inicio`, `fecha_contacto`, `interno`, `fecha_aniversario`, `analytics`, `created_at`, `updated_at`, `giros_id`) VALUES
(191, 'decisión', 'contacto', 'Abandonado', 'Grupo Best Service', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Nataly Morales', '0000000000', NULL, 'Av. Javier Prado Oeste 1465 ', 'San Isidro', '442 1277', '2014-11-13', NULL, 'no', '2014-11-13', '', '2014-11-13 17:20:47', '0000-00-00 00:00:00', 10),
(192, 'consideración', 'contacto', 'Abandonado', 'Hannah Salon y Spa', 0, 'correo', 'F', 0, 0, 'no', 'hannahregiasydivinas@gmail.com', '', '', 'Manuel', NULL, NULL, '', '', '226-3178 / 226-0090', '2014-11-13', NULL, 'no', NULL, '', '2014-11-13 17:44:02', '0000-00-00 00:00:00', 14),
(193, 'decisión', 'contacto', 'Abandonado', 'GSS', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Jhonnathan Arriola ', '0000000000', NULL, 'Calle Talladores 117 (Cruce de Av La Molina con Separadora Industrial)', 'La Molina', '123456', '2014-11-18', NULL, 'no', '2014-11-18', '', '2014-11-18 21:02:24', '0000-00-00 00:00:00', 11),
(194, 'consideración', 'contacto', 'Abandonado', 'Global Sales Solutions Line SL Sucursal en Perú', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Jhonnattan Jossue Arriola Rojas', '20515056468', NULL, 'Los Talladores 117', 'Ate', '985 480 749', '2014-11-19', NULL, 'no', '2014-11-19', '', '2014-11-19 16:15:15', '0000-00-00 00:00:00', 13),
(195, 'decisión', 'contacto', 'Perdido', 'ASOCIACION AUTOMOTRIZ DEL PERU', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Domenica Castañeda', '20101973922', NULL, 'AV. JAVIER PRADO OESTE NRO. 278', 'San Isidro', '640 3637', '2014-11-19', NULL, 'no', '2014-11-19', '', '2014-11-19 16:17:40', '0000-00-00 00:00:00', 3),
(197, 'decisión', 'contacto', 'Abandonado', ' UNIMAQ S.A.', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Jaime Carozzi Duarte ', '20100027021', NULL, 'Av. Evitamiento 1936', 'Ate', '202-1300 anexo 1403', '2014-11-27', NULL, 'no', '2014-11-27', '', '2014-11-27 17:34:53', '0000-00-00 00:00:00', 14),
(198, 'consideración', 'contacto', 'Perdido', 'Cineplex', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Cinplex', '20429683581', NULL, 'Av Paseo de la republica n 144 int 1044 ', 'Lima', '1', '2014-11-28', NULL, 'no', '2014-11-28', '', '2014-11-28 16:48:58', '0000-00-00 00:00:00', 4),
(199, 'decisión', 'contacto', 'Perdido', 'Global TPA', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Monica Cardenas', '20517063585', NULL, 'AV. PASEO DE LA REPUBLICA NRO. 3195 INT. 703 SAN ISIDRO', 'SAN ISIDRO', '421 6289', '2014-12-09', NULL, 'no', '2014-12-11', '', '2014-12-11 14:29:40', '0000-00-00 00:00:00', 0),
(200, 'decisión', 'contacto', 'Abandonado', 'Tiens', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Pablo Alvarado', '000000002', NULL, 'Oficina', 'Xx', '2322222', '2014-12-12', NULL, 'no', '2014-12-12', '', '2014-12-12 21:52:06', '0000-00-00 00:00:00', 0),
(201, 'decisión', 'contacto', 'Abandonado', 'Cable Vision', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'x', 'x', NULL, 'x', 'Ate', 'x', '2014-12-10', NULL, 'no', '2014-12-12', '', '2014-12-12 22:05:25', '0000-00-00 00:00:00', 0),
(202, 'decisión', 'contacto', 'Abandonado', 'Experian', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Oscar Caicedo', 'x', NULL, 'Av. Canaval y Moreyra 480 of 1001', 'SAN ISIDRO', 'x', '2014-12-12', NULL, 'no', '2014-12-12', '', '2014-12-12 22:07:20', '0000-00-00 00:00:00', 0),
(203, 'decisión', 'contacto', 'Abandonado', 'SOYUZ S A', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Feysalin', '20100023203', NULL, 'Av. Mexico Nro. 333 (Cruce Av Manco Capac y Av Mexico)', 'La Victoria', '2650501', '2015-01-09', NULL, 'no', '2015-01-09', '', '2015-01-09 17:27:23', '0000-00-00 00:00:00', 14),
(204, 'decisión', 'contacto', 'Activo', 'Gnosiscc', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Arturo Diaz', '0000000000000000000', NULL, 'San isidro', 'San isidro', '999172078', '2015-01-16', NULL, 'no', '2015-01-16', '', '2015-01-16 16:44:02', '0000-00-00 00:00:00', 13),
(205, 'decisión', 'contacto', 'Perdido', 'Ministerio de Educación', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'A elegir', '000000007', NULL, 'A elegir', 'A elegir', '0000000', '2015-01-22', NULL, 'no', '2015-01-22', '', '2015-01-22 13:36:47', '0000-00-00 00:00:00', 12),
(206, 'consideración', 'contacto', 'Activo', 'Universidad Nacional Agraria La Molina', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'A elegir', '000000008', NULL, 'La Molina', 'A elegir', '0000000', '2015-01-22', NULL, 'no', '2015-01-22', '', '2015-01-22 13:37:26', '0000-00-00 00:00:00', 12),
(207, 'consideración', 'contacto', 'Abandonado', 'Sarc Education', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Jonathan Casas', '000000005', NULL, 'A elegir', 'A elegir', '0000000', '2015-01-26', NULL, 'no', '2015-01-26', '', '2015-01-26 17:08:18', '0000-00-00 00:00:00', 12),
(208, 'decisión', 'contacto', 'Abandonado', 'Andina de Radiodifusion S.A.C.', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Yadira Stefano', '20100114420', NULL, ' Av. Arequipa Nro. 3570', 'San isidro', '2118800', '2015-01-28', NULL, 'no', '2015-01-28', '', '2015-01-28 21:28:28', '0000-00-00 00:00:00', 9),
(209, 'decisión', 'contacto', 'Abandonado', 'Cable Visión', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'A elegir', '000000008', NULL, 'A elegir', 'A elegir', '0000000', '2015-01-28', NULL, 'no', '2015-01-28', '', '2015-01-28 23:11:57', '0000-00-00 00:00:00', 14),
(211, 'decisión', 'contacto', 'Abandonado', 'MG Cavala', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Rut Ballesteros Gil', '0000000000', NULL, 'Calle Juan Fanning 751', 'Miraflores', '980325242', '2015-02-09', NULL, 'no', '2015-02-09', '', '2015-02-09 18:18:01', '0000-00-00 00:00:00', 7),
(212, 'decisión', 'contacto', 'Activo', 'Peru Retail', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Óscar Ibazeta', '0000000000000', NULL, 'Av. Javier Prado Este #3040 of.302 San Borja', 'San Borja', '658 5899', '2015-02-10', NULL, 'no', '2015-02-10', '', '2015-02-10 22:25:34', '0000-00-00 00:00:00', 11),
(214, 'decisión', 'contacto', 'Abandonado', 'Clabe Andina S.A.C.', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Sumaq Machupicchu Hotel', '20503909007', NULL, 'Calle Costa Rica Nro. 185', 'Miraflores', '470579', '2015-02-13', NULL, 'no', '2015-02-13', '', '2015-02-13 17:36:08', '0000-00-00 00:00:00', 13),
(215, 'decisión', 'contacto', 'Abandonado', 'FACILIDAD PORTUARIA S.A.C', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Sandra cespedez', '20311765222', NULL, 'CAL. CALLE PUMACAHUA #149 - Mollendo - Arequipa', 'Mollendo', '532864', '2015-02-17', NULL, 'no', '2015-02-17', '', '2015-02-17 16:15:36', '0000-00-00 00:00:00', 13),
(216, 'decisión', 'contacto', 'Perdido', 'Universidad Nacional Mayor de San Marcos', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Sin nombre', '000000005', NULL, 'A elegir', 'A elegir', '0000000', '2015-02-24', NULL, 'no', '2015-02-24', '', '2015-02-24 16:39:39', '0000-00-00 00:00:00', 12),
(217, 'decisión', 'contacto', 'Abandonado', 'Arturo Diaz', 0, 'correo', 'F', 0, 0, 'no', 'arturodiaz@gnosiscc.com', '', '', 'Arturo Diaz', NULL, NULL, '', '', '', '2015-03-05', NULL, 'no', NULL, '', '2015-03-05 20:17:40', '0000-00-00 00:00:00', 4),
(218, 'decisión', 'contacto', 'Activo', 'Dunkelvolk', 0, 'correo', 'F', 0, 0, 'no', '', '', '', 'Patricia Briceño', '111111', NULL, 'Av Alameda los Pinos 568 Urb. Villa Marina Chorrillos - Lima - Perú', 'Chorillos', '2555573', '2015-03-08', NULL, 'no', '2015-03-08', '', '2015-03-09 02:17:51', '0000-00-00 00:00:00', 2),
(220, 'decisión', 'contacto', 'Perdido', 'Media Networks Latin America S.A.C', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '20040404', '20335955065', NULL, 'CAL. SCHELL NRO. 310 LIMA - LIMA', 'Miraflores', '2074111', '2015-02-01', NULL, 'no', '2015-03-09', '', '2015-03-09 22:20:08', '0000-00-00 00:00:00', 11),
(221, 'decisión', 'contacto', 'Perdido', 'Ajinomen ', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, 'Av. Paseo de la República 2455', 'La Victoria', NULL, '2015-03-10', NULL, 'no', NULL, '', '2015-03-10 22:34:51', '0000-00-00 00:00:00', 5),
(222, 'decisión', 'contacto', 'Abandonado', 'Caith Home Design', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, '', 'San Borja', NULL, '2015-03-11', NULL, 'no', NULL, '', '2015-03-11 21:24:53', '0000-00-00 00:00:00', 14),
(224, 'consideración', 'contacto', 'Activo', 'Ministerio del Interior', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, 'e', 'e', NULL, '2015-03-13', NULL, 'no', NULL, '', '2015-03-13 16:29:06', '0000-00-00 00:00:00', 14),
(225, 'decisión', 'contacto', 'Abandonado', 'Viviane Sarmiento', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Viviane Sarmiento', '', '00000000', NULL, 'Por definir', 'Por definir', NULL, '2015-03-17', NULL, 'no', '2015-03-18', '', '2015-03-18 14:29:11', '0000-00-00 00:00:00', 14),
(226, 'decisión', 'cliente', 'Abandonado', 'Sibarita ', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.sibaritaperu.com/', 'Por definir', '', '00000000000', NULL, 'Por definir', '', NULL, '2015-03-18', NULL, 'no', '2016-03-18', '', '2015-03-23 16:09:40', '0000-00-00 00:00:00', 5),
(227, 'decisión', 'contacto', 'Abandonado', 'Y&R', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.nativosdigitales.pe', 'Y&R', '', '0000000000', NULL, 'Av. Angamos Oeste 915', 'Miraflores', NULL, '2015-03-23', NULL, 'no', '2015-04-30', '', '2015-03-23 17:15:12', '0000-00-00 00:00:00', 14),
(228, 'decisión', 'contacto', 'Perdido', 'Panbet Curacao N.V.', 0, 'correo', 'F', 0, 0, 'no', '', 'marathonbet.com', 'Por definir', '', '00000000000', NULL, 'España', 'España', NULL, '2015-03-26', NULL, 'no', '2015-03-26', '', '2015-03-26 16:01:57', '0000-00-00 00:00:00', 4),
(229, 'consideración', 'contacto', 'Activo', 'Fabertek', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', '000000000000', NULL, 'no definido', 'no definido', NULL, '2015-03-31', NULL, 'no', '2015-03-31', '', '2015-03-31 14:30:52', '0000-00-00 00:00:00', 14),
(230, 'decisión', 'contacto', 'Abandonado', 'Cenfro Cafe', 0, 'correo', 'F', 0, 0, 'no', '', 'http://cenfrocafe.com.pe/', 'Cenfro Cafe', '', '000000000', NULL, 'Calle Riso 281', 'Lince', NULL, '2015-04-01', NULL, 'no', '2015-04-01', '', '2015-04-01 12:28:38', '0000-00-00 00:00:00', 5),
(231, 'decisión', 'contacto', 'Activo', 'Bolsa de Valores de Lima', 0, 'correo', 'F', 0, 0, 'no', '', 'www.bvl.com.pe', 'por definir', '', '000000000000000000000', NULL, 'Pasaje Santiago Acuña 106, Lima', 'Lima', NULL, '2015-04-10', NULL, 'no', '2015-04-10', '', '2015-04-10 22:09:42', '0000-00-00 00:00:00', 8),
(232, 'decisión', 'contacto', 'Activo', 'Movizzon', 0, 'correo', 'F', 0, 0, 'no', '', 'http://movizzon.com/', 'Por definir', '', '00000000000000000', NULL, 'Por definir', 'Por definir', NULL, '2015-04-13', NULL, 'no', '2015-04-13', '', '2015-04-13 19:46:25', '0000-00-00 00:00:00', 9),
(233, 'decisión', 'contacto', 'Activo', 'Boldsensation', 0, 'correo', 'F', 0, 0, 'no', '', 'www.boldsensation.com', 'Por definir', '', '00000000000000000000', NULL, 'Por definir', 'Por definir', NULL, '2015-04-15', NULL, 'no', '2015-04-15', '', '2015-04-15 23:01:10', '0000-00-00 00:00:00', 7),
(234, 'decisión', 'contacto', 'Activo', 'Rollermedia', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', '00000000000000000000', NULL, 'Por definir', 'Por definir', NULL, '2015-04-23', NULL, 'no', '2015-04-23', '', '2015-04-23 17:46:43', '0000-00-00 00:00:00', 11),
(235, 'decisión', 'contacto', 'Activo', 'Lima Airport Partners', 0, 'correo', 'F', 0, 0, 'no', '', 'https://www.lima-airport.com/esp', 'Por definir', '', '00000000000000000000', NULL, 'Avenida Elmer Faucett s/n - Callao, Perú', 'Callao', NULL, '2015-04-23', NULL, 'no', '2015-04-23', '', '2015-04-23 20:21:05', '0000-00-00 00:00:00', 6),
(236, 'decisión', 'contacto', 'Perdido', 'Gustavo Rodríguez', 0, 'correo', 'F', 0, 0, 'no', '', 'http://gustavorodriguez.pe/', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-04-27', NULL, 'no', '2015-04-27', '', '2015-04-27 14:31:01', '0000-00-00 00:00:00', 11),
(237, 'decisión', 'contacto', 'Activo', 'Visanet', 0, 'correo', 'F', 0, 0, 'no', '', 'http://visanet.com.pe/', '', '', '', NULL, 'Av. José Pardo 831 piso 12', ' Miraflores', NULL, '2015-05-15', NULL, 'no', '2016-05-18', '', '2015-05-18 15:09:14', '0000-00-00 00:00:00', 8),
(238, 'consideración', 'contacto', 'Activo', 'Centuria', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.constructora-centuria.com', 'Centuria', '', '11111111', NULL, 'Enrique Barreda 316 Apolo - Lima 13', 'Lma', NULL, '2015-05-25', NULL, 'no', '2015-05-25', '', '2015-05-25 14:58:40', '0000-00-00 00:00:00', 14),
(239, 'consideración', 'contacto', 'Activo', 'All Center', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.allcenter.pe/', 'All Center', '', 'All Center', NULL, 'JR. CASTROVIRREYNA 900 BREÑA - LIMA PERÚ', 'Breña', NULL, '2015-05-25', NULL, 'no', '2015-05-25', '', '2015-05-25 14:59:29', '0000-00-00 00:00:00', 14),
(240, 'decisión', 'contacto', 'Activo', 'Suatrans Perú', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, '', '', NULL, '2015-05-26', NULL, 'no', NULL, '', '2015-05-26 16:37:09', '0000-00-00 00:00:00', 14),
(241, 'consideración', 'contacto', 'Abandonado', 'Skechers', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.skechers.com/', 'skechers', '', '3432432424', NULL, 'Jesus Maria', 'Jesus Maria', NULL, '2015-06-01', NULL, 'no', '2015-06-01', '', '2015-06-01 19:32:58', '0000-00-00 00:00:00', 2),
(242, 'decisión', 'contacto', 'Perdido', 'Saga Falabella', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.falabella.com.pe/', 'por definir', '', '000000000000', NULL, 'por definir', 'por definir', NULL, '2015-06-10', NULL, 'no', '2015-06-10', '', '2015-06-10 20:17:36', '0000-00-00 00:00:00', 2),
(243, 'consideración', 'contacto', 'Activo', 'Banco de Comercio', 0, 'correo', 'F', 0, 0, 'no', '', 'por definir', 'Por definir', '', '00000000000', NULL, 'Por definir', 'Por definir', NULL, '2015-06-15', NULL, 'no', '2016-06-15', '', '2015-06-15 19:53:12', '0000-00-00 00:00:00', 8),
(244, 'decisión', 'contacto', 'Activo', 'Komatsu', 0, 'correo', 'F', 0, 0, 'no', '', 'www.kmmp.com.pe', 'Por definir', '', '0000000000', NULL, 'Por definir', 'Por definir', NULL, '2015-06-15', NULL, 'no', '2015-06-15', '', '2015-06-15 20:43:46', '0000-00-00 00:00:00', 3),
(245, 'decisión', 'cliente', 'Abandonado', 'Atrápalo', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-06-30', NULL, 'no', '2015-06-30', '', '2015-06-30 21:05:49', '0000-00-00 00:00:00', 6),
(246, 'decisión', 'contacto', 'Abandonado', 'MAKINE', 0, 'correo', 'F', 0, 0, 'no', '', 'Sin definir', '000000000', '', '000000000', NULL, 'Sin definir', 'Sin definir', NULL, '2015-07-02', NULL, 'no', '2015-07-02', '', '2015-07-02 19:48:11', '0000-00-00 00:00:00', 3),
(247, 'decisión', 'contacto', 'Perdido', 'inVictus', 0, 'correo', 'F', 0, 0, 'no', '', 'por definir', 'por definir', '', 'por definir', NULL, 'por definir', 'por definir', NULL, '2015-07-03', NULL, 'no', '2015-07-03', '', '2015-07-03 21:36:20', '0000-00-00 00:00:00', 5),
(248, 'decisión', 'contacto', 'Perdido', 'Portafolio', 0, 'correo', 'F', 0, 0, 'no', '', 'por definir', 'por definir', '', 'por definir', NULL, 'por definir', 'Miraflores', NULL, '2015-07-08', NULL, 'no', '2015-07-08', '', '2015-07-08 14:37:31', '0000-00-00 00:00:00', 2),
(249, 'decisión', 'contacto', 'Activo', 'Transporte Girasoles', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-07-08', NULL, 'no', '2015-07-08', '', '2015-07-08 14:39:09', '0000-00-00 00:00:00', 3),
(250, 'decisión', 'contacto', 'Activo', 'Daihatsu', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.daihatsuperu.com.pe/', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-07-20', NULL, 'no', '2015-07-21', '', '2015-07-20 23:11:19', '0000-00-00 00:00:00', 3),
(251, 'decisión', 'contacto', 'Activo', ' Husqvarna Perú', 0, 'correo', 'F', 0, 0, 'no', '', 'www.husqvarna.com', 'Por definir', '', 'Por definir', NULL, 'Av. Manuel Olguín N°335, Oficina N°904 Centro Empresarial Link Tower Santiago de Surco - Lima - Perú', 'Surco', NULL, '2015-07-27', NULL, 'no', '2016-07-27', '', '2015-07-27 14:01:08', '0000-00-00 00:00:00', 14),
(252, 'decisión', 'contacto', 'Activo', 'Auto Pasión por la Bicolor', 0, 'correo', 'F', 0, 0, 'no', '', 'http://elautopasionporlabicolor.com/', 'por definir', '', 'por definir', NULL, 'por definir', 'por definir', NULL, '2015-08-03', NULL, 'no', '2015-09-03', '', '2015-08-03 23:13:11', '0000-00-00 00:00:00', 4),
(253, 'decisión', 'contacto', 'Activo', 'Vía Libre', 0, 'correo', 'F', 0, 0, 'no', '', 'http://vialibre.org.pe/vl/index.php', 'Por definir', '', 'Por definir', NULL, 'Jr. Paraguay 290', 'Cercado de Lima', NULL, '2015-08-11', NULL, 'no', '2015-09-11', '', '2015-08-11 14:47:56', '0000-00-00 00:00:00', 14),
(254, 'decisión', 'contacto', 'Activo', 'Lima Fitness', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-08-11', NULL, 'no', '2015-08-11', '', '2015-08-11 20:22:52', '0000-00-00 00:00:00', 14),
(255, 'decisión', 'contacto', 'Activo', 'Manual Mania', 0, 'correo', 'F', 0, 0, 'no', '', 'http://manualmania.pe/', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-08-12', NULL, 'no', '2016-08-12', '', '2015-08-12 21:57:48', '0000-00-00 00:00:00', 14),
(256, 'decisión', 'contacto', 'Activo', 'DIABION', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Av. Los Frutales 220, Ate', 'Ate', NULL, '2015-08-14', NULL, 'no', '2015-08-14', '', '2015-08-14 22:12:45', '0000-00-00 00:00:00', 10),
(257, 'consideración', 'contacto', 'Activo', 'Pago Efectivo', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Miraflores', NULL, '2015-08-21', NULL, 'no', '2015-08-21', '', '2015-08-21 19:45:46', '0000-00-00 00:00:00', 8),
(258, 'decisión', 'contacto', 'Activo', 'Esfera Comunicaciones', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'San Isidro', NULL, '2015-08-21', NULL, 'no', '2015-08-21', '', '2015-08-21 23:27:40', '0000-00-00 00:00:00', 11),
(259, 'decisión', 'contacto', 'Activo', 'Themma', 0, 'correo', 'F', 0, 0, 'no', '', 'www.themma.biz', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-08-24', NULL, 'no', '2015-08-24', '', '2015-08-24 16:31:56', '0000-00-00 00:00:00', 14),
(260, 'consideración', 'contacto', 'Activo', 'Cafeína', 0, 'correo', 'F', 0, 0, 'no', '', 'www.cafeina.pe', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-08-27', NULL, 'no', '2015-08-27', '', '2015-08-27 22:10:25', '0000-00-00 00:00:00', 11),
(261, 'consideración', 'contacto', 'Activo', 'Vargas Pareja', 0, 'correo', 'F', 0, 0, 'no', '', 'Por Definir', 'Por Definir', '', 'Por Definir', NULL, 'Por Definir', 'San Isidro', NULL, '2015-09-02', NULL, 'no', '2015-09-02', '', '2015-09-02 20:26:09', '0000-00-00 00:00:00', 14),
(262, 'decisión', 'contacto', 'Activo', 'Vargas-Pareja Abogados', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.vargaspareja.com/', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'San Isidro', NULL, '2015-09-02', NULL, 'no', '2015-09-02', '', '2015-09-02 22:23:09', '0000-00-00 00:00:00', 14),
(263, 'decisión', 'contacto', 'Activo', 'Omnilife Perú', 0, 'correo', 'F', 0, 0, 'no', '', 'https://www.omnilife.com/peru/', 'Por definir', '', 'Por definir', NULL, 'Av. Galvez Barrenechea 298', 'San Isidro', NULL, '2015-09-04', NULL, 'no', '2015-09-04', '', '2015-09-04 17:09:23', '0000-00-00 00:00:00', 13),
(264, 'decisión', 'contacto', 'Activo', 'Minimarket Cono Plus', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Tacna', 'Tacna', NULL, '2015-09-08', NULL, 'no', '2015-09-08', '', '2015-09-08 16:12:08', '0000-00-00 00:00:00', 13),
(265, 'decisión', 'contacto', 'Activo', 'Filtros LYS', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-09-09', NULL, 'no', '2015-09-09', '', '2015-09-09 19:16:02', '0000-00-00 00:00:00', 14),
(266, 'decisión', 'contacto', 'Activo', 'Nexus', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-09-09', NULL, 'no', '2015-09-09', '', '2015-09-09 19:16:47', '0000-00-00 00:00:00', 14),
(267, 'decisión', 'contacto', 'Activo', 'Atento', 0, 'correo', 'F', 0, 0, 'no', '', 'atento.com', 'Por definir', '', 'Por definir', NULL, 'Av. La Molina 190 Ate', 'La Molina ', NULL, '2015-09-14', NULL, 'no', '2015-09-14', '', '2015-09-14 13:57:33', '0000-00-00 00:00:00', 9),
(268, 'decisión', 'contacto', 'Perdido', 'SUNARP', 0, 'correo', 'F', 0, 0, 'no', '', 'www.sunarp.gob.pe', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2015-09-14', NULL, 'no', '2016-09-14', '', '2015-09-14 20:17:38', '0000-00-00 00:00:00', 14),
(269, 'decisión', 'contacto', 'Activo', 'Verisure', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.verisure.pe/', 'Por definir', '', 'Por definir', NULL, 'Surco', 'Surco', NULL, '2015-09-23', NULL, 'no', '2016-09-23', '', '2015-09-23 14:22:32', '0000-00-00 00:00:00', 14),
(270, 'decisión', 'contacto', 'Activo', 'Atulado', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.atulado.pe/Home.php', 'Atulado', '', '', NULL, 'Sin definir', 'Sin definir ', NULL, '2015-10-01', NULL, 'no', '2015-10-01', '', '2015-10-01 14:58:26', '0000-00-00 00:00:00', 10),
(271, 'decisión', 'contacto', 'Activo', 'Seitel', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'Seitel S.A.C', '', 'no definido', NULL, 'no definido', 'no definido ', NULL, '2015-10-01', NULL, 'no', '2015-10-01', '', '2015-10-01 22:28:10', '0000-00-00 00:00:00', 9),
(272, 'consideración', 'contacto', 'Activo', 'Pastelería Rauletti', 0, 'correo', 'F', 0, 0, 'no', '', '.', 'Rauletti', '', '.', NULL, 'Av. Carlos Izaguierre 798 – Urb Las Palmera', 'Los Olivos ', NULL, '2015-10-12', NULL, 'no', '2015-10-12', '', '2015-10-12 20:32:24', '0000-00-00 00:00:00', 5),
(273, 'decisión', 'contacto', 'Activo', 'Carvid Service', 0, 'correo', 'F', 0, 0, 'no', '', 'www.carvidservice.com.pe/', 'Carvit Service', '', '.', NULL, '.', '.', NULL, '2015-10-13', NULL, 'no', '2015-10-13', '', '2015-10-13 15:47:30', '0000-00-00 00:00:00', 13),
(274, 'decisión', 'contacto', 'Activo', 'RIMAC SEGUROS Y REASEGUROS', 0, 'correo', 'F', 0, 0, 'no', '', 'No especifica', 'RIMAC SEGUROS Y REASEGUROS', '', '000000000', NULL, 'No especifica', 'No especifica', NULL, '2015-10-16', NULL, 'no', '2015-10-16', '', '2015-10-16 23:32:22', '0000-00-00 00:00:00', 14),
(275, 'decisión', 'contacto', 'Activo', 'Cuponidad', 0, 'correo', 'F', 0, 0, 'no', '', 'www.cuponidad.pe', 'Cuponidad S.A.C.', '', '25535345346', NULL, 'Jirón Mariscal Miller 2622', 'Lince ', NULL, '2015-10-22', NULL, 'no', '2015-10-22', '', '2015-10-22 23:58:55', '0000-00-00 00:00:00', 13),
(276, 'consideración', 'contacto', 'Activo', 'Prisma Dental', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, 'Ugarte y Moscoso 116', 'San Isidro', NULL, '2015-10-23', NULL, 'no', NULL, '', '2015-10-23 15:40:08', '0000-00-00 00:00:00', 10),
(277, 'decisión', 'contacto', 'Activo', 'Primas Dental', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, '', '', NULL, '2015-10-23', NULL, 'no', NULL, '', '2015-10-23 15:40:30', '0000-00-00 00:00:00', 0),
(278, 'decisión', 'contacto', 'Activo', 'Ajinomoto', 0, 'correo', 'F', 0, 0, 'no', '', 'www.ajinomoto.com.pe', 'Ajinomoto', '', '.', NULL, 'Av. Paseo de la República 2455, La Victoria 15034', 'La Victoria', NULL, '2015-10-27', NULL, 'no', '2015-10-27', '', '2015-10-27 16:11:27', '0000-00-00 00:00:00', 5),
(279, 'decisión', 'contacto', 'Perdido', 'Somark', 0, 'correo', 'F', 0, 0, 'no', '', 'www.somark.pe', 'Somark ', '', 'no definido', NULL, 'Calle Catalina Huanca 120 2do Piso, San Isidro', 'San Isidro ', NULL, '2015-10-27', NULL, 'no', '2015-10-27', '', '2015-10-27 16:16:38', '0000-00-00 00:00:00', 14),
(280, 'decisión', 'contacto', 'Activo', '30:10', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, 'no definido ', 'no definido', NULL, '2015-10-27', NULL, 'no', NULL, '', '2015-10-27 21:23:46', '0000-00-00 00:00:00', 14),
(281, 'decisión', 'contacto', 'Perdido', 'INDECOPI', 0, 'correo', 'F', 0, 0, 'no', '', 'www.indecopi.gob.pe', 'INDECOPI', '', 'no definido', NULL, 'Calle de la Prosa 104', 'San Borja', NULL, '2015-10-28', NULL, 'no', '2015-10-28', '', '2015-10-28 17:21:42', '0000-00-00 00:00:00', 15),
(282, 'decisión', 'cliente', 'Activo', 'CONCYTEC', 0, 'correo', 'F', 0, 0, 'no', '', 'www.portal.concytec.gob.pe/', 'CONCYTEC', '', 'no definido', NULL, 'Calle Grimaldo del Solar N° 346', 'Miraflores', NULL, '2015-10-28', NULL, 'no', '2015-10-28', '', '2015-10-28 17:36:53', '0000-00-00 00:00:00', 7),
(283, 'decisión', 'contacto', 'Activo', 'Dr . Smartphone', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'Dr. Smartphone', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-11-04', NULL, 'no', '2015-11-04', '', '2015-11-04 21:00:50', '0000-00-00 00:00:00', 9),
(284, 'decisión', 'contacto', 'Activo', 'Procitrus', 0, 'correo', 'F', 0, 0, 'no', '', 'www.facebook.com/procitrus/timeline', 'Procitrus', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-11-04', NULL, 'no', '2015-11-04', '', '2015-11-04 21:03:57', '0000-00-00 00:00:00', 5),
(285, 'decisión', 'contacto', 'Activo', 'CONACO', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-11-06', NULL, 'no', '2015-11-06', '', '2015-11-06 20:58:50', '0000-00-00 00:00:00', 15),
(286, 'decisión', 'contacto', 'Activo', 'Bauducco', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, 'Calle Sta. Francisca Romana, 1092', 'Cercado de Lima', NULL, '2015-11-09', NULL, 'no', NULL, '', '2015-11-09 16:34:54', '0000-00-00 00:00:00', 14),
(287, 'decisión', 'contacto', 'Activo', 'PROMPERU', 0, 'correo', 'F', 0, 0, 'no', '', 'www.promperu.gob.pe ', 'no definido', '', 'no definido', NULL, 'Av. Jorge Basadre 610', 'San Isidro', NULL, '2015-11-09', NULL, 'no', '2015-11-09', '', '2015-11-09 20:54:49', '0000-00-00 00:00:00', 15),
(288, 'decisión', 'contacto', 'Activo', 'Dpaso', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-11-09', NULL, 'no', '2015-11-09', '', '2015-11-09 20:59:17', '0000-00-00 00:00:00', 5),
(289, 'decisión', 'contacto', 'Activo', 'Boulevard de Asia', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.boulevardasia.com/', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-11-09', NULL, 'no', '2015-11-09', '', '2015-11-09 21:01:48', '0000-00-00 00:00:00', 14),
(290, 'decisión', 'contacto', 'Abandonado', 'Universidad Señor de Sipan', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.uss.edu.pe/uss/', '', '', '', NULL, 'Km 5 Carretera a Pimentel, Chiclayo', 'Chiclayo', NULL, '2015-11-15', NULL, 'no', '2015-11-15', '', '2015-11-15 22:09:33', '0000-00-00 00:00:00', 12),
(291, 'decisión', 'contacto', 'Perdido', 'Fantasia juguetes', 0, 'correo', 'F', 0, 0, 'no', '', 'sin definir', 'sin definir', '', 'sin definir', NULL, 'sin definir', 'sin definir', NULL, '2015-11-16', NULL, 'no', '2015-11-16', '', '2015-11-16 15:55:44', '0000-00-00 00:00:00', 14),
(292, 'consideración', 'contacto', 'Activo', 'Universidad Señor de Sipán', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido ', NULL, '2015-11-17', NULL, 'no', '2015-11-17', '', '2015-11-17 20:58:20', '0000-00-00 00:00:00', 12),
(293, 'decisión', 'contacto', 'Abandonado', 'Grupo La República', 0, 'correo', 'F', 0, 0, 'no', '', 'No especificado', 'No especificado', '', 'No especificado', NULL, 'No especificado', 'Lima', NULL, '2015-11-18', NULL, 'no', '2015-11-18', '', '2015-11-19 02:16:26', '0000-00-00 00:00:00', 11),
(294, 'decisión', 'contacto', 'Activo', 'Ambulancias Perú salud', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-11-23', NULL, 'no', '2015-11-23', '', '2015-11-23 18:05:03', '0000-00-00 00:00:00', 14),
(295, 'decisión', 'contacto', 'Perdido', 'ELECTROVIA ', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.electrovia.com/', 'ELECTROVIA S.A.C', '', '20332354532', NULL, 'Av. Separadora industrial 4003', 'Ate', NULL, '2015-11-26', NULL, 'no', '2015-11-26', '', '2015-11-26 15:49:46', '0000-00-00 00:00:00', 11),
(296, 'decisión', 'cliente', 'Activo', 'Centro cultural Británico', 0, 'correo', 'F', 0, 0, 'no', '', 'http://centrocultural.britanico.edu.pe/', 'no disponible', '', 'no disponible', NULL, 'Jr. Bellavista 531', 'Miraflores', NULL, '2015-11-30', NULL, 'no', '2015-11-30', '', '2015-11-30 15:20:20', '0000-00-00 00:00:00', 12),
(297, 'decisión', 'contacto', 'Activo', 'Conceptos & ideas', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, 'Av. Javier Prado Este 6241', 'La Molina', NULL, '2015-12-01', NULL, 'no', NULL, '', '2015-12-01 22:52:13', '0000-00-00 00:00:00', 11),
(298, 'decisión', 'contacto', 'Abandonado', 'Lavanderia Palomita', 0, 'correo', 'F', 0, 0, 'no', '', 'no', 'Lavanderia Palomita E.I.R.L', '', '00000000000000000', NULL, 'Surquillo', 'Surquillo', NULL, '2015-12-02', NULL, 'no', '2015-12-02', '', '2015-12-02 14:00:25', '0000-00-00 00:00:00', 13),
(299, 'decisión', 'contacto', 'Activo', 'Peruvian travel service', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido ', 'Peruvian service S.A', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-12-03', NULL, 'no', '2015-12-03', '', '2015-12-03 20:25:05', '0000-00-00 00:00:00', 6),
(300, 'consideración', 'contacto', 'Abandonado', 'Inmobiliaria Barqueros ', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.barqueros.com/', 'Corporacion Barqueros Inmobiliaria Sac', '', '20519028400', NULL, 'Av. Brasil Nro. 727 Int. 1801', 'Jesus Maria', NULL, '2015-12-04', NULL, 'no', '2015-12-04', '', '2015-12-04 16:36:39', '0000-00-00 00:00:00', 14),
(301, 'decisión', 'contacto', 'Activo', 'Cálidda', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.calidda.com.pe/', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-12-07', NULL, 'no', '2015-12-07', '', '2015-12-07 16:46:19', '0000-00-00 00:00:00', 14),
(302, 'decisión', 'contacto', 'Activo', 'Grupo de estudios GOAL', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-12-09', NULL, 'no', '2015-12-09', '', '2015-12-09 15:52:35', '0000-00-00 00:00:00', 12),
(303, 'decisión', 'contacto', 'Perdido', 'TOOLS S.A.C', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'TOOLS S.A.C', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-12-11', NULL, 'no', '2015-12-11', '', '2015-12-11 18:02:45', '0000-00-00 00:00:00', 14),
(304, 'decisión', 'contacto', 'Perdido', 'Radio Uno S-A-C', 0, 'correo', 'F', 0, 0, 'no', '', 'no define', 'no define', '', 'no define', NULL, 'no define', 'no define', NULL, '2015-12-18', NULL, 'no', '2015-12-18', '', '2015-12-18 19:45:30', '0000-00-00 00:00:00', 4),
(305, 'decisión', 'contacto', 'Activo', 'Startkraft', 0, 'correo', 'F', 0, 0, 'no', '', 'www.statkraft.com', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2015-12-29', NULL, 'no', '2015-12-29', '', '2015-12-29 17:56:15', '0000-00-00 00:00:00', 14),
(306, 'decisión', 'contacto', 'Activo', 'Itagro', 0, 'correo', 'F', 0, 0, 'no', '', 'www.itagro.com.pe/', 'Itagro S.A', '', 'no definido', NULL, 'Av. Ingenieros N° 230 La Molina ', 'La molina', NULL, '2016-01-07', NULL, 'no', '2016-01-07', '', '2016-01-07 17:21:31', '0000-00-00 00:00:00', 5),
(307, 'decisión', 'contacto', 'Activo', 'Lourdes Alcorta', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2016-01-08', NULL, 'no', '2016-01-08', '', '2016-01-08 17:39:21', '0000-00-00 00:00:00', 15),
(308, 'decisión', 'cliente', 'Abandonado', 'Coltur Viajes', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.colturviajes.com/', '', '', '', NULL, 'Jr. Jose olaya 272', 'Lima', NULL, '2016-01-11', NULL, 'no', '2016-01-11', '', '2016-01-12 01:46:34', '0000-00-00 00:00:00', 6),
(309, 'decisión', 'contacto', 'Activo', 'Devosinc', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2016-01-12', NULL, 'no', '2016-01-12', '', '2016-01-12 17:42:17', '0000-00-00 00:00:00', 14),
(310, 'decisión', 'contacto', 'Abandonado', 'Grupo Panamericana de Radios', 0, 'correo', 'F', 0, 0, 'no', '', 'http://radiopanamericana.com/', '', '', '', NULL, 'asfasdvadavadvd', 'lima', NULL, '2016-01-13', NULL, 'no', '2016-01-13', '', '2016-01-13 20:50:30', '0000-00-00 00:00:00', 9),
(311, 'decisión', 'contacto', 'Abandonado', 'Costa', 0, 'correo', 'F', 0, 0, 'no', '', 'Por definir', 'Por definir', '', 'Por definir', NULL, 'Por definir', 'Por definir', NULL, '2016-01-19', NULL, 'no', '2016-01-19', '', '2016-01-19 23:49:27', '0000-00-00 00:00:00', 14),
(312, 'decisión', 'contacto', 'Activo', 'Agrovet', 0, 'correo', 'F', 0, 0, 'no', '', 'no disponible', 'no disponible', '', 'no disponible', NULL, 'no disponible', 'no disponible', NULL, '2016-01-20', NULL, 'no', '2016-01-20', '', '2016-01-20 16:12:42', '0000-00-00 00:00:00', 14),
(313, 'consideración', 'contacto', 'Activo', 'AduanPeSa', 0, 'correo', 'F', 0, 0, 'no', '', 'no disponible ', 'no disponible', '', 'no disponible', NULL, 'no disponible', 'no disponible ', NULL, '2016-01-20', NULL, 'no', '2016-01-20', '', '2016-01-20 21:25:18', '0000-00-00 00:00:00', 14),
(314, 'consideración', 'contacto', 'Abandonado', 'Gobierno Regional del Callao', 0, 'correo', 'F', 0, 0, 'no', '', 'www.regioncallao.gob.pe/regionCallao/', 'no definido', '', 'no definido', NULL, 'AV. Elmer Faucett N°3970 ', 'Callao', NULL, '2016-01-21', NULL, 'no', '2016-01-21', '', '2016-01-21 14:29:32', '0000-00-00 00:00:00', 14),
(315, 'decisión', 'contacto', 'Activo', 'Armas Doomo', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, 'Av. Ignacio Merino Nº 2745  ', 'Lince', NULL, '2016-01-21', NULL, 'no', NULL, '', '2016-01-21 16:35:00', '0000-00-00 00:00:00', 14),
(316, 'consideración', 'contacto', 'Activo', 'Lakshmi', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'Av. Grau 257', 'Miraflores', NULL, '2016-01-22', NULL, 'no', '2016-01-22', '', '2016-01-22 17:16:43', '0000-00-00 00:00:00', 14),
(317, 'decisión', 'contacto', 'Activo', 'Nutravel ', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, ' Febres Cordero 1502 y Av.Quito', 'no definido', NULL, '2016-01-27', NULL, 'no', '2016-01-27', '', '2016-01-27 16:57:41', '0000-00-00 00:00:00', 14),
(318, 'decisión', 'contacto', 'Activo', 'Bayer', 0, 'correo', 'F', 0, 0, 'no', '', 'www.bayerandina.com/', 'Bayer S.A', '', 'no definido', NULL, 'Av. Paseo de la República 3074 Piso 10', 'San Isidro', NULL, '2016-01-29', NULL, 'no', '2016-01-29', '', '2016-01-29 18:01:19', '0000-00-00 00:00:00', 10),
(319, 'decisión', 'contacto', 'Activo', 'Milka Import Sac', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido ', 'Milka Import Sac', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2016-02-16', NULL, 'no', '2016-02-16', '', '2016-02-16 14:40:59', '0000-00-00 00:00:00', 14),
(320, 'decisión', 'cliente', 'Abandonado', 'Transmarine Oil', 0, 'correo', 'F', 0, 0, 'no', '', 'w', ' TRANSMARINE OIL S.A.C.', '', '20538112055', NULL, 'Sebastian telleria 383, san isidro (entre la 4 y 5 de Juan de Arona)', 'San Isidro', NULL, '2016-02-25', NULL, 'no', '2016-02-25', '', '2016-02-25 20:12:27', '0000-00-00 00:00:00', 14),
(321, 'decisión', 'contacto', 'Abandonado', 'Clinica Continental', 0, 'correo', 'F', 0, 0, 'no', '', 'clinicacontinental.com', 'CLINICA CONTINENTAL S.A.C.', '', '20537075059', NULL, 'Av. San Borja Sur Nro. 526', 'San Borja', NULL, '2016-02-29', NULL, 'no', '2016-02-29', '', '2016-02-29 14:40:35', '0000-00-00 00:00:00', 10),
(322, 'decisión', 'contacto', 'Activo', 'SEMINARIUM', 0, 'correo', 'F', 0, 0, 'no', '', '', '', '', NULL, NULL, 'Av. Roosevelt-Ex Rep de Pan Nro. 6435', 'Miraflores', NULL, '2016-03-01', NULL, 'no', NULL, '', '2016-03-01 12:00:49', '0000-00-00 00:00:00', 11),
(323, 'decisión', 'contacto', 'Abandonado', 'Julio Sumaran', 0, 'correo', 'F', 0, 0, 'no', '', 'No indica', 'No indica', '', 'No indica', NULL, 'No indica', 'No indica', NULL, '2016-03-01', NULL, 'no', '2016-03-01', '', '2016-03-01 20:55:50', '0000-00-00 00:00:00', 14),
(324, 'decisión', 'contacto', 'Perdido', 'Bigprint', 0, 'correo', 'F', 0, 0, 'no', '', 'No tiene', 'GIGANTOGRAFIA DIGITAL S.A.', '', '20425564910', NULL, 'Las Palomas Nro. 393', 'Surquillo', NULL, '1999-05-01', NULL, 'no', '2016-05-01', '', '2016-03-14 13:53:33', '0000-00-00 00:00:00', 13),
(325, 'decisión', 'contacto', 'Activo', 'Sukha Buda Lounge', 0, 'correo', 'F', 0, 0, 'no', '', 'www.sukha.pe', 'no definido', '', 'no definido', NULL, 'Calle Arica 220', 'Miraflores', NULL, '2016-03-22', NULL, 'no', '2016-03-22', '', '2016-03-22 21:43:01', '0000-00-00 00:00:00', 4),
(326, 'consideración', 'contacto', 'Abandonado', 'prueba', 0, 'correo', 'F', 0, 0, 'no', '', 'https://www.onpe.gob.pe/', 'prueba', '', '', NULL, 'ONPE-direccion', 'SMP', NULL, '2016-03-14', NULL, 'no', '2016-03-14', '', '2016-03-28 16:39:05', '0000-00-00 00:00:00', 15),
(327, 'decisión', 'contacto', 'Activo', 'Prom Perú', 0, 'correo', 'F', 0, 0, 'no', '', 'no identificado', 'no identificado', '', 'no identificado', NULL, 'no identificado', 'no identificado', NULL, '2016-03-30', NULL, 'no', '2016-03-30', '', '2016-03-30 19:12:44', '0000-00-00 00:00:00', 14),
(328, 'decisión', 'contacto', 'Activo', 'Heltex ', 0, 'correo', 'F', 0, 0, 'no', '', '.', 'S.A.', '', '20100489237', NULL, 'Calle 4 lote 3A MZ D. Urb. Coorporativa de Colonización Las Vertientes de la Tablada de Lurin, Villa El Salvador', 'Villa El Salvador', NULL, '2016-03-30', NULL, 'no', '2016-03-30', '', '2016-03-30 19:19:33', '0000-00-00 00:00:00', 14),
(329, 'decisión', 'contacto', 'Activo', 'Julio Sumaran', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido', NULL, '2016-03-31', NULL, 'no', '2016-03-31', '', '2016-03-31 21:08:16', '0000-00-00 00:00:00', 10),
(330, 'decisión', 'contacto', 'Activo', 'Universidad Peruana Cayetano Heredia', 0, 'correo', 'F', 0, 0, 'no', '', 'no definido', 'no definido', '', 'no definido', NULL, 'no definido', 'no definido ', NULL, '2016-04-08', NULL, 'no', '2016-04-08', '', '2016-04-08 23:18:38', '0000-00-00 00:00:00', 12),
(331, 'consideración', 'contacto', 'Activo', 'Instituto San Pablo', 0, 'correo', 'F', 0, 0, 'no', '', 'http://istsanpablo.edu.pe/', 'no definido', '', 'no definido', NULL, 'Carlos Alberto Izaguirre 159, Independencia', 'Los Olivos', NULL, '2016-04-13', NULL, 'no', '2016-04-13', '', '2016-04-13 20:58:26', '0000-00-00 00:00:00', 1),
(332, 'decisión', 'contacto', 'Activo', 'Las Lomas de San Fernando', 0, 'correo', 'F', 0, 0, 'no', '', 'http://laslomasdesanfernando.com/', 'S.A.C.', '', '20513166908', NULL, '.', '.', NULL, '2016-04-18', NULL, 'no', '2016-04-18', '', '2016-04-18 23:05:21', '0000-00-00 00:00:00', 14),
(333, 'decisión', 'contacto', 'Activo', 'Mayorista Rocio', 0, 'correo', 'F', 0, 0, 'no', '', 'no tiene', '', '', '', NULL, 'Micaela Bastidas', 'Villa María del Triunfo', NULL, '2016-04-23', NULL, 'no', '2016-04-23', '', '2016-04-23 21:37:20', '0000-00-00 00:00:00', 13),
(334, 'decisión', 'contacto', 'Activo', 'Iberotec', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.iberotec.edu.pe/', 'Asociación Iberotec', '', '20537446308', NULL, 'Av. Arenales 1555, Lince', 'Lince', NULL, '2016-04-26', NULL, 'no', '2016-04-26', '', '2016-04-26 14:29:57', '0000-00-00 00:00:00', 12),
(335, 'decisión', 'contacto', 'Perdido', '130 Respetables - Víctor Glasinovich', 0, 'correo', 'F', 0, 0, 'no', '', 'web de 130 respetables', '', '', '', NULL, 'direccion 130 respetables', 'distrito de 130 respetables', NULL, '2016-03-01', NULL, 'no', '2016-03-01', '', '2016-04-26 19:22:18', '0000-00-00 00:00:00', 14),
(336, 'decisión', 'contacto', 'Perdido', 'MAR PUBLICIDAD S.A.C.', 0, 'correo', 'F', 0, 0, 'no', '', 'www.marpublicidad.com', 'MAR PUBLICIDAD S.A.C.', '', '20544990781', NULL, 'CAL.33 NRO. 225 URB. CORPAC', 'san isidro', NULL, '2016-03-01', NULL, 'no', '2016-04-26', '', '2016-04-26 21:40:37', '0000-00-00 00:00:00', 14),
(337, 'decisión', 'contacto', 'Activo', 'LULOG ', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.lulog.pe/web/index.php', 'SAC', '', '20554521569', NULL, 'Av. Guardia Civil 887- Chorrillos', 'Chorrillos', NULL, '2016-04-29', NULL, 'no', '2016-04-29', '', '2016-04-29 17:09:24', '0000-00-00 00:00:00', 14),
(338, 'decisión', 'contacto', 'Activo', 'Contugas', 0, 'correo', 'F', 0, 0, 'no', '', 'www.contugas.com.pe', 'CONTUGAS S.A.C.', '', '20519485487', NULL, 'CAL. DOMENICO MORELLI NRO. 150 URB. SAN BORJA NORTE (C. COMERCIAL LA RAMBLA TORRE 2 PISO 8) LIMA - LIMA - SAN BORJA', 'SAN BORJA', NULL, '2008-06-16', NULL, 'no', '2008-06-16', '', '2016-05-04 16:04:33', '0000-00-00 00:00:00', 13),
(339, 'decisión', 'contacto', 'Activo', 'UNIFE', 0, 'correo', 'F', 0, 0, 'no', '', 'www.unife.edu.pe', '.', '', '20141230329', NULL, 'Av.Los Frutales 954 -  La Molina', 'La Molina', NULL, '2016-05-06', NULL, 'no', '2016-05-06', '', '2016-05-06 21:28:26', '0000-00-00 00:00:00', 12),
(340, 'decisión', 'contacto', 'Activo', 'China Petroleum Technology', 0, 'correo', 'F', 0, 0, 'no', '', 'http://cptdc.com/', '.', '', '20550511941', NULL, 'Calle Dean Valdivia 243, Oficina 402, San Isidro ', 'San Isidro', NULL, '2016-05-10', NULL, 'no', '2016-05-10', '', '2016-05-10 14:05:57', '0000-00-00 00:00:00', 14),
(341, 'decisión', 'contacto', 'Perdido', 'Delicass', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.delicass.com.pe/', 'INVERSIONES REIXA S.A.C.', '', '20386489263', NULL, 'R. BARTOLOME HERRERA NRO. 858 (ESQ. DE PROL. IQUITOS Y BARTOLOME HERRER) LIMA - LIMA - LINCE', 'Lince', NULL, '2016-05-10', NULL, 'no', '2016-05-10', '', '2016-05-11 00:31:43', '0000-00-00 00:00:00', 13),
(342, 'decisión', 'contacto', 'Activo', 'AXELERA', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', 's.a.c.', NULL, '.', '.', NULL, '2016-05-16', NULL, 'no', '2016-05-16', '', '2016-05-16 23:02:50', '0000-00-00 00:00:00', 14),
(343, 'decisión', 'contacto', 'Activo', 'GS Consultores', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-05-16', NULL, 'no', '2016-05-16', '', '2016-05-16 23:05:38', '0000-00-00 00:00:00', 14),
(344, 'decisión', 'contacto', 'Activo', 'Kaeser Compresores', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.kaeser.pe/', 's.r.l.', '', '.', NULL, 'Jr. Andrómeda 1013  Urbanización La Campiña  ', ' Chorrillos, Lima - Perú ', NULL, '2016-05-16', NULL, 'no', '2016-05-16', '', '2016-05-16 23:07:46', '0000-00-00 00:00:00', 14),
(345, 'decisión', 'contacto', 'Activo', 'Rua Bonita', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-05-17', NULL, 'no', '2016-05-17', '', '2016-05-17 17:18:27', '0000-00-00 00:00:00', 14),
(346, 'decisión', 'contacto', 'Perdido', 'Fuxion', 0, 'correo', 'F', 0, 0, 'no', '', 'No define', 'No define', '', 'No define', NULL, 'No define', 'No define', NULL, '2016-05-31', NULL, 'no', '2016-05-31', '', '2016-05-31 23:35:17', '0000-00-00 00:00:00', 13),
(347, 'decisión', 'contacto', 'Activo', 'INGEMA', 0, 'correo', 'F', 0, 0, 'no', '', '.', 'S.A.C.', '', '20523529758', NULL, '.', '.', NULL, '2016-06-02', NULL, 'no', '2016-06-02', '', '2016-06-02 18:10:50', '0000-00-00 00:00:00', 14),
(348, 'decisión', 'contacto', 'Activo', 'COGORNO ', 0, 'correo', 'F', 0, 0, 'no', '', 'www.cogorno.com.pe', 'S.A.', '', '20419757331', NULL, 'BELLAVISTA', 'Callao', NULL, '2016-06-06', NULL, 'no', '2016-06-22', '', '2016-06-08 15:12:02', '0000-00-00 00:00:00', 5),
(349, 'decisión', 'contacto', 'Abandonado', 'CiteMadera', 0, 'correo', 'F', 0, 0, 'no', '', 'http://citemadera.gob.pe/', 'Centro de Innovacion Tecnologica de la Madera', '', '20507569120', NULL, 'CAL. SOLIDARIDAD MZA. F LOTE. 11 A PARQUE INDUSTRIAL (PARCELA II ALT AV EL SOL)', 'VILLA EL SALVADOR', NULL, '2016-06-08', NULL, 'no', '2016-06-08', '', '2016-06-08 16:13:32', '0000-00-00 00:00:00', 12),
(350, 'decisión', 'contacto', 'Abandonado', 'Venaire', 0, 'correo', 'F', 0, 0, 'no', '', 'Venaire', ' VENAIRE INGENIEROS S.A.C.', '', '20600779738', NULL, 'Faustino Sanchez Carrrión Mz B 14 Lote 24', 'San Juan de Lurigancho', NULL, '2016-06-10', NULL, 'no', '2016-06-10', '', '2016-06-10 17:14:28', '0000-00-00 00:00:00', 13),
(351, 'decisión', 'contacto', 'Activo', 'Daniel Cortéz', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-06-10', NULL, 'no', '2016-06-10', '', '2016-06-10 23:15:17', '0000-00-00 00:00:00', 14),
(352, 'decisión', 'contacto', 'Activo', 'VCA PERU', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-06-14', NULL, 'no', '2016-06-14', '', '2016-06-14 20:57:58', '0000-00-00 00:00:00', 7),
(353, 'consideración', 'contacto', 'Activo', 'Arquitectura', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-06-14', NULL, 'no', '2016-06-14', '', '2016-06-14 21:01:15', '0000-00-00 00:00:00', 14),
(354, 'decisión', 'contacto', 'Abandonado', 'Faro Capital', 0, 'correo', 'F', 0, 0, 'no', '', 'www.farocapital.com', 'FARO CAPITAL SAFI S.A.', '', '20451487851', NULL, 'Av. Reducto Nro. 1310 Int. 4', 'Miraflores', NULL, '2011-01-24', NULL, 'no', '2011-01-24', '', '2016-06-20 20:47:28', '0000-00-00 00:00:00', 14),
(355, 'decisión', 'contacto', 'Abandonado', 'JMN Abogados', 0, 'correo', 'F', 0, 0, 'no', '', 'www.notiene.com', 'JMN ABOGADOS , AUDITORES Y CONTADORES CONSULTORES S.A.C', '', '20557892827', NULL, 'JR. MANUEL SEGURA NRO. 736 DPTO. 5A ', 'LINCE', NULL, '2016-06-20', NULL, 'no', '2016-06-20', '', '2016-06-20 23:36:11', '0000-00-00 00:00:00', 13),
(356, 'decisión', 'contacto', 'Abandonado', 'DELOITTE & TOUCHE', 0, 'correo', 'F', 0, 0, 'no', '', 'www2.deloitte.com/pe', 'DELOITTE & TOUCHE S.R.L.', '', '20106910872', NULL, 'Cal. Begonias Nro. 441 Dpto. 6', 'San Isidro', NULL, '2016-06-20', NULL, 'no', '2016-06-20', '', '2016-06-21 00:42:54', '0000-00-00 00:00:00', 14),
(357, 'consideración', 'contacto', 'Abandonado', ' VCA Perú', 0, 'correo', 'F', 0, 0, 'no', '', 'www.vcaperu.com', 'VCA CONSULTORES S.R.L. ', '', '20550469724', NULL, ': CAL. LAS CAMELIAS NRO. 511 DPTO. 402', 'SAN ISIDRO', NULL, '2016-06-20', NULL, 'no', '2016-06-20', '', '2016-06-21 04:03:20', '0000-00-00 00:00:00', 9),
(358, 'decisión', 'contacto', 'Abandonado', 'MMERCIA', 0, 'correo', 'F', 0, 0, 'no', '', 'no tiene', 'MMERCIA SOCIEDAD ANONIMA CERRADA - MMERCIA S.A.C.', '', '20551059015', NULL, 'Mza. A2 Lote. 10', 'Ate', NULL, '2016-06-21', NULL, 'no', '2016-06-21', '', '2016-06-21 14:39:46', '0000-00-00 00:00:00', 14),
(359, 'consideración', 'contacto', 'Abandonado', 'MMERCIA', 0, 'correo', 'F', 0, 0, 'no', '', 'no tiene', 'MMERCIA SOCIEDAD ANONIMA CERRADA - MMERCIA S.A.C.', '', '20551059015', NULL, 'Mza. A2 Lote. 10 Urb. Fundo Vasquez', 'Ate', NULL, '2016-06-23', NULL, 'no', '2016-06-23', '', '2016-06-23 17:09:58', '0000-00-00 00:00:00', 14),
(360, 'decisión', 'contacto', 'Activo', 'OREANT GROUP', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-06-23', NULL, 'no', '2016-06-23', '', '2016-06-23 21:21:45', '0000-00-00 00:00:00', 14),
(361, 'consideración', 'contacto', 'Activo', 'PROTISA', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-06-24', NULL, 'no', '2016-06-24', '', '2016-06-24 15:39:57', '0000-00-00 00:00:00', 14),
(362, 'decisión', 'contacto', 'Activo', 'GeoMin & Oil Perú SAC. ', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, 'Calle Schell 687, of. 901 (Referencia: Cruce de la Av. Paseo de la Repúbilca con Calle Schell) ', ' Miraflores.', NULL, '2016-06-27', NULL, 'no', '2016-06-27', '', '2016-06-27 16:47:50', '0000-00-00 00:00:00', 13),
(363, 'decisión', 'contacto', 'Activo', 'Colegio San Juan de Lurigancho', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-04', NULL, 'no', '2016-07-04', '', '2016-07-04 15:16:37', '0000-00-00 00:00:00', 12),
(364, 'decisión', 'contacto', 'Activo', 'Servicios y decoraciones integrales srl', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-04', NULL, 'no', '2016-07-04', '', '2016-07-04 18:27:19', '0000-00-00 00:00:00', 14),
(365, 'consideración', 'contacto', 'Activo', 'DEPILZONE', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-04', NULL, 'no', '2016-07-04', '', '2016-07-04 23:43:59', '0000-00-00 00:00:00', 10),
(366, 'decisión', 'contacto', 'Activo', 'SBS', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-04', NULL, 'no', '2016-07-04', '', '2016-07-04 23:52:43', '0000-00-00 00:00:00', 14),
(367, 'consideración', 'contacto', 'Activo', 'Ital Seguros', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-06', NULL, 'no', '2016-07-06', '', '2016-07-06 15:22:05', '0000-00-00 00:00:00', 14),
(368, 'decisión', 'contacto', 'Activo', 'CEFCONT PERU S.A.C', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-08', NULL, 'no', '2016-07-08', '', '2016-07-08 20:06:35', '0000-00-00 00:00:00', 0),
(369, 'decisión', 'contacto', 'Activo', 'Nice Producciones', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-13', NULL, 'no', '2016-07-13', '', '2016-07-13 17:13:04', '0000-00-00 00:00:00', 14);
INSERT INTO `clientes` (`id`, `tipo_inbound`, `tipo`, `estado`, `name`, `nro_colaboradores`, `via`, `score`, `lead_score`, `lead_afinidad`, `brief`, `correo`, `web`, `razon_social`, `contacto`, `ruc`, `dni`, `direccion`, `distrito`, `telefonos`, `fecha_inicio`, `fecha_contacto`, `interno`, `fecha_aniversario`, `analytics`, `created_at`, `updated_at`, `giros_id`) VALUES
(370, 'decisión', 'contacto', 'Activo', 'ARSIGI SAC', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-18', NULL, 'no', '2016-07-18', '', '2016-07-18 23:05:20', '0000-00-00 00:00:00', 14),
(371, 'decisión', 'contacto', 'Activo', 'BUYSCAN', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-22', NULL, 'no', '2016-07-22', '', '2016-07-22 22:50:32', '0000-00-00 00:00:00', 14),
(372, 'decisión', 'contacto', 'Activo', 'DELCROSA', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-25', NULL, 'no', '2016-07-25', '', '2016-07-25 14:11:33', '0000-00-00 00:00:00', 14),
(373, 'decisión', 'contacto', 'Activo', 'LANCOACH', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-25', NULL, 'no', '2016-07-25', '', '2016-07-25 21:44:33', '0000-00-00 00:00:00', 12),
(374, 'decisión', 'contacto', 'Activo', 'CACHITOS STORE', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-25', NULL, 'no', '2016-07-25', '', '2016-07-25 22:33:45', '0000-00-00 00:00:00', 13),
(375, 'decisión', 'contacto', 'Activo', 'SONOTEC', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-07-27', NULL, 'no', '2016-07-27', '', '2016-07-27 23:06:56', '0000-00-00 00:00:00', 13),
(376, 'decisión', 'contacto', 'Abandonado', 'AGD Import', 0, 'correo', 'F', 0, 0, 'no', '', 'http://agdperu.com/', 'AGD IMPORT E.I.R.L.', '', '20554274456', NULL, 'SECTOR 2, GRUPO 24A MZA. N LOTE. 9 (CRUCE AV. VELASCO CON RUTA C)', 'VILLA EL SALVADOR', NULL, '2016-08-01', NULL, 'no', '2016-08-01', '', '2016-08-01 17:47:35', '0000-00-00 00:00:00', 13),
(377, 'decisión', 'contacto', 'Activo', 'SECURE SOFT CORP', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-08-03', NULL, 'no', '2016-08-03', '', '2016-08-03 14:39:35', '0000-00-00 00:00:00', 14),
(378, 'decisión', 'contacto', 'Activo', 'INCASUR', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-08-03', NULL, 'no', '2016-08-03', '', '2016-08-03 17:25:05', '0000-00-00 00:00:00', 5),
(379, 'decisión', 'contacto', 'Perdido', 'MARCA BLANCA ', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-08-03', NULL, 'no', '2016-08-03', '', '2016-08-03 18:04:25', '0000-00-00 00:00:00', 14),
(380, 'consideración', 'contacto', 'Activo', 'IC- CONTROLS', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-08-05', NULL, 'no', '2016-08-05', '', '2016-08-05 14:51:05', '0000-00-00 00:00:00', 14),
(381, 'decisión', 'contacto', 'Activo', 'Instituto de reproducción asistida', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-08-05', NULL, 'no', '2016-08-05', '', '2016-08-05 23:55:42', '0000-00-00 00:00:00', 10),
(382, 'decisión', 'contacto', 'Activo', 'MELIDENT', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', '', '.', NULL, '.', '.', NULL, '2016-08-08', NULL, 'no', '2016-08-08', '', '2016-08-08 15:00:42', '0000-00-00 00:00:00', 10),
(384, 'decisión', 'contacto', 'Activo', 'BRISA PERU SAC', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-08-12', NULL, 'no', '2016-08-12', NULL, '2016-08-12 21:48:26', '2016-08-12 21:48:26', 14),
(385, 'decisión', 'contacto', 'Activo', 'APOLA BIOCOSMÉTICA', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-08-12', NULL, 'no', '2016-08-12', NULL, '2016-08-12 22:36:08', '2016-08-12 22:36:08', 10),
(386, 'decisión', 'contacto', 'Activo', 'ROY RIMARACHIN', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-08-17', NULL, 'no', '2016-08-17', NULL, '2016-08-17 22:40:02', '2016-08-17 22:40:02', 10),
(387, 'decisión', 'contacto', 'Activo', 'COCINA PERÚ', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-09-01', NULL, 'no', '2016-09-01', NULL, '2016-09-01 15:54:16', '2016-09-01 15:54:16', 5),
(388, 'decisión', 'contacto', 'Perdido', 'CRISOL', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-09-01', NULL, 'no', '2016-09-01', NULL, '2016-09-01 23:14:46', '2016-09-01 23:14:46', 14),
(389, 'decisión', 'contacto', 'Abandonado', 'Ministerio del Trabajo y Promoción del Empleo', 0, 'correo', 'F', 0, 0, 'no', '', 'No define', '00000000000', NULL, 'No define', NULL, 'No define', 'No define', NULL, '2016-09-07', NULL, 'no', '2016-09-07', NULL, '2016-09-07 19:31:21', '2016-09-07 19:31:21', 15),
(390, 'decisión', 'contacto', 'Perdido', 'INTERBANK', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-09-07', NULL, 'no', '2016-09-07', NULL, '2016-09-07 19:51:16', '2016-09-07 19:51:16', 14),
(391, 'decisión', 'contacto', 'Abandonado', 'Budget Car Rental', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.budgetperu.com/', ' CHOCAVENTO S A', NULL, '20100118689', NULL, 'Av. Gral.Francisco Bolognesi Nro. 808', 'Barranco', NULL, '1979-05-12', NULL, 'no', '2016-09-12', NULL, '2016-09-12 21:23:46', '2016-09-12 21:23:46', 13),
(392, 'decisión', 'contacto', 'Abandonado', 'Sherfarma', 0, 'correo', 'F', 0, 0, 'no', '', 'www.sherfarma.com', 'SHERFARMA S.A.C.', NULL, '20376365680', NULL, 'JR. ALFRED ROSENBLAT NRO. 145 URB. HUERTOS DE SAN ANTONIO (CUARTO Y QUINTO PISO)', 'SANTIAGO DE SURCO', NULL, '2016-09-13', NULL, 'no', '2016-09-13', NULL, '2016-09-13 13:30:30', '2016-09-13 13:30:30', 10),
(393, 'consideración', 'contacto', 'Activo', 'NAOW', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-09-16', NULL, 'no', '2016-09-16', NULL, '2016-09-16 18:23:16', '2016-09-16 18:23:16', 14),
(394, 'decisión', 'contacto', 'Abandonado', 'Noaw Peru', 0, 'correo', 'F', 0, 0, 'no', '', '000000000000', '00000000000000000000000', NULL, '000000000000000000000', NULL, '00000000000000000000', 'Surco', NULL, '2016-09-18', NULL, 'no', '2016-09-18', NULL, '2016-09-18 20:43:04', '2016-09-18 20:43:04', 13),
(395, 'consideración', 'contacto', 'Activo', 'BEMU', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-09-19', NULL, 'no', '2016-09-19', NULL, '2016-09-19 14:15:05', '2016-09-19 14:15:05', 14),
(396, 'consideración', 'contacto', 'Activo', 'ROLAND MONTAÑO', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-09-21', NULL, 'no', '2016-09-21', NULL, '2016-09-21 20:13:22', '2016-09-21 20:13:22', 14),
(397, 'decisión', 'contacto', 'Activo', 'POMALCA', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-09-26', NULL, 'no', '2016-09-26', NULL, '2016-09-26 15:19:18', '2016-09-26 15:19:18', 14),
(398, 'decisión', 'contacto', 'Activo', 'Dogma&Picon SAC', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-09-29', NULL, 'no', '2016-09-29', NULL, '2016-09-29 23:21:34', '2016-09-29 23:21:34', 14),
(399, 'decisión', 'contacto', 'Activo', 'Inmobiliaria ABC', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-10-04', NULL, 'no', '2016-10-04', NULL, '2016-10-04 22:15:05', '2016-10-04 22:15:05', 14),
(400, 'decisión', 'contacto', 'Activo', 'Lalupa.pe', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-10-24', NULL, 'no', '2016-10-24', NULL, '2016-10-24 16:16:47', '2016-10-24 16:16:47', 9),
(401, 'decisión', 'contacto', 'Perdido', 'Speedy Group', 0, 'correo', 'F', 0, 0, 'no', '', 'http://speedygroup.org/', '00000', NULL, '00000', NULL, '000', 'Lince', NULL, '2016-10-25', NULL, 'no', '2016-10-25', NULL, '2016-10-25 15:22:08', '2016-10-25 15:22:08', 11),
(402, 'decisión', 'contacto', 'Activo', 'ECOLOGICAL', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-11-22', NULL, 'no', '2016-11-22', NULL, '2016-11-22 14:00:36', '2016-11-22 14:00:36', 14),
(403, 'decisión', 'contacto', 'Activo', 'GMCSOFT', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-11-23', NULL, 'no', '2016-11-23', NULL, '2016-11-23 16:31:06', '2016-11-23 16:31:06', 14),
(404, 'consideración', 'contacto', 'Abandonado', 'CONCYTEC', 0, 'correo', 'F', 0, 0, 'no', '', 'No indica', 'No indica', NULL, 'No indica', NULL, 'No indica', 'No indica', NULL, '2016-11-25', NULL, 'no', '2016-11-25', NULL, '2016-11-25 17:25:18', '2016-11-25 17:25:18', 15),
(405, 'decisión', 'cliente', 'Abandonado', 'FONDECYT', 0, 'correo', 'F', 0, 0, 'no', '', 'No indica', 'No indica', NULL, 'No indica', NULL, 'No indica', 'No indica', NULL, '2016-11-25', NULL, 'no', '2016-11-25', NULL, '2016-11-25 17:26:01', '2016-11-25 17:26:01', 15),
(406, 'consideración', 'contacto', 'Activo', 'Julio Rodríguez', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-12-01', NULL, 'no', '2016-12-01', NULL, '2016-12-01 15:25:02', '2016-12-01 15:25:02', 14),
(407, 'decisión', 'cliente', 'Activo', 'KIANA MITRE', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-12-01', NULL, 'no', '2016-12-01', NULL, '2016-12-01 16:52:20', '2016-12-01 16:52:20', 14),
(408, 'decisión', 'cliente', 'Abandonado', 'Management Society', 0, 'correo', 'F', 0, 0, 'no', '', 'managementsociety.net', 'Personal & Executive Development S.A.C', NULL, '20517387569', NULL, 'Calle Lizardo Alzamora Oeste 205', 'San Isidro', NULL, '2016-12-02', NULL, 'no', '2016-12-02', NULL, '2016-12-02 15:29:02', '2016-12-02 15:29:02', 9),
(409, 'decisión', 'cliente', 'Abandonado', 'ALL ACCESS', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.allaccess.com.pe/', 'ALL ACCESS ENTERTAINMENT S.A.C.', NULL, '20522838412', NULL, 'Jr. los Negocios Nro. 379', 'San Isidro', NULL, '2016-12-02', NULL, 'no', '2016-12-02', NULL, '2016-12-02 21:16:46', '2016-12-02 21:16:46', 9),
(410, 'decisión', 'cliente', 'Abandonado', 'La Hielera	 			', 0, 'correo', 'F', 0, 0, 'no', '', 'http://lahieleradelivery.wixsite.com/misitio', 'LA HIELERA SAC			 			', NULL, '20600003721	 	', NULL, 'Calle 9 222 dpto 303			 			', 'Surco', NULL, '2016-12-05', NULL, 'no', '2016-12-05', NULL, '2016-12-05 22:57:32', '2016-12-05 22:57:32', 13),
(411, 'consideración', 'contacto', 'Activo', 'ODONTOLOGICAL SERVICES SAC', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-12-19', NULL, 'no', '2016-12-19', NULL, '2016-12-19 16:07:29', '2016-12-19 16:07:29', 10),
(412, 'decisión', 'contacto', 'Activo', 'INMOBILIARIA ARMAS DOOMO', 0, 'correo', 'F', 0, 0, 'no', '', '.', '.', NULL, '.', NULL, '.', '.', NULL, '2016-12-26', NULL, 'no', '2016-12-26', NULL, '2016-12-26 19:46:19', '2016-12-26 19:46:19', 0),
(413, 'decisión', 'contacto', 'Abandonado', 'M&P Ingenieros SAC', 0, 'correo', 'F', 0, 0, 'no', '', 'No define', 'No define', NULL, 'No define', NULL, 'No define', 'No define', NULL, '2016-12-28', NULL, 'no', '2016-12-28', NULL, '2016-12-28 21:34:42', '2016-12-28 21:34:42', 14),
(414, 'decisión', 'contacto', 'Abandonado', 'Hogarisima', 0, 'correo', 'F', 0, 0, 'no', '', 'http://hogarisima.com.pe', 'EDITORIAL SUDAMERICANA DEL PAIS SA', NULL, '20123931051', NULL, 'Jr. Moquegua Nro. 157 Int. 403', 'Lima', NULL, '2017-01-26', NULL, 'no', '2017-01-26', NULL, '2017-01-26 15:17:36', '2017-01-26 15:17:36', 11),
(415, 'decisión', 'contacto', 'Abandonado', 'EL TABLON', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.eltablon.pe/', 'EL TABLON FOOD CENTER E.I.R.L.', NULL, '20454483040', NULL, 'AV. EJERCITO NRO. 902 (COSTADO DEL BANCO SCOTIABANK) AREQUIPA - AREQUIPA - CAYMA - See more at: http://www.razonsocialperu.com/empresa/detalle/el-tablon-food-center-e-i-r-l-20454483040#sthash.esM1bQ3p.dpuf', 'AV. EJERCITO NRO. 902 (COSTADO DEL BANCO SCOTIABANK) AREQUIPA ', NULL, '2017-01-27', NULL, 'no', '2017-01-27', NULL, '2017-01-27 16:56:00', '2017-01-27 16:56:00', 5),
(418, 'decisión', 'contacto', 'Activo', 'Rosas Rojas', 0, 'web', 'F', 47, 0, 'no', '', '', '', NULL, NULL, NULL, 'Huancayo', 'Huancavelica', NULL, '2017-01-31', NULL, 'no', '2017-01-31', NULL, '2017-01-31 20:12:48', '2017-01-31 20:12:48', 13),
(419, 'decisión', 'contacto', 'Abandonado', 'Centenario Urbanizaciones', 0, 'correo', 'F', 0, 0, 'no', '', 'www.centenario.com.pe', 'Centenario Urbanizaciones S.A.C.', NULL, '20600058119', NULL, 'Av. Victor Andres Belaunde Nro. 147 Int. 101 (Via Principal 102 Edificio Real 4 Piso 1)', 'San Isidro', NULL, '2017-02-03', NULL, 'no', '2017-02-03', NULL, '2017-02-03 18:50:49', '2017-02-03 18:50:49', 13),
(420, 'decisión', 'cliente', 'Activo', 'El Pardo DoubleTree by Hilton', 0, 'correo', 'F', 0, 0, 'no', '', 'No define', 'No define', NULL, 'No define', NULL, 'No define', 'No define', NULL, '2017-02-09', NULL, 'no', '2017-02-09', NULL, '2017-02-09 20:22:39', '2017-02-09 20:22:39', 14),
(421, 'consideración', 'contacto', 'Activo', 'USIL', 0, 'correo', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, '', 'La Molina', NULL, '2017-02-14', NULL, 'no', '2017-02-14', NULL, '2017-02-14 15:25:42', '2017-02-14 15:25:42', 12),
(422, 'consideración', 'contacto', 'Activo', 'Telefónica', 0, 'telefono', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, '', 'San Isidro', NULL, '2017-02-14', NULL, 'no', '2017-02-14', NULL, '2017-02-14 15:38:31', '2017-02-14 15:38:31', 9),
(423, 'consideración', 'contacto', 'Activo', 'Tottus', 0, 'correo', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, '', 'Surquillo', NULL, '2017-02-14', NULL, 'no', '2017-02-14', NULL, '2017-02-14 15:41:23', '2017-02-14 15:41:23', 2),
(424, 'consideración', 'contacto', 'Activo', 'MEAD JOHNSON NUTRITION PERU S.R.L.', 0, 'telefono', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, '', 'San Isidro', NULL, NULL, NULL, 'no', NULL, NULL, '2017-02-14 16:10:35', '2017-02-14 16:10:35', 10),
(425, 'consideración', 'contacto', 'Activo', 'BSH ELECTRODOMESTICOS S.A.C.', 0, 'correo', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, '', 'San Isidro', NULL, NULL, NULL, 'no', NULL, NULL, '2017-02-14 16:43:02', '2017-02-14 16:43:02', 14),
(426, 'consideración', 'contacto', 'Activo', 'BASF PERUANA S.A', 0, 'correo', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, '', 'Lima', NULL, NULL, NULL, 'no', NULL, NULL, '2017-02-14 16:51:36', '2017-02-14 16:51:36', 14),
(427, 'consideración', 'contacto', 'Activo', 'PROFINANZAS', 0, 'telefono', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, 'no', NULL, NULL, '2017-02-14 17:05:13', '2017-02-14 17:05:13', 8),
(428, 'consideración', 'cliente', 'Activo', 'UCV', 0, 'correo', 'F', 0, 0, 'no', '', 'www.ucv.edu.pe', 'Universidad Cesar Vallejo', NULL, '20164113532', NULL, 'AV. VICTOR LARCO NRO. 392 / LA LIBERTAD - TRUJILLO - TRUJILLO ', 'Trujillo', NULL, '2017-02-22', NULL, 'no', '2017-02-22', NULL, '2017-02-22 23:41:49', '2017-02-22 23:41:49', 12),
(429, 'decisión', 'cliente', 'Activo', 'AZALEIA', 0, 'correo', 'F', 0, 0, 'no', '', 'www.azaleia.pe', 'CALZADOS AZALEIA PERU S.A.C', NULL, '20374412524', NULL, 'AV PROLONGACION ARICA NRO 2200 ', 'Lima', NULL, '2017-02-23', NULL, 'no', '2017-02-23', NULL, '2017-02-23 18:42:36', '2017-02-23 18:42:36', 13),
(430, 'decisión', 'contacto', 'Activo', 'EL PEZ ON ', 0, 'web', 'B', 92, 0, 'no', '', 'elpez-on.com', '', NULL, NULL, NULL, 'Calle San Martin 324', 'Miraflores', NULL, NULL, NULL, 'no', NULL, NULL, '2017-03-14 19:46:01', '2017-03-14 19:46:01', 5),
(431, 'decisión', 'contacto', 'Activo', 'Sonido Puro E.I.R.L', 0, 'web', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, 'no', NULL, NULL, '2017-03-17 19:56:26', '2017-03-17 19:56:26', 11),
(432, 'consideración', 'contacto', 'Activo', 'Conceptos & Ideas', 0, 'recomendacion', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, 'Surco', 'Surco', NULL, NULL, NULL, 'no', NULL, NULL, '2017-03-29 19:49:28', '2017-03-29 19:49:28', 7),
(433, 'decisión', 'contacto', 'Activo', 'INPE', 0, 'recomendacion', 'F', 0, 0, 'no', '', 'www.inpe.gob.pe', '', NULL, NULL, NULL, '', 'Lima', NULL, NULL, NULL, 'no', NULL, NULL, '2017-03-30 17:03:43', '2017-03-30 17:03:43', 15),
(434, 'decisión', 'contacto', 'Activo', 'SUNAT', 0, 'correo', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, 'Wilson 443', '', NULL, NULL, NULL, 'no', NULL, NULL, '2017-04-05 18:00:03', '2017-04-05 18:00:03', 15),
(435, 'decisión', 'contacto', 'Activo', 'SERVIR', 0, 'web', 'F', 0, 0, 'no', '', 'WWW.SERVIR.GOB.PE', '', NULL, NULL, NULL, 'LINCE', 'LINCE', NULL, NULL, NULL, 'no', NULL, NULL, '2017-04-21 21:03:50', '2017-04-21 21:03:50', 15),
(436, 'decisión', 'contacto', 'Activo', 'Fondo MiVivienda', 0, 'telefono', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, 'San Isidro', 'San isidro', NULL, NULL, NULL, 'no', NULL, NULL, '2017-04-27 23:20:35', '2017-04-27 23:20:35', 15),
(437, 'consideración', 'contacto', 'Activo', 'Transportadora de Gas del Perú', 0, 'recomendacion', 'F', 0, 0, 'no', '', '', '', NULL, NULL, NULL, 'Villa el Salvador', 'Villa el Salvador', NULL, NULL, NULL, 'no', NULL, NULL, '2017-04-28 15:36:46', '2017-04-28 15:36:46', 14),
(457, 'consideración', 'prospecto', 'Activo', 'Pro Maya Producciones', 6, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 01:34:37', '2017-05-04 01:34:37', NULL),
(459, 'consideración', 'prospecto', 'Activo', 'MERAKI', 3, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 02:07:13', '2017-05-04 02:07:13', NULL),
(462, 'consideración', 'prospecto', 'Activo', 'Starcom Mediavest Group', 0, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 02:31:12', '2017-05-04 02:31:12', NULL),
(463, 'consideración', 'prospecto', 'Activo', 'Expreso', 4, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 03:55:21', '2017-05-04 03:55:21', NULL),
(464, 'consideración', 'prospecto', 'Activo', 'Smartclick', 80, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 05:57:22', '2017-05-04 05:57:22', NULL),
(465, 'consideración', 'prospecto', 'Activo', 'Speedymens''s', 40, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 13:10:26', '2017-05-04 13:10:26', NULL),
(466, 'consideración', 'prospecto', 'Activo', 'mba mediacom', 100, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 15:22:10', '2017-05-04 15:22:10', NULL),
(467, 'consideración', 'prospecto', 'Activo', 'no lo se s.a.c.', 1, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 16:09:46', '2017-05-04 16:09:46', NULL),
(468, 'consideración', 'prospecto', 'Activo', 'Novi More S.A.C ', 3, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 16:16:59', '2017-05-04 16:16:59', NULL),
(469, 'consideración', 'prospecto', 'Activo', 'Intercorp', 2000, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 17:10:08', '2017-05-04 17:10:08', NULL),
(470, 'consideración', 'prospecto', 'Activo', 'Freelance', 0, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 19:35:39', '2017-05-04 19:35:39', NULL),
(471, 'consideración', 'prospecto', 'Activo', '-', 0, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 19:35:58', '2017-05-04 19:35:58', NULL),
(472, 'consideración', 'prospecto', 'Activo', 'HAVAS WORLDWIDE', 400, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 22:49:47', '2017-05-04 22:49:47', NULL),
(473, 'consideración', 'prospecto', 'Activo', 'Cabify', 50, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-04 23:24:59', '2017-05-04 23:24:59', NULL),
(474, 'consideración', 'prospecto', 'Activo', 'Emj distribuciones sac', 5, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 01:30:20', '2017-05-05 01:30:20', NULL),
(475, 'consideración', 'prospecto', 'Activo', 'Ediciones independientes', 1, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 05:56:57', '2017-05-05 05:56:57', NULL),
(476, 'consideración', 'prospecto', 'Activo', 'UTP', 100, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 14:17:45', '2017-05-05 14:17:45', NULL),
(477, 'consideración', 'prospecto', 'Activo', 'Toulouse Lautrec', 4, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 14:37:26', '2017-05-05 14:37:26', NULL),
(478, 'consideración', 'prospecto', 'Activo', 'Agencia D2 Digital', 4, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 14:39:07', '2017-05-05 14:39:07', NULL),
(479, 'consideración', 'prospecto', 'Activo', 'contratistas G&H', 5, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 15:26:59', '2017-05-05 15:26:59', NULL),
(480, 'consideración', 'prospecto', 'Activo', 'Javier Cruces', 900, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 16:08:53', '2017-05-05 16:08:53', NULL),
(481, 'consideración', 'prospecto', 'Activo', 'Juazor corporation', 50, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 16:34:17', '2017-05-05 16:34:17', NULL),
(482, 'consideración', 'prospecto', 'Activo', 'Media LAB', 45, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 16:39:30', '2017-05-05 16:39:30', NULL),
(483, 'consideración', 'prospecto', 'Activo', 'TOLOUSE LAUTREC', 0, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 16:45:18', '2017-05-05 16:45:18', NULL),
(484, 'consideración', 'prospecto', 'Activo', 'Media Impact', 30, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 20:25:01', '2017-05-05 20:25:01', NULL),
(485, 'consideración', 'prospecto', 'Activo', 'Preciso', 2, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 21:42:42', '2017-05-05 21:42:42', NULL),
(486, 'consideración', 'prospecto', 'Activo', 'Nodos', 50, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-05 22:02:27', '2017-05-05 22:02:27', NULL),
(487, 'consideración', 'prospecto', 'Activo', '.', 1, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-06 01:51:03', '2017-05-06 01:51:03', NULL),
(488, 'consideración', 'prospecto', 'Activo', 'Paxzu', 3, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-06 11:47:29', '2017-05-06 11:47:29', NULL),
(489, 'consideración', 'prospecto', 'Activo', 'Shoc marketing ', 948253455, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-06 14:54:12', '2017-05-06 14:54:12', NULL),
(490, 'consideración', 'prospecto', 'Activo', 'lovestore', 3, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-07 04:17:59', '2017-05-07 04:17:59', NULL),
(491, 'consideración', 'prospecto', 'Activo', 'Zoju', 3, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-07 17:09:36', '2017-05-07 17:09:36', NULL),
(492, 'consideración', 'contacto', 'Activo', 'LogrosPeru.com', 4, 'web', 'F', 0, 15, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-08 20:04:57', '2017-05-08 14:15:58', NULL),
(494, 'exploración', 'cliente', 'Activo', 'Exploracion', 0, 'correo', 'F', 0, 0, 'no', '', 'http://www.google.comp', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-11 11:44:56', '2017-05-11 11:44:56', 14),
(495, 'exploración', 'cliente', 'Activo', 'Como hacer', 0, 'correo', 'F', 0, 0, 'no', '', 'dsadasd', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-11 11:50:21', '2017-05-11 11:50:21', 14),
(496, 'consideración', 'prospecto', 'Activo', 'Lan', 3, 'web', 'F', 0, 10, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-11 15:18:43', '2017-05-11 15:18:43', NULL),
(497, 'consideración', 'prospecto', 'Activo', 'Lan', 3, 'web', 'F', 0, 10, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-11 15:19:21', '2017-05-11 15:19:21', NULL),
(498, 'consideración', 'prospecto', 'Activo', 'Lan', 3, 'web', 'F', 0, 10, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-11 15:20:30', '2017-05-11 15:20:30', NULL),
(499, 'consideración', 'prospecto', 'Activo', 'Julito S.A.C', 23, 'web', 'F', 0, 10, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-11 21:27:22', '2017-05-11 21:27:22', NULL),
(500, 'consideración', 'prospecto', 'Activo', 'Julito S.A.C', 23, 'web', 'F', 0, 10, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-11 21:27:48', '2017-05-11 21:27:48', NULL),
(501, 'consideración', 'prospecto', 'Activo', 'Julito S.A.C', 23, 'web', 'F', 0, 10, 'no', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-11 21:28:07', '2017-05-11 21:28:07', NULL),
(502, 'consideración', 'cliente', 'Activo', 'dsadsa', 0, 'correo', 'F', 0, 0, 'no', '', 'dadad', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-15 00:04:48', '2017-05-15 00:04:48', NULL),
(503, 'consideración', 'cliente', 'Activo', 'dsadsa', 0, 'correo', 'F', 0, 0, 'no', '', 'dadad', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-15 00:04:49', '2017-05-15 00:04:49', NULL),
(504, 'consideración', 'cliente', 'Activo', 'dasda', 0, 'correo', 'F', 0, 0, 'no', '', 'dasd', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, '2017-05-15 02:32:52', '2017-05-15 02:32:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `giros`
--

CREATE TABLE `giros` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inversion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `giros`
--

INSERT INTO `giros` (`id`, `name`, `inversion`, `created_at`, `updated_at`) VALUES
(1, 'Educación', '', '2013-07-16 21:50:41', '2013-07-16 21:50:41'),
(2, 'Retail', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(3, 'Automotriz', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(4, 'Entretenimiento', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(5, 'Productos de consumo', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(6, 'Viajes', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(7, 'Informática', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(8, 'Servicios Financieros', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(9, 'Telecomunicaciones', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(10, 'Farmacia y salud', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(11, 'Comunicaciones', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(12, 'Educación', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(13, 'Productos y servicios de negocio', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(14, 'Otros', '', '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(15, 'Estado', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `tipo` enum('master','reportes','productos','opciones','usuarios','contabilidad','clientes','ayuda','crm') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'master',
  `modulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `orden` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `tipo`, `modulo`, `name`, `icono`, `orden`, `created_at`, `updated_at`) VALUES
(1, 0, 'opciones', 'giros', 'Giros', 'fa-briefcase', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(2, 0, 'master', 'clientes', 'Clientes', 'fa-group', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(4, 2, 'master', 'contactos', 'Prospectos', 'fa-phone-square', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(5, 0, 'opciones', 'tipocanals', 'Tipo de Canales', 'fa-road', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(6, 0, 'master', 'canales', 'Canales', 'fa-building-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(7, 0, 'master', 'proyectos', 'Proyectos en Desarrollo', 'fa-wrench', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(8, 0, 'master', 'portales', 'Portales', 'fa-laptop', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(9, 0, 'opciones', 'servicios', 'Servicios', 'fa-flask', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(10, 0, 'master', 'tareas', 'Tareas', 'fa-clock-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(12, 0, 'opciones', 'menus', 'Menus', 'fa-tasks', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(13, 0, 'master', 'areas', 'Areas', 'fa-group', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(16, 0, 'master', 'users', 'Usuarios', 'fa-users', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(19, 0, 'master', 'roles', 'Roles', 'fa-filter', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(20, 0, 'master', 'matrizingresos', 'Matriz de Ingresos', 'fa-flag-checkered', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(21, 0, 'master', 'cotizador', 'Cotizador', 'fa-keyboard-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(22, 0, 'opciones', 'sueldos', 'Sueldos', 'fa-money', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(23, 0, 'opciones', 'cotizadorvariables', 'Cotizador Variables', 'fa-keyboard-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(25, 0, 'reportes', 'proyectos', 'Reporte de Proyectos en Desarrollo', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(26, 0, 'contabilidad', 'facturacion', 'Facturación', 'fa-file-text-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(27, 0, 'master', 'cotizadorsm', 'Cotizador SM', 'fa-keyboard-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(28, 0, 'opciones', 'sueldossm', 'Sueldos Social Media', 'fa-money', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(29, 0, 'master', 'biblioteca', 'Biblioteca', 'fa-book', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(30, 0, 'reportes', 'proyectotareas', 'Reporte Tareas Por Proyecto', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(31, 0, 'reportes', 'proyectoscotizacion', 'Proyectos en Cotización', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(34, 0, 'master', 'formatos', 'Formatos', 'fa-tags', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(35, 0, 'opciones', 'frases', 'Frases', 'fa-comment-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(36, 0, 'opciones', 'correos', 'Correos', 'fa-envelope', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(37, 0, 'master', 'contactreport', 'Contact Report', 'fa-file-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(38, 0, 'opciones', 'cronogramatarea', 'Cronograma Tareas', 'fa-calendar', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(39, 0, 'master', 'cotizaciones', 'Proyectos en Cotización', 'fa-smile-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(41, 0, 'master', 'movilidad', 'Movilidad', 'fa-truck', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(42, 0, 'master', 'cotizadormedios', 'Cotizador de Medios', 'fa-keyboard-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(43, 0, 'master', 'producto', 'Productos', 'fa-gift', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(44, 0, 'master', 'cotizadorproductos', 'Cotizador de Productos', 'fa-keyboard-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(45, 0, 'contabilidad', 'movilidad', 'Movilidad', 'fa-truck', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(46, 0, 'master', 'documentos', 'Documentos', 'fa-file-text', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(47, 0, 'opciones', 'opcionescrm', 'Opciones', 'fa-list-ol', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(49, 0, 'master', 'clientes', 'Clientes', 'fa-group', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(51, 0, 'master', 'proveedores', 'Proveedores', 'fa-group', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(52, 0, 'master', 'ordendecompra', 'Ordenes de Compra Interna', 'fa-gavel', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(53, 0, 'contabilidad', 'ordendecompra', 'Ordenes de Compra Interna', 'fa-gavel', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(54, 0, 'reportes', 'diagramagantt', 'Diagrama Gantt', 'fa-calendar', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(55, 0, 'contabilidad', 'compras', 'Compras', 'fa-shopping-cart', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(56, 0, 'contabilidad', 'proveedores', 'Proveedores', 'fa-group', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(57, 0, 'opciones', 'menustipo', 'Menus Tipo', 'fa-tags', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(58, 0, 'contabilidad', 'usuarios', 'Colaboradores', 'fa-male', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(59, 0, 'contabilidad', 'pensiones', 'Tipo de pensiones', 'fa-list-ol', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(60, 0, 'contabilidad', 'contratos', 'Contratos', 'fa-file-text', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(62, 0, 'contabilidad', 'planilla', 'Planilla', 'fa-list-ul', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(63, 0, 'contabilidad', 'memorandum', 'Memorándum', 'fa-stop', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(64, 0, 'master', 'manuales', 'manuales', 'fa-file', 0, '2014-02-02 16:46:46', '2014-02-02 16:46:46'),
(65, 0, 'reportes', 'tareaslargas', 'Reporte de Tareas Largas', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(66, 0, 'master', 'cotizacionescomercial', 'Seguimiento Comercial', 'fa-eye', 0, '2014-04-29 15:35:18', '0000-00-00 00:00:00'),
(67, 0, 'contabilidad', 'asistencia', 'Asistencia', 'fa-clock-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(68, 0, 'contabilidad', 'cobranza', 'Cobranza', 'fa-money', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(69, 0, 'opciones', 'bancos', 'Bancos', 'fa-money', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(70, 0, 'contabilidad', 'cheques', 'Cheques', 'fa-money', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(71, 0, 'contabilidad', 'ventas', 'Ventas', 'fa-money', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(72, 0, 'reportes', 'cotizaciones', 'Cotizaciones', 'fa-smile-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(73, 0, 'reportes', 'tareas', 'Reporte de tareas', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(74, 0, 'reportes', 'tareasdiario', 'Reporte de tareas diario', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(75, 0, 'reportes', 'colaboradores_dia', 'Reporte de tiempos totales al día', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(76, 0, 'opciones', 'mensajes', 'Mensajes', 'fa-envelope', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(77, 0, 'master', 'remate', 'Remate', 'fa-gavel', 0, '2014-07-21 15:15:29', '0000-00-00 00:00:00'),
(78, 0, 'master', 'mistareas', 'Mis tareas', 'fa-tasks', 0, '2014-07-22 19:37:33', '0000-00-00 00:00:00'),
(79, 0, 'reportes', 'capacidad', 'Reporte precios por proyecto', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(80, 0, 'master', 'videos', 'Vídeos Tutoriales', 'fa-youtube-play', 0, '2014-02-02 16:46:46', '2014-02-02 16:46:46'),
(81, 0, 'opciones', 'medios', 'Medios', 'fa-money', 0, '2014-10-23 12:04:21', '0000-00-00 00:00:00'),
(82, 0, 'usuarios', 'users', 'Usuarios', 'fa-users', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(83, 0, 'contabilidad', 'inasistencias', 'Inasistencias', 'fa-clock-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(84, 0, 'master', 'panel', 'Panel del Director', 'fa-coffee', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(85, 0, 'master', 'bugs', 'Bugs o Issue', 'fa-bug', 0, '2014-11-11 11:26:51', '0000-00-00 00:00:00'),
(86, 0, 'master', 'actareunion', 'Acta de Reunion', 'fa-file-text-o', 0, '2014-11-19 13:51:35', '0000-00-00 00:00:00'),
(87, 0, 'master', 'ordenes', 'Ordenes', 'fa-money', 0, '2014-12-03 19:41:34', '0000-00-00 00:00:00'),
(88, 0, 'reportes', 'proyectosmes', 'Reporte de Proyectos del mes', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(89, 2, 'master', 'permisos', 'Permisos', 'fa-bullhorn', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(90, 0, 'reportes', 'capacidad', 'Capacidad Operativa', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(91, 0, 'master', 'documentosnativos', 'Documentos Nativos', 'fa-file-text', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(92, 0, 'reportes', 'libres', 'Tiempos Ocupados Mensual', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(93, 0, 'reportes', 'tareasusuarios', 'Reporte Tareas Diarias por colaborador', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(94, 0, 'reportes', 'comercial', 'Reportes Comercial', 'fa-bar-chart-o', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(95, 0, 'master', 'blog', 'Blog', 'fa-book', 0, '2014-01-16 09:42:46', '2014-01-16 09:42:46'),
(96, 0, 'master', 'okrs', 'Okrs', 'fa-tachometer', 0, '2015-06-22 11:47:13', '0000-00-00 00:00:00'),
(97, 0, 'master', 'proyectostotaldesarrollo', 'Proyectos Facturados', 'fa-money', 0, '2015-09-28 15:08:09', '0000-00-00 00:00:00'),
(99, 0, 'crm', 'clientes', 'Clientes', 'fa-star', 1, '2014-01-16 14:42:46', '2014-01-16 14:42:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id` int(11) NOT NULL,
  `valor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activo` enum('si','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'si',
  `correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dni` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` enum('Hombre','Mujer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Hombre',
  `passwd` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `activo`, `correo`, `dni`, `sexo`, `passwd`, `created_at`, `updated_at`) VALUES
(1, 'Miguel Angel', 'Sumaran Alvarado', 'si', 'miguel@nativosdigitales.pe', '41767132', 'Hombre', '7d96d8436a25a29bf00c950ce109781d', '2015-08-03 19:24:24', '2015-08-03 19:24:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_clientes_on_giros_id` (`giros_id`);

--
-- Indices de la tabla `giros`
--
ALTER TABLE `giros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`correo`),
  ADD KEY `activo` (`activo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;
--
-- AUTO_INCREMENT de la tabla `giros`
--
ALTER TABLE `giros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
