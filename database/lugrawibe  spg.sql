-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2016 a las 16:39:05
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lugrawibe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
`id` int(10) unsigned NOT NULL,
  `nombre_area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autoridads`
--

CREATE TABLE IF NOT EXISTS `autoridads` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_Inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE IF NOT EXISTS `carreras` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `mision` text COLLATE utf8_unicode_ci NOT NULL,
  `vision` text COLLATE utf8_unicode_ci NOT NULL,
  `lema` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `codigo`, `mision`, `vision`, `lema`, `fecha_creacion`, `created_at`, `updated_at`) VALUES
(1, 'Electronica', 400, 'Ser lideres en Electronica', 'Formar Profesionales con preparación  de alto nivel ', 'Por  La fuerza  Y La razón  ', '2016-02-02', '2016-03-21 03:40:28', '2016-03-21 03:40:28'),
(2, 'Informatica', 401, 'Preparar  profesionales  lideres y emprendedores ', 'ser lideres en el mercado internacional', 'fuerza Informaicos', '2015-10-30', '2016-03-21 03:43:28', '2016-03-21 03:43:28'),
(3, 'Sistemas', 402, 'Ser lideres en el campo de  de Sistemas ', 'somos una carrera emprendedora para el bien de la sociedad y aspiramos en el mercado exterior', 'fueza Sistemas', '2016-03-01', '2016-03-21 03:46:59', '2016-03-21 03:46:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

CREATE TABLE IF NOT EXISTS `configuracions` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facultad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organigrama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgenuno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgendos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgentres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgencuatro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgencinco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `configuracions`
--

INSERT INTO `configuracions` (`id`, `nombre`, `estado`, `logo`, `facultad`, `organigrama`, `imgenuno`, `imgendos`, `imgentres`, `imgencuatro`, `imgencinco`, `created_at`, `updated_at`) VALUES
(1, 'lugrawibe', 1, 'fcytlogo', 'fcyt', 'organigramafcyt', 'avatar1', 'avatar2', 'avatar3', 'avatar4', 'avatar5', '2016-03-21 01:19:38', '2016-03-29 21:02:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
`id` int(10) unsigned NOT NULL,
  `nombre_departamento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre_departamento`, `descripcion`, `fecha_creacion`, `created_at`, `updated_at`) VALUES
(1, 'Matematicas', 'Ciencias  exactas', '2015-10-01', '2016-03-21 03:15:14', '2016-03-21 03:15:14'),
(2, 'Quimica', 'experimento de  quimica', '2016-02-19', '2016-03-21 03:21:21', '2016-03-21 03:21:21'),
(3, 'Fisica', 'Ciencias exactas', '2016-03-03', '2016-03-21 03:22:56', '2016-03-21 03:39:28'),
(4, 'Electronica', 'Descripción de electrónica  en tecnologia ', '2016-02-04', '2016-03-21 03:25:32', '2016-03-21 03:25:32'),
(5, 'Electromecanica', 'Descripción de Electromecánica de tecnologia', '2015-12-31', '2016-03-21 03:27:39', '2016-03-21 03:27:39'),
(6, 'Informatica', 'Descripción del departamento de Informática ', '2015-12-31', '2016-03-21 03:31:15', '2016-03-21 03:31:15'),
(8, 'Civil', 'construcción civil y asesoría en hormigón armado', '2016-01-21', '2016-03-21 03:42:29', '2016-03-21 03:43:21'),
(9, 'Redes', 'Redes de computadora', '2016-03-25', '2016-03-21 05:16:51', '2016-03-21 05:16:51'),
(11, 'prueba generación de fecha automatica', 'prueba generación de fecha automatica', '2016-03-25', '2016-03-25 23:00:33', '2016-03-25 23:00:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE IF NOT EXISTS `docentes` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `CI` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `codigo`, `CI`, `email`, `direcion`, `telefono`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'por designar', 399, 0, '', '', 0, 0, '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(2, 'jose', 400, 8256923, 'jose@gmail.com', '16 de julio', 65342229, 1, '2016-03-21 01:22:00', '2016-03-21 01:22:00'),
(3, 'juanito torres', 401, 8149969, 'juanito@gmail.com', '26 de julio', 74915450, 1, '2016-03-21 01:24:12', '2016-03-21 01:24:12'),
(5, 'prueba dos', 402, 435345, 'mnmnmn@gmail.com', 'sevsrthdrhdrth', 34534567, 0, '2016-03-25 22:50:15', '2016-03-25 22:50:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacions`
--

CREATE TABLE IF NOT EXISTS `evaluacions` (
`id` int(10) unsigned NOT NULL,
  `plan_global_id` int(10) unsigned NOT NULL,
  `evaluacion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `evaluacions`
--

INSERT INTO `evaluacions` (`id`, `plan_global_id`, `evaluacion`, `created_at`, `updated_at`) VALUES
(4, 3, 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 05:39:52', '2016-03-21 05:39:52'),
(5, 2, 'La finalidad es encaminarse a una evaluación continua, fundamentalmente con participación de los estudiantes. Durante el curso se tendrán cuatro tipos de actividades: - Tareas, trabajos cortos para la casa que consiste en lecturas bibliográficas, ejercicios y otras tareas para domicilio, las que se evaluaran a través de pruebas, informes(resumen analíticos), participación en clases. - Repasos durante el semestre se realizaran repasos en clases consistirán en ejercicios a resolver, sobre las tareas realizados y otros contenidos. - practicas desarrollo de aplicaciones de complejidad pequeña a mediana, utilizando alguna herramienta de programación, trabajo en grupo. - Exámenes, se realizaran los siguientes exámenes Parcial 1: Examen:.........................50% Tareas:...........................10% Repasos:........................15% Prácticas:........................25% Parcial 2: Exámenes:......................50% Repasos:.........................20% Prácticas:........................30% Examen final y segunda instancia comprende todos los temas desarrollados durante todo el semestre, incluyen lecturas bibliográficas, practicas, investigaciones, etc. - Mesas de exámenes, tomar en cuenta como base el material determinado para el examen final.', '2016-03-21 06:07:53', '2016-03-21 06:07:53'),
(6, 4, '', '2016-03-25 05:49:31', '2016-03-25 05:49:31'),
(11, 9, '', '2016-03-25 22:29:17', '2016-03-25 22:29:17'),
(12, 10, '', '2016-03-25 22:29:35', '2016-03-25 22:29:35'),
(13, 11, '', '2016-03-25 22:40:15', '2016-03-25 22:40:15'),
(14, 12, '', '2016-03-25 22:41:17', '2016-03-25 22:41:17'),
(15, 13, '', '2016-03-25 22:41:22', '2016-03-25 22:41:22'),
(16, 14, '', '2016-03-25 22:41:31', '2016-03-25 22:41:31'),
(17, 15, '', '2016-03-25 22:41:42', '2016-03-25 22:41:42'),
(18, 16, '', '2016-03-26 20:46:42', '2016-03-26 20:46:42'),
(19, 17, '', '2016-03-30 18:55:24', '2016-03-30 18:55:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE IF NOT EXISTS `grupos` (
`id` int(10) unsigned NOT NULL,
  `materium_id` int(10) unsigned NOT NULL,
  `docente_id` int(10) unsigned NOT NULL,
  `grupo` int(11) NOT NULL,
  `control_de_plan_global` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `materium_id`, `docente_id`, `grupo`, `control_de_plan_global`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 1, '2016-03-21 05:34:03', '2016-03-21 05:34:16'),
(2, 23, 2, 1, 1, '2016-03-21 06:08:31', '2016-03-21 06:08:31'),
(3, 2, 1, 0, 1, '2016-03-25 22:20:08', '2016-03-25 22:20:08'),
(4, 3, 1, 0, 1, '2016-03-25 22:22:54', '2016-03-25 22:22:54'),
(5, 5, 1, 0, 1, '2016-03-25 22:23:29', '2016-03-25 22:23:29'),
(6, 13, 1, 0, 1, '2016-03-25 22:29:17', '2016-03-25 22:29:17'),
(7, 10, 1, 0, 1, '2016-03-25 22:29:35', '2016-03-25 22:29:35'),
(8, 9, 1, 0, 1, '2016-03-25 22:40:15', '2016-03-25 22:40:15'),
(9, 4, 1, 0, 1, '2016-03-25 22:41:31', '2016-03-25 22:41:31'),
(10, 6, 1, 0, 1, '2016-03-26 20:46:42', '2016-03-26 20:46:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id` int(10) unsigned NOT NULL,
  `original_name` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `original_name`, `filename`, `created_at`, `updated_at`) VALUES
(1, 'fcytlogo', 'fcytlogo', '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(2, 'fcyt', 'fcyt', '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(3, 'organigramafcyt', 'organigramafcyt', '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(4, 'avatar1', 'avatar1', '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(5, 'avatar2', 'avatar2', '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(6, 'avatar3', 'avatar3', '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(7, 'avatar4', 'avatar4', '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(8, 'avatar5', 'avatar5', '2016-03-21 01:19:38', '2016-03-21 01:19:38'),
(9, 'descarga.png', 'descarga-7936e', '2016-03-23 18:48:44', '2016-03-23 18:48:44'),
(10, 'images.jpg', 'images', '2016-03-25 05:27:24', '2016-03-25 05:27:24'),
(11, 'descarga (7).jpg', 'descarga-7', '2016-03-29 20:59:31', '2016-03-29 20:59:31'),
(12, 'images.jpg', 'images-7ae9f', '2016-03-29 20:59:31', '2016-03-29 20:59:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacions`
--

CREATE TABLE IF NOT EXISTS `informacions` (
`id` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono_fijo` int(11) NOT NULL,
  `telefono_celular` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `informacions`
--

INSERT INTO `informacions` (`id`, `nombre`, `cargo`, `telefono_fijo`, `telefono_celular`, `email`, `created_at`, `updated_at`) VALUES
(1, 'dvsv', 'svdsv', 2147483647, 43535435, 'gegwegw@gmail.com', '2016-03-26 00:26:31', '2016-03-26 00:26:31'),
(2, 'wilder Guzman Alvarez', 'Master de de codigo', 448515618, 65342229, 'wumssfcyt@gmail.com', '2016-03-26 01:08:43', '2016-03-26 01:08:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `justificaiongenerals`
--

CREATE TABLE IF NOT EXISTS `justificaiongenerals` (
`id` int(10) unsigned NOT NULL,
  `plan_global_id` int(10) unsigned NOT NULL,
  `razon_de_ser_la_asignatura` text COLLATE utf8_unicode_ci NOT NULL,
  `por_que_se_ensena_y_por_que_esta_dentro_del_plan_de_estudios` text COLLATE utf8_unicode_ci NOT NULL,
  `en_que_medida_contribuye_a_la_formacion_integral_del_profesional` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `justificaiongenerals`
--

INSERT INTO `justificaiongenerals` (`id`, `plan_global_id`, `razon_de_ser_la_asignatura`, `por_que_se_ensena_y_por_que_esta_dentro_del_plan_de_estudios`, `en_que_medida_contribuye_a_la_formacion_integral_del_profesional`, `created_at`, `updated_at`) VALUES
(2, 2, 'El estudio de la simulación utilizando medios medios computacionales y programación para el modelamiento de sistemas reales nos permite poder caracterizar variables del comportamiento del sistema de manera de poder representarlo atra vez de un modelo defunciones y relaciones(matemáticas) que pueden ser reproducidos para ser manipulado y controlados fuera del entorno real(modelo de prueba) de manera de lograr a través de la aplicación de metodologías del control automático inteligente la identificación del modelo estable cuya respuesta sea afectable sin afectar directamente al sistema real, modelo que posteriormente sera aplicado directamente al sistema real.', 'el curso del simulacion del control automatico forma parte actualmente de prácticamente de todas las carreras de ingeniería. la utilización creciente de sistemas entre electrónica, microprocesadores y computadores hacen imprescindibles los conocimientos básicos de modelamiento, simulación y control automático de sistemas. siendo ademas que las técnicas de control son cada vez mas utilizadas para resolver problemas sociológicos, biológicos y económicos, etc.', 'Siendo Basica su principal función es proveer conocimientos y herramientas para que los alumnos puedan fusionar sus conocimientos tanto de electrónica, programación como matemáticas. Los estudiantes adquieren conocimiento sobre dinámica de sistemas, las ventajas y consecuencias de la realimentación, el modelo matemático de sistemas mediante transformada de laplace, aplicación de teorías de inteligencia artificial aplicadas a controladores avanzados como ser lógica difuza, redes neuronales y control adactivo', '2016-03-21 05:37:52', '2016-03-21 05:37:52'),
(3, 3, 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 05:38:17', '2016-03-21 05:38:17'),
(4, 4, '', '', '', '2016-03-25 05:49:31', '2016-03-25 05:49:31'),
(9, 9, '', '', '', '2016-03-25 22:29:16', '2016-03-25 22:29:16'),
(10, 10, '', '', '', '2016-03-25 22:29:35', '2016-03-25 22:29:35'),
(11, 11, '', '', '', '2016-03-25 22:40:15', '2016-03-25 22:40:15'),
(12, 12, '', '', '', '2016-03-25 22:41:17', '2016-03-25 22:41:17'),
(13, 13, '', '', '', '2016-03-25 22:41:22', '2016-03-25 22:41:22'),
(14, 14, '', '', '', '2016-03-25 22:41:31', '2016-03-25 22:41:31'),
(15, 15, '', '', '', '2016-03-25 22:41:42', '2016-03-25 22:41:42'),
(16, 16, '', '', '', '2016-03-26 20:46:42', '2016-03-26 20:46:42'),
(17, 17, '', '', '', '2016-03-30 18:55:23', '2016-03-30 18:55:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE IF NOT EXISTS `materias` (
`id` int(10) unsigned NOT NULL,
  `departamento_id` int(10) unsigned NOT NULL,
  `nombre_materia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sigla_materia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `departamento_id`, `nombre_materia`, `sigla_materia`, `codigo`, `fecha_creacion`, `created_at`, `updated_at`) VALUES
(1, 1, 'CALCULO I', 'Matematicas1', 400, '2016-03-01', '2016-03-21 03:33:54', '2016-03-21 03:33:54'),
(2, 1, 'ALGEBRA I', 'Matematicas1', 401, '2016-02-09', '2016-03-21 03:34:18', '2016-03-21 03:34:18'),
(3, 1, 'CALCULO II', 'Matematicas1', 402, '2016-02-07', '2016-03-21 03:34:44', '2016-03-21 03:34:44'),
(4, 2, 'Química Organica', 'Quimica2', 403, '2016-02-15', '2016-03-21 03:36:02', '2016-03-21 03:36:02'),
(5, 2, 'CONTABILIDAD BASICA', 'Quimica2', 404, '2016-02-16', '2016-03-21 03:36:36', '2016-03-21 03:38:30'),
(6, 2, 'métodos y organización de procesos industriales', 'Quimica2', 405, '2016-01-19', '2016-03-21 03:38:12', '2016-03-21 03:38:12'),
(7, 3, 'FISICA BASICA I', 'Fisica3', 406, '2016-01-10', '2016-03-21 03:43:56', '2016-03-21 03:43:56'),
(9, 3, 'FISICA BASICA III', 'Fisica3', 408, '2016-01-25', '2016-03-21 03:45:12', '2016-03-21 03:45:12'),
(10, 4, 'CALCULO NUMERICO', 'Electronica4', 409, '2016-01-04', '2016-03-21 03:46:36', '2016-03-21 03:46:36'),
(11, 4, 'INTRODUCCION A LA PROGRAMACION', 'Electronica4', 410, '2016-02-01', '2016-03-21 03:47:36', '2016-03-21 03:47:36'),
(12, 5, 'ELEM. DE PROGRAMACION Y ESTRUC. DE DATOS', 'Electromecanica5', 411, '2016-01-21', '2016-03-21 03:49:10', '2016-03-21 03:49:10'),
(13, 5, 'INTRODUCCION A LOS MICROCONTROLADORES', 'Electromecanica5', 412, '2016-01-06', '2016-03-21 03:51:17', '2016-03-21 03:51:17'),
(14, 6, 'INGENIERIA DE CALIDAD DE SOFTWARE	', 'Informatica6', 413, '2016-01-27', '2016-03-21 03:52:12', '2016-03-21 03:52:12'),
(15, 6, 'LOGICA', 'Informatica6', 414, '2016-01-25', '2016-03-21 03:52:39', '2016-03-21 03:52:39'),
(16, 6, 'PROGRAMACIÓN FUNCIONAL', 'Informatica6', 415, '2016-01-26', '2016-03-21 03:53:25', '2016-03-21 03:53:25'),
(20, 8, 'DIBUJO TECNICO', 'Civil8', 419, '2016-01-11', '2016-03-21 03:56:39', '2016-03-21 03:56:39'),
(21, 8, 'ESTADISTICA I', 'Civil8', 420, '2016-03-11', '2016-03-21 03:57:16', '2016-03-21 03:57:16'),
(23, 6, 'Modelacion y control Inteligente', 'Informatica6', 421, '2016-02-29', '2016-03-21 05:35:16', '2016-03-21 05:35:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_carrera`
--

CREATE TABLE IF NOT EXISTS `materia_carrera` (
  `carrera_id` int(10) unsigned NOT NULL,
  `materium_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `materia_carrera`
--

INSERT INTO `materia_carrera` (`carrera_id`, `materium_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 20),
(1, 21),
(1, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_sub_area`
--

CREATE TABLE IF NOT EXISTS `materia_sub_area` (
  `sub_area_id` int(10) unsigned NOT NULL,
  `materium_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_02_20_092409_create_departamentos_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_15_172536_create_carreras_table', 1),
('2016_02_15_174022_create_docentes_table', 1),
('2016_02_15_175810_create_autoridads_table', 1),
('2016_02_19_160650_create_areas_table', 1),
('2016_02_19_160703_create_subareas_table', 1),
('2016_02_20_173040_create_materias_table', 1),
('2016_02_21_134245_create_planglobals_table', 1),
('2016_02_23_003626_create_justificaiongenerals_table', 1),
('2016_02_23_012814_create_propositosgenerales_table', 1),
('2016_02_23_012912_create_objetivosgenerales_table', 1),
('2016_02_23_013756_create_evaluacions_table', 1),
('2016_03_06_121914_CreateImages', 1),
('2016_03_06_150911_create_sistemaUnos_table', 1),
('2016_03_07_073309_create_sistemapgs_table', 1),
('2016_03_11_040513_create_temas_table', 1),
('2016_03_16_161133_create_unidades_table', 1),
('2016_03_17_231219_create_grupos_table', 1),
('2016_03_18_115045_create_configuracions_table', 1),
('2017_02_17_092109_entrust_setup_tables', 1),
('2016_03_25_194048_create_informacions_table', 2),
('2016_03_26_035536_create_noticias_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
`id` int(10) unsigned NOT NULL,
  `docente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `materia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenido` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `docente`, `materia`, `titulo`, `contenido`, `fecha_inicio`, `fecha_final`, `created_at`, `updated_at`) VALUES
(7, 'tres', 'ALGEBRA I', 'tres wilder pru tres wilder pru tres wilder pru tres wilder pru tres wilder pru tres wilder pru tres', 'Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general. Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general. Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general.', '2016-03-11', '2016-03-30', '2016-03-26 11:59:51', '2016-03-26 20:10:46'),
(9, 'cinco', 'cinco', 'cinco', 'cinco', '0000-00-00', '0000-00-00', '2016-03-26 12:10:17', '2016-03-26 12:10:17'),
(10, 'seis', 'ALGEBRA I', 'seis', 'seis', '0000-00-00', '2016-04-21', '2016-03-26 12:10:38', '2016-03-29 20:51:40'),
(11, 'siete', 'siete', 'siete', 'siete', '0000-00-00', '0000-00-00', '2016-03-26 12:11:00', '2016-03-26 12:11:00'),
(13, 'nueve', 'nueve', 'nueve', 'nueve', '0000-00-00', '0000-00-00', '2016-03-26 12:11:50', '2016-03-26 12:11:50'),
(14, 'diez', 'diez', 'diez', 'diez', '0000-00-00', '0000-00-00', '2016-03-26 12:12:09', '2016-03-26 12:12:09'),
(15, 'once', 'ALGEBRA I', 'once', 'once', '0000-00-00', '2016-04-15', '2016-03-26 12:12:27', '2016-03-28 10:01:39'),
(16, 'doce', 'doce', 'doce', 'doce', '0000-00-00', '0000-00-00', '2016-03-26 12:12:52', '2016-03-26 12:12:52'),
(17, 'trece', 'trece', 'trece', 'trece', '0000-00-00', '0000-00-00', '2016-03-26 12:13:10', '2016-03-26 15:44:49'),
(18, 'catorce', 'catorce', 'catorce', 'catorce', '0000-00-00', '0000-00-00', '2016-03-26 15:45:44', '2016-03-26 15:45:44'),
(19, 'juanito torres', 'CONTABILIDAD BASICA', 'examen examen examen examen examen examen examen examen examen examen examen examen examen  mmmmmmmm', 'MATERIA: 2010035 APLICACION DE SISTEMAS OPERATIVOS\r\nDOCENTE: CUSSI NICOLAS GROVER HUMBERTO\r\nUsted no tiene notas cargadas para la materia 2010035 APLICACION DE SISTEMAS OPERATIVOS .\r\n\r\n\r\nMATERIA: 2010186 DINAMICA DE SISTEMAS (ELECTIVA)\r\nDOCENTE: ORELLANA ARAOZ JORGE WALTER\r\nUsted no tiene notas cargadas para la materia 2010186 DINAMICA DE SISTEMAS (ELECTIVA) .\r\n\r\n\r\nMATERIA: 2010210 INFORMATICA FORENSE\r\nDOCENTE: ANTEZANA CAMACHO MARCELO\r\nUsted no tiene notas cargadas para la materia 2010210 INFORMATICA FORENSE .\r\n\r\n\r\nMATERIA: 2016023 INGENIERIA ECONOMICA\r\nDOCENTE: ARANIBAR LA FUENTE LIGIA JACQUELINE\r\nUsted no tiene notas cargadas para la materia 2016023 INGENIERIA ECONOMICA .\r\n\r\n\r\nMATERIA: 2010027 INTELIGENCIA ARTIFICIAL\r\nDOCENTE: RODRIGUEZ BILBAO ERIKA PATRICIA\r\nUsted no tiene notas cargadas para la materia 2010027 INTELIGENCIA ARTIFICIAL .\r\n\r\n\r\nMATERIA: 2010047 REDES DE COMPUTADORAS\r\nDOCENTE: ORELLANA ARAOZ JORGE WALTER\r\nUsted no tiene notas cargadas para la materia 2010047 REDES DE COMPUTADORAS .\r\n\r\n\r\nMATERIA: 2010024 TALLER DE INGENIERIA DE SOFTWARE\r\nDOCENTE: RODRIGUEZ BILBAO ERIKA PATRICIA\r\nUsted no tiene notas cargadas para la materia 2010024 TALLER DE INGENIERIA DE SOFTWARE .\r\nMATERIA: 2010035 APLICACION DE SISTEMAS OPERATIVOS\r\nDOCENTE: CUSSI NICOLAS GROVER HUMBERTO\r\nUsted no tiene notas cargadas para la materia 2010035 APLICACION DE SISTEMAS OPERATIVOS .\r\n\r\n\r\nMATERIA: 2010186 DINAMICA DE SISTEMAS (ELECTIVA)\r\nDOCENTE: ORELLANA ARAOZ JORGE WALTER\r\nUsted no tiene notas cargadas para la materia 2010186 DINAMICA DE SISTEMAS (ELECTIVA) .\r\n\r\n\r\nMATERIA: 2010210 INFORMATICA FORENSE\r\nDOCENTE: ANTEZANA CAMACHO MARCELO\r\nUsted no tiene notas cargadas para la materia 2010210 INFORMATICA FORENSE .\r\n\r\n\r\nMATERIA: 2016023 INGENIERIA ECONOMICA\r\nDOCENTE: ARANIBAR LA FUENTE LIGIA JACQUELINE\r\nUsted no tiene notas cargadas para la materia 2016023 INGENIERIA ECONOMICA .\r\n\r\n\r\nMATERIA: 2010027 INTELIGENCIA ARTIFICIAL\r\nDOCENTE: RODRIGUEZ BILBAO ERIKA PATRICIA\r\nUsted no tiene notas cargadas para la materia 2010027 INTELIGENCIA ARTIFICIAL .\r\n\r\n\r\nMATERIA: 2010047 REDES DE COMPUTADORAS\r\nDOCENTE: ORELLANA ARAOZ JORGE WALTER\r\nUsted no tiene notas cargadas para la materia 2010047 REDES DE COMPUTADORAS .\r\n\r\n\r\nMATERIA: 2010024 TALLER DE INGENIERIA DE SOFTWARE\r\nDOCENTE: RODRIGUEZ BILBAO ERIKA PATRICIA\r\nUsted no tiene notas cargadas para la materia 2010024 TALLER DE INGENIERIA DE SOFTWARE .\r\n', '2016-03-26', '2016-03-10', '2016-03-26 19:49:13', '2016-03-26 19:49:13'),
(20, 'juanito torres', 'ALGEBRA I', 'Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a trata', 'Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general. Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general. Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general.', '2016-03-26', '2016-03-16', '2016-03-26 20:00:03', '2016-03-26 20:00:03'),
(21, 'juanito torres', 'ALGEBRA I', '345345345', 'rgegrreg', '2016-03-26', '2016-03-31', '2016-03-26 20:12:11', '2016-03-26 20:12:11'),
(22, 'juanito torres', 'métodos y organización de procesos industriales', 'jjjjjjjjjjjjjjjjj', 'jjjjjjjjjjjjjjjjjj', '2016-03-26', '2016-03-31', '2016-03-26 20:23:59', '2016-03-26 20:23:59'),
(23, 'juanito torres', 'DIBUJO TECNICO', 'sss', 'sss', '2016-03-28', '2016-03-30', '2016-03-28 09:59:09', '2016-03-28 09:59:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivosgenerales`
--

CREATE TABLE IF NOT EXISTS `objetivosgenerales` (
`id` int(10) unsigned NOT NULL,
  `plan_global_id` int(10) unsigned NOT NULL,
  `objetivos_generales` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `objetivosgenerales`
--

INSERT INTO `objetivosgenerales` (`id`, `plan_global_id`, `objetivos_generales`, `created_at`, `updated_at`) VALUES
(2, 3, 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 05:38:33', '2016-03-21 05:38:33'),
(3, 2, '- Estudiar la simulación y control de sistemas tradicionales. - Estudiar las metodologías de modelamiento matemático de sistemas continuos. - Estudiar las técnicas de representación de control de sistemas e el dominio temporal y el dominio de la place. -técnicas de control inteligente: Adaptivo, difuso y con redes neuronales. - construir un modelo real para la aplicación de conocimiento.', '2016-03-21 05:38:56', '2016-03-21 05:38:56'),
(4, 4, '', '2016-03-25 05:49:31', '2016-03-25 05:49:31'),
(9, 9, '', '2016-03-25 22:29:16', '2016-03-25 22:29:16'),
(10, 10, '', '2016-03-25 22:29:35', '2016-03-25 22:29:35'),
(11, 11, '', '2016-03-25 22:40:15', '2016-03-25 22:40:15'),
(12, 12, '', '2016-03-25 22:41:17', '2016-03-25 22:41:17'),
(13, 13, '', '2016-03-25 22:41:22', '2016-03-25 22:41:22'),
(14, 14, '', '2016-03-25 22:41:31', '2016-03-25 22:41:31'),
(15, 15, '', '2016-03-25 22:41:42', '2016-03-25 22:41:42'),
(16, 16, '', '2016-03-26 20:46:42', '2016-03-26 20:46:42'),
(17, 17, '', '2016-03-30 18:55:23', '2016-03-30 18:55:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'crear-materia', 'Crear Materia', 'Crear Materia', '2016-03-21 03:03:33', '2016-03-21 03:03:33'),
(2, 'crear-carrera', 'Crear Carrera', 'Crear Carrera', '2016-03-21 03:05:12', '2016-03-21 03:05:12'),
(6, 'eliminar-materia', 'Eliminar Materia', 'Eliminar Materia', '2016-03-21 03:05:34', '2016-03-21 03:05:34'),
(7, 'editar-materia', 'Editar Materia', 'Editar Materia', '2016-03-21 03:06:26', '2016-03-21 03:06:26'),
(8, 'eliminar-carrera', 'Eliminar Carrera', 'Eliminar carrera', '2016-03-21 03:06:38', '2016-03-21 03:07:06'),
(9, 'crear-area', 'Crear Area', 'Crear Area', '2016-03-21 03:07:29', '2016-03-21 03:07:29'),
(10, 'editar-carrera', 'Editar carrera', 'Editar-carrera', '2016-03-21 03:07:43', '2016-03-21 03:09:56'),
(11, 'eliminar-area', 'Eliminar Area', 'Eliminar Area', '2016-03-21 03:08:18', '2016-03-21 03:08:18'),
(12, 'crear-docente', 'Crear Docente', 'crear-docente', '2016-03-21 03:08:30', '2016-03-21 03:08:30'),
(13, 'eliminar-docente', 'Eliminar Docente', 'eliminar-docente', '2016-03-21 03:09:06', '2016-03-21 03:09:06'),
(14, 'editar-area', 'Editar Area', 'Editar Area', '2016-03-21 03:09:06', '2016-03-21 03:09:06'),
(15, 'editar-docente', 'Editar Docente', 'editar-docente', '2016-03-21 03:10:10', '2016-03-21 03:10:10'),
(16, 'crear-subarea', 'Crear Sub Area', 'Crear Sub Area', '2016-03-21 03:10:50', '2016-03-21 03:10:50'),
(17, 'crear-autoridad', 'Crear Autoridad', 'crear-autoridad', '2016-03-21 03:11:14', '2016-03-21 03:11:14'),
(18, 'eliminar-subarea', 'Eliminar Sub Area', 'Eliminar Sub Area', '2016-03-21 03:11:41', '2016-03-21 03:11:41'),
(19, 'eliminar-autoridad', 'Eliminar autoridad', 'eliminar-autoridad', '2016-03-21 03:12:01', '2016-03-21 03:12:31'),
(20, 'editar-subarea', 'Editar Sub Area', 'Editar Sub Area', '2016-03-21 03:12:36', '2016-03-21 03:12:36'),
(21, 'editar-autoridad', 'Editar autoridad', 'editar-autoridad', '2016-03-21 03:13:13', '2016-03-21 03:13:13'),
(22, 'crear-grupo', 'Crear grupo', 'crear-grupo', '2016-03-21 03:15:23', '2016-03-21 03:15:23'),
(23, 'eliminar-grupo', 'Eliminar grupo', 'eliminar-grupo', '2016-03-21 03:15:57', '2016-03-21 03:15:57'),
(24, 'editar-grupo', 'Editar grupo', 'editar-grupo', '2016-03-21 03:16:31', '2016-03-21 03:16:31'),
(25, 'crear-departamento', 'Crear departamento', 'crear-departamento', '2016-03-21 03:21:09', '2016-03-21 03:21:09'),
(26, 'eliminar-departamento', 'Eliminar departamento', 'eliminar-departamento', '2016-03-21 03:21:53', '2016-03-21 03:21:53'),
(27, 'editar-departamento', 'Editar departamento', 'editar-departamento', '2016-03-21 03:22:40', '2016-03-21 03:22:40'),
(28, 'crear-roles', 'Crear roles', 'crear-roles', '2016-03-21 03:24:03', '2016-03-21 03:24:03'),
(29, 'eliminar-roles', 'Eliminar roles', 'eliminar-roles', '2016-03-21 03:24:33', '2016-03-21 03:24:33'),
(30, 'editar-roles', 'Editar roles', 'editar-roles', '2016-03-21 03:25:11', '2016-03-21 03:25:11'),
(31, 'crear-usuario', 'Crear usuario', 'crear-usuario', '2016-03-21 03:31:03', '2016-03-21 03:31:03'),
(32, 'eliminar-usuario', 'Eliminar usuario', 'eliminar-usuario', '2016-03-21 03:31:33', '2016-03-21 03:31:33'),
(33, 'editar-usuario', 'Editar usuario', 'editar-usuario', '2016-03-21 03:32:09', '2016-03-21 03:32:09'),
(34, 'Sistemas', 'Sistemas', 'Sistemas', '2016-03-21 05:09:31', '2016-03-21 05:10:48'),
(35, 'Redes', 'Redes', 'Redes', '2016-03-21 05:17:22', '2016-03-21 05:17:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(34, 1),
(35, 1),
(1, 2),
(6, 2),
(7, 2),
(25, 3),
(26, 3),
(27, 3),
(2, 4),
(8, 4),
(10, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planglobals`
--

CREATE TABLE IF NOT EXISTS `planglobals` (
`id` int(10) unsigned NOT NULL,
  `materium_id` int(10) unsigned NOT NULL,
  `nombre_plan_global` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sigla_plan_global` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `codigo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `planglobals`
--

INSERT INTO `planglobals` (`id`, `materium_id`, `nombre_plan_global`, `sigla_plan_global`, `estado`, `codigo`, `created_at`, `updated_at`) VALUES
(2, 23, 'Modelacion y control Inteligente', 'Informatica6', 1, 23, '2016-03-21 05:36:21', '2016-03-21 05:36:21'),
(3, 1, 'CALCULO I', 'Matematicas1', 0, 1, '2016-03-21 05:38:06', '2016-03-29 21:03:22'),
(4, 1, 'CALCULO I', 'Matematicas1', 0, 1, '2016-03-23 18:46:05', '2016-03-25 22:26:45'),
(9, 13, '', '', 1, 0, '2016-03-25 22:29:16', '2016-03-25 22:29:16'),
(10, 10, '', '', 1, 0, '2016-03-25 22:29:35', '2016-03-25 22:29:35'),
(11, 9, 'FISICA BASICA III', 'Fisica3', 1, 0, '2016-03-25 22:40:15', '2016-03-25 22:40:15'),
(12, 2, 'ALGEBRA I', 'Matematicas1', 1, 0, '2016-03-25 22:41:17', '2016-03-25 22:41:17'),
(13, 3, 'CALCULO II', 'Matematicas1', 1, 0, '2016-03-25 22:41:22', '2016-03-25 22:41:22'),
(14, 4, 'Química Organica', 'Quimica2', 1, 0, '2016-03-25 22:41:31', '2016-03-25 22:41:31'),
(15, 5, 'CONTABILIDAD BASICA', 'Quimica2', 1, 0, '2016-03-25 22:41:42', '2016-03-25 22:41:42'),
(16, 6, 'métodos y organización de procesos industriales', 'Quimica2', 1, 0, '2016-03-26 20:46:42', '2016-03-26 20:46:42'),
(17, 1, 'CALCULO I', 'Matematicas1', 1, 1, '2016-03-29 21:03:22', '2016-03-29 21:03:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propositosgenerales`
--

CREATE TABLE IF NOT EXISTS `propositosgenerales` (
  `plan_global_id` int(10) unsigned NOT NULL,
`id` int(10) unsigned NOT NULL,
  `propositos_generales` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `propositosgenerales`
--

INSERT INTO `propositosgenerales` (`plan_global_id`, `id`, `propositos_generales`, `created_at`, `updated_at`) VALUES
(3, 2, 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 05:38:23', '2016-03-21 05:38:23'),
(2, 3, '- Proveer al estudiante conocimientos básicos del modelamiento de sistemas continuos. - fusionar conocimientos adquiridos en diferentes asignaturas de la carrera. - Proveer al estudiante conocimientos en técnicas para control inteligente. - Aplicar el conocimiento adquirido a través de un modelo real . - Incentivar al estudiante a la investigación y aplicación de modelacion y control automático en entornos reales.', '2016-03-21 05:38:27', '2016-03-21 05:38:27'),
(4, 4, '', '2016-03-25 05:49:31', '2016-03-25 05:49:31'),
(9, 9, '', '2016-03-25 22:29:16', '2016-03-25 22:29:16'),
(10, 10, '', '2016-03-25 22:29:35', '2016-03-25 22:29:35'),
(11, 11, '', '2016-03-25 22:40:15', '2016-03-25 22:40:15'),
(12, 12, '', '2016-03-25 22:41:17', '2016-03-25 22:41:17'),
(13, 13, '', '2016-03-25 22:41:22', '2016-03-25 22:41:22'),
(14, 14, '', '2016-03-25 22:41:31', '2016-03-25 22:41:31'),
(15, 15, '', '2016-03-25 22:41:42', '2016-03-25 22:41:42'),
(16, 16, '', '2016-03-26 20:46:42', '2016-03-26 20:46:42'),
(17, 17, '', '2016-03-30 18:55:23', '2016-03-30 18:55:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'administrador', 'ADMINISTRADOR', 'CONTROL TOTAL DEL SISTEMA', '2016-03-21 03:23:21', '2016-03-21 03:23:21'),
(2, 'docente', 'DOCENTE', 'FORMADOR', '2016-03-21 04:23:25', '2016-03-21 04:23:25'),
(3, 'jefe-de-departamento', 'JEFE DE DE DEPARTAMENTO', 'JEFE DE DE DEPARTAMENTO  ', '2016-03-21 04:25:24', '2016-03-21 04:25:24'),
(4, 'director-de-carrera', 'DIRECTOR DE CARRERA', 'DIRECTOR DE CARRERA', '2016-03-21 04:26:53', '2016-03-21 04:26:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(3, 1),
(3, 2),
(4, 2),
(5, 2),
(3, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistemapgs`
--

CREATE TABLE IF NOT EXISTS `sistemapgs` (
`id` int(10) unsigned NOT NULL,
  `nombre_de_facultad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sistemapgs`
--

INSERT INTO `sistemapgs` (`id`, `nombre_de_facultad`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Fcyt', 'Lugrawibe', '2016-03-21 01:19:38', '2016-03-21 03:07:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistemaunos`
--

CREATE TABLE IF NOT EXISTS `sistemaunos` (
`id` int(10) unsigned NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facultad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subareas`
--

CREATE TABLE IF NOT EXISTS `subareas` (
`id` int(10) unsigned NOT NULL,
  `area_id` int(10) unsigned NOT NULL,
  `nombre_subarea` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE IF NOT EXISTS `temas` (
`id` int(10) unsigned NOT NULL,
  `tema` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `tema`, `menu`, `created_at`, `updated_at`) VALUES
(1, 'skin-black', 'sidebar-mini', '2016-03-21 01:19:38', '2016-03-28 10:12:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE IF NOT EXISTS `unidades` (
`id` int(10) unsigned NOT NULL,
  `plan_global_id` int(10) unsigned NOT NULL,
  `nombre_de_la_unidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duracion_de_la_unidad_en_periodos_academicos` int(11) NOT NULL,
  `objetivo_de_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `contenido_de_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `tecnicas_predominantes_propuestas_para_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `evaluacion_de_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `bibliografia_especifica_de_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `plan_global_id`, `nombre_de_la_unidad`, `duracion_de_la_unidad_en_periodos_academicos`, `objetivo_de_la_unidad`, `contenido_de_la_unidad`, `tecnicas_predominantes_propuestas_para_la_unidad`, `evaluacion_de_la_unidad`, `bibliografia_especifica_de_la_unidad`, `created_at`, `updated_at`) VALUES
(3, 3, 'uno', 2, 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 05:38:55', '2016-03-21 05:38:55'),
(4, 3, 'dois', 5, 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 05:39:16', '2016-03-21 05:39:16'),
(5, 3, 'tres', 8, 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 05:39:43', '2016-03-21 05:39:43'),
(6, 2, 'Introduccion a  los sistemas de control', 2, 'Realizar una introducción general y amplia al área de simulación de sistemas y control inteligente.', '- Introducción un poco de historia.\r\n- Modelos de sistemas \r\n- clasificación. Pasos en el proceso  de modelado y simulación.\r\n- conceptos básicos  de control: lazo abierto, lazo cerrado realimentación, estabilidad, comportamiento dinámico.\r\n- Bibliografia', 'Se utilizara una expocision dialogada. El docente expondra los conceptos  del tema formulando preguntas, con el fin de lograr  participacion del alumno en el proceso de conceptualizacion  de las diferentes etapas  y terninos empleados en esta unidad. \r\nPara la profundizacion  del tema se estudiara  y aplicara conceptos a un ejemplo practico,\r\nA traves de la modelacion de del problema real, donde el estudiante participara en forma creativa para determinar los componentes  del modelo. ', 'Se realizara una evaluacion formativa. Se evaluara el grado de comprencion, la forma practica de los elementos de aplicacion de los elementos utilizados en esta unidad en base a los ejercicios resueltos. ', '[DORF89]', '2016-03-21 05:56:25', '2016-03-21 05:56:25'),
(7, 2, 'Modelos Matematicos de sistemas', 8, 'Estudiar las metodologías del modelamiento matemático de sistemas lineales y no lineales.', 'Ecuaciones diferenciales \r\n- sistemas mecanicos, electricos.\r\n- Definicion de transformada de la place.\r\n- Función de transferencia. Ecuación Caracteristica.\r\n- Representación ecuaciones de estado, flujo de señales y diagramas de bloques.', 'se utilizara una exposicion dialogada. El docente  expondra los concento del tema formulando preguntas con el fin de lograr participacion del alumno en el proceso de conceptualizacion dee diferentes etapas y terminos empleados en esta unidad.', 'Se realizara una evaluacion formativa se evaluaran el grado de comprencion la forma practica de aplicacion de los elementos utilizados en esta unidad en  base a los ejercicios resueltos.', '[DORF89]\r\n[KUO99]\r\n[OGATA90]', '2016-03-21 06:07:32', '2016-03-21 06:07:32'),
(8, 4, '', 0, '', '', '', '', '', '2016-03-25 05:49:31', '2016-03-25 05:49:31'),
(13, 9, '', 0, '', '', '', '', '', '2016-03-25 22:29:16', '2016-03-25 22:29:16'),
(14, 10, '', 0, '', '', '', '', '', '2016-03-25 22:29:35', '2016-03-25 22:29:35'),
(15, 11, '', 0, '', '', '', '', '', '2016-03-25 22:40:15', '2016-03-25 22:40:15'),
(16, 12, '', 0, '', '', '', '', '', '2016-03-25 22:41:17', '2016-03-25 22:41:17'),
(17, 13, '', 0, '', '', '', '', '', '2016-03-25 22:41:22', '2016-03-25 22:41:22'),
(18, 14, '', 0, '', '', '', '', '', '2016-03-25 22:41:31', '2016-03-25 22:41:31'),
(19, 15, '', 0, '', '', '', '', '', '2016-03-25 22:41:42', '2016-03-25 22:41:42'),
(20, 16, '', 0, '', '', '', '', '', '2016-03-26 20:46:42', '2016-03-26 20:46:42'),
(21, 17, '', 0, '', '', '', '', '', '2016-03-30 18:55:23', '2016-03-30 18:55:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wilder ', 'wilder@gmail.com', '$2y$10$.49Pg17JGgMh/q.cQfu4cep.RpZ.JLgdGXUM2JZxJblVXKHzOOkKi', 'UALLD0VlEiWjB6jYe1vYA0q61DNx4bMjKhLR0tlQhk6GGBG85E4PP4gr2wzc', '2016-03-21 01:20:09', '2016-03-21 01:24:51'),
(2, 'jose', 'jose@gmail.com', '$2y$10$Bb8RlzlC025tubGAib6G4e33jeKpJWGpxzCYVM.WosP6Sjtah94wq', NULL, '2016-03-21 01:22:01', '2016-03-21 01:22:01'),
(3, 'juanito torres', 'juanito@gmail.com', '$2y$10$UPRQvyZ.4xbN46o/spqbP.A4IJ5bGxMz4eOQ0lCjs1/0yvE2GfsxK', '8gBgUNoingSWtAoD7yqH96nSMUyJ5IYT0egLvyeyklKLmUymCg59zakJattk', '2016-03-21 01:24:13', '2016-03-26 20:40:45'),
(4, 'bernarda', 'bernarda@gmail.com', '$2y$10$k08AAe4DTTLlobATRt46bO/FNaaufv8DIliFH7/aoWc810St0ezSS', 'l1IUwrSjTFfWBEiHoj4CjkNTwf69TM4LxpR2FaSPVkbmnlfzlVxJhiQ1bUub', '2016-03-21 02:58:29', '2016-03-21 06:10:54'),
(5, 'grashi', 'gractin@gmail.com', '$2y$10$A4FLSULC6349bKNlnMNoKeZ.iEQkIuvTm.WG4FhGSovO.KbgEbeha', 'L21QKtVkw042iC1F89LvVr2yF2ewtGD3lGXrpyCZUMeAMdysrAPQMreTPT9O', '2016-03-21 02:59:01', '2016-03-21 06:10:20'),
(6, 'PRUEBA', 'WEGHFH@gamil.com', '$2y$10$cFMefyYWAxITi9ZBEDWFQuijiqHfPiA7HCxxLEdMTyzSG5ID6cXXu', NULL, '2016-03-25 22:47:48', '2016-03-25 22:47:48'),
(7, 'prueba dos', 'mnmnmn@gmail.com', '$2y$10$VR.v4bFNWfjFvAUI3ppGq.DVEEJwAJhJZspUPG4y9c2cVdVQ.pTki', NULL, '2016-03-25 22:50:15', '2016-03-25 22:50:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autoridads`
--
ALTER TABLE `autoridads`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracions`
--
ALTER TABLE `configuracions`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `docentes_email_unique` (`email`);

--
-- Indices de la tabla `evaluacions`
--
ALTER TABLE `evaluacions`
 ADD PRIMARY KEY (`id`), ADD KEY `evaluacions_plan_global_id_foreign` (`plan_global_id`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
 ADD PRIMARY KEY (`id`), ADD KEY `grupos_materium_id_foreign` (`materium_id`), ADD KEY `grupos_docente_id_foreign` (`docente_id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informacions`
--
ALTER TABLE `informacions`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `justificaiongenerals`
--
ALTER TABLE `justificaiongenerals`
 ADD PRIMARY KEY (`id`), ADD KEY `justificaiongenerals_plan_global_id_foreign` (`plan_global_id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
 ADD PRIMARY KEY (`id`), ADD KEY `materias_departamento_id_foreign` (`departamento_id`);

--
-- Indices de la tabla `materia_carrera`
--
ALTER TABLE `materia_carrera`
 ADD PRIMARY KEY (`carrera_id`,`materium_id`), ADD KEY `materia_carrera_materium_id_foreign` (`materium_id`);

--
-- Indices de la tabla `materia_sub_area`
--
ALTER TABLE `materia_sub_area`
 ADD PRIMARY KEY (`sub_area_id`,`materium_id`), ADD KEY `materia_sub_area_materium_id_foreign` (`materium_id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `objetivosgenerales`
--
ALTER TABLE `objetivosgenerales`
 ADD PRIMARY KEY (`id`), ADD KEY `objetivosgenerales_plan_global_id_foreign` (`plan_global_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
 ADD PRIMARY KEY (`permission_id`,`role_id`), ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `planglobals`
--
ALTER TABLE `planglobals`
 ADD PRIMARY KEY (`id`), ADD KEY `planglobals_materium_id_foreign` (`materium_id`);

--
-- Indices de la tabla `propositosgenerales`
--
ALTER TABLE `propositosgenerales`
 ADD PRIMARY KEY (`id`), ADD KEY `propositosgenerales_plan_global_id_foreign` (`plan_global_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
 ADD PRIMARY KEY (`user_id`,`role_id`), ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sistemapgs`
--
ALTER TABLE `sistemapgs`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistemaunos`
--
ALTER TABLE `sistemaunos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subareas`
--
ALTER TABLE `subareas`
 ADD PRIMARY KEY (`id`), ADD KEY `subareas_area_id_foreign` (`area_id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
 ADD PRIMARY KEY (`id`), ADD KEY `unidades_plan_global_id_foreign` (`plan_global_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `autoridads`
--
ALTER TABLE `autoridads`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `configuracions`
--
ALTER TABLE `configuracions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `evaluacions`
--
ALTER TABLE `evaluacions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `informacions`
--
ALTER TABLE `informacions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `justificaiongenerals`
--
ALTER TABLE `justificaiongenerals`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `objetivosgenerales`
--
ALTER TABLE `objetivosgenerales`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `planglobals`
--
ALTER TABLE `planglobals`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `propositosgenerales`
--
ALTER TABLE `propositosgenerales`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sistemapgs`
--
ALTER TABLE `sistemapgs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `sistemaunos`
--
ALTER TABLE `sistemaunos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `subareas`
--
ALTER TABLE `subareas`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evaluacions`
--
ALTER TABLE `evaluacions`
ADD CONSTRAINT `evaluacions_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
ADD CONSTRAINT `grupos_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `grupos_materium_id_foreign` FOREIGN KEY (`materium_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `justificaiongenerals`
--
ALTER TABLE `justificaiongenerals`
ADD CONSTRAINT `justificaiongenerals_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
ADD CONSTRAINT `materias_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `materia_carrera`
--
ALTER TABLE `materia_carrera`
ADD CONSTRAINT `materia_carrera_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `materia_carrera_materium_id_foreign` FOREIGN KEY (`materium_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materia_sub_area`
--
ALTER TABLE `materia_sub_area`
ADD CONSTRAINT `materia_sub_area_materium_id_foreign` FOREIGN KEY (`materium_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `materia_sub_area_sub_area_id_foreign` FOREIGN KEY (`sub_area_id`) REFERENCES `subareas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `objetivosgenerales`
--
ALTER TABLE `objetivosgenerales`
ADD CONSTRAINT `objetivosgenerales_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `planglobals`
--
ALTER TABLE `planglobals`
ADD CONSTRAINT `planglobals_materium_id_foreign` FOREIGN KEY (`materium_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `propositosgenerales`
--
ALTER TABLE `propositosgenerales`
ADD CONSTRAINT `propositosgenerales_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subareas`
--
ALTER TABLE `subareas`
ADD CONSTRAINT `subareas_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `unidades`
--
ALTER TABLE `unidades`
ADD CONSTRAINT `unidades_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
