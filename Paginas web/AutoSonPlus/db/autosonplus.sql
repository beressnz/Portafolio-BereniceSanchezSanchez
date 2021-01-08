-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-01-2021 a las 21:11:45
-- Versión del servidor: 10.3.20-MariaDB
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
-- Base de datos: `autosonplus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0toaqej44j8bii1dbvfovsoq3kt65lfn', '127.0.0.1', 1606436850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630363433363537373b6c6f676765647c623a313b7573756172696f5f69647c733a313a2232223b656d61696c7c733a31393a2261646d696e407570746c61782e6564752e6d78223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `Id_cliente` int(15) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_cliente`, `Nombre`, `Apellidos`, `Direccion`) VALUES
(0, 'miasdasdasdsfdsf', 'dsfsdf', 'dsfasdas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

DROP TABLE IF EXISTS `compras`;
CREATE TABLE IF NOT EXISTS `compras` (
  `Id_compras` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `RFC` varchar(15) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Fax` varchar(30) NOT NULL,
  `Catalogo` varchar(100) NOT NULL,
  `Direcciones` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_compras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`Id_compras`, `Nombre`, `RFC`, `Telefono`, `Fax`, `Catalogo`, `Direcciones`) VALUES
(314, 'dfgfds', 'dfssdf', 'fdsfds', 'dsfds', 'dsfdsf', 'dsfdfs'),
(699, 'sadas', 'asd', 'dasd', 'asdasd', 'asdasd', 'asdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conctacto`
--

DROP TABLE IF EXISTS `conctacto`;
CREATE TABLE IF NOT EXISTS `conctacto` (
  `Id_contacto` int(15) NOT NULL AUTO_INCREMENT,
  `Id_comprador` int(15) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_contacto`),
  UNIQUE KEY `Id_comprador` (`Id_comprador`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conctacto`
--

INSERT INTO `conctacto` (`Id_contacto`, `Id_comprador`, `Nombre`, `Telefono`, `Correo`) VALUES
(7, 699, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantia`
--

DROP TABLE IF EXISTS `garantia`;
CREATE TABLE IF NOT EXISTS `garantia` (
  `Id_garantia` int(15) NOT NULL AUTO_INCREMENT,
  `Id_venta` int(15) NOT NULL,
  `Id_cliente` int(15) NOT NULL,
  `Condiciones` text NOT NULL,
  `Duracion` int(10) NOT NULL,
  PRIMARY KEY (`Id_garantia`),
  UNIQUE KEY `Id_venta` (`Id_venta`),
  UNIQUE KEY `Id_cliente` (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `garantia`
--

INSERT INTO `garantia` (`Id_garantia`, `Id_venta`, `Id_cliente`, `Condiciones`, `Duracion`) VALUES
(1, 1, 0, 'sdfsdsdfdsf', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

DROP TABLE IF EXISTS `grupos`;
CREATE TABLE IF NOT EXISTS `grupos` (
  `grupo_id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  PRIMARY KEY (`grupo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`grupo_id`, `titulo`, `descripcion`) VALUES
(3, 'SUPER ADMIN', 'Super administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

DROP TABLE IF EXISTS `inventario`;
CREATE TABLE IF NOT EXISTS `inventario` (
  `id_inventario` int(5) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Numero_Serie` int(10) NOT NULL,
  `Descripcion` text NOT NULL,
  `Estatus` varchar(20) NOT NULL,
  `Fecha_ingreso` date NOT NULL,
  `Hora_ingreso` time NOT NULL,
  PRIMARY KEY (`id_inventario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `Nombre`, `Marca`, `Modelo`, `Numero_Serie`, `Descripcion`, `Estatus`, `Fecha_ingreso`, `Hora_ingreso`) VALUES
(2, 'dsad', 'asdasd', 'asdas', 0, 'asdasd', 'activo', '2020-11-11', '05:17:00'),
(3, 'asdasd', 'asdasd', 'asdasd', 23, 'asdasdadsasd', 'asdasd', '2020-11-17', '00:06:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

DROP TABLE IF EXISTS `modulos`;
CREATE TABLE IF NOT EXISTS `modulos` (
  `modulo_id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` mediumtext NOT NULL,
  `controlador` varchar(50) NOT NULL,
  `funciones` mediumtext DEFAULT NULL,
  `titulo_menu` mediumtext NOT NULL,
  `icono` varchar(45) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`modulo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`modulo_id`, `descripcion`, `controlador`, `funciones`, `titulo_menu`, `icono`, `visible`) VALUES
(9, 'Compras', 'compra', 'compra', 'Compras', 'fe fe-shopping-bag', 1),
(10, 'Inventario', 'inventario', 'inventario', 'Inventario', 'fe fe-briefcase', 1),
(11, 'Garantia', 'garantia', 'garantia', 'Garantías ', 'fe fe-archive ', 1),
(12, 'Cliente', 'cliente', 'cliente', 'Cliente', 'fe fe-shopping-bag', 1),
(15, 'orden_servicio', 'orden_servicio', 'orden_servicio', 'Orden_servicio', 'fe fe-briefcase', 1),
(16, 'orden_compra', 'orden_compra', 'orden_compra', 'Orden de compra', 'fe fe-briefcase', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_compra`
--

DROP TABLE IF EXISTS `ordenes_compra`;
CREATE TABLE IF NOT EXISTS `ordenes_compra` (
  `Id_compras` int(15) NOT NULL AUTO_INCREMENT,
  `Id_usuario` int(5) NOT NULL,
  `Id_compra` int(15) NOT NULL,
  `Referencia` varchar(50) NOT NULL,
  `Total` decimal(10,4) NOT NULL,
  `Fecha_orden` date NOT NULL,
  `Estatus` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_compras`),
  UNIQUE KEY `Id_usuario` (`Id_usuario`,`Id_compra`),
  UNIQUE KEY `Id_usuario_2` (`Id_usuario`,`Id_compra`),
  KEY `Id_compra` (`Id_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ordenes_compra`
--

INSERT INTO `ordenes_compra` (`Id_compras`, `Id_usuario`, `Id_compra`, `Referencia`, `Total`, `Fecha_orden`, `Estatus`) VALUES
(2, 2, 314, 'asd', '32.0000', '2020-11-03', 'sdasd'),
(3, 2, 699, 'sdfasd', '233232.0000', '2020-11-19', 'sadsad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_servicio`
--

DROP TABLE IF EXISTS `ordenes_servicio`;
CREATE TABLE IF NOT EXISTS `ordenes_servicio` (
  `Id_servicio` int(15) NOT NULL AUTO_INCREMENT,
  `Estatus` varchar(10) NOT NULL,
  `Id_inventario` int(15) NOT NULL,
  `Fecha_servicio` date NOT NULL,
  `Id_usuario` int(5) NOT NULL,
  `Empresa` varchar(50) NOT NULL,
  `Id_orden_compra` int(15) NOT NULL,
  PRIMARY KEY (`Id_servicio`),
  UNIQUE KEY `Id_orden_compra` (`Id_orden_compra`),
  UNIQUE KEY `Id_inventario_4` (`Id_inventario`,`Id_usuario`,`Id_orden_compra`),
  KEY `Id_inventario` (`Id_inventario`),
  KEY `Id_usuario` (`Id_usuario`),
  KEY `Id_orden_compra_2` (`Id_orden_compra`),
  KEY `Id_inventario_2` (`Id_inventario`,`Id_usuario`),
  KEY `Id_inventario_3` (`Id_inventario`),
  KEY `Id_usuario_2` (`Id_usuario`),
  KEY `Id_orden_compra_3` (`Id_orden_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ordenes_servicio`
--

INSERT INTO `ordenes_servicio` (`Id_servicio`, `Estatus`, `Id_inventario`, `Fecha_servicio`, `Id_usuario`, `Empresa`, `Id_orden_compra`) VALUES
(14, 'asd', 2, '2020-11-23', 2, 'asasd', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `grupo_id` int(11) NOT NULL,
  `modulo_id` int(11) NOT NULL,
  PRIMARY KEY (`grupo_id`,`modulo_id`),
  KEY `fk_modulos_permisos_idx` (`modulo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`grupo_id`, `modulo_id`) VALUES
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 15),
(3, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `creado_en` date NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `idarea` int(11) NOT NULL,
  `Nivel` int(5) NOT NULL,
  PRIMARY KEY (`usuario_id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`),
  KEY `fk_usuarios_areas_trabajo1_idx` (`idarea`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `email`, `nombre`, `apellidos`, `password`, `admin`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `last_login`, `active`, `creado_en`, `telefono`, `idarea`, `Nivel`) VALUES
(2, 'admin@uptlax.edu.mx', 'ADMIN', 'SISTEMA', '$2a$08$fjO./X7C6EduGHy0q0UU3usHpUV9Gw/Fjyj9mPeIKCVD7gWhxMtk6', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-13', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_grupos`
--

DROP TABLE IF EXISTS `usuarios_grupos`;
CREATE TABLE IF NOT EXISTS `usuarios_grupos` (
  `usuario_id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id`,`grupo_id`),
  UNIQUE KEY `uc_users_groups` (`usuario_id`,`grupo_id`),
  KEY `fk_users_groups_users1_idx` (`usuario_id`),
  KEY `fk_users_groups_groups1_idx` (`grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios_grupos`
--

INSERT INTO `usuarios_grupos` (`usuario_id`, `grupo_id`) VALUES
(2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE IF NOT EXISTS `venta` (
  `Id_venta` int(15) NOT NULL AUTO_INCREMENT,
  `Fecha_Venta` date NOT NULL,
  `Total` decimal(10,4) NOT NULL,
  PRIMARY KEY (`Id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`Id_venta`, `Fecha_Venta`, `Total`) VALUES
(1, '2020-11-17', '43.0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_inventario`
--

DROP TABLE IF EXISTS `venta_inventario`;
CREATE TABLE IF NOT EXISTS `venta_inventario` (
  `Id_venta` int(15) NOT NULL,
  `Id_inventario` int(15) NOT NULL,
  `Cantidad` decimal(10,4) NOT NULL,
  UNIQUE KEY `Id_venta` (`Id_venta`,`Id_inventario`),
  KEY `Id_inventario` (`Id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conctacto`
--
ALTER TABLE `conctacto`
  ADD CONSTRAINT `conctacto_ibfk_1` FOREIGN KEY (`Id_comprador`) REFERENCES `compras` (`Id_compras`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `garantia`
--
ALTER TABLE `garantia`
  ADD CONSTRAINT `garantia_ibfk_1` FOREIGN KEY (`Id_cliente`) REFERENCES `cliente` (`Id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `garantia_ibfk_2` FOREIGN KEY (`Id_venta`) REFERENCES `venta` (`Id_venta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ordenes_compra`
--
ALTER TABLE `ordenes_compra`
  ADD CONSTRAINT `ordenes_compra_ibfk_1` FOREIGN KEY (`Id_compra`) REFERENCES `compras` (`Id_compras`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordenes_compra_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ordenes_servicio`
--
ALTER TABLE `ordenes_servicio`
  ADD CONSTRAINT `ordenes_servicio_ibfk_1` FOREIGN KEY (`Id_inventario`) REFERENCES `inventario` (`id_inventario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordenes_servicio_ibfk_2` FOREIGN KEY (`Id_orden_compra`) REFERENCES `ordenes_compra` (`Id_compras`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordenes_servicio_ibfk_3` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `fk_grupos_permisos` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`grupo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_modulos_permisos` FOREIGN KEY (`modulo_id`) REFERENCES `modulos` (`modulo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_grupos`
--
ALTER TABLE `usuarios_grupos`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`grupo_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta_inventario`
--
ALTER TABLE `venta_inventario`
  ADD CONSTRAINT `venta_inventario_ibfk_1` FOREIGN KEY (`Id_venta`) REFERENCES `venta` (`Id_venta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_inventario_ibfk_2` FOREIGN KEY (`Id_inventario`) REFERENCES `inventario` (`id_inventario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
