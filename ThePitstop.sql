-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-06-2024 a las 18:53:17
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
-- Base de datos: `ThePitstop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `informacion` text NOT NULL,
  `idlogin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id`, `titulo`, `informacion`, `idlogin`) VALUES
(40, 'Simulación: 5/4/2024', 'Rendimiento sin afectación: 236171000000000000\n\n      Rendimiento en lluvia: 236171000000000000\n\n      Rendimiento en calor: 236645000000000000\n\n      Rendimiento en frío: 235936000000000000\n\n      Carga Aerodinámica: 1267.2 N\n\n      Momento aerodinámico: 2063.88 N*m\n\n      Downforce: 91392 N\n\n      Momento aerodinámico 2: 7350 N*m\n\n      Altura de la Suspensión: 2.1 m\n\n      Rigidez de la Suspensión: 98.6587 N*m\n\n      Potencia: 213.739 CV\n\n      Rendimiento Térmico: 50 %\n\n      Relación de transmisión: 2.29107\n\n      Potencia de frenado: 2640 W\n\n      Distancia de frenado: 8.26004 m', NULL),
(45, 'Simulación: 9/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437039000000000000\n\n      Rendimiento en calor: 437914000000000000\n\n      Rendimiento en frío: 436602000000000000\n\n      Carga Aerodinámica: 1267.2 N\n\n      Momento aerodinámico: 2063.88 N*m\n\n      Downforce: 91392 N\n\n      Momento aerodinámico 2: 7350 N*m\n\n      Altura de la Suspensión: 2.1 m\n\n      Rigidez de la Suspensión: 98.6587 N*m\n\n      Potencia: 209.891 CV\n\n      Rendimiento Térmico: 40 %\n\n      Relación de transmisión: 4.05806\n\n      Potencia de frenado: 2400 W\n\n      Distancia de frenado: 12.0833 m', NULL),
(74, 'Simulación: 20/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437476000000000000\n\n      Rendimiento en calor: 438046000000000000\n\n      Rendimiento en frío: 436428000000000000\n\n      Carga Aerodinámica: 692992 N\n\n      Momento aerodinámico: 2114800 N*m\n\n      Downforce: 210512 N\n\n      Momento aerodinámico 2: 1780870 N*m\n\n      Altura de la Suspensión: 1.368 m\n\n      Rigidez de la Suspensión: 295.623 N*m\n\n      Potencia: 5598.17 CV\n\n      Rendimiento Térmico: 20.9829 %\n\n      Relación de transmisión: 1.2813\n\n      Potencia de frenado: 71966.3 W\n\n      Distancia de frenado: 7.133 m', NULL),
(75, 'Simulación: 20/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437476000000000000\n\n      Rendimiento en calor: 438046000000000000\n\n      Rendimiento en frío: 436428000000000000\n\n      Carga Aerodinámica: 692992 N\n\n      Momento aerodinámico: 2114800 N*m\n\n      Downforce: 210512 N\n\n      Momento aerodinámico 2: 1780870 N*m\n\n      Altura de la Suspensión: 1.368 m\n\n      Rigidez de la Suspensión: 295.623 N*m\n\n      Potencia: 5598.17 CV\n\n      Rendimiento Térmico: 20.9829 %\n\n      Relación de transmisión: 1.2813\n\n      Potencia de frenado: 71966.3 W\n\n      Distancia de frenado: 7.133 m', NULL),
(76, 'Simulación: 20/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437476000000000000\n\n      Rendimiento en calor: 438046000000000000\n\n      Rendimiento en frío: 436428000000000000\n\n      Carga Aerodinámica: 692992 N\n\n      Momento aerodinámico: 2114800 N*m\n\n      Downforce: 210512 N\n\n      Momento aerodinámico 2: 1780870 N*m\n\n      Altura de la Suspensión: 1.368 m\n\n      Rigidez de la Suspensión: 295.623 N*m\n\n      Potencia: 5598.17 CV\n\n      Rendimiento Térmico: 20.9829 %\n\n      Relación de transmisión: 1.2813\n\n      Potencia de frenado: 71966.3 W\n\n      Distancia de frenado: 7.133 m', NULL),
(77, 'Simulación: 20/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437476000000000000\n\n      Rendimiento en calor: 438046000000000000\n\n      Rendimiento en frío: 436428000000000000\n\n      Carga Aerodinámica: 692992 N\n\n      Momento aerodinámico: 2114800 N*m\n\n      Downforce: 210512 N\n\n      Momento aerodinámico 2: 1780870 N*m\n\n      Altura de la Suspensión: 1.368 m\n\n      Rigidez de la Suspensión: 295.623 N*m\n\n      Potencia: 5598.17 CV\n\n      Rendimiento Térmico: 20.9829 %\n\n      Relación de transmisión: 1.2813\n\n      Potencia de frenado: 71966.3 W\n\n      Distancia de frenado: 7.133 m', NULL),
(96, 'Prueba', 'Prueba2', NULL),
(97, 'Simulación: 15/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437476000000000000\n\n      Rendimiento en calor: 438046000000000000\n\n      Rendimiento en frío: 436428000000000000\n\n      Carga Aerodinámica: 692992 N\n\n      Momento aerodinámico: 2114800 N*m\n\n      Downforce: 210512 N\n\n      Momento aerodinámico 2: 1780870 N*m\n\n      Altura de la Suspensión: 1.368 m\n\n      Rigidez de la Suspensión: 295.623 N*m\n\n      Potencia: 5598.17 CV\n\n      Rendimiento Térmico: 20.9829 %\n\n      Relación de transmisión: 1.2813\n\n      Potencia de frenado: 71966.3 W\n\n      Distancia de frenado: 7.133 m', NULL),
(98, 'Simulación: 13/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437039000000000000\n\n      Rendimiento en calor: 437914000000000000\n\n      Rendimiento en frío: 436602000000000000\n\n      Carga Aerodinámica: 1267.2 N\n\n      Momento aerodinámico: 2063.88 N*m\n\n      Downforce: 91392 N\n\n      Momento aerodinámico 2: 7350 N*m\n\n      Altura de la Suspensión: 2.1 m\n\n      Rigidez de la Suspensión: 98.6587 N*m\n\n      Potencia: 209.891 CV\n\n      Rendimiento Térmico: 40 %\n\n      Relación de transmisión: 4.05806\n\n      Potencia de frenado: 2400 W\n\n      Distancia de frenado: 12.0833 m', NULL),
(104, 'Simulación: 15/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437476000000000000\n\n      Rendimiento en calor: 438046000000000000\n\n      Rendimiento en frío: 436428000000000000\n\n      Carga Aerodinámica: 692992 N\n\n      Momento aerodinámico: 2114800 N*m\n\n      Downforce: 210512 N\n\n      Momento aerodinámico 2: 1780870 N*m\n\n      Altura de la Suspensión: 1.368 m\n\n      Rigidez de la Suspensión: 295.623 N*m\n\n      Potencia: 5598.17 CV\n\n      Rendimiento Térmico: 20.9829 %\n\n      Relación de transmisión: 1.2813\n\n      Potencia de frenado: 71966.3 W\n\n      Distancia de frenado: 7.133 m', NULL),
(107, 'Simulación: 9/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437039000000000000\n\n      Rendimiento en calor: 437914000000000000\n\n      Rendimiento en frío: 436602000000000000\n\n      Carga Aerodinámica: 1267.2 N\n\n      Momento aerodinámico: 2063.88 N*m\n\n      Downforce: 91392 N\n\n      Momento aerodinámico 2: 7350 N*m\n\n      Altura de la Suspensión: 2.1 m\n\n      Rigidez de la Suspensión: 98.6587 N*m\n\n      Potencia: 209.891 CV\n\n      Rendimiento Térmico: 40 %\n\n      Relación de transmisión: 4.05806\n\n      Potencia de frenado: 2400 W\n\n      Distancia de frenado: 12.0833 m', NULL),
(108, 'Simulación: 9/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437039000000000000\n\n      Rendimiento en calor: 437914000000000000\n\n      Rendimiento en frío: 436602000000000000\n\n      Carga Aerodinámica: 1267.2 N\n\n      Momento aerodinámico: 2063.88 N*m\n\n      Downforce: 91392 N\n\n      Momento aerodinámico 2: 7350 N*m\n\n      Altura de la Suspensión: 2.1 m\n\n      Rigidez de la Suspensión: 98.6587 N*m\n\n      Potencia: 209.891 CV\n\n      Rendimiento Térmico: 40 %\n\n      Relación de transmisión: 4.05806\n\n      Potencia de frenado: 2400 W\n\n      Distancia de frenado: 12.0833 m', NULL),
(109, 'Simulación: 18/4/2024', 'Rendimiento sin afectación: 437039000000000000\n\n      Rendimiento en lluvia: 437476000000000000\n\n      Rendimiento en calor: 438046000000000000\n\n      Rendimiento en frío: 436428000000000000\n\n      Carga Aerodinámica: 692992 N\n\n      Momento aerodinámico: 2114800 N*m\n\n      Downforce: 210512 N\n\n      Momento aerodinámico 2: 1780870 N*m\n\n      Altura de la Suspensión: 1.368 m\n\n      Rigidez de la Suspensión: 295.623 N*m\n\n      Potencia: 5598.17 CV\n\n      Rendimiento Térmico: 20.9829 %\n\n      Relación de transmisión: 1.2813\n\n      Potencia de frenado: 71966.3 W\n\n      Distancia de frenado: 7.133 m', NULL),
(110, 'Simulación: 10/4/2024', 'Rendimiento sin afectación: 6.90737e+26\n\n      Rendimiento en lluvia: 6.90737e+26\n\n      Rendimiento en calor: 6.92121e+26\n\n      Rendimiento en frío: 6.90047e+26\n\n      Carga Aerodinámica: 151200 N\n\n      Momento aerodinámico: 2520000 N*m\n\n      Downforce: 252000000 N\n\n      Momento aerodinámico 2: 2520000 N*m\n\n      Altura de la Suspensión: 2.3 m\n\n      Rigidez de la Suspensión: 400 N*m\n\n      Potencia: 13410.2 CV\n\n      Rendimiento Térmico: 40 %\n\n      Relación de transmisión: 1\n\n      Potencia de frenado: 300000 W\n\n      Distancia de frenado: 15 m\nPrueba 2', NULL),
(113, 'Simulación: 25/4/2024', 'Rendimiento sin afectación: 115029\n\n      Rendimiento en lluvia: 112878\n\n      Rendimiento en calor: 114769\n\n      Rendimiento en frío: 117179\n\n      Carga Aerodinámica: 0 N\n\n      Momento aerodinámico: -3 N*m\n\n      Downforce: 0 N\n\n      Momento aerodinámico 2: -3 N*m\n\n      Altura de la Suspensión: 2.125 m\n\n      Rigidez de la Suspensión: 200 N*m\n\n      Potencia: 134.102 CV\n\n      Rendimiento Térmico: 50 %\n\n      Relación de transmisión: 1\n\n      Potencia de frenado: 1000 W\n\n      Distancia de frenado: 2.5 m', NULL),
(126, 'Simulación: 14/5/2024', 'Rendimiento sin afectación: 115029\n\n      Rendimiento en lluvia: 112878\n\n      Rendimiento en calor: 114769\n\n      Rendimiento en frío: 117179\n\n      Carga Aerodinámica: 0 N\n\n      Momento aerodinámico: -3 N*m\n\n      Downforce: 0 N\n\n      Momento aerodinámico 2: -3 N*m\n\n      Altura de la Suspensión: 2.125 m\n\n      Rigidez de la Suspensión: 200 N*m\n\n      Potencia: 134.102 CV\n\n      Rendimiento Térmico: 50 %\n\n      Relación de transmisión: 1\n\n      Potencia de frenado: 1000 W\n\n      Distancia de frenado: 2.5 m', NULL),
(128, 'Simulación: 6/6/2024', 'Rendimiento sin afectación: 37407400\n\n      Rendimiento en lluvia: 37384100\n\n      Rendimiento en calor: 37407000\n\n      Rendimiento en frío: 37431200\n\n      Carga Aerodinámica: 1267.2 N\n\n      Momento aerodinámico: 2063.88 N*m\n\n      Downforce: 91392 N\n\n      Momento aerodinámico 2: 7350 N*m\n\n      Altura de la Suspensión: 2.1 m\n\n      Rigidez de la Suspensión: 98.6587 N*m\n\n      Potencia: 209.891 CV\n\n      Rendimiento Térmico: 40 %\n\n      Relación de transmisión: 4.05806\n\n      Potencia de frenado: 2400 W\n\n      Distancia de frenado: 12.0833 m', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_simulacion`
--

