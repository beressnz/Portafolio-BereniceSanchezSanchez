-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2019 a las 07:07:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `itzamatics`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division`
--

CREATE TABLE `division` (
  `IdDivision` int(5) NOT NULL,
  `Problema` text NOT NULL,
  `Respuesta` varchar(35) NOT NULL,
  `R1` varchar(35) NOT NULL,
  `R2` varchar(35) NOT NULL,
  `R3` varchar(35) NOT NULL,
  `Img` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `division`
--

INSERT INTO `division` (`IdDivision`, `Problema`, `Respuesta`, `R1`, `R2`, `R3`, `Img`) VALUES
(1, 'Luis obtuvo $1756.54 de su quincena y desea distribuirlo en 5 partes iguales para realizar algunos pagos, Â¿QuÃ© cantidad corresponde a cada parte?\r\n', '351.308', '3513.08', '351.308', '351.80', 'Imagenes/DecimalesMD/problema1.jpg'),
(2, 'Mica harÃ¡ buÃ±uelos y compro 17.75 kg de harina y desea repartirla en 3 tazones. Â¿QuÃ© parte le corresponde a cada tazÃ³n?', '5.916kg', '6kg', '59.16kg', '5.916kg', 'Imagenes/DecimalesMD/problema2.jpg'),
(3, 'Rosy desea repartir 115 litros de jugo de naranja en vasos de 0.25 litros, Â¿CuÃ¡ntos vasos de jugo obtendrÃ¡?', '460vasos', '460vasos', '46vasos', '4600vasos', 'Imagenes/DecimalesMD/problema3.jpg'),
(4, 'Alfredo tiene 27.9 m de estambre rojo que va a repartir a 9 niÃ±as y 28.8 m de estambre azul a 4 niÃ±os, Â¿QuiÃ©n tiene mÃ¡s estambre?', 'NiÃ±os', 'NiÃ±as', 'NiÃ±os', 'Ambos', 'Imagenes/DecimalesMD/problema4.jpg'),
(5, 'FÃ©lix tiene 36.36 m2 de tela y los va a repartir en 9 partes iguales, Â¿QuÃ© tanto de tela corresponde a cada parte?', '4.04m2', '4.40m2', '4.04m2', '4.1m2', 'Imagenes/DecimalesMD/problema5.jpg'),
(6, 'Leonardo contrato una pipa de agua con capacidad de 1608.80 Litros, y la almacenara en toneles de 80.40 Litros. Â¿CuÃ¡ntos toneles necesitara?', '20toneles', '20toneles', '21toneles', '20.1toneles', 'Imagenes/DecimalesMD/problema6.jpg'),
(7, 'En una tortillerÃ­a hacen paquetes de tortillas de 0.250 kg para vender. Hoy hicieron 8.5 kilos que empaquetar. Â¿CuÃ¡ntos paquetes de tortillas se obtendrÃ¡n?', '34paquetes', '3.4paquetes', '34.1paquetes', '34paquetes', 'Imagenes/DecimalesMD/problema7.jpg'),
(8, 'En un tejado que tiene de largo 1750.50 m se desea poner tejas nuevas, cada teja mide 0.50 m, Â¿CuÃ¡ntas tejas se van a necesitar para el largo del tejado?', '3501tejas', '3501tejas', '350.1tejas', '3500tejas', 'Imagenes/DecimalesMD/problema8.jpg'),
(9, 'La semana pasada Bere gasto $976.305, exactamente 5 veces mÃ¡s de lo que gasto Liss, Â¿CuÃ¡nto dinero gasto Liss?', '195.261', '196.261', '195.261', '19.52', 'Imagenes/DecimalesMD/problema9.jpg'),
(10, 'Manuel se fue de viaje a Veracruz y recorriÃ³ 275.75 km en total, sin hacer ninguna parada en el camino, y tardÃ³ en llegar a su destino justo 1.5 horas. Â¿A quÃ© velocidad condujo Manuel?', '183.833k/h', '1838.33k/h', '183.833k/h', '183.3838k/h', 'Imagenes/DecimalesMD/problema10.jpg'),
(11, 'VÃ­ctor recorre un pasillo de su escuela que mide 12.655 m para llegar a su salÃ³n, Â¿CuÃ¡ntos pasos tendrÃ¡ que dar VÃ­ctor para llegar, si en cada paso que da avanza 0.605 m?', '20.917pasos', '209.17pasos', '21.17pasos', '20.917pasos', 'Imagenes/DecimalesMD/problema11.jpg'),
(12, 'Una caja de pastillas cuesta $96.78 y contiene 24 pastillas, Â¿CuÃ¡nto cuesta cada pastilla?', '4.03', '4.30', '40.3', '4.03', 'Imagenes/DecimalesMD/problema12.jpg'),
(13, 'Maricela ha comprado 7 panes iguales. ObtÃ©n el precio de cada pan si pago con un billete de $50.00 y le devolvieron $0.51 pesos.', '7.07', '7.07', '7.70', '8.00', 'Imagenes/DecimalesMD/problema13.jpg'),
(14, 'Santiago compro una caja de botellas de salsa a $90.00 con 12 piezas, Â¿CuÃ¡nto cuesta cada botella de salsa?', '7.50', '7.05', '7.50', '8.00', 'Imagenes/DecimalesMD/problema14.jpg'),
(15, 'FabiÃ¡n ahorro dinero durante 25 dÃ­as consecutivos siempre la misma cantidad y reuniÃ³ $318.75, Â¿CuÃ¡nto dinero ahorro FabiÃ¡n por dÃ­a?', '12.75', '12.75', '127.5', '12.57', 'Imagenes/DecimalesMD/problema15.jpg'),
(16, 'Ãngel el carpintero tiene un trozo de madera de 568.49 centÃ­metros. Si necesita cortarlo en  partes iguales, Â¿CuÃ¡nto debe medir cada parte?', '113.698', '113.698', '113.896', '113.986', 'Imagenes/DecimalesMD/problema16.jpg'),
(17, 'Resuelve 5.25 Ã· 1.5', '3.50', '3.50', '35', '0.35', 'Imagenes/DecimalesMD/problema17.jpg'),
(18, 'Resuelve 63.5 Ã· 4.4', '14.43', '14.34', '14.43', '144.3', 'Imagenes/DecimalesMD/problema18.jpg'),
(19, 'Resuelve 77.9 Ã· 4.1', '19', '19.5', '19', '19.52', 'Imagenes/DecimalesMD/problema19.jpg'),
(20, 'Resuelve 50.1 Ã· 5.7', '8.78', '8.87', '88.7', '8.78', 'Imagenes/DecimalesMD/problema20.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fra_resta`
--

