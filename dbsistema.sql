-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2022 a las 23:24:01
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendajoha`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `condicion` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `descripcion`, `imagen`, `condicion`) VALUES
(1, 17, '1', 'ACEITE 3 EN 1 X 30CM', 0, '3400', 'ACEITE3EN1X30CM.jpg', 1),
(2, 13, '2', 'ACEITE COCINA IDEAL X 110 ML                                                                        ', 0, '1280,6694', 'ACEITECOCINAIDEALX110 ML.png', 1),
(3, 13, '3', 'ACEITE COCINA IDEAL X 2000 ML                                                                       ', 0, '15200', 'ACEITECOCINAIDEALX2000ML.png', 1),
(4, 13, '4', 'ACEITE COCINA IDEAL X 250 ML                                                                        ', 0, '2156,41', 'ACEITECOCINAIDEALX250 ML.jpg', 1),
(5, 13, '5', 'ACEITE COCINA IDEAL X 3000 ML                                                                       ', 0, '23300', 'ACEITECOCINAIDEALX3000ML.jpg', 1),
(6, 13, '6', 'ACEITE COCINA IDEAL X 4800 ML                                                                       ', 0, '37007,49', 'ACEITECOCINAIDEALX4800ML.png', 1),
(7, 13, '7', 'ACEITE COCINA IDEAL X 500 ML                                                                        ', 0, '4115,07', '', 1),
(8, 13, '8', 'ACEITE COCINA IDEAL X 900 ML                                                                        ', 0, '7109,5743', '', 1),
(9, 14, '9', 'ACEITE JHON VONS X 60 ML X 12 U                                                                     ', 0, '15500', '', 1),
(10, 14, '10', 'ACEITE JOHN VONS 30 ML X 12 UN                                                                      ', 0, '10500', '', 1),
(11, 14, '11', 'ACEITE JOHNSONS BABY X 100 ML                                                                       ', 0, '7900,01', '', 1),
(12, 14, '12', 'ACEITE JOHNSONS BABY X 50 ML                                                                        ', 0, '3999,99', '', 1),
(13, 16, '13', 'ACETAMINOFEM AG X 100 TAB                                                                           ', 0, '7000', '', 1),
(14, 16, '14', 'ACETAMINOFEN JARABE 90 ML LAPROF                                                                    ', 0, '1900', '', 1),
(15, 16, '15', 'ACETAMINOFEN LAPROFF X 300 UN                                                                       ', 0, '15500', '', 1),
(16, 17, '16', 'ACIDO MURIATICO X 150 ML                                                                            ', 0, '1175,24', '', 1),
(17, 17, '17', 'ACIDO MURIATICO X 400 ML                                                                            ', 0, '2899,9071', '', 1),
(18, 16, '18', 'ADVIL  ULTRA X 40 UNID                                                                              ', 0, '48999,99', '', 1),
(19, 16, '19', 'ADVIL CHILDREN X 60 ML                                                                              ', 0, '14400', '', 1),
(20, 16, '20', 'ADVIL FEM X 10 TABL                                                                                 ', 0, '12500', '', 1),
(21, 16, '21', 'ADVIL GRIPA X 72 CAP                                                                                ', 0, '88500', '', 1),
(22, 16, '22', 'ADVIL MAX X 40 UN                                                                                   ', 0, '49000', '', 1),
(23, 16, '23', 'ADVIL MAX X 72 UND                                                                                  ', 0, '87000', '', 1),
(24, 3, '24', 'AGUA OXIGENADA X 120 ML                                                                             ', 0, '2800', '', 1),
(25, 18, '25', 'AGUJA PUNTA DORADA X 10 PA?OS                                                                       ', 0, '11900', '', 1),
(26, 18, '26', 'AGUJETERO X UNID                                                                                    ', 0, '550', '', 1),
(27, 3, '27', 'ALCOHOL GEL X 45 ML                                                                                 ', 0, '3365,4564', '', 1),
(28, 3, '28', 'ALCOHOL MK X 350 ML                                                                                 ', 0, '2875', '', 1),
(29, 3, '29', 'ALCOHOL MK X 700 ML                                                                                 ', 0, '4455', '', 1),
(30, 3, '30', 'ALGODON  MK X 25 GR                                                                                 ', 0, '905', '', 1),
(31, 3, '31', 'ALGODON MK 5 GR                                                                                     ', 0, '345', '', 1),
(32, 3, '32', 'ALGODON MK X 50 GR                                                                                  ', 0, '1375', '', 1),
(33, 3, '33', 'ALGODON POMOS X 100 GR                                                                              ', 0, '2600', '', 1),
(34, 16, '34', 'ALIVRUB FRASCO X 50 GR                                                                              ', 0, '11900', '', 1),
(35, 16, '35', 'ALIVRUB LATA X 12 UND                                                                               ', 0, '34500', '', 1),
(36, 16, '36', 'ALKA SELTZER EXTREME X20 UN                                                                         ', 0, '30500', '', 1),
(37, 16, '37', 'ALKASELTZER X 14 UND                                                                                ', 0, '8700', '', 1),
(38, 16, '38', 'ALKASELTZER X 60 TAB                                                                                ', 0, '37000', '', 1),
(39, 15, '39', 'AMB. GLADE AUTO SPORT + UN DECORATIVA                                                               ', 0, '15912,04', '', 1),
(40, 15, '40', 'AMB. VARITA BON AIRE X 40 ML                                                                        ', 0, '6600', '', 1),
(41, 15, '41', 'AMB. VARITAS BON AIRE X 80 ML                                                                       ', 0, '12800', '', 1),
(42, 15, '42', 'AMBIENT. GLADE GEL CONO X 170 G                                                                     ', 0, '4550', '', 1),
(43, 16, '43', 'AMOXICILINA X 500GR X 50 UN                                                                         ', 0, '15000', '', 1),
(44, 16, '44', 'AMPICILINA 500 GR X 100 CAP                                                                         ', 0, '36000', '', 1),
(45, 16, '45', 'APRONAX LIQUID X 8 UN                                                                               ', 0, '9500', '', 1),
(46, 15, '46', 'ARIEL REVITACOLOR X 2000 GR                                                                         ', 0, '9800', '', 1),
(47, 15, '47', 'AROMAX DUO LIMPIAPISOS X 10 UN                                                                      ', 0, '3475', '', 1),
(48, 14, '48', 'ARRURRU COLONIA MINI X 30 ML                                                                        ', 0, '4149,99', '', 1),
(49, 14, '49', 'ARRURRU COLONIA X 120 ML +JABON                                                                     ', 0, '13850,01', '', 1),
(50, 14, '50', 'ARRURRU COLONIA X 220                                                                               ', 0, '18800', '', 1),
(51, 14, '51', 'ARRURRU COLONIA X 60 ML                                                                             ', 0, '8335', '', 1),
(52, 14, '52', 'ARRURRU COLONIA X 800 ML                                                                            ', 0, '38400', '', 1),
(53, 14, '53', 'ARRURRU ESTUCHE ABUELITA                                                                            ', 0, '43299,99', '', 1),
(54, 14, '54', 'ARRURRU ESTUCHE ARRULLO                                                                             ', 0, '22100', '', 1),
(55, 14, '55', 'ARRURRU ESTUCHE BA?O FELIZ                                                                          ', 0, '26500', '', 1),
(56, 14, '56', 'ARRURRU ESTUCHE LULLABY                                                                             ', 0, '29850', '', 1),
(57, 14, '57', 'ARRURRU ESTUCHE R. NACIDO                                                                           ', 0, '25600,01', '', 1),
(58, 14, '58', 'ARRURRU ESTUCHE VIAJERO                                                                             ', 0, '16486,02', '', 1),
(59, 14, '59', 'ARRURRU SHAMPOO X 800 ML                                                                            ', 0, '17300,01', '', 1),
(60, 14, '60', 'ARRURU EST. BABY SHOWER                                                                             ', 0, '31399,99', '', 1),
(61, 14, '61', 'ARRURU SHAMPO X 800 ML 2 EN 1                                                                       ', 0, '19800,01', '', 1),
(62, 1, '62', 'ARVEJA AMARILLA X 460 GR                                                                            ', 0, '1761,4016', '', 1),
(63, 1, '63', 'ARVEJA VERDE X 460 GR                                                                               ', 0, '1761,4016', '', 1),
(64, 16, '64', 'ASPIRINA 100 X 140 TABL                                                                             ', 0, '50000', '', 1),
(65, 16, '65', 'ASPIRINA 100 x 28 UN                                                                                ', 0, '11000', '', 1),
(66, 16, '66', 'ASPIRINA EFERVECENTE X 50 TAB                                                                       ', 0, '42800', '', 1),
(67, 16, '67', 'ASPIRINA EFERVESCENTE X 12 UNID                                                                     ', 0, '10500', '', 1),
(68, 16, '68', 'ASPIRINA ULTRA X 100 UN                                                                             ', 0, '47800', '', 1),
(69, 16, '69', 'ASPIRINA ULTRA X 20 UN                                                                              ', 0, '9600', '', 1),
(70, 15, '70', 'ATOMIZADOR KATORI X UN                                                                              ', 0, '4350', '', 1),
(71, 13, '71', 'ATUN LOMITO ANDALUCIA X 175G                                                                        ', 0, '4065,72', '', 1),
(72, 13, '72', 'ATUN MONTERICO X 175 GR                                                                             ', 0, '3600', '', 1),
(73, 1, '73', 'AVENA HOJUELA QUAKER X 115 G                                                                        ', 0, '1073,4988', '', 1),
(74, 1, '74', 'AVENA HOJUELA QUAKER X 220 GR                                                                       ', 0, '2057,5243', '', 1),
(75, 1, '75', 'AVENA MOLIDA QUAKER X 200 GR                                                                        ', 0, '1968,0962', '', 1),
(76, 13, '76', 'AZUCAR BLANCA X 2.5 KL                                                                              ', 0, '8700', '', 1),
(77, 13, '77', 'AZUCAR INCAUCA X 1 KL                                                                               ', 0, '3480', '', 1),
(78, 13, '78', 'AZUCAR INCAUCA X 1 LB                                                                               ', 0, '1740', '', 1),
(79, 13, '79', 'AZUCAR MORENA X 1 KL                                                                                ', 0, '3500', '', 1),
(80, 13, '80', 'AZUCAR MORENA X 1 LB                                                                                ', 0, '1750', '', 1),
(81, 13, '81', 'AZUCAR TUBIPACK X 200 SOB                                                                           ', 0, '5100', '', 1),
(82, 16, '82', 'BACTRODERM BUCOFARINGEO X 60 ML                                                                     ', 0, '3100', '', 1),
(83, 16, '83', 'BACTRODERM ESPUMA X 60 ML                                                                           ', 0, '4300', '', 1),
(84, 16, '84', 'BACTRODERM SOLUCION X 60 ML                                                                         ', 0, '3200', '', 1),
(85, 14, '85', 'BALANCE MINI COLAPSIBLE X 30 GR                                                                     ', 0, '2150', '', 1),
(86, 19, '86', 'BARRILETE TUTI FRUTI X 40 UN                                                                        ', 0, '6250', '', 1),
(87, 15, '87', 'BETUN BUFALO FAMILIAR X 70GR                                                                        ', 0, '4516,85', '', 1),
(88, 15, '88', 'BETUN BUFALO MED X 36 GR                                                                            ', 0, '2643,68', '', 1),
(89, 15, '89', 'BETUN BUFALO PQ? X 12 UND                                                                           ', 0, '12586,39', '', 1),
(90, 15, '90', 'BETUN CHERRY LIQUIDO X 60 ML                                                                        ', 0, '3760,64', '', 1),
(91, 15, '91', 'BETUN CHERRY MEDIANO X 30G                                                                          ', 0, '2730', '', 1),
(92, 15, '92', 'BETUN CHERRY PQ? X  12 UND                                                                          ', 0, '11800', '', 1),
(93, 15, '93', 'BETUN LIQUIDO BUFALO X 60 ML                                                                        ', 0, '4823,44', '', 1),
(94, 19, '94', 'BIANCHI CHOCOLATE- BLANCO X 100 UN                                                                  ', 0, '6450', '', 1),
(95, 13, '95', 'BICARBONATO MINI CHAPETA X 12 UN                                                                    ', 0, '3200,01', '', 1),
(96, 15, '96', 'BLANQ CLOROX R COLOR X 450 ML                                                                       ', 0, '1885', '', 1),
(97, 15, '97', 'BLANQ CLOROX X 1000 ML                                                                              ', 0, '3026', '', 1),
(98, 15, '98', 'BLANQ CLOROX X 1800 ML+ CLOROX 530                                                                  ', 0, '5010', '', 1),
(99, 15, '99', 'BLANQ CLOROX X 3800 ML                                                                              ', 0, '10450', '', 1),
(100, 15, '100', 'BLANQ CLOROX X 530 ML                                                                               ', 0, '950', '', 1),
(101, 15, '101', 'BLANQ YES TRAD X 450 ML                                                                             ', 0, '775', '', 1),
(102, 15, '102', 'BLANQ. BLANCOX X 500 ML                                                                             ', 0, '870', '', 1),
(103, 15, '103', 'BLANQUEADOR MI DIA X 1800 ML                                                                        ', 0, '2545', '', 1),
(104, 14, '104', 'BLOQUEA. SUNDOWN X 12 SOBRES                                                                        ', 0, '25100', '', 1),
(105, 20, '105', 'BOKA X 10 UN                                                                                        ', 0, '4575,31', '', 1),
(106, 18, '106', 'BOLINCHE CRISTALINA X 100 UND                                                                       ', 0, '3800', '', 1),
(107, 21, '107', 'BOLSA 1 K X 100 UND                                                                                 ', 0, '1600', '', 1),
(108, 21, '108', 'BOLSA 65 X 80 MI DIA X 60 UNID                                                                      ', 0, '11835,7175', '', 1),
(109, 21, '109', 'BOLSA BASURA 50X60 10 UND                                                                           ', 0, '1800,01', '', 1),
(110, 21, '110', 'BOLSA BASURA 60X80 10 UND                                                                           ', 0, '2800', '', 1),
(111, 21, '111', 'BOLSA BASURA 70X100 10 UND                                                                          ', 0, '3999,99', '', 1),
(112, 21, '112', 'BOLSA BASURA 90X110 10UND                                                                           ', 0, '6600', '', 1),
(113, 21, '113', 'BOLSA MANIJA 1.5K X 100U                                                                            ', 0, '1825', '', 1),
(114, 21, '114', 'BOLSA MANIJA 10K X 100U                                                                             ', 0, '5934,99', '', 1),
(115, 21, '115', 'BOLSA MANIJA 20K X 100 U                                                                            ', 0, '9500', '', 1),
(116, 21, '116', 'BOLSA MANIJA 25K BLANCA X 100U                                                                      ', 0, '15819,991', '', 1),
(117, 21, '117', 'BOLSA MANIJA 25K NEGRA X 100U                                                                       ', 0, '13500', '', 1),
(118, 21, '118', 'BOLSA MANIJA 2K X 100 U                                                                             ', 0, '2150', '', 1),
(119, 21, '119', 'BOLSA MANIJA 3K X 100 U                                                                             ', 0, '3300', '', 1),
(120, 21, '120', 'BOLSA MANIJA 5K X 100 U                                                                             ', 0, '4865,01', '', 1),
(121, 18, '121', 'BOMBA R 12 X 50 UND                                                                                 ', 0, '9500', '', 1),
(122, 18, '122', 'BOMBA R 9 X 100 UN                                                                                  ', 0, '10850', '', 1),
(123, 19, '123', 'BOMBAZO CHICLE BOMBA X 50 U                                                                         ', 0, '4160', '', 1),
(124, 17, '124', 'BOMBILLO ASTRO LED X 20 W                                                                           ', 0, '7599,99', '', 1),
(125, 17, '125', 'BOMBILLO ECONOMICO X 10 UN                                                                          ', 0, '12500', '', 1),
(126, 17, '126', 'BOMBILLO LED ASTRO 9W                                                                               ', 0, '4300,01', '', 1),
(127, 17, '127', 'BOMBILLO LED ASTRO X 12W                                                                            ', 0, '4900', '', 1),
(128, 17, '128', 'BOMBILLO LED FULLWAT X 9W                                                                           ', 0, '3200,01', '', 1),
(129, 17, '129', 'BOMBILLO LED INFINITA 9W                                                                            ', 0, '4800', '', 1),
(130, 17, '130', 'BOMBILLO LED INFINITA X 12W                                                                         ', 0, '7000', '', 1),
(131, 17, '131', 'BOMBILLO LED INFINITA X 24W                                                                         ', 0, '12200', '', 1),
(132, 17, '132', 'BOMBILLO LED INFINITA X 36W                                                                         ', 0, '24800', '', 1),
(133, 17, '133', 'BOMBILLO LINTERNA RECARGABLE                                                                        ', 0, '7800', '', 1),
(134, 17, '134', 'BOMBILLO SILVANIA LED X 7 W                                                                         ', 0, '2950', '', 1),
(135, 19, '135', 'BOMBON SUPERCOCO POTE X 48 U                                                                        ', 0, '12475', '', 1),
(136, 19, '136', 'BOMBON SUPERCOCO X 24 UN                                                                            ', 0, '6050', '', 1),
(137, 19, '137', 'BON BON BUM X 24 UN                                                                                 ', 0, '6750', '', 1),
(138, 18, '138', 'BORRADOR DE NATA X 24 UN                                                                            ', 0, '3999,9005', '', 1),
(139, 18, '139', 'BORRADOR MIGA DE PAN X 30 UN                                                                        ', 0, '7799,996', '', 1),
(140, 19, '140', 'BUBBALOO SPARKIES X 70 UN                                                                           ', 0, '5974', '', 1),
(141, 19, '141', 'BUMBA PIN POP GIGANTE X 24 UN                                                                       ', 0, '6040,0023', '', 1),
(142, 19, '142', 'BUMBA PIN POP SURTIDO X 24 UN                                                                       ', 0, '4969,877', '', 1),
(143, 16, '143', 'BUSCAPINA COMPUESTA X 30 UND                                                                        ', 0, '34126', '', 1),
(144, 16, '144', 'BUSCAPINA FEM X 24 UND                                                                              ', 0, '27900', '', 1),
(145, 13, '145', 'CAFE LA BASTILLA 50GR X 10 SOBRES                                                                   ', 0, '11101,1147', '', 1),
(146, 13, '146', 'CAFE LA BASTILLA X 125 GR                                                                           ', 0, '2656,6365', '', 1),
(147, 13, '147', 'CAFE LA BASTILLA X 250 GR                                                                           ', 0, '5174,3865', '', 1),
(148, 13, '148', 'CAFE LA BASTILLA X 450 GR                                                                           ', 0, '8789,2523', '', 1),
(149, 13, '149', 'CAFE SELLO ROJO 50GR X 10 SOBRES                                                                    ', 0, '11101,1147', '', 1),
(150, 13, '150', 'CAFE SELLO ROJO X 125 GR                                                                            ', 0, '3029,5229', '', 1),
(151, 13, '151', 'CAFE SELLO ROJO X 250 GR                                                                            ', 0, '5921,2024', '', 1),
(152, 13, '152', 'CAFE SELLO ROJO X 500 GR                                                                            ', 0, '11027,6777', '', 1),
(153, 13, '153', 'CAFE TAMARE?O X 125 GR                                                                              ', 0, '2599,0024', '', 1),
(154, 13, '154', 'CAFE TAMARE?O X 250 GR                                                                              ', 0, '5593,5077', '', 1),
(155, 13, '155', 'CAFE TAMARE?O X 50 GR  X 10 UN                                                                      ', 0, '11865', '', 1),
(156, 13, '156', 'CAFE TAMARE?O X 500 GR                                                                              ', 0, '11074,0042', '', 1),
(157, 16, '157', 'CALMIDOL COMPUESTO X 48 CPS                                                                         ', 0, '40906', '', 1),
(158, 16, '158', 'CALMIDOL MAX X 48 UND                                                                               ', 0, '43800', '', 1),
(159, 13, '159', 'CANELA MEDIANA RISTRA X 100 UN                                                                      ', 0, '39800', '', 1),
(160, 13, '160', 'CANELA PEQUE?A RISTRA X 100 U                                                                       ', 0, '18500', '', 1),
(161, 19, '161', 'CARAMELO LOKI?O X 100 UN                                                                            ', 0, '4990,18', '', 1),
(162, 19, '162', 'CARAMELO RICATO X 50 UN                                                                             ', 0, '4157,81', '', 1),
(163, 18, '163', 'CARTON PAJA X 25 UN                                                                                 ', 0, '7800', '', 1),
(164, 18, '164', 'CARTULINA 1/8 X 100 UND                                                                             ', 0, '10400,01', '', 1),
(165, 18, '165', 'CAUCHITO DE SILICONA GRUESO                                                                         ', 0, '5999,8298', '', 1),
(166, 18, '166', 'CAUCHITOS SILICONA X 12 BOL                                                                         ', 0, '2500', '', 1),
(167, 15, '167', 'CEPILLO CARRETERO 35 X 25----------                                                                 ', 0, '9800', '', 1),
(168, 14, '168', 'CEPILLO COLGATE RISTRA X 12 UN                                                                      ', 0, '19499,99', '', 1),
(169, 14, '169', 'CEPILLO CORONA 390 X12UN                                                                            ', 0, '12000', '', 1),
(170, 14, '170', 'CEPILLO CORONA ADULTO X 12 UN                                                                       ', 0, '11999,985', '', 1),
(171, 14, '171', 'CEPILLO CORONA CON PORTACEPILLO X 12 U                                                              ', 0, '12500', '', 1),
(172, 14, '172', 'CEPILLO CORONA NI?O X 12 UND                                                                        ', 0, '12000', '', 1),
(173, 14, '173', 'CEPILLO DENTAL HAPPY TOOTH                                                                          ', 0, '8500', '', 1),
(174, 15, '174', 'CEPILLO PISO ---------------                                                                        ', 0, '4100', '', 1),
(175, 15, '175', 'CEPILLO PLANCHITA RD COLOR X U                                                                      ', 0, '2350', '', 1),
(176, 15, '176', 'CEPILLO PLANCHITA X UND                                                                             ', 0, '1800,01', '', 1),
(177, 14, '177', 'CEPILLO PRO 1000 PROLIFE 2X1                                                                        ', 0, '10150', '', 1),
(178, 14, '178', 'CEPILLO PRO 425 X UN                                                                                ', 0, '3250', '', 1),
(179, 14, '179', 'CEPILLO PRO 900 2X1                                                                                 ', 0, '10150', '', 1),
(180, 14, '180', 'CEPILLO PRO TIK TOK X UN                                                                            ', 0, '1685', '', 1),
(181, 15, '181', 'CEPILLO SANITARIO BASE X UN                                                                         ', 0, '3700', '', 1),
(182, 15, '182', 'CERA COJIN X 370 CC                                                                                 ', 0, '980', '', 1),
(183, 14, '183', 'CERA EGO EN TIRA X 10 UN                                                                            ', 0, '9150,01', '', 1),
(184, 14, '184', 'CERA EGO POTE X 60 ML                                                                               ', 0, '2700', '', 1),
(185, 14, '185', 'CERA MOLDEADORA HOM X 100 GR                                                                        ', 0, '5179,923', '', 1),
(186, 14, '186', 'CHAMPIOJO X 24 SOB                                                                                  ', 0, '20000', '', 1),
(187, 19, '187', 'CHICLE BUBBALOO X 70 UN                                                                             ', 0, '5950', '', 1),
(188, 19, '188', 'CHICLE TRIDENT 3 PIEZAS X 24 UNI                                                                    ', 0, '11400', '', 1),
(189, 19, '189', 'CHICLE TRIDENT GRANDE X 18 UN                                                                       ', 0, '15050', '', 1),
(190, 19, '190', 'CHICLE TRIDENT X 60 UND                                                                             ', 0, '9167', '', 1),
(191, 19, '191', 'CHICLETS ADAMS CUBO X 100 UN                                                                        ', 0, '12750,01', '', 1),
(192, 13, '192', 'CHOCOLATE CORONA X 250 G                                                                            ', 0, '3585', '', 1),
(193, 13, '193', 'CHOCOLATE CORONA X 32 PAST                                                                          ', 0, '13700', '', 1),
(194, 13, '194', 'CHOCOLATE CORONA X 500 GR                                                                           ', 0, '6243', '', 1),
(195, 19, '195', 'CHOCOLATINA GOL X 24 UND                                                                            ', 0, '18950', '', 1),
(196, 19, '196', 'CHOCOLATINA JET 12 GR X 50 U                                                                        ', 0, '20124,1715', '', 1),
(197, 19, '197', 'CHOCOLATINA JET 30 GR X 35 U                                                                        ', 0, '37500,01', '', 1),
(198, 19, '198', 'CHOCOLATINA JUMBO MANI 18G X 24U                                                                    ', 0, '14798,4752', '', 1),
(199, 19, '199', 'CHOCOLATINA JUMBO MANI 40G X 24U                                                                    ', 0, '39627,9775', '', 1),
(200, 13, '200', 'CHOCOLISTO X 18 SOB                                                                                 ', 0, '7800', '', 1),
(201, 15, '201', 'CHUPA BA?O COLORES X UN                                                                             ', 0, '2700', '', 1),
(202, 19, '202', 'CHUPETA KBZOON SURTIDO X 48 UN                                                                      ', 0, '9988,56', '', 1),
(203, 19, '203', 'CHUPETA KBZOON XL X 48 UN                                                                           ', 0, '12920,4446', '', 1),
(204, 19, '204', 'CHUPETA MANGOOS CON SAL X 48 UN                                                                     ', 0, '4555,31', '', 1),
(205, 19, '205', 'CHUPETA TIPITIN CORAZON X 25 UN                                                                     ', 0, '2785', '', 1),
(206, 14, '206', 'CHUPO SILICONA CORCHITO X 12 UN                                                                     ', 0, '8500', '', 1),
(207, 17, '207', 'CINTA AISLANTE NEGRA P?A X 10 UN                                                                    ', 0, '7800', '', 1),
(208, 18, '208', 'CINTA ANCHA COLBON X 6 U                                                                            ', 0, '11350,01', '', 1),
(209, 18, '209', 'CINTA ANCHA ECONOMICA X 6 U                                                                         ', 0, '8900', '', 1),
(210, 17, '210', 'CINTA ENMASCARAR 1\" 24mm                                                                            ', 0, '2601,24', '', 1),
(211, 17, '211', 'CINTA ENMASCARAR 1/2\"X U                                                                            ', 0, '1368', '', 1),
(212, 17, '212', 'CINTA ENMASCARAR 3/4\"X U                                                                            ', 0, '1975', '', 1),
(213, 3, '213', 'CINTA MICROPORE CUREBAN 1\" X 3 Y                                                                    ', 0, '4853,6664', '', 1),
(214, 3, '214', 'CINTA MICROPORE CUREBAN 1/2\"X 3 Y                                                                   ', 0, '2528,94', '', 1),
(215, 3, '215', 'CINTA MICROPORE ECONOMICA X UN                                                                      ', 0, '1600', '', 1),
(216, 17, '216', 'CINTA TEFLON X 12 UN                                                                                ', 0, '6499,99', '', 1),
(217, 18, '217', 'CINTA TIQUETEADORA X 10 UNI                                                                         ', 0, '7800', '', 1),
(218, 18, '218', 'CINTA TRANS. MEDIANA X 12 UND                                                                       ', 0, '4500', '', 1),
(219, 18, '219', 'CINTA TRANS. PEQUE?A X 12 UND                                                                       ', 0, '2000', '', 1),
(220, 17, '220', 'CLAVO X 100 UND                                                                                     ', 0, '14500', '', 1),
(221, 15, '221', 'CLOROPASTA LARGUERO X 12 UN                                                                         ', 0, '5100', '', 1),
(222, 15, '222', 'CLOROPASTA LARGUERO X 24 UN                                                                         ', 0, '9890', '', 1),
(223, 18, '223', 'COLBON SIPEGA 125GR X 6 U                                                                           ', 0, '8699,99', '', 1),
(224, 18, '224', 'COLBON SIPEGA 20GR X 24 U                                                                           ', 0, '11000', '', 1),
(225, 18, '225', 'COLBON SIPEGA 40GR X 18 U                                                                           ', 0, '11500,2928', '', 1),
(226, 14, '226', 'COLGATE KIDS GEL X 50 GR                                                                            ', 0, '2675,979', '', 1),
(227, 14, '227', 'COLGATE LUMINOUS WHITE X 75ML                                                                       ', 0, '11046', '', 1),
(228, 14, '228', 'COLGATE MENTA X 150 ML                                                                              ', 0, '7400', '', 1),
(229, 14, '229', 'COLGATE MENTA X 60 ML                                                                               ', 0, '2156,201', '', 1),
(230, 14, '230', 'COLGATE TOTAL 12 X 75 ML                                                                            ', 0, '9605,0018', '', 1),
(231, 14, '231', 'COLGATE TRIPLE ACCION X 100 ML                                                                      ', 0, '6200', '', 1),
(232, 14, '232', 'COLGATE TRIPLE ACCION X 150 ML                                                                      ', 0, '8150', '', 1),
(233, 14, '233', 'COLGATE TRIPLE ACCION X 22 ML                                                                       ', 0, '1237,01', '', 1),
(234, 14, '234', 'COLGATE TRIPLE ACCION X 60 ML                                                                       ', 0, '2448,826', '', 1),
(235, 14, '235', 'COLGATE TRIPLE X 50 + CEPILLO                                                                       ', 0, '2635,356', '', 1),
(236, 13, '236', 'CON. COLOR MINI CHAPETA X 25 U                                                                      ', 0, '6600', '', 1),
(237, 13, '237', 'CONCHA COMARRICO X 190 GR                                                                           ', 0, '1080', '', 1),
(238, 13, '238', 'CONCHA DORIA X 250 G                                                                                ', 0, '1720,9924', '', 1),
(239, 13, '239', 'COND COLOR CHAPETA X 55G X 12UND                                                                    ', 0, '12700', '', 1),
(240, 13, '240', 'COND COLOR GRUESA X12UN                                                                             ', 0, '2212', '', 1),
(241, 13, '241', 'COND COMINO GRUESA X 12 UND                                                                         ', 0, '2200', '', 1),
(242, 13, '242', 'COND SALSINA CHAPETA 55G X 12 UND                                                                   ', 0, '19499,4462', '', 1),
(243, 13, '243', 'COND SALSINA GRUESA X 12 UNID                                                                       ', 0, '2200', '', 1),
(244, 13, '244', 'COND. SALSINA MINI CHAPETA X 25 U                                                                   ', 0, '6600', '', 1),
(245, 3, '245', 'COPITO ECOMINO P?O X 12 UN                                                                          ', 0, '6000', '', 1),
(246, 3, '246', 'COPITO JHONSON X 75 UN                                                                              ', 0, '5900', '', 1),
(247, 3, '247', 'COPITO MEDIANO UKAINT JUANA X 12 UN                                                                 ', 0, '14000', '', 1),
(248, 3, '248', 'COPITO UKAINT ALANNA X 6 TARROS                                                                     ', 0, '16800', '', 1),
(249, 18, '249', 'CORDON CORTO B/N X 57 CM                                                                            ', 0, '5500', '', 1),
(250, 18, '250', 'CORDON LARGO B/N X 90 CM                                                                            ', 0, '8800', '', 1),
(251, 18, '251', 'CORRECTOR LIQUIDO X 12 UND                                                                          ', 0, '12500', '', 1),
(252, 14, '252', 'CORTACUTICULAS MEREJHE X UN                                                                         ', 0, '4199,994', '', 1),
(253, 14, '253', 'CORTAU?AS BEBE X 12 UND                                                                             ', 0, '10200,002', '', 1),
(254, 14, '254', 'CORTAU?AS GRANDE X 12 UND                                                                           ', 0, '17999,94', '', 1),
(255, 14, '255', 'CORTAU?AS PEQUE?O X 24 UND                                                                          ', 0, '17900', '', 1),
(256, 14, '256', 'CREMA  JOHNSON BABY X 100 ML                                                                        ', 0, '7050', '', 1),
(257, 14, '257', 'CREMA D. FORTIDENT X 60 + CEPILLO                                                                   ', 0, '2250', '', 1),
(258, 13, '258', 'CREMA DE LECHE X 90 GR                                                                              ', 0, '1745', '', 1),
(259, 14, '259', 'CREMA HUMEC.ARRURRU X 1075 ML                                                                       ', 0, '24000', '', 1),
(260, 14, '260', 'CREMA HUMEC.ARRURRU X 120 ML                                                                        ', 0, '5850', '', 1),
(261, 14, '261', 'CREMA JOHNSON\'S BABY X 200 ML                                                                       ', 0, '10289,9448', '', 1),
(262, 14, '262', 'CREMA JOHNSON\'S BABY X 400 ML                                                                       ', 0, '16000', '', 1),
(263, 14, '263', 'CREMA No 4  X 20GR                                                                                  ', 0, '6053,0371', '', 1),
(264, 14, '264', 'CREMA No 4 MEDICADA X 30 GR                                                                         ', 0, '12450', '', 1),
(265, 14, '265', 'CREMA PEINAR KONZIL X 18 SOB                                                                        ', 0, '7599,99', '', 1),
(266, 14, '266', 'CREMA PEINAR SAVITAL X 275 ML                                                                       ', 0, '10000', '', 1),
(267, 14, '267', 'CREMA PEINAR SEDAL X 300 ML                                                                         ', 0, '8650', '', 1),
(268, 14, '268', 'CREMA PONDS  DISPL X 10 UN                                                                          ', 0, '13200', '', 1),
(269, 14, '269', 'CREMA SAVITAL X 20 SOB                                                                              ', 0, '12400', '', 1),
(270, 17, '270', 'CREOLINA X 125 ML                                                                                   ', 0, '2200', '', 1),
(271, 17, '271', 'CREOLINA X 250 ML                                                                                   ', 0, '3500', '', 1),
(272, 17, '272', 'CREOLINA X 480 ML                                                                                   ', 0, '6450,08', '', 1),
(273, 18, '273', 'CUADERNO COSIDO GRANDE X 100 H.                                                                     ', 0, '1550', '', 1),
(274, 13, '274', 'CUAJO MARSCHALL LIQUIDO X 500 CC                                                                    ', 0, '17500', '', 1),
(275, 13, '275', 'CUAJO MARSCHALLX 50 PAST                                                                            ', 0, '25800', '', 1),
(276, 3, '276', 'CURITAS CUREBAND X 100 UND                                                                          ', 0, '6300', '', 1),
(277, 14, '277', 'DEPILADORES MERHEJE X 12 U                                                                          ', 0, '5800', '', 1),
(278, 14, '278', 'DERMACOL X 10 G                                                                                     ', 0, '8100', '', 1),
(279, 14, '279', 'DES. AXE AEROSOL X 160 ML                                                                           ', 0, '11700', '', 1),
(280, 14, '280', 'DES. BALANCE COJIN X 18 U                                                                           ', 0, '9800', '', 1),
(281, 14, '281', 'DES. DOVE AEROSOL X 150 G                                                                           ', 0, '11800', '', 1),
(282, 14, '282', 'DES. DOVE MINI ROLLON                                                                               ', 0, '2500', '', 1),
(283, 14, '283', 'DES. DOVE SACHET X 10 UNI                                                                           ', 0, '5842,72', '', 1),
(284, 14, '284', 'DES. GILLETE GEL X 82 GR                                                                            ', 0, '11299,9968', '', 1),
(285, 14, '285', 'DES. GILLETTE BARRA GEL X 113 G                                                                     ', 0, '13500', '', 1),
(286, 14, '286', 'DES. GILLETTE GEL MINI X 45 G                                                                       ', 0, '7800', '', 1),
(287, 14, '287', 'DES. LADY BARRA X 50 GR                                                                             ', 0, '10400,01', '', 1),
(288, 14, '288', 'DES. LADY MINI PRACTITUBO CLINICAL                                                                  ', 0, '2359,275', '', 1),
(289, 14, '289', 'DES. LADY MINI PRACTITUBO X 30 ML                                                                   ', 0, '2315', '', 1),
(290, 14, '290', 'DES. LADY SPEED BARRA GEL X 65 GR                                                                   ', 0, '12950', '', 1),
(291, 14, '291', 'DES. LADY SPEED COJIN X 18 UN                                                                       ', 0, '11199,99', '', 1),
(292, 14, '292', 'DES. LADY SPEED STICK AEROSOL                                                                       ', 0, '12700', '', 1),
(293, 14, '293', 'DES. MENEM SPEED AEROSOL X UN                                                                       ', 0, '11900', '', 1),
(294, 14, '294', 'DES. MENEN BARRA SECA X UN                                                                          ', 0, '10800', '', 1),
(295, 14, '295', 'DES. MENEN MINI PRACTITUBO CLINICAL                                                                 ', 0, '2352,8875', '', 1),
(296, 14, '296', 'DES. MENEN PRACTITUBO X 30 GR                                                                       ', 0, '2335,542', '', 1),
(297, 14, '297', 'DES. MENEN SPEED STICK X 18 UN                                                                      ', 0, '11199,99', '', 1),
(298, 14, '298', 'DES. OLD SPICE BARRA x 50G                                                                          ', 0, '11500,01', '', 1),
(299, 14, '299', 'DES. REXONA AEROSOL                                                                                 ', 0, '11500,01', '', 1),
(300, 14, '300', 'DES. REXONA BARRA CLINICAL + MINI AEROSOL                                                           ', 0, '18200', '', 1),
(301, 14, '301', 'DES. REXONA BARRA X 50 G                                                                            ', 0, '11049,99', '', 1),
(302, 14, '302', 'DES. REXONA CLINICAL AEROSOL                                                                        ', 0, '12000', '', 1),
(303, 14, '303', 'DES. REXONA CLINICAL BARRA X 48 G                                                                   ', 0, '15800', '', 1),
(304, 14, '304', 'DES. REXONA CLINICAL COLAPSIBLE                                                                     ', 0, '2357,72', '', 1),
(305, 14, '305', 'DES. REXONA MINI ROLLON X 30GR                                                                      ', 0, '2300', '', 1),
(306, 14, '306', 'DES. YODORA MINI ROLLON X UND                                                                       ', 0, '2450', '', 1),
(307, 14, '307', 'DES.OLD SPICE AEROSOL                                                                               ', 0, '14499,8932', '', 1),
(308, 21, '308', 'DESENG. MR MUSCULO DOYPACK X 2 UN                                                                   ', 0, '1764,71', '', 1),
(309, 14, '309', 'DESODORANTE DOVE BARRA X 50 GR                                                                      ', 0, '12000', '', 1),
(310, 15, '310', 'DETERGENTE + REY X 1000 G                                                                           ', 0, '4900,245', '', 1),
(311, 15, '311', 'DETERGENTE + REY X 125 G                                                                            ', 0, '790', '', 1),
(312, 15, '312', 'DETERGENTE + REY X 250 G                                                                            ', 0, '1580', '', 1),
(313, 15, '313', 'DETERGENTE + REY X 500 G                                                                            ', 0, '2455', '', 1),
(314, 16, '314', 'DICLOFENACO MK X 100 MG X 20 CAP                                                                    ', 0, '9500', '', 1),
(315, 16, '315', 'DICLOFENACO RETARD A. G  X 20 UN                                                                    ', 0, '6950', '', 1),
(316, 16, '316', 'DOLEX ADULTO X 100 UN                                                                               ', 0, '49000', '', 1),
(317, 16, '317', 'DOLEX BEBES JARABE X ML                                                                             ', 0, '9000', '', 1),
(318, 16, '318', 'DOLEX FORTE X 48 TAB                                                                                ', 0, '50000', '', 1),
(319, 16, '319', 'DOLEX GRIPA X 100 TAB                                                                               ', 0, '76000', '', 1),
(320, 16, '320', 'DOLEX JARABE 2+ NI?OS                                                                               ', 0, '10800', '', 1),
(321, 16, '321', 'DOLEX NI?OS 7+ X 120 ML                                                                             ', 0, '14500', '', 1),
(322, 16, '322', 'DRISTAN T. ACCION X 48 TAB                                                                          ', 0, '32500', '', 1),
(323, 19, '323', 'DULC.COFFE DELIGHT BLANDO X 100                                                                     ', 0, '6950', '', 1),
(324, 19, '324', 'DULCE ANISADAS  X100 UN                                                                             ', 0, '4225', '', 1),
(325, 19, '325', 'DULCE BIG BEN X 100 UN                                                                              ', 0, '8110', '', 1),
(326, 19, '326', 'DULCE COFFE DELIGHT X 100 DURO                                                                      ', 0, '6256,6', '', 1),
(327, 19, '327', 'DULCE FRUTICAS X 100 UN                                                                             ', 0, '5355', '', 1),
(328, 19, '328', 'DULCE HALLOWEEN X 100 UN                                                                            ', 0, '3200,01', '', 1),
(329, 19, '329', 'DULCE MORITA COLOMBINA X 100 UN                                                                     ', 0, '4225', '', 1),
(330, 19, '330', 'DULCE TAMARINDO X 100 UN                                                                            ', 0, '4720,2532', '', 1),
(331, 16, '331', 'DURAFEX ESPALDA FORTE X 6 CAP                                                                       ', 0, '11850', '', 1),
(332, 13, '332', 'EMULSION DE SCOTT X 180 ML                                                                          ', 0, '9300', '', 1),
(333, 13, '333', 'ENCENDEDOR BIC MINI X 25 UN                                                                         ', 0, '28500', '', 1),
(334, 18, '334', 'ESCARCHA TUBO X UND                                                                                 ', 0, '200', '', 1),
(335, 15, '335', 'ESCOBA CUBANA X UNIDAD-----------                                                                   ', 0, '4300,01', '', 1),
(336, 15, '336', 'ESCOBA LAVA CARRO---------------------------                                                        ', 0, '7599,99', '', 1),
(337, 15, '337', 'ESCOBA SUPER -----------------------------                                                          ', 0, '3500', '', 1),
(338, 15, '338', 'ESCOBA SUPER DALIA LATINA ---------------                                                           ', 0, '3999,99', '', 1),
(339, 15, '339', 'ESCOBA SUPER DANA -------------------------                                                         ', 0, '5300', '', 1),
(340, 15, '340', 'ESCOBA SUPER DURA ----------------------                                                            ', 0, '3300', '', 1),
(341, 15, '341', 'ESCOBA SUPREMA COLOMBIA------------------                                                           ', 0, '4900', '', 1),
(342, 15, '342', 'ESCOBA SUPREMA PLUS WM-------------------                                                           ', 0, '4800', '', 1),
(343, 15, '343', 'ESCOBA SUPREMA TRICOLOR----------                                                                   ', 0, '4700', '', 1),
(344, 15, '344', 'ESCOBA SUPREMA WM COLOR---------------                                                              ', 0, '4200', '', 1),
(345, 14, '345', 'ESMALTE VOGUE X UNID                                                                                ', 0, '2575,01', '', 1),
(346, 14, '346', 'ESPARADRAPO CUREBAND 1\' X UND                                                                       ', 0, '3100', '', 1),
(347, 14, '347', 'ESPARADRAPO CUREBAND 1/2 X 1                                                                        ', 0, '2205,6922', '', 1),
(348, 14, '348', 'ESPEJO DE BOLSILLO X 12 U                                                                           ', 0, '6499,99', '', 1),
(349, 21, '349', 'ESPONJA ABRASIVA 36 UN                                                                              ', 0, '7200', '', 1),
(350, 21, '350', 'ESPONJA CLOVER X 14 UN                                                                              ', 0, '7500', '', 1),
(351, 21, '351', 'ESPONJA COLORES TEFLON LUBA X 12 UN                                                                 ', 0, '6500', '', 1),
(352, 21, '352', 'ESPONJA DOBLE USO X 24 U                                                                            ', 0, '6200', '', 1),
(353, 21, '353', 'ESPONJA DUREX GOL SILVER X 12 UN                                                                    ', 0, '12650', '', 1),
(354, 21, '354', 'ESPONJA JAMES X 12 UN                                                                               ', 0, '7800', '', 1),
(355, 21, '355', 'ESPONJA LAVAMAX X 12 U                                                                              ', 0, '10000', '', 1),
(356, 21, '356', 'ESPONJA MATRIX X 12 UN                                                                              ', 0, '7500', '', 1),
(357, 21, '357', 'ESPONJA ORO PLATA LUBA X 12 UN                                                                      ', 0, '6500', '', 1),
(358, 21, '358', 'ESPONJA ORO PLATA MULTIMIX X 12 UN                                                                  ', 0, '8000', '', 1);
INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `descripcion`, `imagen`, `condicion`) VALUES
(359, 21, '359', 'ESPONJA POLLY JABON X 12 UN                                                                         ', 0, '10200', '', 1),
(360, 21, '360', 'ESPONJILLA BON BRIL X 16                                                                            ', 0, '3450', '', 1),
(361, 21, '361', 'ESPONJILLA DERSA X 36 UN.                                                                           ', 0, '6000', '', 1),
(362, 13, '362', 'FIDEO COMARRICO X 190 GRS                                                                           ', 0, '1075', '', 1),
(363, 13, '363', 'FIDEO COMARRICO X 400 G                                                                             ', 0, '1369,22', '', 1),
(364, 13, '364', 'FIDEO DORIA X 250 G                                                                                 ', 0, '1720,9924', '', 1),
(365, 13, '365', 'FOSFOROS EL SOL GRANDE X 2U                                                                         ', 0, '1290', '', 1),
(366, 13, '366', 'FOSFOROS EL SOL X 20 U                                                                              ', 0, '2350', '', 1),
(367, 1, '367', 'FRIJOL BOLA ROJA X 460 G                                                                            ', 0, '4017,1712', '', 1),
(368, 1, '368', 'FRIJOL CARAOTA X 460 G                                                                              ', 0, '2900', '', 1),
(369, 19, '369', 'FRUNA ORIGINAL X 32 UN                                                                              ', 0, '6004,6659', '', 1),
(370, 13, '370', 'FRUTI?O X 20 SOBRES                                                                                 ', 0, '9150,62', '', 1),
(371, 13, '371', 'GALLETA CLUB SOCIAL X 9 PQTE                                                                        ', 0, '3969,99', '', 1),
(372, 13, '372', 'GALLETA COCOSETTE X 24 UN                                                                           ', 0, '25550', '', 1),
(373, 13, '373', 'GALLETA COCOSSETTE X 8 UN                                                                           ', 0, '8228,684', '', 1),
(374, 13, '374', 'GALLETA DUCALES MINI TACO X 120 G                                                                   ', 0, '1775', '', 1),
(375, 13, '375', 'GALLETA DUCALES X 2 TACOS                                                                           ', 0, '5059,0034', '', 1),
(376, 13, '376', 'GALLETA FESTIVAL 4 X 12 U                                                                           ', 0, '6125', '', 1),
(377, 13, '377', 'GALLETA FESTIVAL 6 X 12 U                                                                           ', 0, '8164,99', '', 1),
(378, 13, '378', 'GALLETA LECHE MUU X 18 UN                                                                           ', 0, '2458,8741', '', 1),
(379, 13, '379', 'GALLETA MAX COCO X 10 UN                                                                            ', 0, '7870,01', '', 1),
(380, 13, '380', 'GALLETA MILO ANILLOS X 12 U                                                                         ', 0, '5373,85', '', 1),
(381, 13, '381', 'GALLETA MUU MANTEQUILLA X 18 UN                                                                     ', 0, '4335', '', 1),
(382, 13, '382', 'GALLETA OREO X 12 PQT                                                                               ', 0, '6900', '', 1),
(383, 13, '383', 'GALLETA SALTIN 5 TACOS NOEL                                                                         ', 0, '4400', '', 1),
(384, 13, '384', 'GALLETA SALTINA X TACO                                                                              ', 0, '950', '', 1),
(385, 13, '385', 'GALLETA TOSH X 9 UN                                                                                 ', 0, '5330,5669', '', 1),
(386, 13, '386', 'GALLETA WAFER CAPRI VAINILLA X 24 U                                                                 ', 0, '3415', '', 1),
(387, 13, '387', 'GALLETAS OREO X 6 UN                                                                                ', 0, '4882', '', 1),
(388, 14, '388', 'GANCHO INVISIBLE X 100 U                                                                            ', 0, '1000', '', 1),
(389, 1, '389', 'GARBANZO X 460 G                                                                                    ', 0, '3100,9216', '', 1),
(390, 3, '390', 'GASA ASEPTICA 1X1 X UN                                                                              ', 0, '1337,581', '', 1),
(391, 16, '391', 'GASTROFAST ADVANCE X 10 UN                                                                          ', 0, '20400', '', 1),
(392, 16, '392', 'GAVISCON DOBLE ACCION X 12 SACHET                                                                   ', 0, '22500', '', 1),
(393, 14, '393', 'GEL EGO COJIN X 15 U                                                                                ', 0, '10800', '', 1),
(394, 14, '394', 'GEL EGO POTE X 110 ML                                                                               ', 0, '2000', '', 1),
(395, 13, '395', 'GELATINA FRUTI?O X 4 UN                                                                             ', 0, '3932,71', '', 1),
(396, 15, '396', 'GLADE ACEITE + UNID ELECTRICA                                                                       ', 0, '12500', '', 1),
(397, 15, '397', 'GLADE ACEITE REPUESTO AUTO ESPORT                                                                   ', 0, '12500', '', 1),
(398, 15, '398', 'GLADE ACEITE REPUESTO X 1                                                                           ', 0, '9300', '', 1),
(399, 15, '399', 'GLADE ACEITE REPUESTO X 2                                                                           ', 0, '15200', '', 1),
(400, 15, '400', 'GLADE ACEITE REPUESTO X 3 UN                                                                        ', 0, '16900', '', 1),
(401, 15, '401', 'GLADE ACEITE REPUESTO X 4 UN                                                                        ', 0, '20100', '', 1),
(402, 15, '402', 'GLADE AEROSOL X 400 ML                                                                              ', 0, '8600', '', 1),
(403, 15, '403', 'GLADE AEROSOL X 400 ML  X 3 UN                                                                      ', 0, '26400', '', 1),
(404, 15, '404', 'GLADE AEROSOL X 400 ML + CONO                                                                       ', 0, '11400', '', 1),
(405, 15, '405', 'GLADE GEL POTE X 70 G                                                                               ', 0, '3136,5006', '', 1),
(406, 19, '406', 'GOMA TRULULU AROS X 100 U                                                                           ', 0, '8316,97', '', 1),
(407, 15, '407', 'GUANTE AMARILLO DOMESTICO                                                                           ', 0, '2450', '', 1),
(408, 15, '408', 'GUANTE NEGRO BICOLOR CALIBRE 25                                                                     ', 0, '2900,0222', '', 1),
(409, 19, '409', 'HALLS BARRA X 12 UN                                                                                 ', 0, '10247,99', '', 1),
(410, 19, '410', 'HALLS PEPA X 100 U                                                                                  ', 0, '7828', '', 1),
(411, 13, '411', 'HARINA PAN BLANCA X 1000 G                                                                          ', 0, '3926,4564', '', 1),
(412, 13, '412', 'HARINA PAN BLANCA X 500 G                                                                           ', 0, '1988,7947', '', 1),
(413, 13, '413', 'HARINA PROMASA X 500 G                                                                              ', 0, '1899', '', 1),
(414, 13, '414', 'HARINA TRIGO AMERICANA X 454G                                                                       ', 0, '1145', '', 1),
(415, 18, '415', 'HILO COBRA X 12 UND                                                                                 ', 0, '5000', '', 1),
(416, 18, '416', 'HILO COBRA X 72 UND                                                                                 ', 0, '22800', '', 1),
(417, 18, '417', 'HILO TUBINO CHINO X 12 UND                                                                          ', 0, '6000', '', 1),
(418, 18, '418', 'HOJA DE EXAMEN X 100 UND                                                                            ', 0, '5800', '', 1),
(419, 14, '419', 'HOJILLA DORCO X 12 UND                                                                              ', 0, '11199,99', '', 1),
(420, 16, '420', 'IBUFLASH MIGRA?A X 30 CAP                                                                           ', 0, '41000', '', 1),
(421, 16, '421', 'IBUFLASH MIGRA?A X 8 CAP                                                                            ', 0, '12050', '', 1),
(422, 16, '422', 'IBUPROFENO GENF.800MG X 50TAB                                                                       ', 0, '11000', '', 1),
(423, 16, '423', 'IBUPROFENO MK GEL X 30UN                                                                            ', 0, '21800', '', 1),
(424, 15, '424', 'INSEC. BAYGON ESPIRALES X 12 UND                                                                    ', 0, '2750', '', 1),
(425, 15, '425', 'INSEC. BAYGON LIQUIDO X 230 ML                                                                      ', 0, '4850', '', 1),
(426, 15, '426', 'INSEC. BAYGON LIQUIDO X 475 ML                                                                      ', 0, '9173,88', '', 1),
(427, 15, '427', 'INSEC. KATORI X 10 ESPIRAL                                                                          ', 0, '2600', '', 1),
(428, 15, '428', 'INSEC. KATORI X 50 ESPIRAL                                                                          ', 0, '12970', '', 1),
(429, 15, '429', 'INSEC. SAPOLIO X 230 ML                                                                             ', 0, '5995', '', 1),
(430, 15, '430', 'INSEC.RAID VOLAD. X 400 +MAX X 400 ML                                                               ', 0, '25600', '', 1),
(431, 15, '431', 'INSECT, KATORI AEROSOL X 235 ML                                                                     ', 0, '5900', '', 1),
(432, 15, '432', 'INSECT. BAYGON ESPIRALES X 48 UN                                                                    ', 0, '9100', '', 1),
(433, 15, '433', 'IRIS TINTE X 12 UND                                                                                 ', 0, '24800', '', 1),
(434, 15, '434', 'JABON  FAB BARRA X 300 GR                                                                           ', 0, '1609,3', '', 1),
(435, 15, '435', 'JABON ARIEL P. REVITACOLOR X 1.5 K                                                                  ', 0, '7920', '', 1),
(436, 14, '436', 'JABON B CAREY X 125 GR                                                                              ', 0, '1450', '', 1),
(437, 14, '437', 'JABON B DORADO X 125 GR                                                                             ', 0, '1650', '', 1),
(438, 14, '438', 'JABON B HOTEL SUITE X 24 UN                                                                         ', 0, '2500', '', 1),
(439, 14, '439', 'JABON B JHONSON ADULTO X 110 GR                                                                     ', 0, '1850', '', 1),
(440, 14, '440', 'JABON B JHONSON BABY X 110 GR                                                                       ', 0, '2000', '', 1),
(441, 14, '441', 'JABON B LUX X 125 GR                                                                                ', 0, '1491,9164', '', 1),
(442, 14, '442', 'JABON B NEKO X 100 GR                                                                               ', 0, '3124,3299', '', 1),
(443, 14, '443', 'JABON B PALMOLIVE X 120GR                                                                           ', 0, '1617', '', 1),
(444, 14, '444', 'JABON B PROTEX X 120 GR                                                                             ', 0, '2028,224', '', 1),
(445, 14, '445', 'JABON B REXONA X 120 GR                                                                             ', 0, '1725', '', 1),
(446, 14, '446', 'JABON B. DOVE X 90 G                                                                                ', 0, '1803,028', '', 1),
(447, 14, '447', 'JABON B. LAk x 125 X UN                                                                             ', 0, '980', '', 1),
(448, 14, '448', 'JABON B. LE FRAGANCE X 100 G                                                                        ', 0, '1068', '', 1),
(449, 15, '449', 'JABON B. MULTIUSOS MI DIA X 300G                                                                    ', 0, '1275', '', 1),
(450, 15, '450', 'JABON B. REY X UN                                                                                   ', 0, '1530,698', '', 1),
(451, 15, '451', 'JABON BARRA DERSA X 250 GR                                                                          ', 0, '1227', '', 1),
(452, 15, '452', 'JABON BARRA PURO X 180 GR                                                                           ', 0, '712,32', '', 1),
(453, 14, '453', 'JABON INTIMO INTIBON TARRO X 120G                                                                   ', 0, '4700', '', 1),
(454, 14, '454', 'JABON INTIMO INTIBON X 12 SOB                                                                       ', 0, '4300', '', 1),
(455, 14, '455', 'JABON INTIMO INTIBON X 210 G                                                                        ', 0, '7800', '', 1),
(456, 14, '456', 'JABON INTIMO NOSOTRAS X 130 ML                                                                      ', 0, '7200', '', 1),
(457, 21, '457', 'JABON L AXION DISCO X 130G                                                                          ', 0, '868', '', 1),
(458, 21, '458', 'JABON L AXION TASA X 150 GR                                                                         ', 0, '1027,4', '', 1),
(459, 21, '459', 'JABON L AXION X 235 G                                                                               ', 0, '1896,037', '', 1),
(460, 21, '460', 'JABON L AXION X 450 GR                                                                              ', 0, '4399,967', '', 1),
(461, 21, '461', 'JABON L SUPREMO X 300 G                                                                             ', 0, '1500', '', 1),
(462, 21, '462', 'JABON L. SALVO  X 750 ML                                                                            ', 0, '9916,5523', '', 1),
(463, 21, '463', 'JABON L. SALVO X  500 GR                                                                            ', 0, '6741,6591', '', 1),
(464, 21, '464', 'JABON LAV. AXION X 850 ML                                                                           ', 0, '8355', '', 1),
(465, 21, '465', 'JABON LAVALOZA MI DIA X 500 G                                                                       ', 0, '1900', '', 1),
(466, 21, '466', 'JABON LAVALOZA SALVO X 215 ML                                                                       ', 0, '2423,3076', '', 1),
(467, 21, '467', 'JABON LAVALOZA SALVO X 300 ML                                                                       ', 0, '4090', '', 1),
(468, 21, '468', 'JABON LAVALOZA SUPREMO X 150 GR                                                                     ', 0, '750', '', 1),
(469, 21, '469', 'JABON LIQ AXION X 180 ML                                                                            ', 0, '1310', '', 1),
(470, 21, '470', 'JABON LIQ. AXION X 360 ML                                                                           ', 0, '2856,6', '', 1),
(471, 14, '471', 'JABON LIQ. DESEO TARRO X 500 ML                                                                     ', 0, '6250', '', 1),
(472, 14, '472', 'JABON LIQ. DESEO X 500 ML DOYPACK                                                                   ', 0, '4468,2', '', 1),
(473, 15, '473', 'JABON LIQUIDO ARIEL X 1200 ML                                                                       ', 0, '9900', '', 1),
(474, 15, '474', 'JABON LIQUIDO ARIEL X 400 ML                                                                        ', 0, '3850', '', 1),
(475, 14, '475', 'JABON LIQUIDO MANOS MI DIA X500 ML                                                                  ', 0, '2900', '', 1),
(476, 15, '476', 'JABON P ARIEL X 125 GR                                                                              ', 0, '1063', '', 1),
(477, 15, '477', 'JABON P ARIEL X 225 GR                                                                              ', 0, '1843,1543', '', 1),
(478, 15, '478', 'JABON P ARIEL X 4 KILOS                                                                             ', 0, '22200', '', 1),
(479, 15, '479', 'JABON P ARIEL X 450 GR                                                                              ', 0, '2835,9723', '', 1),
(480, 15, '480', 'JABON P DERSA X 1000 G                                                                              ', 0, '4900,245', '', 1),
(481, 15, '481', 'JABON P DERSA X 125 GRS                                                                             ', 0, '790', '', 1),
(482, 15, '482', 'JABON P DERSA X 250 G                                                                               ', 0, '1579', '', 1),
(483, 15, '483', 'JABON P DERSA X 4000 GR                                                                             ', 0, '18570', '', 1),
(484, 15, '484', 'JABON P DERSA X 500 G                                                                               ', 0, '2455', '', 1),
(485, 15, '485', 'JABON P RINDEX X 1000GR                                                                             ', 0, '4500', '', 1),
(486, 15, '486', 'JABON P RINDEX X 4 KILOS                                                                            ', 0, '16000', '', 1),
(487, 15, '487', 'JABON P RINDEX X 450 GR                                                                             ', 0, '2313,8897', '', 1),
(488, 15, '488', 'JABON P. AK1 X 3000 G                                                                               ', 0, '17100', '', 1),
(489, 15, '489', 'JABON P. ARIEL X 1000 G                                                                             ', 0, '6401,45', '', 1),
(490, 15, '490', 'JABON P. DERSA X 2000 G                                                                             ', 0, '9400', '', 1),
(491, 15, '491', 'JABON P. FAB X 100 GR                                                                               ', 0, '723,8', '', 1),
(492, 15, '492', 'JABON P. FAB X 225 G                                                                                ', 0, '1448,7', '', 1),
(493, 15, '493', 'JABON P. FAB X 4 KL                                                                                 ', 0, '19500', '', 1),
(494, 15, '494', 'JABON P. FAB X 450 G                                                                                ', 0, '2607', '', 1),
(495, 15, '495', 'JABON P. FAB X 800 GR                                                                               ', 0, '4561,7', '', 1),
(496, 15, '496', 'JABON P. RINDEX 10 MULTIB.X 1000 G                                                                  ', 0, '4260', '', 1),
(497, 15, '497', 'JABON POLVO 3D X 1000 G                                                                             ', 0, '4875,2', '', 1),
(498, 15, '498', 'JABON POLVO 3D X 125 G                                                                              ', 0, '716,1', '', 1),
(499, 15, '499', 'JABON POLVO 3D X 250 G                                                                              ', 0, '1435', '', 1),
(500, 15, '500', 'JABON POLVO 3D X 3000 K                                                                             ', 0, '14030,5', '', 1),
(501, 15, '501', 'JABON POLVO 3D X 500 GR                                                                             ', 0, '2365', '', 1),
(502, 15, '502', 'JABON R MAXIMO X 450 GRS                                                                            ', 0, '1860', '', 1),
(503, 15, '503', 'JABON R SUPER RIEL X 400 GR                                                                         ', 0, '2119,95', '', 1),
(504, 15, '504', 'JABON R VEL ROSITA X 220 GR                                                                         ', 0, '1560,526', '', 1),
(505, 3, '505', 'JERINGA X 10 ML                                                                                     ', 0, '240', '', 1),
(506, 3, '506', 'JERINGA X 3 ML                                                                                      ', 0, '153,6', '', 1),
(507, 3, '507', 'JERINGA X 5 ML                                                                                      ', 0, '175', '', 1),
(508, 13, '508', 'KOLA GRAN. MK DOY PACK X 400G                                                                       ', 0, '10900,1662', '', 1),
(509, 13, '509', 'KOLA GRANULADA JGB X 135 G                                                                          ', 0, '5600', '', 1),
(510, 13, '510', 'KOLA GRANULADA JGB X 330 G                                                                          ', 0, '13500', '', 1),
(511, 13, '511', 'KOLA GRANULADA JGB X 6 SOB                                                                          ', 0, '5099,99', '', 1),
(512, 18, '512', 'LAP. BIC CRISTAL X 12 U                                                                             ', 0, '5500', '', 1),
(513, 18, '513', 'LAP. KILOMETRICO PLUS COLORES X 12 U                                                                ', 0, '6000', '', 1),
(514, 18, '514', 'LAP. KILOMETRICO RECT 100 X 12 U                                                                    ', 0, '7800', '', 1),
(515, 18, '515', 'LAPICERO OFFI- ESCO X 12UN                                                                          ', 0, '6000', '', 1),
(516, 18, '516', 'LAPIZ FABER CASTELL X 12 U                                                                          ', 0, '6500', '', 1),
(517, 18, '517', 'LAPIZ KORES NEGRO X 12 UNID                                                                         ', 0, '5000', '', 1),
(518, 18, '518', 'LAPIZ KORES ROJO X UNID                                                                             ', 0, '7000', '', 1),
(519, 18, '519', 'LAPIZ OFFI - ESCO ROJO X 12 UN                                                                      ', 0, '5200', '', 1),
(520, 18, '520', 'LAPIZ OFFI-ESCO X 12 UN                                                                             ', 0, '4000', '', 1),
(521, 14, '521', 'LAPIZ OJOS X 12U                                                                                    ', 0, '10500', '', 1),
(522, 18, '522', 'LAPIZ PAPER MATE AZUL X 12 UN                                                                       ', 0, '4500', '', 1),
(523, 13, '523', 'LECHE KLIM RISTRA PAG  X 16 UN                                                                      ', 0, '14500', '', 1),
(524, 3, '524', 'LECHE MAGNESIA  X 120 ML                                                                            ', 0, '4900', '', 1),
(525, 13, '525', 'LECHE RODEO NUTRI-RINDE 810 GR                                                                      ', 0, '20000', '', 1),
(526, 13, '526', 'LECHE RODEO NUTRI-RINDE X 108G                                                                      ', 0, '2883,4596', '', 1),
(527, 13, '527', 'LECHE RODEO NUTRI-RINDE X405GR                                                                      ', 0, '10300', '', 1),
(528, 19, '528', 'LECHERITA DOY PACK X 90 GR                                                                          ', 0, '1873,8', '', 1),
(529, 19, '529', 'LECHERITA NESTLE RISTRA X 26 UND                                                                    ', 0, '13700', '', 1),
(530, 1, '530', 'LENTEJA EXTRA X 460 GR                                                                              ', 0, '2940,1792', '', 1),
(531, 18, '531', 'LIBRETA MINI NOTAS X UNID                                                                           ', 0, '950', '', 1),
(532, 14, '532', 'LIMAS U?AS X 12 U                                                                                   ', 0, '1500', '', 1),
(533, 15, '533', 'LIMP. AZUL KLEAN X 450 ML                                                                           ', 0, '2295', '', 1),
(534, 15, '534', 'LIMP. FABULOSO X 200 ML                                                                             ', 0, '952', '', 1),
(535, 15, '535', 'LIMP. FABULOSO X 500 ML                                                                             ', 0, '2840', '', 1),
(536, 15, '536', 'LIMP. MULTI. BON BRIL X 500 CC                                                                      ', 0, '2834,9553', '', 1),
(537, 15, '537', 'LIMP. SANPIC X 150 ML                                                                               ', 0, '750', '', 1),
(538, 15, '538', 'LIMPIAPISOS MI DIA X 1000 ML                                                                        ', 0, '1800', '', 1),
(539, 15, '539', 'LIMPIAVIDRIOS BUFALO X 500ML                                                                        ', 0, '2900', '', 1),
(540, 15, '540', 'LIMPIAVIDRIOS EFFIKAZZ X 500 ML                                                                     ', 0, '2050', '', 1),
(541, 17, '541', 'LINTERNA METALICA 1 LED                                                                             ', 0, '3999,99', '', 1),
(542, 17, '542', 'LINTERNA RECARG.ASTRO 769                                                                           ', 0, '7100', '', 1),
(543, 17, '543', 'LINTERNA RECARGABLE 761                                                                             ', 0, '6499,99', '', 1),
(544, 17, '544', 'LINTERNA RECARGABLE CON PANEL SOLAR                                                                 ', 0, '10400,01', '', 1),
(545, 14, '545', 'LISTERINE X 180 ML                                                                                  ', 0, '6780,0026', '', 1),
(546, 14, '546', 'LISTERINE X 500 ML                                                                                  ', 0, '12900', '', 1),
(547, 3, '547', 'LOCION MENTICOL X 130 ML                                                                            ', 0, '6900', '', 1),
(548, 16, '548', 'LOMOTIL X 4 TAB                                                                                     ', 0, '6350', '', 1),
(549, 14, '549', 'LUBRIDERM HUMEC. PIEL X 200ML                                                                       ', 0, '14000', '', 1),
(550, 14, '550', 'LUBRIDERM RISTRA X 6 UN                                                                             ', 0, '6000', '', 1),
(551, 14, '551', 'LUBRIDERM UV-15 X 120 ML                                                                            ', 0, '10500', '', 1),
(552, 16, '552', 'LUMBAL FORTE X 36 TAB                                                                               ', 0, '43000', '', 1),
(553, 16, '553', 'LUMBAL X 24 TABL                                                                                    ', 0, '19800', '', 1),
(554, 13, '554', 'MACARRON COMARRICO X 190 GRS                                                                        ', 0, '1075', '', 1),
(555, 13, '555', 'MAGGI CALDO GALLINA TARRO X 48 UN                                                                   ', 0, '16400', '', 1),
(556, 13, '556', 'MAGGI CALDO GALLINA X 12 UN                                                                         ', 0, '4264,579', '', 1),
(557, 13, '557', 'MAGGI CALDO GALLINA X 24 UN                                                                         ', 0, '8175', '', 1),
(558, 13, '558', 'MAGGI CALDO GALLINA X 266 UN                                                                        ', 0, '80500', '', 1),
(559, 13, '559', 'MAGGI CALDO X 8 CUBOS                                                                               ', 0, '2927,69', '', 1),
(560, 13, '560', 'MAGGI CANALETA X 54 CUBOS                                                                           ', 0, '16700', '', 1),
(561, 13, '561', 'MAGGI DESMENUZADO X 36 UN                                                                           ', 0, '8000', '', 1),
(562, 1, '562', 'MAIZ PIRA X 460 GRS                                                                                 ', 0, '2209,602', '', 1),
(563, 13, '563', 'MAIZENA FECULA X 380 G                                                                              ', 0, '7750,01', '', 1),
(564, 13, '564', 'MAIZENA FECULA X 90 GR                                                                              ', 0, '1785', '', 1),
(565, 13, '565', 'MAIZENA RISTRA X 18 UN                                                                              ', 0, '18450', '', 1),
(566, 1, '566', 'MANI ARANDANOS X 12 UNI                                                                             ', 0, '21477,55', '', 1),
(567, 1, '567', 'MANI LA ESPECIAL DISPL X 12 UNI                                                                     ', 0, '16110,4071', '', 1),
(568, 14, '568', 'MANTECA CACAO X 12 UND                                                                              ', 0, '2500', '', 1),
(569, 14, '569', 'MAQUINA AFEITAR INFINITA 3H. DAMA X UN                                                              ', 0, '2400', '', 1),
(570, 14, '570', 'MAQUINA AFEITAR INFINITA 5H.HOMBRE                                                                  ', 0, '3100', '', 1),
(571, 14, '571', 'MAQUINA AFEITAR INFINITA BLISTER + REP                                                              ', 0, '4300,01', '', 1),
(572, 14, '572', 'MAQUINA AFEITAR INFINITA BLISTER X 3 UN                                                             ', 0, '4200', '', 1),
(573, 18, '573', 'MARCADOR BORRABLE MI TRENCITO X 12 U                                                                ', 0, '14000', '', 1),
(574, 18, '574', 'MARCADOR BORRABLE PELIKAN X 10 UN                                                                   ', 0, '16000', '', 1),
(575, 18, '575', 'MARCADOR PERMANENTE PELIKAN X 10 UN                                                                 ', 0, '11500,01', '', 1),
(576, 16, '576', 'MAREOL X 72 TAB                                                                                     ', 0, '31500', '', 1),
(577, 13, '577', 'MAYONESA FRUCO X 12 SOB                                                                             ', 0, '10300', '', 1),
(578, 16, '578', 'MEBUCAINA X 10 UN                                                                                   ', 0, '10200', '', 1),
(579, 15, '579', 'MECHA TRAPERO REF 1000                                                                              ', 0, '4500', '', 1),
(580, 15, '580', 'MECHA TRAPERO REF 800                                                                               ', 0, '3500', '', 1),
(581, 21, '581', 'MECHERA COLIBRI X 50 UN.                                                                            ', 0, '21999,99', '', 1),
(582, 21, '582', 'MECHERA CON LINTERNA X 50 UN.                                                                       ', 0, '33000', '', 1),
(583, 21, '583', 'MECHERA POKER X 25 UN                                                                               ', 0, '12000', '', 1),
(584, 21, '584', 'MECHERA ZUKY X 25 UN                                                                                ', 0, '10500', '', 1),
(585, 19, '585', 'MENTA CHAO MASTICAB. X 100 U                                                                        ', 0, '5000', '', 1),
(586, 19, '586', 'MENTA HELADA COLOMBINA X 100 U                                                                      ', 0, '4509,8498', '', 1),
(587, 16, '587', 'METRONIDAZOL X 100 CAPS GENFAR                                                                      ', 0, '14300', '', 1),
(588, 18, '588', 'MICROPUNTA X 10 UND                                                                                 ', 0, '9000,01', '', 1),
(589, 16, '589', 'MIELTERTOS NOCHE X 24 SOB                                                                           ', 0, '30000', '', 1),
(590, 16, '590', 'MIELTERTOS PAST. MASTICABLE X 12 SOB                                                                ', 0, '15700', '', 1),
(591, 13, '591', 'MILO ACTIGEN X 250 GR                                                                               ', 0, '8150', '', 1),
(592, 13, '592', 'MILO ACTIGEN X 500 GR                                                                               ', 0, '15650', '', 1),
(593, 13, '593', 'MILO RISTRA X 18 UN                                                                                 ', 0, '15950', '', 1),
(594, 16, '594', 'MOVIDOL X 12 TABL                                                                                   ', 0, '8000', '', 1),
(595, 3, '595', 'MUESTRA COPROLOGICO X 50 UND                                                                        ', 0, '11000', '', 1),
(596, 18, '596', 'NAIPE ESPA?OL X UND                                                                                 ', 0, '1500', '', 1),
(597, 18, '597', 'NAIPE POKER X UNI                                                                                   ', 0, '2800', '', 1),
(598, 16, '598', 'NAPROXENO A. G X 500 MG                                                                             ', 0, '2900', '', 1),
(599, 16, '599', 'NAPROXENO MK X 275 MG X 10 TAB                                                                      ', 0, '3800', '', 1),
(600, 13, '600', 'NESCAFE 1.5G X 48 SOB                                                                               ', 0, '7289,35', '', 1),
(601, 13, '601', 'NESCAFE FRASCO X 170 GR                                                                             ', 0, '15100', '', 1),
(602, 13, '602', 'NESCAFE FRASCO X 50 GR                                                                              ', 0, '5215,27', '', 1),
(603, 13, '603', 'NESCAFE FRASCO X 85 GR                                                                              ', 0, '8600', '', 1),
(604, 13, '604', 'NESCAFE RISTRA X 12 UND                                                                             ', 0, '10287,65', '', 1),
(605, 13, '605', 'NESTOGENO BOLSA X 135 G                                                                             ', 0, '6150', '', 1),
(606, 13, '606', 'NESTUM CEREAL X 200 GR                                                                              ', 0, '7850', '', 1),
(607, 13, '607', 'NESTUM RISTRA X 10 UN                                                                               ', 0, '8824,9511', '', 1),
(608, 16, '608', 'NIXODERM UNG X 20 G                                                                                 ', 0, '7800', '', 1),
(609, 16, '609', 'NORAVER GARGANTA X 24 UN                                                                            ', 0, '27014,4015', '', 1),
(610, 16, '610', 'NORAVER GRIPA CALIENTE X 8 SOB                                                                      ', 0, '14076,523', '', 1),
(611, 16, '611', 'NORAVER GRIPA DIA X 6 SOB                                                                           ', 0, '11616,7729', '', 1),
(612, 16, '612', 'NORAVER GRIPA FAST X 12 CAP                                                                         ', 0, '22527,68', '', 1),
(613, 16, '613', 'NORAVER GRIPA X 16 CAP                                                                              ', 0, '18950', '', 1),
(614, 14, '614', 'NOSOTRAS BUENAS NOCHES X 10                                                                         ', 0, '10000', '', 1),
(615, 16, '615', 'NOXPIRIN CALIENTE  X 24 SOBRES                                                                      ', 0, '23000', '', 1),
(616, 16, '616', 'NOXPIRIN PLUS CAJA X 100 UN                                                                         ', 0, '60000', '', 1),
(617, 16, '617', 'NOXPIRIN PLUS X 48 CAPS                                                                             ', 0, '29000', '', 1),
(618, 19, '618', 'NUCITA NUECES DISPL X 18 UN                                                                         ', 0, '6755,5818', '', 1),
(619, 14, '619', 'NUTRIBELA TRATAMIENTO X 12 SOBR                                                                     ', 0, '11066,86', '', 1),
(620, 14, '620', 'NUTRIBELLA TARRO X 300 ML                                                                           ', 0, '13600,12', '', 1),
(621, 19, '621', 'OKA LOKA CHICLE REVOLCON x 50U                                                                      ', 0, '4157,81', '', 1),
(622, 19, '622', 'OKA LOKA NANOS DISPLEY X 12UN                                                                       ', 0, '10900', '', 1),
(623, 19, '623', 'OKA LOKA NANOS X 24 UN                                                                              ', 0, '7700', '', 1),
(624, 18, '624', 'PALILLO DIENTES EL SOL X 144 UN                                                                     ', 0, '450', '', 1),
(625, 18, '625', 'PALO HELADO CORTO X 1000 UN                                                                         ', 0, '7800', '', 1),
(626, 18, '626', 'PALO PINCHO BAMBU X 100 UN                                                                          ', 0, '1649,99', '', 1),
(627, 14, '627', 'PA?AL HUGGIES ET 2 X 50 UN                                                                          ', 0, '26000', '', 1),
(628, 14, '628', 'PA?AL HUGGIES ET 3 X 30UN                                                                           ', 0, '19600', '', 1),
(629, 14, '629', 'PA?AL HUGGIES ET 4 X 50UN                                                                           ', 0, '40600', '', 1),
(630, 14, '630', 'PA?AL HUGGIES ETA O X 32 UN                                                                         ', 0, '12500', '', 1),
(631, 14, '631', 'PA?AL HUGGIES ETAP 3 X 50 UN                                                                        ', 0, '33000', '', 1),
(632, 14, '632', 'PA?AL HUGGIES ETAP 5  X 30 UN                                                                       ', 0, '26900', '', 1),
(633, 14, '633', 'PA?AL HUGGIES ETAPA 1 X 36 UN                                                                       ', 0, '16500', '', 1),
(634, 14, '634', 'PA?AL HUGGIES ETAPA 1 x 50 UN                                                                       ', 0, '20500', '', 1),
(635, 14, '635', 'P??AL HUGGIES ETAPA 2 X 30 UND                                                                      ', 0, '16500', '', 1),
(636, 14, '636', 'PA?AL HUGGIES ETAPA 4 X 30 UN                                                                       ', 0, '24500,01', '', 1),
(637, 14, '637', 'PA?AL WINNY ET 2 X 30 EMP. IND.                                                                     ', 0, '19499,99', '', 1),
(638, 14, '638', 'PA?AL WINNY ET 3 X 30 EMP. IND.                                                                     ', 0, '24100', '', 1),
(639, 14, '639', 'PA?AL WINNY ET. 4 PANTS X 30 UN                                                                     ', 0, '28850', '', 1),
(640, 14, '640', 'PA?AL WINNY ET. 5 PANTS X 30 UN                                                                     ', 0, '31641,465', '', 1),
(641, 14, '641', 'PA?AL WINNY ETAPA 0 X 30 UND                                                                        ', 0, '15303,355', '', 1),
(642, 14, '642', 'PA?AL WINNY ETAPA 1 X 30 UND                                                                        ', 0, '16450', '', 1),
(643, 14, '643', 'PA?AL WINNY ETAPA 2 X 30 UND                                                                        ', 0, '19650,01', '', 1),
(644, 14, '644', 'PA?AL WINNY ETAPA 2 X 50 UN                                                                         ', 0, '32700', '', 1),
(645, 14, '645', 'PA?AL WINNY ETAPA 3 X 30 UND                                                                        ', 0, '23450', '', 1),
(646, 14, '646', 'PA?AL WINNY ETAPA 3 X 50 UN                                                                         ', 0, '39076,1933', '', 1),
(647, 14, '647', 'PA?AL WINNY ETAPA 4 X 30 E.I                                                                        ', 0, '29960', '', 1),
(648, 14, '648', 'PA?AL WINNY ETAPA 4 X 30 UND                                                                        ', 0, '28823,64', '', 1),
(649, 14, '649', 'PA?AL WINNY ETAPA 4 X 50 UN                                                                         ', 0, '48050', '', 1),
(650, 14, '650', 'PA?AL WINNY ETAPA 5 X 30 UN                                                                         ', 0, '31650', '', 1),
(651, 14, '651', 'PA?AL WINNY PANTS ET 4 X 50 UND                                                                     ', 0, '40261,66', '', 1),
(652, 14, '652', 'PA?AL WINNY PANTS ET. 5 X 50 UNID                                                                   ', 0, '52750', '', 1),
(653, 13, '653', 'PANELADA 1.5 LT X UNID                                                                              ', 0, '932', '', 1),
(654, 14, '654', 'PA?ITOS HUM. PEQUE?IN X 24 UN                                                                       ', 0, '2600', '', 1),
(655, 21, '655', 'PAPEL ALUMINIO REP. X 7 MT                                                                          ', 0, '2325', '', 1),
(656, 21, '656', 'PAPEL ALUMINIO X 7 MT CAJA                                                                          ', 0, '2850', '', 1),
(657, 14, '657', 'PAPEL H. FAMILIA EXPERT X 4 UNI                                                                     ', 0, '6600', '', 1),
(658, 14, '658', 'PAPEL H. FAMILIA EXPERT X UN                                                                        ', 0, '1625', '', 1),
(659, 14, '659', 'PAPEL H. FAMILIA FAMILIAR X 30MT                                                                    ', 0, '875', '', 1),
(660, 14, '660', 'PAPEL H. FAMILIA MEGA X 4 UN                                                                        ', 0, '5950', '', 1),
(661, 14, '661', 'PAPEL H. SCOTT RINDEMAX X 18 UN                                                                     ', 0, '14200', '', 1),
(662, 14, '662', 'PAPEL HIG SCOTT MAXI X 12 UN                                                                        ', 0, '14799,99', '', 1),
(663, 14, '663', 'PAPEL HIG. BLANKO X 12 UN                                                                           ', 0, '11600', '', 1),
(664, 14, '664', 'PAPEL HIG. BLANKO X 4 UN                                                                            ', 0, '4450,01', '', 1),
(665, 14, '665', 'PAPEL HIG. BLANKO X UN                                                                              ', 0, '1250', '', 1),
(666, 14, '666', 'PAPEL HIG. FAMILIA MEGA X 12 UN                                                                     ', 0, '15600', '', 1),
(667, 14, '667', 'PAPEL HIG. FAMILIA MEGA X UN                                                                        ', 0, '1583', '', 1),
(668, 14, '668', 'PAPEL HIG. SCOTT MAXI CUID. COMPL.                                                                  ', 0, '1520', '', 1),
(669, 14, '669', 'PAPEL HIG. SCOTT RINDEMAX UND                                                                       ', 0, '899,64', '', 1),
(670, 14, '670', 'PAPEL HIG.ELITE MAXI DUO X UN                                                                       ', 0, '1625', '', 1),
(671, 14, '671', 'PAPEL HIGIENICO DON PASTOR X 12 U                                                                   ', 0, '13600', '', 1),
(672, 14, '672', 'PAPEL HIGIENICO DON PASTOR X 4 UN                                                                   ', 0, '4850,1522', '', 1),
(673, 14, '673', 'PAPEL HIGIENICO PASTOR X UN                                                                         ', 0, '1295,01', '', 1),
(674, 14, '674', 'PAPEL SCOTT MAXI X 4UN                                                                              ', 0, '5699,9952', '', 1),
(675, 16, '675', 'PASEDOL X 100 TAB                                                                                   ', 0, '22500', '', 1),
(676, 13, '676', 'PASTA SURTIDA COMARRICO X 24UN                                                                      ', 0, '26405', '', 1),
(677, 16, '677', 'PASTILLAS VICK X 24 SOB                                                                             ', 0, '35800', '', 1),
(678, 16, '678', 'PAX DIA X 24 SOBRES                                                                                 ', 0, '33500', '', 1),
(679, 16, '679', 'PAX NOCHE X 24 SOBRES                                                                               ', 0, '33500', '', 1),
(680, 16, '680', 'PEDIALYTE ZINC X 500 ML                                                                             ', 0, '5800', '', 1),
(681, 18, '681', 'PEGANTE UKAINT TIRA X 12 UN                                                                         ', 0, '3800', '', 1),
(682, 14, '682', 'PEINE BOLSILLO X 12 UND                                                                             ', 0, '2000', '', 1),
(683, 14, '683', 'PEINE COLA RATON X 12 UND                                                                           ', 0, '5800', '', 1),
(684, 14, '684', 'PEINE MILITAR X 12 UND                                                                              ', 0, '4600', '', 1),
(685, 14, '685', 'PEINE MOJARRA GRANDE X 12 UND                                                                       ', 0, '6000', '', 1),
(686, 14, '686', 'PEINE MOJARRA PEQUE?A X 12 UND                                                                      ', 0, '4500', '', 1),
(687, 3, '687', 'PEINE PIOJO X 12 UND                                                                                ', 0, '3500', '', 1),
(688, 17, '688', 'PILA VARTA AA X 10 PARES                                                                            ', 0, '12299,99', '', 1),
(689, 17, '689', 'PILA VARTA AAA X 10 PARES                                                                           ', 0, '12299,99', '', 1),
(690, 17, '690', 'PILA VARTA ALKALINA AA - AAA                                                                        ', 0, '3100', '', 1),
(691, 17, '691', 'PILA VARTA GRANDE X 10 PARES                                                                        ', 0, '32499,99', '', 1),
(692, 19, '692', 'PIRULITO SRTDO X 24 UN                                                                              ', 0, '2820', '', 1),
(693, 18, '693', 'PLASTILINA CORTA X 9                                                                                ', 0, '620', '', 1),
(694, 18, '694', 'PLASTILINA LARGA X 9                                                                                ', 0, '1150', '', 1),
(695, 14, '695', 'POLVO COMPACTO NAILEN X UND                                                                         ', 0, '5649,9984', '', 1),
(696, 14, '696', 'PRESERVATIVO SUPER SEX X 24 UN                                                                      ', 0, '18000', '', 1),
(697, 14, '697', 'PRESERVATIVO TE AMO X 24 UN                                                                         ', 0, '16499,9958', '', 1),
(698, 14, '698', 'PRESERVATIVO TODAY X 12 UN                                                                          ', 0, '29500', '', 1),
(699, 14, '699', 'PRESERVATIVO TODAY X 4 UN                                                                           ', 0, '9200', '', 1),
(700, 14, '700', 'PREST.  DORCO X 24 UND                                                                              ', 0, '13000', '', 1),
(701, 14, '701', 'PREST.  SCHICK 4 X UN                                                                               ', 0, '3050,01', '', 1),
(702, 14, '702', 'PREST. EXCEL MUJER X UN                                                                             ', 0, '2485,9962', '', 1),
(703, 14, '703', 'PREST. GILLETTE 3 H X UN                                                                            ', 0, '3300', '', 1),
(704, 14, '704', 'PREST. GILLETTE MACH 3 NEGRA                                                                        ', 0, '15900,6565', '', 1),
(705, 14, '705', 'PREST. GILLETTE MACH 3 X 2 REP                                                                      ', 0, '15899,99', '', 1),
(706, 14, '706', 'PREST. GILLETTE VENUS DAMA 3H X U                                                                   ', 0, '3389,99', '', 1),
(707, 14, '707', 'PREST. SCHICK XTREME X UND                                                                          ', 0, '2150', '', 1),
(708, 14, '708', 'PREST. SHICK 4 H. FOR WOMEN X UND                                                                   ', 0, '3000', '', 1),
(709, 14, '709', 'PREST.INFINITA 3 HOJAS X 24 UNI                                                                     ', 0, '26000', '', 1),
(710, 14, '710', 'PRESTOB.ULTRAGRIP X 20 + 4 PRESTOB. 3H                                                              ', 0, '53800', '', 1),
(711, 14, '711', 'PROTECTOR NOSOTRAS X 150 UN                                                                         ', 0, '10800', '', 1),
(712, 14, '712', 'PROTECTORES KOTEX X 15 UND                                                                          ', 0, '1550', '', 1),
(713, 14, '713', 'PROTECTORES KOTEX X 150 UND                                                                         ', 0, '11050', '', 1),
(714, 14, '714', 'PROTECTORES KOTEX X 50 UN                                                                           ', 0, '3600', '', 1),
(715, 14, '715', 'PROTECTORES NOSOTRAS X 15 UN                                                                        ', 0, '1824,95', '', 1);
INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `descripcion`, `imagen`, `condicion`) VALUES
(716, 3, '716', 'PRUEBA DE EMBARAZO CASSETTE                                                                         ', 0, '1100', '', 1),
(717, 19, '717', 'QUIPITOS POPS X 24 UNID                                                                             ', 0, '10800,3744', '', 1),
(718, 21, '718', 'QUITAGRASA EFFIKAZZ X 500 ML                                                                        ', 0, '2352,94', '', 1),
(719, 21, '719', 'QUITAGRASA RAZZ FAZZ X 700 ML                                                                       ', 0, '5409,31', '', 1),
(720, 15, '720', 'RAID AEROSOL VOLADORES X 285 ML                                                                     ', 0, '8985', '', 1),
(721, 15, '721', 'RAID AEROSOL VOLADORES X 400 ML                                                                     ', 0, '13100', '', 1),
(722, 15, '722', 'RAID AEROSOL X 285 VOLAD. X 3 UN                                                                    ', 0, '23100', '', 1),
(723, 15, '723', 'RAID MAX AEROSOL X 285 ML                                                                           ', 0, '9908,1', '', 1),
(724, 15, '724', 'RAID MAX AEROSOL X 400 ML                                                                           ', 0, '14795,1', '', 1),
(725, 15, '725', 'RAID PASTILLAS X 12 UN                                                                              ', 0, '7300', '', 1),
(726, 15, '726', 'RAID PASTILLAS X 24 UN                                                                              ', 0, '11250', '', 1),
(727, 15, '727', 'RAID PASTILLAS X 72 UND                                                                             ', 0, '22907,16', '', 1),
(728, 15, '728', 'RAID VOLADORES X 400 ML X 3 UN                                                                      ', 0, '33000', '', 1),
(729, 17, '729', 'RASTRILLO AGRICOLA ---------                                                                        ', 0, '2800', '', 1),
(730, 17, '730', 'RASTRILLO INDUSTRIAL ----------                                                                     ', 0, '5400', '', 1),
(731, 17, '731', 'RECOGEDOR BANDA -----------                                                                         ', 0, '3000', '', 1),
(732, 17, '732', 'RECOGEDOR ECONOMICO -----------                                                                     ', 0, '2150', '', 1),
(733, 3, '733', 'RECOLECTOR DE ORINA X 50 UN                                                                         ', 0, '11000', '', 1),
(734, 14, '734', 'REMOVEDOR CHARLESTON X 30 ML                                                                        ', 0, '1525', '', 1),
(735, 14, '735', 'REMOVEDOR LANDER TRAD X 35 ML                                                                       ', 0, '3150', '', 1),
(736, 14, '736', 'REMOVEDOR LANDER VIT/ENDU X 35 ML                                                                   ', 0, '3434,99', '', 1),
(737, 14, '737', 'REXONA CLINICAL SOBRE X 20 UN                                                                       ', 0, '11684,2104', '', 1),
(738, 13, '738', 'RICAVENA 60 GR X UN                                                                                 ', 0, '1329,9868', '', 1),
(739, 13, '739', 'RICOSTILLA DEZMENUZADO X 36 UN                                                                      ', 0, '8581,9', '', 1),
(740, 13, '740', 'RICOSTILLA X 12 UN                                                                                  ', 0, '4100', '', 1),
(741, 13, '741', 'RICOSTILLA X 240 UND                                                                                ', 0, '70177,06', '', 1),
(742, 13, '742', 'RICOSTILLA X 60 UND                                                                                 ', 0, '17500', '', 1),
(743, 13, '743', 'RICOSTILLA X 8 UN                                                                                   ', 0, '2800', '', 1),
(744, 15, '744', 'RINDEX 10 MULTIBENEFICIOS X500 GR                                                                   ', 0, '2460', '', 1),
(745, 16, '745', 'SAL BONFIEST PLUS X 20 +OFERTA 8D                                                                   ', 0, '67500', '', 1),
(746, 16, '746', 'SAL DE FRUTAS LUA PLUS X 20 + OFERTA                                                                ', 0, '58500', '', 1),
(747, 16, '747', 'SAL DE FRUTAS X 50 SOBR + OFERTA                                                                    ', 0, '113500', '', 1),
(748, 13, '748', 'SAL REFISAL X 500 G                                                                                 ', 0, '725', '', 1),
(749, 13, '749', 'SALCHICHA MI DIA X UN                                                                               ', 0, '2398,7066', '', 1),
(750, 13, '750', 'SALCHICHA RONDA X 7 UN                                                                              ', 0, '2404,2464', '', 1),
(751, 13, '751', 'SALCHICHA VIENA ZENU                                                                                ', 0, '3028', '', 1),
(752, 13, '752', 'SALSA BBQ FRUCO X 12 UN                                                                             ', 0, '10500', '', 1),
(753, 13, '753', 'SALSA MAY.FRUCO DOYPACK X 150 G                                                                     ', 0, '1655', '', 1),
(754, 13, '754', 'SALSA ROSADA FRUCO X UN                                                                             ', 0, '10500', '', 1),
(755, 13, '755', 'SALSA TOMATE FRUCO X 12 SOB                                                                         ', 0, '10300', '', 1),
(756, 13, '756', 'SALTINAS MANTEQUILLA MINI TACO                                                                      ', 0, '1315,49', '', 1),
(757, 14, '757', 'SANTE XXI POTE X 210                                                                                ', 0, '15200', '', 1),
(758, 13, '758', 'SARDINA OVALADA ANDALUCIA X 425G                                                                    ', 0, '4365', '', 1),
(759, 13, '759', 'SARDINA TINAPA ANDALUCIA X 155 GR                                                                   ', 0, '2154,99', '', 1),
(760, 14, '760', 'SEDA DENTAL HUCA X 20 MT                                                                            ', 0, '1100', '', 1),
(761, 14, '761', 'SEDA DENTAL JHONSO X 50 ML                                                                          ', 0, '9800', '', 1),
(762, 14, '762', 'SEDA DENTAL JHONSON X 100 MT                                                                        ', 0, '11400', '', 1),
(763, 21, '763', 'SERVILLETA DON PASTOR  X 150 UN                                                                     ', 0, '1315,12', '', 1),
(764, 21, '764', 'SERVILLETA FAVORITA X 320 UND                                                                       ', 0, '2420', '', 1),
(765, 16, '765', 'SEVEDOL EXTRAFUERTE X 24 UND                                                                        ', 0, '21500', '', 1),
(766, 16, '766', 'SEVEDOL EXTRAFUERTE X 60                                                                            ', 0, '53000', '', 1),
(767, 16, '767', 'SEVEDOL MIGRA?A X 24 UND                                                                            ', 0, '17300', '', 1),
(768, 14, '768', 'SHAMPO ARRURRU MANZANILLA X120 ML                                                                   ', 0, '5300', '', 1),
(769, 14, '769', 'SHAMPO ARRURU 2 EN 1 X 120 ML                                                                       ', 0, '5800', '', 1),
(770, 14, '770', 'SHAMPO BIOEXPERT X 18 UN                                                                            ', 0, '11133,05', '', 1),
(771, 14, '771', 'SHAMPO DOVE SACHET X 20 UN                                                                          ', 0, '12250', '', 1),
(772, 14, '772', 'SHAMPO JHONSON COJIN X 12 UN                                                                        ', 0, '7200', '', 1),
(773, 14, '773', 'SHAMPO SAVITAL X 550 ML                                                                             ', 0, '13200', '', 1),
(774, 14, '774', 'SHAMPO SEDAL COJIN X 12 UN                                                                          ', 0, '7319,93', '', 1),
(775, 14, '775', 'SHAMPOO BABY JOHNSON 100 ML                                                                         ', 0, '6600', '', 1),
(776, 14, '776', 'SHAMPOO BABY JOHNSONS  200 ML                                                                       ', 0, '9600', '', 1),
(777, 14, '777', 'SHAMPOO BABY JOHNSONS 750 ML                                                                        ', 0, '20400', '', 1),
(778, 14, '778', 'SHAMPOO BABY JOHNSONS X 400 ML                                                                      ', 0, '14000', '', 1),
(779, 14, '779', 'SHAMPOO H&S COJIN X 12 U                                                                            ', 0, '6200', '', 1),
(780, 14, '780', 'SHAMPOO H&S X 180 ML                                                                                ', 0, '9604,9905', '', 1),
(781, 14, '781', 'SHAMPOO H&S X 375 ML                                                                                ', 0, '14900', '', 1),
(782, 14, '782', 'SHAMPOO KONZIL X 18 SOB                                                                             ', 0, '7599,99', '', 1),
(783, 14, '783', 'SHAMPOO PANTENE TIRA X 12 UN                                                                        ', 0, '6100', '', 1),
(784, 14, '784', 'SHAMPOO PANTENE X 200 ML                                                                            ', 0, '9200', '', 1),
(785, 14, '785', 'SHAMPOO PANTENE X 400 ML                                                                            ', 0, '14900', '', 1),
(786, 14, '786', 'SHAMPOO SAVITAL X 20 SOB                                                                            ', 0, '12400', '', 1),
(787, 14, '787', 'SHAMPOO SEDAL X 20 SOBRES                                                                           ', 0, '12299,99', '', 1),
(788, 18, '788', 'SILICONA BARRA X KILO                                                                               ', 0, '20500', '', 1),
(789, 18, '789', 'SILICONA FITO GLOSS X 30 UN                                                                         ', 0, '54541,03', '', 1),
(790, 18, '790', 'SILICONA LIQUIDA  X 100 ML                                                                          ', 0, '1800,01', '', 1),
(791, 18, '791', 'SILICONA LIQUIDA X 30 ML                                                                            ', 0, '1000', '', 1),
(792, 18, '792', 'SILICONA LIQUIDA X 60 ML                                                                            ', 0, '1749,3', '', 1),
(793, 13, '793', 'SPAGHETTI COMARRICO X 190 GRS                                                                       ', 0, '1075,1947', '', 1),
(794, 13, '794', 'SPAGUETTI COMARRICO X 1000 G                                                                        ', 0, '4045', '', 1),
(795, 13, '795', 'SPAGUETTI DORIA X 250 G                                                                             ', 0, '1720,9924', '', 1),
(796, 13, '796', 'SPAGUETTI-FIDEO COMARRICO X 250 G                                                                   ', 0, '1292,1', '', 1),
(797, 19, '797', 'SPLOT ACIDO EN LINEA X 24 UN                                                                        ', 0, '5707,6076', '', 1),
(798, 19, '798', 'SPLOT BOLA X 100 UN                                                                                 ', 0, '5825', '', 1),
(799, 19, '799', 'SPLOT TATTOO DISPL X 120 UN                                                                         ', 0, '8849,99', '', 1),
(800, 15, '800', 'SUAV AROMATEL X 180ML                                                                               ', 0, '865', '', 1),
(801, 15, '801', 'SUAV. AROMATEL X 2500 ML X 2                                                                        ', 0, '24000', '', 1),
(802, 15, '802', 'SUAV. AROMATEL X 400ML                                                                              ', 0, '2284,21', '', 1),
(803, 15, '803', 'SUAV. AROMATEL X 900 ML X 2 UN                                                                      ', 0, '10500', '', 1),
(804, 15, '804', 'SUAV. SUAVITEL  X 430 ML                                                                            ', 0, '2248,286', '', 1),
(805, 15, '805', 'SUAV. SUAVITEL X 180 ML                                                                             ', 0, '960', '', 1),
(806, 15, '806', 'SUAV. SUAVITEL X 3000 ML BICPACK                                                                    ', 0, '26000', '', 1),
(807, 15, '807', 'SUAV. SUAVITEL X 5000 ML                                                                            ', 0, '20500', '', 1),
(808, 15, '808', 'SUAVITEL X 1000 ML                                                                                  ', 0, '5675,98', '', 1),
(809, 15, '809', 'SUAVIZANTE AROMATEL X 800 ML                                                                        ', 0, '4200', '', 1),
(810, 15, '810', 'SUAVIZANTE MI DIA X 1000 ML                                                                         ', 0, '3200,01', '', 1),
(811, 13, '811', 'SUNTEA X 12 UND                                                                                     ', 0, '11269,92', '', 1),
(812, 17, '812', 'SUPER ASTRO GLUE ROJA X 12 UN                                                                       ', 0, '5000', '', 1),
(813, 17, '813', 'SUPER BONDER CARTON  X 12U                                                                          ', 0, '9500', '', 1),
(814, 17, '814', 'SUPER BONDER TARJETA ORIGINAL                                                                       ', 0, '2625', '', 1),
(815, 17, '815', 'SUPER PEGA ASTRO X 12 FRASC                                                                         ', 0, '8000', '', 1),
(816, 17, '816', 'SUPER PEGA INFINITA X 14 U                                                                          ', 0, '8000', '', 1),
(817, 2, '817', 'TABACOS CALILLA X 25 UN                                                                             ', 0, '2750', '', 1),
(818, 2, '818', 'TABACOS X 25 UND                                                                                    ', 0, '4600', '', 1),
(819, 18, '819', 'TAJALAPIZ METALICO X 24 UND                                                                         ', 0, '6000', '', 1),
(820, 18, '820', 'TAJALAPIZ PLASTICO X 24 UND                                                                         ', 0, '2600', '', 1),
(821, 14, '821', 'TALCO BABY JOHNSONS X 100 GRS                                                                       ', 0, '11447,3226', '', 1),
(822, 14, '822', 'TALCO DEOPIES SPRAY X 260 ML                                                                        ', 0, '12500', '', 1),
(823, 14, '823', 'TALCO MEXSANA LADY X 85 G                                                                           ', 0, '6600', '', 1),
(824, 14, '824', 'TALCO MEXSANA ORIG X 85 G                                                                           ', 0, '5800', '', 1),
(825, 14, '825', 'TALCO MEXSANA X 150 + 85                                                                            ', 0, '10300', '', 1),
(826, 14, '826', 'TALCO MEXSANA X 300 GR+ 85 GR                                                                       ', 0, '16800', '', 1),
(827, 14, '827', 'TALCO NEOFUNGINA X 100 GRS                                                                          ', 0, '19000', '', 1),
(828, 14, '828', 'TALCO NEOFUNGINA X 40 GRS                                                                           ', 0, '8850', '', 1),
(829, 14, '829', 'TALCO REXONA EFFICIENT X 60 ML                                                                      ', 0, '3900', '', 1),
(830, 14, '830', 'TALCO SECCO X 90 GR                                                                                 ', 0, '4600', '', 1),
(831, 14, '831', 'TALCO YODORA X 120 + 60 GR                                                                          ', 0, '13600', '', 1),
(832, 14, '832', 'TALCO YODORA X 60 GRS                                                                               ', 0, '4050', '', 1),
(833, 3, '833', 'TAPABOCAS NI?O X 50 UN                                                                              ', 0, '13500', '', 1),
(834, 3, '834', 'TAPABOCAS X 50 UN                                                                                   ', 0, '11800', '', 1),
(835, 15, '835', 'TELARA?EROS ----------                                                                              ', 0, '4900', '', 1),
(836, 18, '836', 'TEMPERAS PAYASITO X 6 UN                                                                            ', 0, '2200', '', 1),
(837, 18, '837', 'TIJERA BIGOTERA X 12 UND                                                                            ', 0, '8300', '', 1),
(838, 18, '838', 'TIJERA NEGRA X 12 UND                                                                               ', 0, '8100', '', 1),
(839, 18, '839', 'TIJERA PUNTA ROMA X 12 UND                                                                          ', 0, '9800', '', 1),
(840, 18, '840', 'TIQUETEADORA  MOTEX 5500                                                                            ', 0, '19000', '', 1),
(841, 19, '841', 'TIRUDITO SUPERCOCO X50 UN                                                                           ', 0, '8108,54', '', 1),
(842, 14, '842', 'TOALLA  NOSOTRAS CLASICA X 10 UN                                                                    ', 0, '4000', '', 1),
(843, 14, '843', 'TOALLA H. KOTEX NOCTURNA X 16 UND                                                                   ', 0, '7000', '', 1),
(844, 14, '844', 'TOALLA H. NOSOTRAS X 30 UN                                                                          ', 0, '11000', '', 1),
(845, 14, '845', 'TOALLA H. STAYFREE X 12 UN                                                                          ', 0, '3450', '', 1),
(846, 14, '846', 'TOALLA HIGIENICA KOTEX X 30 UN                                                                      ', 0, '9500', '', 1),
(847, 14, '847', 'TOALLA KOTEX NOCTURNA X 8 UN                                                                        ', 0, '4100', '', 1),
(848, 14, '848', 'TOALLA NOSOTRAS EXTRA PROTECC X 6 UN                                                                ', 0, '3400', '', 1),
(849, 14, '849', 'TOALLA NOSOTRAS INVI.RAPIGEL X 10 UN                                                                ', 0, '4000', '', 1),
(850, 14, '850', 'TOALLAS HIG. KOTEX X 10 UN +PROTEC                                                                  ', 0, '3650', '', 1),
(851, 14, '851', 'TOALLAS KOTEX NOCTURNA X 30 UN                                                                      ', 0, '11500', '', 1),
(852, 14, '852', 'TOALLITA HUM. PEQUE?IN X 63U MANZAN.                                                                ', 0, '3300', '', 1),
(853, 14, '853', 'TOALLITAS ARRURRU X 20 UN                                                                           ', 0, '1950', '', 1),
(854, 14, '854', 'TOALLITAS HUGGIES X 120 UN                                                                          ', 0, '7800', '', 1),
(855, 14, '855', 'TOALLITAS HUGGIES X 48 UN                                                                           ', 0, '3800', '', 1),
(856, 14, '856', 'TOALLITAS HUGGIES X 96 UN                                                                           ', 0, '6800', '', 1),
(857, 14, '857', 'TOALLITAS HUM.ARRURRU X 120 UN                                                                      ', 0, '7500', '', 1),
(858, 14, '858', 'TOALLITAS HUMEDAS ARRURRU X 100 UN                                                                  ', 0, '6600', '', 1),
(859, 14, '859', 'TOALLITAS HUMEDAS PEQUE?IN X 110 UN                                                                 ', 0, '6000', '', 1),
(860, 14, '860', 'TOALLITAS WINNY X 24 UN                                                                             ', 0, '2200', '', 1),
(861, 14, '861', 'TOALLITAS WINNY X100 UN                                                                             ', 0, '7125', '', 1),
(862, 15, '862', 'TRAPERO COMP REF. 1000 ------------                                                                 ', 0, '6900', '', 1),
(863, 15, '863', 'TRAPERO COMP REF.800 ---------                                                                      ', 0, '6000', '', 1),
(864, 15, '864', 'TRAPERO COPA REF. 800--------                                                                       ', 0, '5200', '', 1),
(865, 15, '865', 'TRAPERO COPA REF.1000--------                                                                       ', 0, '6200', '', 1),
(866, 18, '866', 'TROMPO GRANDE X 12 UND                                                                              ', 0, '10000', '', 1),
(867, 18, '867', 'TROMPO MEDIANO X 12 UNI                                                                             ', 0, '7000', '', 1),
(868, 18, '868', 'TROMPO PEQUE?O X 12 UND                                                                             ', 0, '5500', '', 1),
(869, 19, '869', 'TRULULU CLASICA X 270 UN                                                                            ', 0, '10400,01', '', 1),
(870, 19, '870', 'TRULULU CLASICAS X 100 UN                                                                           ', 0, '3955', '', 1),
(871, 19, '871', 'TRULULU GUSANOS TARRO X 200 UN                                                                      ', 0, '9985', '', 1),
(872, 19, '872', 'TRULULU GUSANOS X 100 UN                                                                            ', 0, '4366,24', '', 1),
(873, 19, '873', 'TRULULU SNACKS X UN                                                                                 ', 0, '1298,98', '', 1),
(874, 19, '874', 'TURRON SUPERCOCO X 100 UN                                                                           ', 0, '8350', '', 1),
(875, 15, '875', 'VANISH LIQUIDO X 130 CM                                                                             ', 0, '1085', '', 1),
(876, 15, '876', 'VANISH RISTRA X 12 UND                                                                              ', 0, '11300', '', 1),
(877, 3, '877', 'VAPORUB LATA ORIGINAL X 12 UND                                                                      ', 0, '44200', '', 1),
(878, 3, '878', 'VAPORUB POTE ECONOMICO X UN                                                                         ', 0, '2500', '', 1),
(879, 15, '879', 'VARSOL AROMA X 150 ML                                                                               ', 0, '1550', '', 1),
(880, 15, '880', 'VARSOL AROMA X 2000 ML                                                                              ', 0, '15400', '', 1),
(881, 15, '881', 'VARSOL AROMA X 400 ML                                                                               ', 0, '3500', '', 1),
(882, 15, '882', 'VARSOL AROMA X 850 ML                                                                               ', 0, '6950', '', 1),
(883, 15, '883', 'VARSOL ECOLOGICO X 150 ML                                                                           ', 0, '1550', '', 1),
(884, 15, '884', 'VARSOL ECOLOGICO X 2000 ML                                                                          ', 0, '15499,35', '', 1),
(885, 15, '885', 'VARSOL ECOLOGICO X 400 ML                                                                           ', 0, '3509,94', '', 1),
(886, 15, '886', 'VARSOL ECOLOGICO X 850 ML                                                                           ', 0, '6900', '', 1),
(887, 15, '887', 'VARSOL X 150 ML                                                                                     ', 0, '1550', '', 1),
(888, 15, '888', 'VARSOL X 2000 ML                                                                                    ', 0, '15250', '', 1),
(889, 15, '889', 'VARSOL X 400 CC                                                                                     ', 0, '3100,101', '', 1),
(890, 15, '890', 'VARSOL X 850 ML                                                                                     ', 0, '6050', '', 1),
(891, 14, '891', 'VASELINA JOHNSON POTE X 100 GR                                                                      ', 0, '14075', '', 1),
(892, 14, '892', 'VASELINA LATA X 12 UND                                                                              ', 0, '2800', '', 1),
(893, 21, '893', 'VASO 3.3 ONZAS X 50 UN                                                                              ', 0, '1424,9988', '', 1),
(894, 21, '894', 'VASO 7 ONZAS VBC X 50 UN                                                                            ', 0, '1965', '', 1),
(895, 21, '895', 'VASO SICODELICO 7 ONZ                                                                               ', 0, '1885', '', 1),
(896, 21, '896', 'VELA ACANALADA LARGA X 12 U                                                                         ', 0, '3979,13', '', 1),
(897, 21, '897', 'VELA ACANALADA X 12 UND                                                                             ', 0, '3300', '', 1),
(898, 21, '898', 'VELA LISA GRUESA X 10 U                                                                             ', 0, '7200', '', 1),
(899, 21, '899', 'VELA LISA SAN JORGE X 10 UN                                                                         ', 0, '4750', '', 1),
(900, 21, '900', 'VELON N. 10 X 5 UN                                                                                  ', 0, '21300', '', 1),
(901, 21, '901', 'VELON N. 12 X 5 UN                                                                                  ', 0, '33200', '', 1),
(902, 21, '902', 'VELON N. 16 X 4 UN                                                                                  ', 0, '32200', '', 1),
(903, 21, '903', 'VELON N. 18 X 4 UN                                                                                  ', 0, '47500', '', 1),
(904, 21, '904', 'VELON N.8 X 5 UN                                                                                    ', 0, '17930,225', '', 1),
(905, 21, '905', 'VELON No 0 X 12 UND                                                                                 ', 0, '10240', '', 1),
(906, 21, '906', 'VELON No 2 X 12 UND                                                                                 ', 0, '17700', '', 1),
(907, 21, '907', 'VELON No 4 X 5 UND                                                                                  ', 0, '11700', '', 1),
(908, 21, '908', 'VELON No 6 X 12UND                                                                                  ', 0, '23853,612', '', 1),
(909, 15, '909', 'VENENO MATARRATAS SICARIO X U                                                                       ', 0, '2300', '', 1),
(910, 16, '910', 'VICK VAPORUB POTE X 50 G                                                                            ', 0, '12250', '', 1),
(911, 16, '911', 'VITAMINA C MK X 100 TAB                                                                             ', 0, '34400', '', 1),
(912, 16, '912', 'VITAMINA C MK X 30 TABL                                                                             ', 0, '10350', '', 1),
(913, 16, '913', 'VITAMINA C VICAL + ZINC X 100 UN                                                                    ', 0, '26500', '', 1),
(914, 16, '914', 'VITAMINA C VICAL X 144 TAB                                                                          ', 0, '30500', '', 1),
(915, 16, '915', 'X RAY DOL X 48 TABL                                                                                 ', 0, '55000', '', 1),
(916, 14, '916', 'YODORA  POTE X 60 + 32 GR                                                                           ', 0, '17600', '', 1),
(917, 14, '917', 'YODORA CREMA TUBO X 12 GR                                                                           ', 0, '2300', '', 1),
(918, 14, '918', 'YODORA CREMA TUBO X 25 GR                                                                           ', 0, '5110', '', 1),
(919, 14, '919', 'YODORA POTE X 32 GR X 2UN                                                                           ', 0, '12299,99', '', 1),
(920, 14, '920', 'YODORA TUBO X 14 UN + ROLLON +TALCO                                                                 ', 0, '36900', '', 1),
(921, 16, '921', 'YODOSALIL POTE MEX X UN                                                                             ', 0, '2500', '', 1),
(922, 1, '922', 'ZUCARITAS KELLOGG RISTRA X 8 UN                                                                     ', 0, '6400', '', 1),
(923, 2, '923', 'CRISTAL AGUARDIENTE XS 750 ML', 0, '32900', '', 1),
(924, 2, '924', 'CRISTAL AGUARDIENTE XS 375', 0, '17650', '', 1),
(925, 2, '925', 'SOMETHING SPECIAL WHISKY 750ML ', 0, '55315', '', 1),
(926, 2, '926', 'VIVE 100 REGULAR 380 ML * 6 UNIDADES ', 0, '10738', '', 1),
(927, 2, '927', 'VIVE 100 REGULAR 240  CM3 * 6 UNIDADES ', 0, '8295', '', 1),
(928, 2, '928', 'Botellita Miniatura Licor Jagermeister ', 0, '7900', '', 1),
(929, 2, '929', 'Cerveza Heineken Sixpack 269ml C/u', 0, '15200', '', 1),
(930, 2, '930', 'CERVEZA ANDINA SIXPACK  269ml C/u', 0, '12800', '', 1),
(931, 2, '931', 'CERVEZA TECATE SIXPACK  350ml C/u', 0, '15200', '', 1),
(932, 20, '932', 'Pack Coca-cola Sabor Original 235ml X 12 Unds', 34, '15390', '', 1),
(933, 20, '933', 'Pack Coca-cola CAF?  235ml X 6 Unds', 0, '9500', '', 1),
(934, 20, '934', 'Pack T? Fuze Tea Surtido 400ml X 3 Unds', 0, '5000', '', 1),
(935, 20, '935', 'Pack Agua Brisa Sin Gas 600ml X 6 Unds', 0, '12000', '', 1),
(936, 13, '936', 'Pedigree Alimento H?medo Para Perro Raza Peque?a Pollo 100g', 0, '2000', '', 1),
(937, 2, '937', 'Aperitivo Dubonnet 375 Ml', 0, '29000', '', 1),
(938, 2, '938', 'COLA & POLA LIMONADA 330CC * 6 ', 0, '10062', '', 1),
(939, 2, '939', 'STELLA ARTOIS LATA 269 * 6 ', 0, '16025', '', 1),
(940, 2, '940', 'BUSCH LIGHT 330 CC * 6', 0, '9775', '', 1),
(941, 2, '941', 'COSTE?A  BACANA LATA 330 CC  * 6', 0, '9762', '', 1),
(942, 2, '942', 'POKE ROJA LATA 330 CC *6', 0, '12550', '', 1),
(943, 2, '943', 'COSTE?A BACANA RETORNABLE 320CC *30 ', 0, '36600', '', 1),
(944, 2, '944', 'AGUILA LATA 269 CC *6 ', 0, '10200', '', 1),
(945, 2, '945', 'AZTECA RB 330 CC * 30 ', 0, '38500', '', 1),
(946, 2, '946', 'CORONITA NR 210CC * 6', 0, '12150', '', 1),
(947, 2, '947', 'AGULA RN 1000CC * 13 ', 0, '48150', '', 1),
(948, 2, '948', 'PILSEN TN 1000 CC -*13 ', 0, '48150', '', 1),
(949, 2, '949', 'AGUILA LIG RN 1000CC * 13 ', 0, '48150', '', 1),
(950, 2, '950', 'POKER RN 250CCC* 38 ', 0, '46349', '', 1),
(951, 2, '951', 'AGUILA FUSION LIMON 330CC * 30 ', 0, '49800', '', 1),
(952, 2, '952', 'PILSEN LATA 355CC * 24 ', 0, '48400', '', 1),
(953, 2, '953', 'BUDWEISER NR 250CC *6', 0, '10775', '', 1),
(954, 2, '954', 'BUDWEISER NR 269CC *24', 0, '42850', '', 1),
(955, 2, '955', 'BUDWEISER NR 250CC *24', 0, '43100', '', 1),
(956, 2, '956', 'BBC MACONDO NR 330CC *4', 0, '17883', '', 1),
(957, 2, '957', 'BUDWEISER NR 250CC * 24', 0, '42850', '', 1),
(958, 2, '958', 'CLUB COLOMBIA LATA 330CC * 6', 0, '13275', '', 1),
(959, 2, '959', 'COLA  & POLA LTA 330CC *6 ', 0, '8550', '', 1),
(960, 2, '960', 'COLA & POLA PET 1,5 L * 6', 0, '21200', '', 1),
(961, 2, '961', 'REDDS COLD TW 250CC * 24 ', 0, '39200', '', 1),
(962, 20, '962', 'PEPSI GASEOSA 400ML *15 ', 0, '21250', '', 1),
(963, 20, '963', 'COLOMBIANA GASEOSA 2,5 L  * 8', 0, '31296', '', 1),
(964, 20, '964', 'MANZANA GASEOSA 2,5 L * 8', 0, '31296', '', 1),
(965, 20, '965', 'CANADA DRY SODA 400ML *15', 0, '31296', '', 1),
(966, 20, '966', 'PONY MALTA LTA 330CC *6', 21, '7775', '', 1),
(967, 20, '967', 'PONIMALTA PET 2,0 L *6 ', 0, '23450', '', 1),
(968, 20, '968', 'PONIMALTA PET 1,0L *15', 0, '32300', '', 1),
(969, 20, '969', 'PONY MALTA PET 200CC *30', 0, '30350', '', 1),
(970, 20, '970', 'PONY MALTA PET 1,5L * 6 ', 0, '18000', '', 1),
(971, 20, '971', 'PONY MALTA PET 330CC *24', 0, '35250', '', 1),
(972, 20, '972', 'PONY MALTA R 225CC *38', 0, '31600', '', 1),
(973, 20, '973', 'MALTA LEONA CAF? LATA *6', 0, '6018', '', 1),
(974, 20, '974', 'MALTA LEONA PET 1,5 *6 ', 0, '15450', '', 1),
(975, 20, '975', 'AGUA ZALVA  SIN GAS  PET 600 *12', 0, '8700', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `condicion`) VALUES
(1, 'Cereales', 'Granos, legumbres y leguminosas', 1),
(2, 'Bebidas Alcoholicas', 'Cervesas y Licores', 1),
(3, 'Farmacia', 'Primeros Auxilios', 1),
(13, 'Alacena Cocina', 'Variedades', 1),
(14, 'Aseo Personal', 'Implementos de Aseo personal', 1),
(15, 'Aseo del Hogar', 'Piso, Muebles, Ropa, etc.', 1),
(16, 'Medicamentos', 'Medicamentos basicos_Sin receta', 1),
(17, 'Ferreteria', 'Elementos de reparación', 1),
(18, 'Papeleria', 'Utiles escolares', 1),
(19, 'Dulces', 'Dulces', 1),
(20, 'Bebidas', 'Caliente o Fría', 1),
(21, 'Aseo Cocina', 'Loza, Mesones, etc.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

CREATE TABLE `detalle_ingreso` (
  `iddetalle_ingreso` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_ingreso`
