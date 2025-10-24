-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: b8pc3slm7fgcnjecxus4-mysql.services.clever-cloud.com:3306
-- Tiempo de generación: 24-10-2025 a las 02:22:55
-- Versión del servidor: 8.0.22-13
-- Versión de PHP: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `b8pc3slm7fgcnjecxus4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'Piso'),
(2, 'Interior'),
(3, 'Exterior'),
(4, 'Pared');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int NOT NULL,
  `nombre_cliente` varchar(150) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `fecha_cita` date NOT NULL,
  `hora_cita` time NOT NULL,
  `tipo_cita` varchar(100) DEFAULT NULL,
  `motivo` text,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `nombre_cliente`, `correo`, `telefono`, `fecha_cita`, `hora_cita`, `tipo_cita`, `motivo`, `fecha_registro`) VALUES
(1, 'Juan Montalvo', 'Juan@gmail.com', '3125896324', '2025-10-23', '14:00:00', 'Presencial', 'Quiero ver los tipos de porcelanato que hay en la tienda ', '2025-10-07 22:34:42'),
(2, 'luis diaz', 'luchocrack@gmail.com', '3256897456', '2025-10-16', '10:30:00', 'Presencial', 'quiero ver los galones de estuco', '2025-10-07 22:54:37'),
(3, 'Josue', 'josue@gmail.com', '3121234567', '2025-10-20', '15:00:00', 'presencial', 'cotizar materiales', '2025-10-10 00:42:29'),
(4, 'carlos ramirez', 'carlos@hotmail.com', '3001234567', '2025-10-23', '16:00:00', 'virtual', 'hablar con un asesor', '2025-10-10 01:06:20'),
(5, 'Josue', 'josue@gmail.com', '3121234567', '2025-10-23', '16:00:00', 'presencial', 'cotizar materiales', '2025-10-10 04:26:39'),
(6, 'juan', 'juan@gmail.com', '3001234567', '2025-10-20', '15:00:00', 'presencial', 'productos', '2025-10-10 15:32:27'),
(7, 'Hablar con un asesor', 'Pedro@gmail.com', '3152789846', '2025-12-12', '15:00:00', 'virtual', 'asesor', '2025-10-13 23:42:08'),
(8, 'Si', 'Maicol@gmail.com', '3253768902', '2025-10-12', '11:00:00', 'virtual', 'Asesoría', '2025-10-14 01:37:40'),
(9, 'necesito cotizar una remodelacion', 'maicol@gmail.com', '3256589457', '2025-10-01', '13:00:00', 'virtual', 'cotizar una remodelacion', '2025-10-14 19:22:39'),
(10, 'pedir información sobre instalación', 'fausto@gmail.com', '3212565485', '2025-12-10', '08:00:00', 'presencial', 'pedir información sobre instalación', '2025-10-14 20:20:57'),
(11, 'No indicado', 'maicol@gmail.com', '3126006027', '2025-08-11', '15:00:00', 'virtual', 'consultar disponibilidad', '2025-10-15 16:13:00'),
(12, 'Andrés Torres', 'Andrés@gmail.com', '3136789876', '2025-10-20', '10:00:00', 'virtual', 'una visita técnica a mi obra', '2025-10-15 16:17:40'),
(13, 'Josue Salas', 'Josuesalas2004@gmail.com', '3253678945', '2025-10-11', '15:00:00', 'virtual', 'solucionar un problema con un pedido', '2025-10-15 18:13:48'),
(14, 'jose ignacio de la hoz castro', 'jose@gmail.com', '3212212343', '2025-10-15', '16:40:00', 'Presencial', 'arreglar una cotizacion', '2025-10-15 16:28:58'),
(15, 'Miguel Gonzalez', 'mgonzalez@gmail.com', '3262212343', '2025-10-16', '16:10:00', 'Presencial', 'hablar de unos materiales', '2025-10-16 12:11:32'),
(16, 'Paula Cervantes', 'PaulaCervantes2005@gmail.com', '3142563541', '2025-10-17', '10:25:00', 'Virtual', 'quiero saber sobre porcelanato', '2025-10-16 13:15:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombre_apellido` varchar(100) NOT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre_apellido`, `cedula`, `correo`, `telefono`, `direccion`, `fecha_registro`) VALUES
(1, 'maicol', '7845457', 'm@gmail.com', '542145287', '23-23', '2025-08-28 05:02:50'),
(2, 'juancho', '9845457', 'j@gmail.com', '254211452', 'los montes', '2025-08-28 05:12:34'),
(3, '', '', '', '', '', '2025-08-28 05:31:20'),
(4, 'marielys ', '123354554234', 'mari@gmail.com', '21341234', 'las gardenias', '2025-08-28 05:34:51'),
(10, 'maicol', '1232112', 'm@gmail.com', '3262671', 'la cul', '2025-08-28 05:47:55'),
(11, 'juan', '1111111111', 'Juan@gmail.com', '25252525', 'sabanalarga', '2025-08-28 11:47:28'),
(12, 'james', '222222222', 'James@gmail.com', '2424242424', 'la cul', '2025-08-28 11:58:35'),
(13, 'roymer', '1212121214123', 'RD@gmail.com', '3262671', 'san fransisco', '2025-08-28 23:16:47'),
(14, 'josue', '5451234245', 'JS@gmail.com', '25252525', 'los montes', '2025-08-29 01:41:01'),
(15, 'roymer ', '456874877', 'RDV@gmail.com', '45676854', 'El romance', '2025-08-29 01:59:25'),
(19, 'roymer', '123123', 'roimer@gmail.com', '3023181896', 'villa mundi', '2025-08-29 19:25:59'),
(20, 'roimer', '132', 'sss@gmail.com', '1231231232', 'clae', '2025-08-29 19:32:03'),
(21, 'rr', 'rr', 'rr', 'rr', 'rr', '2025-08-29 19:35:17'),
(22, 'roymer', '1001010', 'ee@gmail.com', '1233212345', 'villa mundi', '2025-08-29 20:06:11'),
(23, 'roymer', '999888', 'rv@gmail.com', '3023181896', 'Calle 90  6 E 212', '2025-09-17 02:23:44'),
(34, 'David', '101213', 'rv@gmail.com', '3023181896', 'Calle 90  6 E 212', '2025-09-17 18:13:45'),
(35, 'Juan Andrés perez Ángulo ', '1025896356', 'juancho@gmail.com', '3522485689', 'Buenavista 2', '2025-09-23 23:16:59'),
(36, 'angie fonseca', '1002458963', 'angie@gmail.com', '3253896859', 'la luz', '2025-09-23 23:32:03'),
(37, 'maria fontalvo', '1002457689', 'mari@gmail.com', '3542568952', 'los olivos', '2025-09-24 01:06:49'),
(38, 'Maicol José De la hoz Jiménez ', '9555241', 'm@gmail.com', '3154896875', 'sabanalarga', '2025-09-24 13:55:57'),
(39, 'maicol delahoz', '1002457843', 'm@gmail.com', '3232212343', 'la cul', '2025-09-24 23:40:41'),
(40, 'hermenegildo', '1002356878', 'mene@gmail.com', '3052487895', 'Remolino', '2025-10-05 21:12:18'),
(41, 'omar perez', '1002547568', 'omar@gmail.com', '3225474458', 'sabanalarga', '2025-10-18 23:17:41'),
(42, 'dariluz jimenez', '8774574', 'dari@gmail.com', '3254589856', 'las gardenias', '2025-10-18 23:26:08'),
(48, 'daryluz jimenez', '26854149', 'dari@gmail.com', '3251455874', 'los montes', '2025-10-18 23:31:47'),
(53, 'maicol Delahoz', '2565845741', 'jimenez@gmail.com', '3165874584', '23-23', '2025-10-18 23:35:48'),
(54, 'omar marenco', '1224586458', 'marenco@gmail.com', '3257856985', 'los montes', '2025-10-18 23:43:37'),
(55, 'maria cepeda', '10024574587', 'cepedamaria@gmail.com', '3254124578', 'la luz', '2025-10-18 23:50:32'),
(56, 'maicol lopez', '1255414745', 'm@gmail.com', '3212211454', 'san luis', '2025-10-19 00:00:43'),
(57, 'michael jackson', '1225478569', 'm@gmail.com', '3211458748', 'sabanalarga', '2025-10-19 00:03:33'),
(58, 'mauricio hernandez', '1002457899', 'mau@gmail.com', '3008147596', 'calle 10 cra 23 ', '2025-10-19 14:31:39'),
(59, 'fernando fernandez', '1500478965', 'ferfernandez@gmail.com', '3009637538', 'los robles', '2025-10-19 14:43:25'),
(60, 'joan lopez', '1007489321', 'lopezjoan2342@gmail.com', '3241057505', 'las malvinas', '2025-10-19 14:52:11'),
(61, 'maria de los angeles', '1235987456', 'm@gmail.com', '3158966547', 'rebolo', '2025-10-19 15:43:06'),
(62, 'María de la concesión', '1277987456', 'concesiónmaria@gmail.com', '3241998653', 'la cul', '2025-10-19 15:45:26'),
(67, 'lisbeth mercado', '1111222555', 'lisbethpatty@gmail.com', '3112266998', 'san luis', '2025-10-19 15:52:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE `cotizaciones` (
  `id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cotizaciones`
--

INSERT INTO `cotizaciones` (`id`, `cliente_id`, `fecha`, `total`) VALUES
(1, 1, '2025-10-05 18:31:12', 0.00),
(2, 1, '2025-10-05 18:35:04', 0.00),
(3, 1, '2025-10-05 18:35:31', 0.00),
(4, 1, '2025-10-05 19:06:03', 0.00),
(5, 1, '2025-10-05 19:22:59', 800.00),
(6, 1, '2025-10-05 20:03:04', 1114.18),
(7, 1, '2025-10-05 21:06:25', 5210.62),
(8, 1, '2025-10-05 22:41:15', 6299.23),
(9, 1, '2025-10-07 14:57:26', 1606.00),
(10, 1, '2025-10-07 21:40:50', 921.28),
(11, 1, '2025-10-10 00:57:09', 4293.05),
(12, 1, '2025-10-10 15:33:41', 0.00),
(13, 1, '2025-10-10 16:01:12', 21000.00),
(14, 1, '2025-10-10 16:46:56', 12500.00),
(15, 1, '2025-10-10 17:26:33', 25000.00),
(16, 1, '2025-10-10 17:32:02', 6250.00),
(17, 1, '2025-10-10 18:39:48', 1485.55),
(18, 1, '2025-10-10 19:01:26', 2700.00),
(19, 1, '2025-10-15 18:10:03', 5000.00),
(20, 1, '2025-10-20 23:44:27', 1250.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cotizacion`
--

