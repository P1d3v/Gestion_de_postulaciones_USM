-- se le agrego esto, porque me tiraba error al intentar volver a importrala para probarla
CREATE DATABASE ct_usm_postulaciones;
USE ct_usm_postulaciones;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2026 a las 19:40:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ct_usm_postulaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_equipo`
--

CREATE TABLE `detalle_equipo` (
  `id_detalle` int(11) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `rol` varchar(70) NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_equipo`
--

INSERT INTO `detalle_equipo` (`id_detalle`, `rut`, `rol`, `id_equipo`) VALUES
(1, '12000001-1', 'Jefe de Carrera / Responsable', 1),
(2, '12000002-2', 'Coordinador / Responsable', 1),
(3, '12000003-3', 'Asesor', 1),
(4, '20000001-1', 'Desarollar', 1),
(5, '20000002-2', 'Ing informatico', 1),
(6, '20000003-3', 'Ing informatico', 1),
(7, '20000004-4', 'Analista', 1),
(8, '20000005-5', 'Arquitecto', 1),
(9, '12000004-4', 'Jefe', 2),
(10, '12000005-5', 'Coord', 2),
(11, '12000006-6', 'Asesor', 2),
(12, '20000006-6', 'Arquitecto', 2),
(13, '20000007-7', 'Arquitecto', 2),
(14, '20000008-8', 'Gestora', 2),
(15, '20000009-9', 'Arquitecto del proyecto', 2),
(16, '20000010-0', 'Ayudante', 2),
(17, '12000007-7', 'Jefe de Proyecto', 3),
(18, '12000008-8', 'Coordinador', 3),
(19, '12000009-9', 'Asesor', 3),
(20, '20000011-1', 'Estudiante / Ayudante', 3),
(21, '20000012-2', 'Ayudante', 3),
(22, '20000013-3', 'Ayudante', 3),
(23, '20000014-4', 'Ayudante', 3),
(24, '20000015-5', 'Ayudante', 3),
(25, '12000001-1', 'Jefe de Proyecto', 4),
(26, '12000003-3', 'Coordinador', 4),
(27, '12000005-5', 'Asesor', 4),
(28, '20000001-1', 'Ayudante', 4),
(29, '20000003-3', 'Ayudante', 4),
(30, '20000005-5', 'Ayudante', 4),
(31, '20000007-7', 'Ayudante', 4),
(32, '20000009-9', 'Ayudante', 4),
(33, '12000002-2', 'Jefe de Carrera / Responsable', 5),
(34, '12000006-6', 'Coordinador Proyectos', 5),
(35, '12000010-0', 'Asesora Ambiental', 5),
(36, '20000002-2', 'Desarrollador', 5),
(37, '20000004-4', 'Especialista en Sensores', 5),
(38, '20000006-6', 'Analista de Datos', 5),
(39, '20000008-8', 'Desarrolladora Web', 5),
(40, '20000010-0', 'Testerador', 5),
(41, '12000004-4', 'Jefe de Carrera / Responsable', 6),
(42, '12000007-7', 'Coordinador Proyectos', 6),
(43, '12000009-9', 'Asesor Legal', 6),
(44, '20000011-1', 'Desarrollador Web', 6),
(45, '20000012-2', 'Diseñadora', 6),
(46, '20000013-3', 'Analista de Requisitos', 6),
(47, '20000014-4', 'Desarrolladora Backend', 6),
(48, '20000015-5', 'Ayudante', 6),
(49, '12000001-1', 'Jefe de Carrera / Responsable', 7),
(50, '12000004-4', 'Coordinador Proyectos', 7),
(51, '12000008-8', 'Asesora proyecto', 7),
(52, '20000001-1', 'Desarrollador', 7),
(53, '20000003-3', 'Desarrollador Mobile', 7),
(54, '20000005-5', 'Analista de Procesos', 7),
(55, '20000007-7', 'Diseñador de proyecto', 7),
(56, '20000009-9', 'Tester', 7),
(57, '12000002-2', 'Jefe de Carrera / Responsable', 8),
(58, '12000005-5', 'Coordinador Proyectos', 8),
(59, '12000009-9', 'Asesor en Business Intelligence', 8),
(60, '20000002-2', 'Ingeniería de Datos', 8),
(61, '20000004-4', 'Analista del proyecto', 8),
(62, '20000006-6', 'Desarrolladora ETL', 8),
(63, '20000008-8', 'Diseñadora Dashboards', 8),
(64, '20000010-0', 'Testeador', 8),
(65, '12000003-3', 'Jefe de Carrera / Responsable', 9),
(66, '12000006-6', 'Coordinador Proyectos', 9),
(67, '12000010-0', 'Asesora en Turismo Digital', 9),
(68, '20000011-1', 'Desarrollador Mobile', 9),
(69, '20000012-2', 'Desarrolladora del proyecto', 9),
(70, '20000013-3', 'Diseñador', 9),
(71, '20000014-4', 'Gestora de Contenidos', 9),
(72, '20000015-5', 'Testeador', 9),
(73, '12000007-7', 'Jefe de Carrera / Responsable', 10),
(74, '12000008-8', 'Coordinador Proyectos CT-USM', 10),
(75, '12000010-0', 'Asesora en Salud Digital', 10),
(76, '20000001-1', 'Desarrollador Backend', 10),
(77, '20000003-3', 'Desarrollador Frontend', 10),
(78, '20000005-5', 'Analista de Sistemas', 10),
(79, '20000007-7', 'Diseñador del proyecto', 10),
(80, '20000009-9', 'Testeador', 10),
(81, '12000001-1', 'Nada', 11),
(82, '20000001-1', 'Nada', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id_documento` int(11) NOT NULL,
  `nom_doc` varchar(100) DEFAULT NULL,
  `ruta_archi` varchar(255) DEFAULT NULL,
  `codigo_interno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id_documento`, `nom_doc`, `ruta_archi`, `codigo_interno`) VALUES
(1, 'Formulario 1001', '/docs/1001.pdf', 1),
(2, 'Formulario 1002', '/docs/1002.pdf', 2),
(3, 'Formulario 1003', '/docs/1003.pdf', 3),
(4, 'Formulario 1004', '/docs/1004.pdf', 4),
(5, 'Formulario 1005', '/docs/1005.pdf', 5),
(6, 'Formulario 1006', '/docs/1006.pdf', 6),
(7, 'Formulario 1007', '/docs/1007.pdf', 7),
(8, 'Formulario 1008', '/docs/1008.pdf', 8),
(9, 'Formulario 1009', '/docs/1009.pdf', 9),
(10, 'Formulario 1010', '/docs/1010.pdf', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `rut_empresa` varchar(12) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `convenio` tinyint(1) NOT NULL,
  `representante_emp` varchar(100) NOT NULL,
  `telefono_repre` varchar(20) NOT NULL,
  `email_representante` varchar(100) NOT NULL,
  `id_tipo_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`rut_empresa`, `nombre_empresa`, `convenio`, `representante_emp`, `telefono_repre`, `email_representante`, `id_tipo_empresa`) VALUES