--

INSERT INTO `detalle_ingreso` (`iddetalle_ingreso`, `idingreso`, `idarticulo`, `cantidad`, `precio_compra`, `precio_venta`) VALUES
(42, 15, 932, 36, '962.00', '1282.00'),
(43, 15, 966, 24, '972.00', '1295.00');

--
-- Disparadores `detalle_ingreso`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockIngreso` AFTER INSERT ON `detalle_ingreso` FOR EACH ROW BEGIN
UPDATE articulo SET stock=stock + NEW.cantidad
WHERE articulo.idarticulo = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`iddetalle_venta`, `idventa`, `idarticulo`, `cantidad`, `precio_venta`, `descuento`) VALUES
(45, 32, 932, 2, '1282.00', '0.00'),
(46, 32, 966, 3, '1295.00', '0.00');

--
-- Disparadores `detalle_venta`
--
DELIMITER $$
CREATE TRIGGER `tr_udpStockVenta` AFTER INSERT ON `detalle_venta` FOR EACH ROW BEGIN
UPDATE articulo SET stock = stock - NEW.cantidad
WHERE articulo.idarticulo = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `idingreso` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_compra` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`idingreso`, `idproveedor`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total_compra`, `estado`) VALUES
(15, 7, 1, 'Factura', '1', '1', '2022-05-17 00:00:00', '0.00', '57960.00', 'Aceptado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Escritorio'),
(2, 'Almacen'),
(3, 'Compras'),
(4, 'Ventas'),
(5, 'Acceso'),
(6, 'Consulta Compras'),
(7, 'Consulta Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `tipo_persona` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(20) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`) VALUES
(7, 'Proveedor', 'Bavaria &amp; Cia S C A', 'NIT', '8600052246', 'Cra. 53a ## 127 - 35, Bogotá', '6016389000', 'protecciondedatos@co.ab-inbev.com'),
(8, 'Cliente', 'Publico general', 'CEDULA', '0000000000', 'Punto de venta', '00000000', 'public@publicogeneral.com'),
(12, 'Proveedor', 'Colombina S.A.', 'NIT', '8903018845', 'Carrera 68C No. 10A‑65 Zona Industrial Montevideo', '6014140199', 'nmunoz@colombina.com'),
(13, 'Proveedor', 'Comercializadora Surtivarios B S.A.S', 'NIT', '9014438764', 'Cra 7 # 45A-28', '3123798796', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(20) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`) VALUES
(1, 'Soporte', 'CEDULA', '1118552264', 'Area Sistemas', '3214043236', 'admin@gmail.com', 'Administrador', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '1603050895.jpg', 1),
(2, 'JOHANA ALARCÓN JIMÉNEZ', 'CEDULA', '1116545789', 'calle 5 # 10-15', '3222295506', 'prueba@hotmail.com', 'empleado', 'Johana', '84e34ea181b0db7279c736d1bc9a5dd3af004a4629c42b5f80c057d561d7386b', 'vector.jpg', 1),
(4, 'Contabilidad', 'CEDULA', '123456789', 'Matadero', '3222295506', 'contabilidad@hotmail.com', 'Contadora', 'Contabilidad', '38cd88c523e691aa53962a84b6df308b95046102b7e9d67f660be4b86b891d11', 'manvector.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(109, 1, 1),
(110, 1, 2),
(111, 1, 3),
(112, 1, 4),
(113, 1, 5),
(114, 1, 6),
(115, 1, 7),
(120, 2, 1),
(121, 2, 2),
(122, 2, 3),
(123, 2, 4),
(124, 4, 1),
(125, 4, 6),
(126, 4, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) DEFAULT NULL,
  `total_venta` decimal(11,2) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `idcliente`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total_venta`, `estado`) VALUES