CREATE TABLE `detalle_cotizacion` (
  `id` int NOT NULL,
  `cotizacion_id` int NOT NULL,
  `producto` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_cotizacion`
--

INSERT INTO `detalle_cotizacion` (`id`, `cotizacion_id`, `producto`, `cantidad`, `precio_unitario`, `subtotal`) VALUES
(1, 5, 'Baldosa Verde 60x60', 20, 40.00, 800.00),
(2, 6, 'Baldosa Verde 60x60', 22, 40.00, 880.00),
(3, 6, 'Baldosa Negra 75x75', 2, 117.09, 234.18),
(4, 7, 'Baldosa Negra 75x75', 30, 117.09, 3512.70),
(5, 7, 'Baldosa Roja 60x60', 28, 60.64, 1697.92),
(6, 8, 'Baldosa Roja 60x60', 23, 60.64, 1394.72),
(7, 8, 'Baldosa Negra 75x75', 34, 117.09, 3981.06),
(8, 8, 'Baldosa Texturizada 30x30', 23, 40.15, 923.45),
(9, 9, 'Baldosa Texturizada 30x30', 20, 40.15, 803.00),
(10, 9, 'Baldosa Texturizada 30x30', 20, 40.15, 803.00),
(11, 10, 'Baldosa Verde 60x60', 20, 40.00, 800.00),
(12, 10, 'Baldosa Roja 60x60', 2, 60.64, 121.28),
(13, 11, 'Baldosa Verde 60x60', 20, 40.00, 800.00),
(14, 11, 'Baldosa Texturizada 30x30', 87, 40.15, 3493.05),
(15, 13, 'Baldosa Mármol 60x60', 24, 250.00, 6000.00),
(16, 13, 'Baldosa Mármol 60x60', 60, 250.00, 15000.00),
(17, 14, 'Baldosa Mármol 60x60', 50, 250.00, 12500.00),
(18, 15, 'Baldosa Lisa 14x14', 250, 100.00, 25000.00),
(19, 16, 'Baldosa champeta 65x65', 25, 250.00, 6250.00),
(20, 17, 'Baldosa Texturizada 30x30', 37, 40.15, 1485.55),
(21, 18, 'Baldosa Lisa 14x14', 27, 100.00, 2700.00),
(22, 19, 'Baldosa champeta 65x65', 20, 250.00, 5000.00),
(23, 20, 'Baldosa champeta 65x65', 50, 25.00, 1250.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int NOT NULL,
  `venta_id` int NOT NULL,
  `producto` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `venta_id`, `producto`, `cantidad`, `precio_unitario`, `subtotal`) VALUES
(1, 1, 'Baldosa rustica', 1, 10.21, 10.21),
(2, 2, 'Baldosa 60 x 60', 13, 100.13, 1301.69),
(3, 3, 'baldosa blanca', 19, 1112.21, 21131.99),
(4, 4, 'Baldosa rustica', 1, 8.00, 8.00),
(5, 5, 'Baldosa rustica', 1, 20000.00, 20000.00),
(6, 6, 'pegante ', 5, 14000.00, 70000.00),
(7, 6, 'Baldosa rustica', 5, 25000.00, 125000.00),
(8, 6, 'baldosa blanca', 3, 15000.01, 45000.03),
(9, 7, 'Eucalisto', 1, 35000.00, 35000.00),
(10, 7, 'Bonaire', 7, 35000.00, 245000.00),
(11, 8, 'marmol', 5, 8.00, 40.00),
(12, 8, 'baldosa blanca', 5, 12000.00, 60000.00),
(13, 8, 'Baldosa rustica', 6, 35.00, 210.00),
(14, 9, 'Baldosa Marbol 60x60', 1, 12.00, 12.00),
(15, 10, 'Baldosa Marbol 60x60', 1, 12000.00, 12000.00),
(16, 11, 'Baldosa Marbol 60x60', 2, 12000.00, 24000.00),
(17, 12, 'Baldosa Verde 45x45', 1, 30.14, 30.14),
(18, 13, 'Baldosa Negra 75x75', 1, 117.09, 117.09),
(19, 14, 'Baldosa Texturizada 30x30', 30, 40.15, 1204.50),
(20, 14, 'Baldosa Negra 75x75', 20, 117.09, 2341.80),
(21, 15, 'Baldosa Texturizada 30x30', 15, 40.15, 602.25),
(22, 15, 'Baldosa Roja 60x60', 20, 60.64, 1212.80),
(23, 16, 'Baldosa Texturizada 30x30', 15, 40.15, 602.25),
(24, 16, 'Baldosa Negra 75x75', 1, 117.09, 117.09),
(25, 16, 'Baldosa Roja 60x60', 15, 60.64, 909.60),
(26, 17, 'Baldosa Texturizada 30x30', 10, 40.15, 401.50),
(27, 18, 'Baldosa Texturizada 30x30', 10, 40.15, 401.50),
(28, 19, 'Baldosa Verde 60x60', 10, 40.00, 400.00),
(29, 20, 'Baldosa Lisa 14x14', 28, 100.00, 2800.00),
(30, 21, 'Baldosa Mármol 60x60', 33, 250.00, 8250.00),
(31, 22, 'Baldosa Mármol 60x60', 49, 250.00, 12250.00),
(32, 23, 'Baldosa champeta 65x65', 30, 250.00, 7500.00),
(33, 24, 'Baldosa Lisa 14x14', 70, 100.00, 7000.00),
(34, 25, 'Baldosa champeta 65x65', 50, 250.00, 12500.00),
(35, 26, 'Baldosa champeta 65x65', 48, 250.00, 12000.00),
(36, 27, 'Baldosa champeta 65x65', 41, 250.00, 10250.00),
(37, 28, 'Baldosa Negra 75x75', 1, 117.09, 117.09),
(38, 29, 'Baldosa champeta 65x65', 25, 250.00, 6250.00),
(39, 30, 'Baldosa Mármol 60x60', 1, 250.00, 250.00),
(40, 30, 'Baldosa champeta 65x65', 100, 250.00, 25000.00),
(41, 30, 'Baldosa Lisa 14x14', 28, 100.00, 2800.00),
(42, 30, 'Baldosa Negra 75x75', 10, 117.09, 1170.90),
(43, 31, 'Baldosa champeta 65x65', 15, 250.00, 3750.00),
(44, 32, 'Baldosa champeta 65x65', 19, 250.00, 4750.00),
(45, 33, 'Baldosa Negra 75x75', 10, 117.09, 1170.90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int NOT NULL,
  `nombre_apellido` varchar(100) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `rol_id` int DEFAULT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre_apellido`, `cedula`, `correo`, `contraseña`, `telefono`, `direccion`, `rol_id`, `fecha_registro`) VALUES