CREATE TABLE `fra_resta` (
  `ID` int(5) NOT NULL,
  `Problema` text NOT NULL,
  `Respuesta` varchar(80) NOT NULL,
  `R1` varchar(80) NOT NULL,
  `R2` varchar(80) NOT NULL,
  `R3` varchar(80) NOT NULL,
  `Img` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fra_resta`
--

INSERT INTO `fra_resta` (`ID`, `Problema`, `Respuesta`, `R1`, `R2`, `R3`, `Img`) VALUES
(1, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '1/7', '7/1', '5/7', '2/7', 'Imagenes/r1.png'),
(2, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '3/8', '6/16', '6/8', '3/16', 'Imagenes/r2.png'),
(3, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '5/9', '11/9', '3/9', '8/9', 'Imagenes/r3.png'),
(4, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '2/7', '4/14', '4/7', '2/14', 'Imagenes/r4.png'),
(5, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '4/17', '14/17', '5/17', '17/5', 'Imagenes/r5.png'),
(6, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '3/10', '9/10', '10/3', '2/10', 'Imagenes/r6.png'),
(7, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '3/8', '5/8', '8/2', '1/8', 'Imagenes/r7.png'),
(8, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '3/7', '1/7', '5/7', '6/7', 'Imagenes/r8.png'),
(9, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '1/3', '3/3', '3/2', '5/3', 'Imagenes/r9.png'),
(10, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '1/13', '3/13', '5/13', '9/13', 'Imagenes/r10.png'),
(11, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '4/9', '12/27', '24/54', '12/9', 'Imagenes/r11.png'),
(12, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '11/18', '33/54', '33/18', '11/54', 'Imagenes/r12.png'),
(13, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '3/14', '10/14', '6/9', '7/14', 'Imagenes/r13.png'),
(14, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '1/8', '4/32', '4/8', '1/32', 'Imagenes/r14.png'),
(15, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '11/40', '21/40', '3/13', '5/40', 'Imagenes/r15.png'),
(16, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '1/18', '3/54', '1/54', '3/18', 'Imagenes/r16.png'),
(17, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '4/21', '18/21', '2/3', '14/21', 'Imagenes/r17.png'),
(18, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '1/12', '4/48', '12/48', '8/48', 'Imagenes/r18.png'),
(19, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '1/12', '3/36', '12/36', '9/36', 'Imagenes/r19.png'),
(20, 'Elige la opciÃ³n correcta que representa el resultado de la Resta de fracciones en su expresiÃ³n mÃ­nima.', '1/6', '4/24', '16/24', '2/4', 'Imagenes/r20.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fra_suma`
--

CREATE TABLE `fra_suma` (
  `IdSuma` int(5) NOT NULL,
  `Problema` text NOT NULL,
  `Respuesta` varchar(80) NOT NULL,
  `R1` varchar(80) NOT NULL,
  `R2` varchar(80) NOT NULL,
  `R3` varchar(80) NOT NULL,
  `Img` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fra_suma`
--

INSERT INTO `fra_suma` (`IdSuma`, `Problema`, `Respuesta`, `R1`, `R2`, `R3`, `Img`) VALUES
(1, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '5/7', '7/5', '2/7', '10/7', 'Imagenes/s1.png'),
(2, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '5/8', '1/8', '3/8', '8/5', 'Imagenes/s2.png'),
(3, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '3/4', '2/4', '5/4', '4/1', 'Imagenes/s3.png'),
(4, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '14/16', '9/16', '5/16', '24/16', 'Imagenes/s4.png'),
(5, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '8/9', '1/9', '9/9', '7/9', 'Imagenes/s5.png'),
(6, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '5/6', '2/6', '3/6', '10/6', 'Imagenes/s6.png'),
(7, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '3/3', '1/3', '6/3', '2/3', 'Imagenes/s7.png'),
(8, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '4/5', '2/5', '5/4', '1/5', 'Imagenes/s8.png'),
(9, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '10/11', '7/11', '3/11', '4/11', 'Imagenes/s9.png'),
(10, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '11/14', '5/14', '6/14', '1/14', 'Imagenes/s10.png'),
(11, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '2/3', '6/9', '12/8', '2/6', 'Imagenes/s11.png'),
(12, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '31/36', '27/36', '3/4', '1/9', 'Imagenes/s12.png'),
(13, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '13/14', '6/14', '1/2', '3/7', 'Imagenes/s13.png'),
(14, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '5/6', '10/12', '20/24', '12/24', 'Imagenes/s14.png'),
(15, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '11/9', '33/27', '15/27', '2/3', 'Imagenes/s15.png'),
(16, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '10/11', '20/22', '40/42', '4/6', 'Imagenes/s16.png'),
(17, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '3/4', '9/12', '18/24', '1/4', 'Imagenes/s17.png'),
(18, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '5/8', '10/16', '20/32', '16/32', 'Imagenes/s18.png'),
(19, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '11/18', '9/18', '1/2', '1/9', 'Imagenes/s19.png'),
(20, 'Elige la opciÃ³n correcta que representa el resultado de la Suma de fracciones en su expresiÃ³n mÃ­nima.', '17/20', '34/40', '4/40', '1/10', 'Imagenes/s20.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multiplicacion`
--

CREATE TABLE `multiplicacion` (
  `IdMultiplicacion` int(5) NOT NULL,
  `Problema` text NOT NULL,
  `Respuesta` varchar(80) NOT NULL,
  `R1` varchar(80) NOT NULL,
  `R2` varchar(80) NOT NULL,
  `R3` varchar(80) NOT NULL,
  `Img` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `multiplicacion`
--

INSERT INTO `multiplicacion` (`IdMultiplicacion`, `Problema`, `Respuesta`, `R1`, `R2`, `R3`, `Img`) VALUES
(1, 'Giovani sembrÃ³ 115 m2 de cÃ©sped y para mantenerlo hidratado lo tiene que regar con 16.7 L de agua por m2. Â¿CuÃ¡nta agua requiere Giovani para regar su cÃ©sped?', '1920.5L', '1920.5L', '192.05L', '193.5L', 'Imagenes/DecimalesMD/problema21.jpg'),
(2, 'Margarita vende huevo a $3.75 la pieza, ella vende 185 huevos por dÃ­a, Â¿CuÃ¡nto dinero obtiene en 3 semanas 4 dÃ­as?', '17343.75', '1734.37', '17344.25', '17343.75', 'Imagenes/DecimalesMD/problema22.jpg'),
(3, 'Humberto tiene $115.00 dÃ³lares, Â¿CuÃ¡nto dinero en pesos mexicanos obtendrÃ¡? Tomando en cuenta que el dÃ³lar estÃ¡ en $19.63 pesos mexicanos.', '2257.45', '22574.5', '2257.45', '2257.54', 'Imagenes/DecimalesMD/problema23.jpg'),
(4, 'En la tienda de relojes â€œC&Câ€ por cada $100.00 de compra, se abonan $0.37 al monedero electrÃ³nico .Si Elena hoy compro $1300.00, Â¿CuÃ¡nto dinero se le abono?', '4.81', '48.1', '4.81', '4.18', 'Imagenes/DecimalesMD/problema24.jpg'),
(5, 'Michel encargÃ³ sÃ¡ndwiches de diferentes precios y sabores: 36 de tomate a $12.35 cada uno y 24 de pollo a $17.72. Â¿CuÃ¡nto va a pagar Michel en total?', '869.88', '8698.8', '896.88', '869.88', 'Imagenes/DecimalesMD/problema25.jpg'),
(6, 'Â¿CuÃ¡l es el Ã¡rea de un cÃ­rculo cuyo diÃ¡metro mide 11 cm? Recuerda que el valor del PI=3.1416', '95.0334', '9.50334', '95.0334 ', '950.334', 'Imagenes/DecimalesMD/problema26.jpg'),
(7, 'Marcela compro 5 blusas a $58.75 cada una, 8 faldas a $45.50 cada una, y 3 pantalones a $80.23 cada uno. Â¿CuÃ¡nto pago Marcela en total?', '898.44', '898.44', '8984.4', '894.84', 'Imagenes/DecimalesMD/problema27.jpg'),
(8, 'En una perfumerÃ­a cada mililitro de perfume cuesta $1.28, Si Ariadna compro 65 ml Â¿CuÃ¡nto pagara en total?', '83.2', '83.2', '82.3', '83.3', 'Imagenes/DecimalesMD/problema28.jpg'),
(9, 'Mario tiene 17 vacas y vende leche a $11.22 el litro. De cada vaca obtiene 10.5 litros de leche. Si en un dÃ­a vende toda la leche que reÃºne de las 17 vacas, Â¿CuÃ¡nto dinero obtendrÃ¡ de la venta?', '2002.77', '20027.7', '2002.77', '200.27', 'Imagenes/DecimalesMD/problema29.jpg'),
(10, 'En una pizzerÃ­a venden las rebanas a $9.85, Marco fue a comprar 17 piezas el dÃ­a de hoy, Â¿CuÃ¡nto va a pagar Marco?', '167.45', '1674.5', '167.54', '167.45', 'Imagenes/DecimalesMD/problema30.jpg'),
(11, 'Alicia comprÃ³ 7.5 kilogramos de arroz a $11.15, Â¿CuÃ¡nto va a pagar en total Alicia?', '83.625', '83.625', '836.25', '83.256', 'Imagenes/DecimalesMD/problema31.jpg'),
(12, 'Catalina comprÃ³ 15.750 kg de pollo de a $45.50 el kg. Â¿CuÃ¡nto va a pagar Catalina?', '716.625', '716.625', '7166.25', '716.56', 'Imagenes/DecimalesMD/problema32.jpg'),
(13, 'MarÃ­a vende agua de Jamaica en el mercado de a $11.50 el litro, el dÃ­a de hoy una clienta pidiÃ³ 5.5 litros, Â¿CuÃ¡nto debe cobrar MarÃ­a?', '63.25', '632.5', '64.00', '63.25', 'Imagenes/DecimalesMD/problema33.jpg'),
(14, 'Un borrego consume 3.75 kg de alimento en un dÃ­a. Â¿CuÃ¡ntos kg de alimento consumirÃ¡ al cabo de 72 dÃ­as?', '270kg', '2.70kg', '270kg', '27.0kg', 'Imagenes/DecimalesMD/problema34.jpg'),
(15, 'El patio de la casa de Antonio es de forma rectangular, de largo mide 7.5m y de ancho 5.5m, Â¿QuÃ© Ã¡rea tiene el patio de Antonio?', '41.25m', '42.3m', '41.25m', '41.52m', 'Imagenes/DecimalesMD/problema35.jpg'),
(16, 'Se tienen 196 cajas con 18 bolsas de cafÃ© cada una. Si cada bolsa pesa 0.47 kg, Â¿CuÃ¡l es el peso total del cafÃ©?', '1658.16kg', '16581.6kg', '165.81kg', '1658.16kg', 'Imagenes/DecimalesMD/problema36.jpg'),
(17, 'Resuelve 48.02 x 10.23', '491.2446', '4912.4', '491.2446', '491.42', 'Imagenes/DecimalesMD/problema37.jpg'),
(18, 'Resuelve 31.50 x 15.63', '492.345', '492.43', '493.24', '492.345', 'Imagenes/DecimalesMD/problema38.jpg'),
(19, 'Resuelve 7.65 x 19.13', '146.3445', '1463.4', '14.634', '146.3445', 'Imagenes/DecimalesMD/problema39.jpg'),
(20, 'Resuelve 11.56 x 9.12', '105.4272', '105.4272', '105.24', '104.24', 'Imagenes/DecimalesMD/problema40.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`IdDivision`);

--
-- Indices de la tabla `fra_resta`
--
ALTER TABLE `fra_resta`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `fra_suma`
--
ALTER TABLE `fra_suma`
  ADD PRIMARY KEY (`IdSuma`);

--
-- Indices de la tabla `multiplicacion`
--
ALTER TABLE `multiplicacion`
  ADD PRIMARY KEY (`IdMultiplicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `division`
--
ALTER TABLE `division`
  MODIFY `IdDivision` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `fra_resta`
--
ALTER TABLE `fra_resta`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `fra_suma`
--
ALTER TABLE `fra_suma`
  MODIFY `IdSuma` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `multiplicacion`
--
ALTER TABLE `multiplicacion`
  MODIFY `IdMultiplicacion` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