CREATE TABLE `datos_simulacion` (
  `id` int(11) NOT NULL,
  `carga_A` float NOT NULL,
  `momento_A` float NOT NULL,
  `downforce` float NOT NULL,
  `momento_A2` float NOT NULL,
  `altura_S` float NOT NULL,
  `rigidez_S` float NOT NULL,
  `potencia` float NOT NULL,
  `rendimiento_T` float NOT NULL,
  `relacion_T` float NOT NULL,
  `potencia_F` float NOT NULL,
  `distancia_F` float NOT NULL,
  `fecha_Sim` date NOT NULL,
  `puntaje_Sim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_simulacion`
--

INSERT INTO `datos_simulacion` (`id`, `carga_A`, `momento_A`, `downforce`, `momento_A2`, `altura_S`, `rigidez_S`, `potencia`, `rendimiento_T`, `relacion_T`, `potencia_F`, `distancia_F`, `fecha_Sim`, `puntaje_Sim`) VALUES
(1, 970658, 1171240, 244964, 1766760, 1.4369, 365.442, 4468.08, 93.4282, 3.2268, 238745, 13.0651, '2021-03-28', 'Malo'),
(2, 1572960, 1886460, 115117, 206593, 1.4187, 131.417, 5918.88, 10.0122, 6.8957, 170349, 3.3012, '2021-04-18', 'Bueno'),
(3, 804908, 620006, 62392.6, 2230700, 0.0226, 263.943, 12139.4, 48.9505, 8.0233, 124999, 1.8045, '2021-05-02', 'Regular'),
(4, 1638170, 992224, 215258, 2435160, 0.3376, 14.7735, 22.6821, 92.1585, 6.4921, 289670, 14.3317, '2021-05-09', 'Regular'),
(5, 1853460, 2278300, 29497.7, 972307, 0.9905, 219.57, 6527.51, 36.9982, 4.7128, 160288, 8.6848, '2021-05-23', 'Regular'),
(6, 900522, 238055, 129823, 990728, 0.305, 257.929, 4532.24, 68.8439, 4.5638, 109106, 10.6818, '2021-06-06', 'Bueno'),
(7, 1046420, 1440150, 7393.66, 1239840, 0.1419, 344.404, 10006.6, 27.6496, 2.5293, 199765, 9.0282, '2021-06-20', 'Malo'),
(8, 2263960, 1760180, 65706, 742982, 1.6834, 323.954, 26.61, 31.2205, 4.3956, 179265, 10.2259, '2021-06-27', 'Bueno'),
(9, 1523460, 2206120, 19063.3, 332838, 1.7047, 348.082, 9878.75, 25.0045, 3.5882, 104086, 10.8491, '2021-07-04', 'Malo'),
(10, 58214.8, 985810, 193573, 2031210, 0.7298, 130.49, 1088.9, 62.8154, 7.478, 164705, 11.5157, '2021-07-18', 'Regular'),
(11, 1671310, 170719, 242370, 1591560, 2.1886, 333.33, 2620.86, 11.3241, 2.7193, 97433.8, 1.8793, '2021-08-01', 'Malo'),
(12, 1151140, 2163670, 67563.3, 1277990, 1.9002, 190.824, 10880.5, 40.3937, 8.2059, 292327, 9.9439, '2021-08-29', 'Bueno'),
(13, 2176840, 2120940, 3623.66, 2228750, 0.9326, 18.9957, 6882.05, 13.3525, 3.5678, 171015, 11.298, '2021-09-05', 'Bueno'),
(14, 46794.2, 1843950, 80166.6, 2229720, 0.4403, 210.007, 6325.06, 3.1984, 9.6136, 184964, 14.0964, '2021-09-12', 'Regular'),
(15, 1647770, 2434360, 102575, 2221410, 1.6004, 313.23, 272.409, 29.1524, 7.9321, 164722, 7.2408, '2021-09-26', 'Regular'),
(16, 1153620, 603595, 37401.7, 1945970, 0.7429, 64.571, 225.581, 86.6818, 9.447, 233830, 7.6093, '2021-10-03', 'Bueno'),
(17, 32877.4, 1682380, 221425, 1985190, 1.0403, 289.227, 9534.98, 60.6255, 2.0791, 129161, 10.0151, '2021-10-10', 'Bueno'),
(18, 29318, 1562220, 178342, 1152140, 2.0829, 199.124, 6348.21, 22.2252, 7.5952, 186323, 4.685, '2021-10-24', 'Bueno'),
(19, 566976, 105794, 44130.1, 1353590, 0.6993, 17.7311, 592.336, 30.6272, 8.8653, 207331, 5.042, '2021-10-31', 'Malo'),
(20, 686613, 74536.7, 4058.11, 1030370, 1.809, 236.718, 2204.39, 43.7701, 3.4916, 265429, 8.1271, '2021-11-07', 'Regular'),
(21, 2513520, 2267660, 88741.4, 179192, 0.563, 336.144, 8130.25, 44.1461, 0.8791, 272257, 0.698, '2021-11-21', 'Malo'),
(22, 720349, 599093, 175512, 280823, 2.2602, 377.908, 6760.24, 73.0629, 6.2831, 126399, 6.2525, '2021-12-05', 'Malo'),
(23, 2411970, 2403610, 101080, 685202, 1.2954, 166.168, 1682.82, 59.4884, 0.9901, 96475.1, 8.5898, '2021-12-12', 'Bueno'),
(24, 1591100, 1551410, 52272.4, 101843, 0.9559, 398.172, 2037.86, 0.2883, 2.5928, 167377, 0.1713, '2022-03-20', 'Malo'),
(25, 780272, 60813.7, 180562, 1813540, 0.8988, 261.693, 8358.12, 84.7083, 8.5568, 261936, 10.5373, '2022-03-27', 'Malo'),
(26, 929533, 1331070, 198500, 2186890, 1.3481, 313.516, 1435.36, 82.561, 0.4422, 162362, 1.8778, '2022-04-10', 'Bueno'),
(27, 1536070, 1444140, 30739.1, 2256680, 0.4546, 137.109, 366.914, 31.7198, 9.9001, 220713, 2.6978, '2022-04-24', 'Regular'),
(28, 905097, 59736.3, 55359.4, 2320440, 2.2363, 300.46, 7499.93, 55.0546, 3.7735, 170805, 12.4714, '2022-05-08', 'Bueno'),
(29, 1504790, 1687960, 29089.2, 1549730, 1.3769, 53.1844, 3609.48, 89.1718, 6.497, 221915, 10.5503, '2022-05-22', 'Bueno'),
(30, 8311.92, 1781320, 8496.15, 1181100, 2.2575, 201.241, 946.94, 98.6168, 3.3726, 156199, 3.7472, '2022-05-29', 'Bueno'),
(31, 957778, 720664, 145923, 2389370, 0.7909, 70.7603, 12747.8, 32.3401, 8.4989, 187388, 5.876, '2022-06-12', 'Malo'),
(32, 517392, 1695820, 78707.3, 204393, 1.8248, 298.502, 11903, 66.5566, 8.7522, 55004.4, 10.0298, '2022-06-19', 'Malo'),
(33, 1312710, 1842560, 140354, 1350770, 1.4438, 325.352, 2133.97, 69.3967, 0.8158, 239172, 3.9198, '2022-07-03', 'Malo'),
(34, 1722510, 939366, 100494, 529335, 1.8316, 92.7516, 7555.42, 16.6784, 9.1471, 2669.68, 0.8198, '2022-07-10', 'Bueno'),
(35, 944771, 256056, 103434, 804897, 1.4334, 23.7129, 3569.08, 83.1809, 0.718, 256295, 4.0905, '2022-07-24', 'Bueno'),
(36, 451948, 1119530, 61793.4, 1796660, 0.0855, 95.5675, 2960.28, 23.1564, 6.7723, 184879, 5.0733, '2022-07-31', 'Bueno'),
(37, 863078, 638245, 90652.2, 2144400, 1.2054, 17.8598, 4868.97, 73.1362, 1.5236, 18088.1, 6.4444, '2022-08-28', 'Malo'),
(38, 1176970, 1976370, 218638, 2416940, 1.1465, 368.046, 12696.8, 25.5073, 9.5603, 203363, 5.619, '2022-09-04', 'Regular'),
(39, 1952340, 801232, 24606.1, 1399850, 1.6687, 216.075, 1040.61, 89.5235, 9.5207, 171392, 6.9108, '2022-09-11', 'Bueno'),
(40, 871424, 2473130, 210145, 2271680, 2.0253, 359.653, 9993.44, 81.7649, 8.9729, 227287, 9.4318, '2022-09-25', 'Bueno'),
(41, 517231, 220398, 18289.1, 2170020, 1.9538, 286.102, 1281.11, 23.9543, 8.2628, 252077, 1.3448, '2022-10-02', 'Bueno'),
(42, 1872280, 476985, 99449.8, 418093, 0.15, 113.096, 7091.11, 91.1671, 8.5392, 138093, 1.7183, '2022-10-09', 'Malo'),
(43, 946113, 1986850, 19341.9, 1836870, 2.2963, 56.7196, 12435, 28.7971, 0.4047, 205856, 0.2924, '2022-10-23', 'Regular'),
(44, 1946620, 2015290, 61968.9, 1304140, 0.143, 251.172, 8126.67, 5.4054, 8.2216, 242114, 1.928, '2022-10-31', 'Malo'),
(45, 2074080, 1206500, 215342, 197003, 0.0368, 343.69, 5917.39, 19.6966, 4.0929, 155897, 1.3188, '2022-11-13', 'Regular'),
(46, 1084940, 517576, 249132, 964824, 2.1083, 331.038, 454.412, 36.2329, 8.4216, 243608, 8.659, '2022-11-20', 'Regular'),
(47, 1656070, 2827.04, 128989, 2202820, 0.5956, 7.5364, 2683.99, 37.5436, 4.9789, 108969, 10.933, '2023-03-05', 'Bueno'),
(48, 250101, 1454720, 35595.5, 262695, 0.8269, 96.179, 799.82, 60.7068, 5.4848, 145548, 12.3623, '2023-03-19', 'Regular'),
(49, 271190, 1282340, 127010, 1783980, 2.1163, 129.993, 12578.8, 33.7574, 8.6634, 98007.9, 2.1662, '2023-04-02', 'Bueno'),
(50, 2429920, 95464.6, 12409.7, 977423, 0.3123, 160.933, 1877.95, 23.2488, 4.9421, 17318, 9.3031, '2023-04-16', 'Malo'),
(51, 1475910, 466479, 177862, 1592030, 0.9634, 10.9618, 11312.7, 98.039, 7.0976, 231067, 2.3057, '2023-04-30', 'Bueno'),
(52, 2130520, 1242690, 95797.6, 1146060, 0.6214, 262.066, 5440.81, 83.9351, 5.4123, 181607, 6.6754, '2023-05-07', 'Regular'),
(53, 555181, 437747, 208715, 2286680, 1.2911, 187.98, 4474.36, 15.2101, 4.9981, 59026, 10.1361, '2023-05-21', 'Malo'),
(54, 1887390, 1025150, 140901, 1680280, 1.5766, 38.3147, 12394.2, 78.5771, 3.0152, 27604, 6.9026, '2023-05-28', 'Regular'),
(55, 211447, 693852, 34907.6, 52597.9, 2.1097, 292.689, 6256.98, 94.0259, 1.6634, 62286.9, 1.8377, '2023-06-04', 'Malo'),
(56, 1513410, 1155750, 221678, 1421160, 1.7253, 171.026, 4225.98, 20.8849, 7.7219, 178468, 8.5254, '2023-06-18', 'Regular'),
(57, 908581, 298815, 29457.5, 366524, 0.8627, 183.138, 6240.51, 47.8523, 2.7587, 152407, 9.3383, '2023-07-02', 'Malo'),
(58, 594873, 1112770, 139961, 1360840, 1.2382, 266.304, 3761.28, 2.214, 3.9132, 277043, 13.2545, '2023-07-09', 'Regular'),
(59, 2272830, 2080020, 1851.37, 2322580, 0.1221, 336.735, 2078.28, 50.3649, 7.585, 109770, 14.4829, '2023-07-23', 'Malo'),
(60, 2048020, 1252150, 135799, 147322, 1.2827, 26.8263, 2542.55, 12.6786, 7.681, 220318, 11.1648, '2023-07-30', 'Bueno'),
(61, 1368430, 1908440, 47586.3, 457975, 0.5228, 38.9824, 5044.29, 97.6157, 0.994, 36991, 3.4635, '2023-08-27', 'Malo'),
(62, 1020960, 1050380, 118928, 1047280, 0.3317, 138.916, 8713, 48.5362, 8.5384, 106510, 14.1481, '2023-09-03', 'Bueno'),
(63, 1171510, 303748, 140696, 2384270, 0.4209, 111.347, 7055.77, 62.8642, 0.6189, 220703, 4.1924, '2023-09-17', 'Regular'),
(64, 1300910, 911508, 6233.51, 1526800, 0.3003, 263.283, 1296.32, 35.8511, 3.1577, 119285, 5.2022, '2023-09-24', 'Regular'),
(65, 53361.7, 2118400, 100273, 1963100, 0.8773, 360.165, 1496.88, 58.795, 9.1012, 220530, 6.4684, '2023-10-08', 'Regular'),
(66, 260880, 434785, 96813.2, 365658, 0.4173, 345.779, 761.328, 98.2885, 1.5815, 276707, 1.1903, '2023-10-22', 'Regular'),
(67, 234921, 2201150, 122520, 1529130, 0.2757, 305.96, 2626.39, 0.7295, 6.9341, 289855, 12.586, '2023-10-29', 'Bueno'),
(68, 1022830, 504512, 144140, 833389, 1.4165, 70.0526, 10035.9, 74.9494, 9.8047, 227079, 6.7777, '2023-11-05', 'Bueno'),
(69, 950118, 1922210, 5624.45, 807848, 0.1881, 51.0933, 8868.07, 22.7612, 2.2836, 294263, 7.1312, '2023-11-18', 'Malo'),
(70, 692992, 2114800, 210512, 1780870, 1.368, 295.623, 5598.17, 20.9829, 1.2813, 71966.3, 7.133, '2023-11-26', 'Malo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id` int(11) NOT NULL,
  `puntaje_total` text NOT NULL,
  `puntos_text` text NOT NULL,
  `porcentaje_p` text NOT NULL,
  `idsimulacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id`, `puntaje_total`, `puntos_text`, `porcentaje_p`, `idsimulacion`) VALUES
(1, '4', 'Malo', '0% - 49%', NULL),
(2, '4', 'Malo', '0% - 49%', NULL),
(3, '48', 'Bueno', '75% - 100%', NULL),
(4, '54', 'Bueno', '75% - 100%', NULL),
(5, '54', 'Bueno', '100', NULL),
(6, '38', 'Bueno', '70.37037037037037', NULL),
(7, '34', 'Bueno', '62.96296296296296', NULL),
(8, '27', 'Bueno', '50', NULL),
(9, '26', 'Regular', '48.148148148148145', NULL),
(10, '25', 'Regular', '46.2962962962963', NULL),
(11, '24', 'Regular', '44.44444444444444', NULL),
(12, '22', 'Regular', '40.74074074074074', NULL),
(13, '20', 'Regular', '37.03703703703704', NULL),
(14, '18', 'Regular', '33.33333333333333', NULL),
(15, '18', 'Malo', '33.33333333333333', NULL),
(16, '30', 'Regular', '55.55555555555556', NULL),
(17, '37', 'Bueno', '68.51851851851852', NULL),
(18, '54', 'Bueno', '100', NULL),
(19, '54', 'Bueno', '100', NULL),
(20, '54', 'Bueno', '100', NULL),
(41, '45', 'Bueno', '83.33333333333334', NULL),
(63, '39', 'Bueno', '72.22222222222221', NULL),
(68, '35', 'Bueno', '64.81481481481481', NULL),
(90, '0', 'Malo', '0', NULL),
(91, '2', 'Malo', '3.7037037037037033', NULL),
(92, '0', 'Malo', '0', NULL),
(93, '0', 'Malo', '0', NULL),
(94, '0', 'Malo', '0', NULL),
(95, '0', 'Malo', '0', NULL),
(96, '0', 'Malo', '0', NULL),
(97, '0', 'Malo', '0', NULL),
(98, '0', 'Malo', '0', NULL),
(99, '0', 'Malo', '0', NULL),
(100, '0', 'Malo', '0', NULL),
(101, '0', 'Malo', '0', NULL),
(102, '0', 'Malo', '0', NULL),
(103, '0', 'Malo', '0', NULL),
(104, '0', 'Malo', '0', NULL),
(105, '0', 'Malo', '0', NULL),
(106, '0', 'Malo', '0', NULL),
(107, '0', 'Malo', '0', NULL),
(108, '0', 'Malo', '0', NULL),
(109, '0', 'Malo', '0', NULL),
(110, '0', 'Malo', '0', NULL),
(111, '0', 'Malo', '0', NULL),
(112, '0', 'Malo', '0', NULL),
(113, '0', 'Malo', '0', NULL),
(114, '0', 'Malo', '0', NULL),
(115, '0', 'Malo', '0', NULL),
(116, '18', 'Malo', '33.33333333333333', NULL),
(117, '29', 'Regular', '53.70370370370371', NULL),
(118, '29', 'Regular', '53.70370370370371', NULL),
(119, '43', 'Bueno', '79.62962962962963', NULL),
(120, '38', 'Bueno', '70.37037037037037', NULL),
(121, '35', 'Bueno', '64.81481481481481', NULL),
(122, '33', 'Bueno', '61.111111111111114', NULL),
(123, '33', 'Bueno', '61.111111111111114', NULL),
(124, '33', 'Bueno', '61.111111111111114', NULL),
(125, '33', 'Bueno', '61.111111111111114', NULL),
(126, '33', 'Bueno', '61.111111111111114', NULL),
(127, '37', 'Bueno', '68.51851851851852', NULL),
(128, '37', 'Bueno', '68.51851851851852', NULL),
(129, '37', 'Bueno', '68.51851851851852', NULL),
(130, '37', 'Bueno', '68.51851851851852', NULL),
(131, '37', 'Bueno', '68.51851851851852', NULL),
(132, '37', 'Bueno', '68.51851851851852', NULL),
(133, '37', 'Bueno', '68.51851851851852', NULL),
(134, '37', 'Bueno', '68.51851851851852', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `teamName` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `teamName`, `email`, `password`) VALUES
(1, 'Prueba', 'luis@gmail.com', '12345678Abc'),
(3, 'Ferrari', 'luis@hotmail.com', 'Abbc123456789'),
(4, 'Redbull', 'LuisAAO@gmail.com', '1234Redbull._'),
(5, 'Mercedez_Benz.', 'totoW@outlook.com', '12345678'),
(9, 'Williams Racing', 'WillimasR@w.com', '12345678'),
(12, 'McLaren', 'McL@gmail.com', '12345678910M'),
(13, 'Test', 'luis@oracle.com', '12345678Oo'),
(14, 'Prueba2', 'l@gmail.com', '12345678'),
(15, 'Prueba3', 'prueba@gmail.com', '12345678Hola1'),
(16, 'Dante', 'dante@gamil.com', '12345678'),
(17, 'Prueba12', 'prueba@gmail.mx', '12345678'),
(18, 'Prueba12', 'prueba@gmail.mx', '12345678'),
(19, 'Ruvalcababulss', 'luis123@gmail.com', '112345678'),
(20, 'Aston Martin', 'Ruvalgamer@gmail.com', '12345678'),
(21, 'Hola', 'Hola12@gmail.com', '12345678'),
(41, 'Dany', 'dany@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `simulacion`
--

CREATE TABLE `simulacion` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `rendimiento` float DEFAULT NULL,
  `rendimiento_Lluvia` float DEFAULT NULL,
  `rendimiento_Calor` float DEFAULT NULL,
  `rendimiento_Frio` float DEFAULT NULL,
  `carga_A` float DEFAULT NULL,
  `momento_A` float DEFAULT NULL,
  `downforce` float DEFAULT NULL,
  `momento_A2` float DEFAULT NULL,
  `altura_S` float DEFAULT NULL,
  `rigidez_S` float DEFAULT NULL,
  `potencia` float DEFAULT NULL,
  `rendimiento_T` float DEFAULT NULL,
  `relacion_T` float DEFAULT NULL,
  `potencia_F` float DEFAULT NULL,
  `distancia_F` float DEFAULT NULL,
  `idlogin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `simulacion`
--

INSERT INTO `simulacion` (`id`, `fecha`, `rendimiento`, `rendimiento_Lluvia`, `rendimiento_Calor`, `rendimiento_Frio`, `carga_A`, `momento_A`, `downforce`, `momento_A2`, `altura_S`, `rigidez_S`, `potencia`, `rendimiento_T`, `relacion_T`, `potencia_F`, `distancia_F`, `idlogin`) VALUES
(43, '2024-04-03', 2.77926e17, 2.77926e17, 2.78483e17, 2.77648e17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2024-04-06', 1.94317e20, 1.94317e20, 1.94706e20, 1.94123e20, 90720, 6667.92, 898560, 17472, 2.16, 70.5419, 462.653, 40, 2.95567, 3900, 12.1065, NULL),
(55, '2024-04-09', 4.37039e17, 4.38354e17, 4.38354e17, 4.36602e17, 1267.2, 2063.88, 91392, 6000, 2.1, 98.6587, 209.891, 40, 4.05806, 2400, 12.0833, NULL),
(60, '2024-04-09', 4.37039e17, 4.37039e17, 4.37914e17, 4.36602e17, 1267.2, 2063.88, 91392, 7350, 2.1, 98.6587, 209.891, 40, 4.05806, 2400, 12.0833, NULL),
(61, '2024-04-10', 6.90737e26, 6.90737e26, 6.92121e26, 6.90047e26, 151200, 2520000, 252000000, 2520000, 2.3, 400, 13410.2, 40, 1, 300000, 15, NULL),
(62, '2024-04-11', 2.87311e21, 2.88465e21, 2.87915e21, 2.86909e21, 700, 500, 84156.8, 8615.2, 60, 400, 700, 90, 3, 755, 36, NULL),
(63, '2024-04-12', 2.77926e17, 2.77926e17, 2.78483e17, 2.77648e17, 990658, 1271240, 144964, 1566760, 1.6943, 365.442, 4468.08, 93.4282, 3.2268, 238745, 13.0651, NULL),
(69, '2024-04-13', 4.37039e17, 4.37039e17, 4.37914e17, 4.36602e17, 1267.2, 2063.88, 91392, 7350, 2.1, 98.6587, 209.891, 40, 4.05806, 2400, 12.0833, NULL),
(70, '2024-04-14', 4.37039e17, 4.37476e17, 4.38046e17, 4.36428e17, 650.32, 300.152, 210512, 1780870, 1.368, 695.623, 5598.17, 70.9829, 1.2813, 650.344, 7.133, NULL),
(71, '2024-04-15', 4.37039e17, 4.37476e17, 4.38046e17, 4.36428e17, 692992, 2114800, 210512, 1780870, 1.368, 295.623, 5598.17, 20.9829, 1.2813, 71966.3, 7.133, NULL),
(80, '2024-04-20', 4.37039e17, 4.37476e17, 4.38046e17, 4.36428e17, 2049020, 1252150, 135799, 147322, 1.2827, 26.8263, 2542.55, 12.6786, 7.681, 220318, 13, NULL),
(81, '2024-04-21', 6.50039e17, 5.30476e17, 4.38046e17, 4.4328e17, 680.223, 500.155, 67634.1, 1945970, 66.2827, 369.638, 2556.27, 90.8676, 4.64, 732.102, 33.4816, NULL),
(82, '2024-04-22', 4.37039e17, 2.476e17, 4.46081e17, 3.76428e17, 567.225, 345.156, 100495, 2389370, 2.2827, 708.63, 2542.27, 76.6867, 3.681, 785.502, 11.1648, NULL),
(109, '2024-04-24', 0, 0, 0, 0, 0, -3, 0, -3, 2.125, 200, 134.102, 50, 1, 1000, 2.5, NULL),
(117, '2024-04-24', 115029, 112878, 114769, 117179, 0, -3, 0, -3, 2.125, 200, 134.102, 50, 1, 1000, 2.5, NULL),
(121, '2024-04-25', 115029, 112878, 114769, 117179, 0, -3, 0, -3, 2.125, 200, 134.102, 50, 1, 1000, 2.5, NULL),
(122, '2024-04-25', 18962600000, 18962200000, 18962600000, 18962900000, 7.2, 2520000, 252000000, 2520000, 2.3, 40, 1341.02, 50, 1, 30000, 15, NULL),
(123, '2024-04-26', 4.37039e17, 4.37476e17, 4.38046e17, 4.36428e17, 32877.4, 1592380, 1672300, 147322, 1.2826, 26.8266, 2542.55, 12.6785, 2.0892, 129160, 10.0149, NULL),
(124, '2024-04-27', 4.37039e17, 4.37476e17, 4.38046e17, 4.36428e17, 1424310, 1054750, 211577, 1321250, 1.5371, 174.03, 4221.98, 19.4981, 6.2075, 128586, 8.5552, NULL),
(126, '2024-04-28', 4.37039e17, 4.37476e17, 4.38046e17, 4.36428e17, 2011790, 2630600, 102008, 677220, 1.2594, 152.189, 1225.82, 45.8454, 0.9306, 93574.2, 8.8958, NULL),
(127, '2024-04-29', 4.37039e17, 4.37476e17, 4.38046e17, 4.36428e17, 12372, 107531, 1358.51, 1322.3, 1.27, 26.63, 252, 12.66, 2.61, 252131, 11.148, NULL),
(128, '2024-04-30', 18962600000, 18962200000, 18962600000, 18962900000, 601228, 1213660, 128907, 1420100, 1.4392, 165.363, 3617.4, 3.142, 2.1932, 204773, 12.2452, NULL),
(129, '2024-05-09', 4.37039e17, 4.37476e17, 4.38046e17, 4.36428e17, 944770, 256056, 103434, 804897, 1.4334, 22.7128, 3569.08, 83.1809, 0.718, 256295, 4.0905, NULL),
(130, '2024-05-14', 189638000000, 189637000000, 189639000000, 189641000000, 151200, 2520000, 252000000, 2520000, 2.3, 400, 13410.2, 50, 1, 300000, 15, NULL),
(131, '2024-05-14', 115029, 112878, 114769, 117179, 0, -3, 0, -3, 2.125, 200, 134.102, 50, 1, 1000, 2.5, NULL),
(132, '2024-06-06', 37407400, 37383700, 37407000, 37431200, 1267.2, 2063.88, 91392, 7350, 2.1, 98.6587, 209.891, 40, 4.05806, 2400, 12.0833, NULL),
(133, '2024-06-06', 37407400, 37384100, 37407000, 37431200, 1267.2, 2063.88, 91392, 7350, 2.1, 98.6587, 209.891, 40, 4.05806, 2400, 12.0833, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idlogin` (`idlogin`);

--
-- Indices de la tabla `datos_simulacion`
--
ALTER TABLE `datos_simulacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `simulacion`
--
ALTER TABLE `simulacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idlogin` (`idlogin`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `datos_simulacion`
--
ALTER TABLE `datos_simulacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `simulacion`
--
ALTER TABLE `simulacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `simulacion`
--
ALTER TABLE `simulacion`
  ADD CONSTRAINT `simulacion_ibfk_1` FOREIGN KEY (`idlogin`) REFERENCES `login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