(8, 'Santiago Consuegra', '1214596328', 'SC@gmail.com', 'scrypt:32768:8:1$lggPUhqILMKUYkV4$b729c4677a2c026dc9c3a4991d514a6d41be7dab09f417c6964acc8dc3a53894a8966f3cadb0af7b16cca596a29617a2577ec3867982abdd9a026dca7420f3c7', '2222222', 'la cul', 2, '2025-09-17'),
(9, 'Josue Salas', '1004596323', 'JS@gmail.com', 'scrypt:32768:8:1$xf2LXTvwKidChID4$763028c57ea5743d96d2aea3bebbce599f394b9eb598c60c5447df0eab756b855ac817e3620f9ce439bcf492c7a63dce783d60baf0b04f63cca9584c0b9ccb3b', '3247896542', 'los montes', 1, '2025-09-18'),
(12, 'Maicol Delahoz ', '1004896521', 'maicoldelahoz25@gmail.com', 'scrypt:32768:8:1$P7DHpG5OKiMvllAV$476b627a96465133b8382d57708ea533f75d050404b995d01361d6c63a1492cfa2efd2f803856dfa8b05d5d4106b9f7bf59e8af4773039f36d4620d4ea88ab55', '3175698578', 'la cul', 1, '2025-09-24'),
(14, 'Maicol Delahoz', '1002563125', 'miike@gmail.com', 'scrypt:32768:8:1$79DVWuTSj6HwDNrk$1fc8df53bf9ee7d578f79b35b6f5b8a92d56ab4122d9fc42224d22abd14c54e8dd1d92dd92240ed700b45286e59a22eb1b697e27cbcde48641ebaa54453e25f1', '3217742458', 'sabanalarga', 2, '2025-10-16'),
(15, 'roymer villegas', '1356145896', 'RD@gmail.com', 'scrypt:32768:8:1$MUg2cv9FzcRUh4HN$5156c401bf173ab5018ae2f032f2ad60c1a1b4033fea7cbdcc53fae6eb76e19e7c833ac725f12437cfde9ae7f96c4d38d509674f65376cc253b1618747f42611', '3152478569', 'El Romance', 3, '2025-10-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `estado_stock` varchar(20) DEFAULT NULL,
  `calidad` enum('C1','C2','C3') DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `stock_minimo` int DEFAULT '50',
  `categoria_id` int DEFAULT NULL,
  `proveedor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `nombre`, `codigo`, `categoria`, `marca`, `proveedor`, `precio`, `stock`, `estado_stock`, `calidad`, `fecha_registro`, `stock_minimo`, `categoria_id`, `proveedor_id`) VALUES
(6, 'Baldosa Roja 60x60', 'BAL6060097', 'Interior', 'PisoFino', 'Distribuidora Andina', 60.64, 10, 'Bajo', 'C3', '2025-05-30 16:27:11', 50, NULL, NULL),
(7, 'Baldosa Negra 75x75', 'BAL7575096', 'Piso', 'Azulejos Latinos', 'Azulejos Latinos', 117.09, 1000, 'Bueno', 'C1', '2025-05-30 16:31:49', 50, NULL, NULL),
(25, 'Baldosa Verde 60x60', 'BAL3030016', 'Pared', 'DecorCeram', 'Cerámica Total', 40.00, 876, 'Bueno', 'C2', '2025-10-02 19:04:03', 50, NULL, NULL),
(26, 'Baldosa Mármol 60x60', 'BLM60X60', 'Pared', 'DecorCeram', 'Distribuidora Andina', 250.00, 717, 'Bueno', 'C1', '2025-10-10 10:09:03', 50, NULL, NULL),
(27, 'Baldosa Lisa 14x14', 'BAL1414001', 'Interior', 'Azulejos Latinos', 'Cerámica Total', 100.00, 374, 'Bueno', 'C2', '2025-10-10 10:10:46', 50, NULL, NULL),
(28, 'Baldosa champeta 65x65', 'BALCH6565', 'Piso', 'PisoFino', 'Revestir S.A.', 25.00, 500, 'Bueno', 'C2', '2025-10-10 12:30:08', 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`) VALUES
(1, 'Azulejos Latinos'),
(2, 'Cerámica Total'),
(3, 'Distribuidora Andina'),
(4, 'Revestir S.A.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name_rol` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name_rol`) VALUES
(1, 'Administrador'),
(3, 'Bodeguero'),
(2, 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente_id`, `fecha`, `total`) VALUES
(1, 3, '2025-08-28 05:31:22', 10.21),
(2, 4, '2025-08-28 05:34:52', 1301.69),
(3, 10, '2025-08-28 05:47:57', 21131.99),
(4, 11, '2025-08-28 11:47:30', 8.00),
(5, 12, '2025-08-28 11:58:36', 20000.00),
(6, 13, '2025-08-28 23:16:49', 240000.03),
(7, 14, '2025-08-29 01:41:03', 280000.00),
(8, 15, '2025-08-29 01:59:27', 60250.00),
(9, 20, '2025-08-29 19:32:04', 12.00),
(10, 21, '2025-08-29 19:35:19', 12000.00),
(11, 22, '2025-08-29 20:06:13', 24000.00),
(12, 23, '2025-09-17 02:23:46', 30.14),
(13, 34, '2025-09-17 18:13:47', 117.09),
(14, 35, '2025-09-23 23:17:01', 3546.30),
(15, 36, '2025-09-23 23:32:05', 1815.05),
(16, 37, '2025-09-24 01:06:51', 1628.94),
(17, 38, '2025-09-24 13:55:58', 401.50),
(18, 39, '2025-09-24 23:40:43', 401.50),
(19, 40, '2025-10-05 21:12:19', 400.00),
(20, 41, '2025-10-18 23:17:43', 2800.00),
(21, 42, '2025-10-18 23:26:11', 8250.00),
(22, 48, '2025-10-18 23:31:51', 12250.00),
(23, 53, '2025-10-18 23:35:50', 7500.00),
(24, 54, '2025-10-18 23:43:39', 7000.00),
(25, 55, '2025-10-18 23:50:34', 12500.00),
(26, 56, '2025-10-19 00:00:50', 12000.00),
(27, 57, '2025-10-19 00:03:37', 10250.00),
(28, 58, '2025-10-19 14:31:41', 117.09),
(29, 59, '2025-10-19 14:43:27', 6250.00),
(30, 60, '2025-10-19 14:52:12', 29220.90),
(31, 61, '2025-10-19 15:43:07', 3750.00),
(32, 62, '2025-10-19 15:45:27', 4750.00),
(33, 67, '2025-10-19 15:52:29', 1170.90);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Indices de la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cotizacion_id` (`cotizacion_id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `fk_empleados_rol` (`rol_id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventario_categoria` (`categoria_id`),
  ADD KEY `fk_inventario_proveedor` (`proveedor_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_rol` (`name_rol`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
  ADD CONSTRAINT `cotizaciones_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `detalle_cotizacion`
--
ALTER TABLE `detalle_cotizacion`
  ADD CONSTRAINT `detalle_cotizacion_ibfk_1` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizaciones` (`id`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_empleados_rol` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_inventario_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `fk_inventario_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