(32, 8, 1, 'Factura', '0', '0', '2022-05-18 00:00:00', '0.00', '6449.00', 'Aceptado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  ADD KEY `fk_articulo_categoria_idx` (`idcategoria`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD PRIMARY KEY (`iddetalle_ingreso`),
  ADD KEY `fk_detalle_ingreso_idx` (`idingreso`),
  ADD KEY `fk_detalle_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`iddetalle_venta`),
  ADD KEY `fk_detalle_venta_venta_idx` (`idventa`),
  ADD KEY `fk_detalle_venta_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`idingreso`),
  ADD KEY `fk_ingreso_persona_idx` (`idproveedor`),
  ADD KEY `fk_ingreso_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_u_permiso_usuario_idx` (`idusuario`),
  ADD KEY `fk_usuario_permiso_idx` (`idpermiso`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_venta_persona_idx` (`idcliente`),
  ADD KEY `fk_venta_usuario_idx` (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=976;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  MODIFY `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `fk_articulo_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD CONSTRAINT `fk_detalle_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ingreso` FOREIGN KEY (`idingreso`) REFERENCES `ingreso` (`idingreso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_venta_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_venta_venta` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `fk_ingreso_persona` FOREIGN KEY (`idproveedor`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ingreso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_u_permiso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_permiso` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_persona` FOREIGN KEY (`idcliente`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
