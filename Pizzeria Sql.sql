-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost: 3307
-- Tiempo de generación: 11-02-2021 a las 19:24:55
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pizzería`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoría`
--

CREATE TABLE `categoría` (
  `categoria_id` int(6) NOT NULL,
  `categoria_nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoría`
--

INSERT INTO `categoría` (`categoria_id`, `categoria_nombre`) VALUES
(1, 'Margarita'),
(2, 'Napolitana'),
(3, 'Proscuito'),
(4, 'Vegetal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(25) NOT NULL,
  `cliente_nombre` varchar(45) NOT NULL,
  `cliente_apellido` varchar(100) NOT NULL,
  `cliente_direccion` varchar(250) NOT NULL,
  `cliente_CP` int(5) NOT NULL,
  `cliente_localidad` int(6) NOT NULL,
  `cliente_provincia` int(6) NOT NULL,
  `cliente_telefono` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_nombre`, `cliente_apellido`, `cliente_direccion`, `cliente_CP`, `cliente_localidad`, `cliente_provincia`, `cliente_telefono`) VALUES
(1, 'Jose', 'Farfán', 'Perill 38', 8012, 2, 2, 658748521),
(2, 'Alba', 'Casadella', 'Gracia 52', 8012, 3, 4, 698542158),
(3, 'Roser', 'Ros', '', 8012, 4, 3, 621548956),
(4, 'Marta', 'Pedrero', 'Boston', 4852, 6, 4, 635847852);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `empleado_id` int(6) NOT NULL,
  `empleado_nombre` varchar(45) NOT NULL,
  `empleado_apellido` varchar(45) NOT NULL,
  `empleado_nif` varchar(9) NOT NULL,
  `empleado_teléfono` int(15) NOT NULL,
  `empleado_posición` int(6) NOT NULL,
  `empleado_tienda` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`empleado_id`, `empleado_nombre`, `empleado_apellido`, `empleado_nif`, `empleado_teléfono`, `empleado_posición`, `empleado_tienda`) VALUES
(1, 'Jose', 'Farfan', '48541254G', 854785412, 1, 1),
(2, 'Pepe', 'Gutierrez', '85478541L', 965874852, 2, 2),
(3, 'Juan', 'Riobo', '74854125J', 985478569, 2, 3),
(4, 'Maria', 'Gutierrez', '54785412G', 854785123, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `localidad_id` int(25) NOT NULL,
  `localidad_nombre` varchar(50) NOT NULL,
  `localidad_provincia` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`localidad_id`, `localidad_nombre`, `localidad_provincia`) VALUES
(1, 'Terrassa', 2),
(2, 'Sabadell', 2),
(3, 'Gualta', 4),
(4, 'Valls', 3),
(5, 'Vendrell', 3),
(6, 'Palafrugell', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `pedido_id` int(6) NOT NULL,
  `pedido_fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pedido_tipo` varchar(25) NOT NULL,
  `pedido_cliente` int(6) NOT NULL,
  `pedido_tienda` int(6) NOT NULL,
  `pedido_reparto` int(6) DEFAULT NULL,
  `pedido_productos` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`pedido_id`, `pedido_fecha`, `pedido_tipo`, `pedido_cliente`, `pedido_tienda`, `pedido_reparto`, `pedido_productos`) VALUES
(13, '2021-02-11 18:23:20', 'Recoger', 1, 1, NULL, 2),
(14, '2021-02-11 18:22:54', 'A domicilio', 4, 4, 2, 3),
(15, '2021-02-11 18:22:54', 'A domicilio', 2, 2, 4, 1),
(16, '2021-02-11 18:23:30', 'Recoger', 3, 3, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posición`
--

CREATE TABLE `posición` (
  `posición_id` int(6) NOT NULL,
  `posición_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posición`
--

INSERT INTO `posición` (`posición_id`, `posición_nombre`) VALUES
(1, 'Cocinero'),
(2, 'Repartidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(6) NOT NULL,
  `producto_nombre` varchar(45) NOT NULL,
  `producto_descripción` varchar(100) NOT NULL,
  `producto_precio` float(10,2) NOT NULL,
  `producto_imagen` varchar(100) NOT NULL,
  `producto_categoria` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_nombre`, `producto_descripción`, `producto_precio`, `producto_imagen`, `producto_categoria`) VALUES
(1, 'Hamburguesa', 'Hamburgesa con queso y tomate', 8.45, 'http:.....', NULL),
(2, 'Pizza', 'Pizza italiana horno de leña', 12.50, 'http:.....', 1),
(3, 'Bebida', 'Bebida variada', 1.50, 'http:.....', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `productos_id` int(6) NOT NULL,
  `producto_id` int(6) NOT NULL,
  `producto_id2` int(11) DEFAULT NULL,
  `producto_id3` int(11) DEFAULT NULL,
  `producto_id4` int(11) DEFAULT NULL,
  `producto_id5` int(11) DEFAULT NULL,
  `producto_id6` int(11) DEFAULT NULL,
  `productos_total` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`productos_id`, `producto_id`, `producto_id2`, `producto_id3`, `producto_id4`, `producto_id5`, `producto_id6`, `productos_total`) VALUES
(1, 1, 2, NULL, NULL, NULL, NULL, 2),
(2, 2, 2, 3, NULL, NULL, NULL, 3),
(3, 3, 1, 1, NULL, NULL, NULL, 3),
(4, 1, 2, 2, 3, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `provincia_id` int(6) NOT NULL,
  `provincia_nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`provincia_id`, `provincia_nombre`) VALUES
(2, 'Barcelona'),
(3, 'Tarragona'),
(4, 'Girona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparto`
--

CREATE TABLE `reparto` (
  `reparto_id` int(6) NOT NULL,
  `reparto_empleado` int(6) NOT NULL,
  `reparto_fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reparto`
--

INSERT INTO `reparto` (`reparto_id`, `reparto_empleado`, `reparto_fecha`) VALUES
(1, 1, '2021-02-11 18:19:12'),
(2, 2, '2021-02-11 18:19:12'),
(3, 3, '2021-02-11 18:19:12'),
(4, 4, '2021-02-11 18:19:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `tienda_id` int(6) NOT NULL,
  `tienda_dirección` varchar(45) NOT NULL,
  `tienda_CP` int(5) NOT NULL,
  `tienda_localidad` int(6) NOT NULL,
  `tienda_provincia` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`tienda_id`, `tienda_dirección`, `tienda_CP`, `tienda_localidad`, `tienda_provincia`) VALUES
(1, 'Calle escorial 54', 8036, 1, 2),
(2, 'Calle Vendimia 45', 7586, 4, 3),
(3, 'Calle Perill 28', 8012, 3, 4),
(4, 'Calle Goya 15', 4875, 6, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoría`
--
ALTER TABLE `categoría`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`),
  ADD KEY `localidad` (`cliente_localidad`),
  ADD KEY `provincia` (`cliente_provincia`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`empleado_id`),
  ADD KEY `posición` (`empleado_posición`),
  ADD KEY `tienda` (`empleado_tienda`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`localidad_id`),
  ADD KEY `provincia` (`localidad_provincia`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`pedido_id`),
  ADD KEY `cliente` (`pedido_cliente`),
  ADD KEY `tienda` (`pedido_tienda`),
  ADD KEY `reparto` (`pedido_reparto`),
  ADD KEY `productos` (`pedido_productos`);

--
-- Indices de la tabla `posición`
--
ALTER TABLE `posición`
  ADD PRIMARY KEY (`posición_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria` (`producto_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`productos_id`),
  ADD KEY `producto` (`producto_id`),
  ADD KEY `producto2` (`producto_id2`),
  ADD KEY `producto3` (`producto_id3`),
  ADD KEY `producto4` (`producto_id4`),
  ADD KEY `producto5` (`producto_id5`),
  ADD KEY `producto6` (`producto_id6`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`provincia_id`);

--
-- Indices de la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD PRIMARY KEY (`reparto_id`),
  ADD KEY `empleado` (`reparto_empleado`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`tienda_id`),
  ADD KEY `localidad` (`tienda_localidad`),
  ADD KEY `provincia` (`tienda_provincia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoría`
--
ALTER TABLE `categoría`
  MODIFY `categoria_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `empleado_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `localidad_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `pedido_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `posición`
--
ALTER TABLE `posición`
  MODIFY `posición_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `productos_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `provincia_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reparto`
--
ALTER TABLE `reparto`
  MODIFY `reparto_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `tienda_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cliente_localidad`) REFERENCES `localidad` (`localidad_id`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`cliente_provincia`) REFERENCES `provincia` (`provincia_id`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`empleado_tienda`) REFERENCES `tienda` (`tienda_id`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`empleado_posición`) REFERENCES `posición` (`posición_id`);

--
-- Filtros para la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD CONSTRAINT `localidad_ibfk_1` FOREIGN KEY (`localidad_provincia`) REFERENCES `provincia` (`provincia_id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`pedido_reparto`) REFERENCES `reparto` (`reparto_id`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`pedido_cliente`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`pedido_productos`) REFERENCES `productos` (`productos_id`),
  ADD CONSTRAINT `pedido_ibfk_4` FOREIGN KEY (`pedido_tienda`) REFERENCES `tienda` (`tienda_id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`producto_categoria`) REFERENCES `categoría` (`categoria_id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`producto_id2`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`producto_id3`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `productos_ibfk_4` FOREIGN KEY (`producto_id4`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `productos_ibfk_5` FOREIGN KEY (`producto_id5`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `productos_ibfk_6` FOREIGN KEY (`producto_id6`) REFERENCES `producto` (`producto_id`);

--
-- Filtros para la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD CONSTRAINT `reparto_ibfk_1` FOREIGN KEY (`reparto_empleado`) REFERENCES `empleado` (`empleado_id`);

--
-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `tienda_ibfk_1` FOREIGN KEY (`tienda_provincia`) REFERENCES `provincia` (`provincia_id`),
  ADD CONSTRAINT `tienda_ibfk_2` FOREIGN KEY (`tienda_localidad`) REFERENCES `localidad` (`localidad_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