('77000001-1', 'Movistar', 1, 'Mauricio Figueroa', '+56912345601', 'mauriciofigueroa@gmail.com', 3),
('77000002-2', 'InnovaData.', 1, 'Ricardo Salas', '+56912345602', 'ricardosalas@gmail.com', 2),
('77000003-3', 'AgroDigital SpA', 0, 'Maria Lopez', '+56912345603', 'maria.lopez@agrodigital.com', 1),
('77000004-4', 'SmartFactory', 1, 'Jorge Ramirez', '+56912345604', 'jorge.ramirez@smartfactory.cl', 3),
('77000005-5', 'Cencosud Retail', 0, 'Valentina Rojas', '+56912345605', 'valrojas@gmail.com', 2),
('77000006-6', 'Codelco', 0, 'Rodrigo Soto', '+56912345606', 'rodrigo.soto@biobyte.cl', 1),
('77000007-7', 'Entel Digital', 1, 'Patricia Muñoz', '+56912345607', 'patriciamunoz@gmail.com', 3),
('77000008-8', 'Panaderia S.B.', 0, 'Pedro vicencio', '+56 912345685', 'pedrovicencio@gmail.com', 1),
('77333444-K', 'Empresa de Prueba', 0, 'Error', '+56 912345609', 'p.error@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_trabajo`
--

CREATE TABLE `equipo_trabajo` (
  `id_equipo` int(11) NOT NULL,
  `codigo_interno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo_trabajo`
--

INSERT INTO `equipo_trabajo` (`id_equipo`, `codigo_interno`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_postulacion`
--

CREATE TABLE `estado_postulacion` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_postulacion`
--

INSERT INTO `estado_postulacion` (`id_estado`, `nombre_estado`) VALUES
(1, 'En Revisión'),
(2, 'Aprobada'),
(3, 'Rechazada'),
(4, 'Cerrada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapa`
--

CREATE TABLE `etapa` (
  `id_etapa` int(11) NOT NULL,
  `nombre_etapa` varchar(50) NOT NULL,
  `plazo_semanas` int(11) NOT NULL,
  `entregable` varchar(300) NOT NULL,
  `codigo_interno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `etapa`
--

INSERT INTO `etapa` (`id_etapa`, `nombre_etapa`, `plazo_semanas`, `entregable`, `codigo_interno`) VALUES
(1, 'Análisis', 10, 'Arquitectura', 1),
(2, 'Desarrollo', 14, 'Plataforma', 1),
(3, 'Cierre', 10, 'Manual', 1),
(4, 'Levantamiento', 8, 'Informe', 2),
(5, 'Desarrollo', 16, 'LMS', 2),
(6, 'Piloto', 10, 'Ajustes', 2),
(7, 'Análisis de Inventario', 6, 'Informe de brechas', 3),
(8, 'Desarrollo de Módulos', 20, 'App funcional', 3),
(9, 'Pruebas en Terreno', 10, 'Manual de usuario', 3),
(10, 'Diseño de Arquitectura', 8, 'Planos de integración', 4),
(11, 'Instalación PLCs', 18, 'Sistema operativo', 4),
(12, 'Marcha Blanca', 10, 'Informe de KPIs', 4),
(13, 'Calibración de Sensores', 6, 'Protocolo de medición', 5),
(14, 'Despliegue de Red', 20, 'Nodos activos', 5),
(15, 'Visualización de Datos', 10, 'Dashboard público', 5),
(16, 'Levantamiento del proyecto', 8, 'Prototipo navegable', 6),
(17, 'Desarrollo Backend', 18, 'Portal integrado', 6),
(18, 'Capacitación', 10, 'Certificado de uso', 6),
(19, 'Modelado Blockchain', 8, 'Smart Contracts', 7),
(20, 'Integración de Nodos', 18, 'Red de trazabilidad', 7),
(21, 'Auditoria Final', 10, 'Informe técnico', 7),
(22, 'Extracción de Datos', 10, 'Pipeline ETL', 8),
(23, 'Modelado Predictivo', 16, 'Algoritmos validados', 8),
(24, 'Entrega de Resultados', 10, 'Reporte de forecast', 8),
(25, 'Captura de Contenido AR', 8, 'Activos digitales', 9),
(26, 'Desarrollo de App', 18, 'APK/IPA funcional', 9),
(27, 'Lanzamiento Piloto', 10, 'Informe de descargas', 9),
(28, 'Análisis de Flujos', 8, 'Diagramas de proceso', 10),
(29, 'Desarrollo de Módulos', 18, 'Ficha electrónica', 10),
(30, 'Implementación', 10, 'Sistema en producción', 10),
(31, 'Prueba A', 20, 'Doc 1', 11),
(32, 'Prueba B', 20, 'Doc 2', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembro`
--

CREATE TABLE `miembro` (
  `rut` varchar(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `id_tipo_persona` int(11) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  `id_sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `miembro`
--

INSERT INTO `miembro` (`rut`, `nombre`, `telefono`, `email`, `id_tipo_persona`, `departamento`, `id_sede`) VALUES
('12000001-1', 'Javiera Roda', '+56911110001', 'jroda@usm.cl', 1, 'Informática', 1),
('12000002-2', 'Alonso Epuyao', '+56911110002', 'aepuyao@usm.cl', 1, 'Ingeniería Civil', 1),
('12000003-3', 'Andres Castro', '+56911110003', 'andres.castro@usm.cl', 1, 'Electrónica', 2),
('12000004-4', 'Claudia Morales', '+56911110004', 'claudia.morales@usm.cl', 1, 'Matemáticas', 2),
('12000005-5', 'Felipe Aguilera', '+56911110005', 'faguilera@usm.cl', 1, 'Informática', 3),
('12000006-6', 'Daniela Fuentes', '+56911110006', 'daniela.fuentes@usm.cl', 1, 'Mecánica', 4),
('12000007-7', 'Alejandra Vicencio', '+56911110007', 'a.vicencio@usm.cl', 1, 'Ingeniería Industrial', 5),
('12000008-8', 'Cecilia Parra', '+56911110008', 'cecilia.parra@usm.cl', 1, 'Computación', 1),
('12000009-9', 'Roberto Alvarado', '+56911110009', 'roberto.alvarado@usm.cl', 1, 'Eléctrica', 2),
('12000010-0', 'Veronica Salas', '+56911110010', 'veronica.salas@usm.cl', 1, 'Informática', 3),
('20000001-1', 'Tomas Bravo', '+56922220001', 'tomas.bravo@usm.cl', 2, 'Informática', 1),
('20000002-2', 'Camila Torres', '+56922220002', 'camila.torres@usm.cl', 2, 'Informática', 1),
('20000003-3', 'Diego Navarro', '+56922220003', 'dnavarro@usm.cl', 2, 'Electrónica', 2),
('20000004-4', 'Sofia Ramos', '+56922220004', 'sofia.ramos@usm.cl', 2, 'Mecánica', 2),
('20000005-5', 'Nicolas Flores', '+56922220005', 'nflores@usm.cl', 2, 'Civil', 3),
('20000006-6', 'Isidora Campos', '+56922220006', 'isidora.campos@usm.cl', 2, 'Informática', 3),
('20000007-7', 'Benjamin vergara', '+56922220007', 'bvergara@usm.cl', 2, 'Computación', 4),
('20000008-8', 'Fernanda Silva', '+56922220008', 'fernanda.silva@usm.cl', 2, 'Industrial', 4),
('20000009-9', 'Matias Gutiérrez', '+56922220009', 'matias.gutierrez@usm.cl', 2, 'Eléctrica', 5),
('20000010-0', 'Javiera Medina', '+56922220010', 'javiera.medina@usm.cl', 2, 'Informática', 5),
('20000011-1', 'Facundo Salazar', '+56922220011', 'facundo.salazar@usm.cl', 2, 'Informática', 1),
('20000012-2', 'Valentina Cruz', '+56922220012', 'valentina.cruz@usm.cl', 2, 'Civil', 2),
('20000013-3', 'Sebastin Mora', '+56922220013', 'sebastian.mora@usm.cl', 2, 'Mecánica', 3),
('20000014-4', 'Antonia Reyes', '+56922220014', 'antonia.reyes@usm.cl', 2, 'Industrial', 4),
('20000015-5', 'Florencia Figueroa', '+56922220015', 'ffigueroa@usm.cl', 2, 'Eléctrica', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion`
--

CREATE TABLE `postulacion` (
  `codigo_interno` int(11) NOT NULL,
  `num_postulacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `presupuesto` int(11) NOT NULL,
  `id_tipo_iniciativa` int(11) NOT NULL,
  `nombre_ini` varchar(50) NOT NULL,
  `objetivo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `resultados` varchar(255) NOT NULL,
  `id_region_ejecucion` int(11) NOT NULL,
  `rut_empresa` varchar(12) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_region_impacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `postulacion`
--

INSERT INTO `postulacion` (`codigo_interno`, `num_postulacion`, `fecha`, `presupuesto`, `id_tipo_iniciativa`, `nombre_ini`, `objetivo`, `descripcion`, `resultados`, `id_region_ejecucion`, `rut_empresa`, `id_estado`, `id_region_impacto`) VALUES
(1, 1001, '2026-03-10', 15000000, 1, 'Red 5G Rural', 'Expandir conectividad en zonas extremas', 'Instalacion de antenas', 'Cobertura total', 6, '77000001-1', 1, 6),
(2, 1002, '2026-03-12', 22000000, 1, 'Ecommerce Retail', 'Optimizar plataforma de ventas online', 'Mejorando el sistema', 'Mas ventas', 7, '77000005-5', 2, 7),
(3, 1003, '2026-03-15', 8500000, 2, 'Riego Automatico', 'Automatizar riego en culktivos', 'Sensores de humedad', 'Ahorro agua', 6, '77000003-3', 1, 5),
(4, 1004, '2026-03-18', 30000000, 1, 'Mineria Verde', 'Reducir huella de carbono', 'Energias limpias', 'Menos emisiones', 7, '77000004-4', 2, 11),
(5, 1005, '2026-03-20', 12000000, 1, 'Monitoreo Relaves', 'Sistema de seguridad para relaves', 'Sensores en tiempo real', 'Alerta temprana', 11, '77000006-6', 3, 11),
(6, 1006, '2026-03-22', 18000000, 2, 'Big Data Analitics', 'Analisis de datos para toma de decisiones', 'Dashboard interactivo', 'Mejor gestion', 5, '77000002-2', 1, 5),
(7, 1007, '2026-03-25', 9500000, 1, 'Fibra Optica Sur', 'Instalar fibra optica en Valparaiso', 'Cableado submarino', 'Velocidad alta', 7, '77000001-1', 1, 6),
(8, 1008, '2026-03-28', 25000000, 1, 'Automatizacion Stock', 'Control de stock robotizado', 'Brazos mecanicos', 'Menos errores', 7, '77000004-4', 2, 7),
(9, 1009, '2026-04-01', 7000000, 2, 'Nube Corporativa', 'Cambio de servidores a la nube', 'Cambiando infraestructura', 'Acceso remoto', 14, '77000007-7', 1, 14),
(10, 1010, '2026-04-03', 19500000, 1, 'Ciberseguridad Bancaria', 'Proteccion de datos de clientes', 'Encriptacion avanzada', 'Seguridad total', 3, '77000002-2', 1, 3),
(11, 1011, '2026-04-08', 5000000, 1, 'Prueba de Errores', 'Para ver consultas', 'Nada', 'Nada', 1, '77333444-K', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id_region` int(11) NOT NULL,
  `nombre_region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id_region`, `nombre_region`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaíso'),
(7, 'Metropolitana'),
(8, 'O\'Higgins'),
(9, 'Maule'),
(10, 'Ñuble'),
(11, 'Biobío'),
(12, 'La Araucanía'),
(13, 'Los Ríos'),
(14, 'Los Lagos'),
(15, 'Aysén'),
(16, 'Magallanes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id_sede` int(11) NOT NULL,
  `nombre_sede` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`id_sede`, `nombre_sede`) VALUES
(1, 'Campus Casa Central Valparaíso'),
(2, 'Campus San Joaquín'),
(3, 'Campus Vitacura'),
(4, 'Sede Viña del Mar'),
(5, 'Sede Concepción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes_postulacion`
--

CREATE TABLE `sedes_postulacion` (
  `id_sede` int(11) NOT NULL,
  `codigo_interno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sedes_postulacion`
--

INSERT INTO `sedes_postulacion` (`id_sede`, `codigo_interno`) VALUES
(1, 1),
(1, 6),
(1, 9),
(1, 11),
(2, 2),
(2, 4),
(2, 8),
(2, 10),
(3, 7),
(4, 3),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empresa`
--

CREATE TABLE `tipo_empresa` (
  `id_tipo_empresa` int(11) NOT NULL,
  `tamaño_emp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_empresa`
--

INSERT INTO `tipo_empresa` (`id_tipo_empresa`, `tamaño_emp`) VALUES
(1, 'Microempresa'),
(2, 'Mediana'),
(3, 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_iniciativa`
--

CREATE TABLE `tipo_iniciativa` (
  `id_tipo_iniciativa` int(11) NOT NULL,
  `tipo_iniciativa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_iniciativa`
--

INSERT INTO `tipo_iniciativa` (`id_tipo_iniciativa`, `tipo_iniciativa`) VALUES
(1, 'Nueva'),
(2, 'Existente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id_tipo_persona` int(11) NOT NULL,
  `tipo_persona` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`id_tipo_persona`, `tipo_persona`) VALUES
(1, 'Profesor'),
(2, 'Estudiante');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_equipo`
--
ALTER TABLE `detalle_equipo`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_equipo` (`id_equipo`),
  ADD KEY `rut` (`rut`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id_documento`),
  ADD KEY `codigo_interno` (`codigo_interno`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`rut_empresa`),
  ADD KEY `id_tipo_empresa` (`id_tipo_empresa`);

--
-- Indices de la tabla `equipo_trabajo`
--
ALTER TABLE `equipo_trabajo`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `codigo_interno` (`codigo_interno`);

--
-- Indices de la tabla `estado_postulacion`
--
ALTER TABLE `estado_postulacion`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `etapa`
--
ALTER TABLE `etapa`
  ADD PRIMARY KEY (`id_etapa`),
  ADD KEY `codigo_interno` (`codigo_interno`);

--
-- Indices de la tabla `miembro`
--
ALTER TABLE `miembro`
  ADD PRIMARY KEY (`rut`),
  ADD KEY `id_tipo_persona` (`id_tipo_persona`),
  ADD KEY `id_sede` (`id_sede`);

--
-- Indices de la tabla `postulacion`
--
ALTER TABLE `postulacion`
  ADD PRIMARY KEY (`codigo_interno`),
  ADD UNIQUE KEY `num_postulacion` (`num_postulacion`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_region_ejecucion` (`id_region_ejecucion`),
  ADD KEY `id_region_impacto` (`id_region_impacto`),
  ADD KEY `rut_empresa` (`rut_empresa`),
  ADD KEY `id_tipo_iniciativa` (`id_tipo_iniciativa`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `sedes_postulacion`
--
ALTER TABLE `sedes_postulacion`
  ADD PRIMARY KEY (`id_sede`,`codigo_interno`),
  ADD KEY `codigo_interno` (`codigo_interno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
