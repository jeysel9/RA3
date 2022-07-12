-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2022 a las 04:31:35
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `administacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codigo` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nit` int(10) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `genero` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`codigo`, `nombre`, `nit`, `correo`, `genero`) VALUES
(1, 'Alberto Gomez', 7458962, 'ag@gmail.com', 'M'),
(2, 'Sergio Garcia', 9874563, 'sG@gmail.com', 'M'),
(3, 'juan perez', 58744, 'jp@gmial.com', 'm'),
(4, 'Abramo', 100001, 'adahill0@mail.ru', 'm'),
(5, 'Paxon', 100002, 'pgambrell1@walmart.com', 'f'),
(6, 'Codi', 100003, 'cjervois2@joomla.org', 'm'),
(7, 'Margaretha', 100004, 'mfawdrey3@indiegogo.com', 'f'),
(8, 'Jamie', 100005, 'jbrosi4@redcross.org', 'f'),
(9, 'Giles', 100006, 'gcraydon5@surveymonkey.com', 'm'),
(10, 'Joye', 100007, 'jgrange6@disqus.com', 'm'),
(11, 'Amos', 100008, 'arulf7@ow.ly', 'f'),
(12, 'Karney', 100009, 'kfilyukov8@elpais.com', 'm'),
(13, 'Tasia', 100010, 'tmiklem9@seattletimes.com', 'f'),
(14, 'Adham', 100011, 'afoyea@a8.net', 'm'),
(15, 'Stephannie', 100012, 'sdrinnanb@reuters.com', 'm'),
(16, 'Steve', 100013, 'sstillyc@auda.org.au', 'f'),
(17, 'Anabel', 100014, 'ashoweringd@list-manage.com', 'f'),
(18, 'Mignon', 100015, 'mpatmoree@prnewswire.com', 'm'),
(19, 'Madelena', 100016, 'mtimmisf@stanford.edu', 'f'),
(20, 'Guillermo', 100017, 'gpondg@blogspot.com', 'f'),
(21, 'Marijo', 100018, 'mvardieh@dailymotion.com', 'm'),
(22, 'Zora', 100019, 'zbinesteadi@hhs.gov', 'm'),
(23, 'Tamra', 100020, 'tcotterellj@abc.net.au', 'f'),
(24, 'Helen', 100021, 'hsedenk@engadget.com', 'm'),
(25, 'Goldy', 100022, 'gbettlesonl@about.me', 'f'),
(26, 'Leila', 100023, 'ledworthyem@hibu.com', 'm'),
(27, 'Allx', 100024, 'abaudoun@aol.com', 'm'),
(28, 'Everett', 100025, 'ekunzeo@nba.com', 'f'),
(29, 'Ruthi', 100026, 'rsumblerp@shareasale.com', 'm'),
(30, 'Karlens', 100027, 'kdenizetq@loc.gov', 'm'),
(31, 'Rachel', 100028, 'rfurlowr@examiner.com', 'm'),
(32, 'Junia', 100029, 'jgrovess@va.gov', 'm'),
(33, 'Caprice', 100030, 'cthoulesst@bloglines.com', 'm'),
(34, 'Kass', 100031, 'klambdeanu@dion.ne.jp', 'm'),
(35, 'Cleveland', 100032, 'cscreechv@tinyurl.com', 'f'),
(36, 'Ludwig', 100033, 'lirnysw@unicef.org', 'f'),
(37, 'Remy', 100034, 'rbauducciox@geocities.jp', 'm'),
(38, 'Kathi', 100035, 'ksnelley@google.it', 'm'),
(39, 'Erny', 100036, 'efassumz@cisco.com', 'm'),
(40, 'Barry', 100037, 'bpenberthy10@nsw.gov.au', 'm'),
(41, 'Ryan', 100038, 'rbrunone11@harvard.edu', 'm'),
(42, 'Korie', 100039, 'klies12@t.co', 'f'),
(43, 'Darbie', 100040, 'ddibartolomeo13@bloglines.com', 'm'),
(44, 'Galen', 100041, 'gfranciskiewicz14@myspace.com', 'm'),
(45, 'Obidiah', 100042, 'ocurtiss15@usa.gov', 'm'),
(46, 'Errol', 100043, 'emessam16@cdbaby.com', 'm'),
(47, 'Demetris', 100044, 'ddeal17@vistaprint.com', 'm'),
(48, 'Ahmad', 100045, 'aitzig18@mapquest.com', 'm'),
(49, 'Rodrique', 100046, 'rhawksby19@odnoklassniki.ru', 'm'),
(50, 'Woodie', 100047, 'wpotapczuk1a@blinklist.com', 'f'),
(51, 'Kattie', 100048, 'krunnalls1b@unblog.fr', 'm'),
(52, 'Breena', 100049, 'bmiltonwhite1c@seattletimes.com', 'm'),
(53, 'Jere', 100050, 'jseamon1d@slideshare.net', 'f'),
(54, 'Eveline', 100051, 'eomarkey1e@ask.com', 'f'),
(55, 'Klarika', 100052, 'kcrigin1f@indiatimes.com', 'm'),
(56, 'Mohandas', 100053, 'murch1g@tuttocitta.it', 'm'),
(57, 'Lorettalorna', 100054, 'lboarder1h@irs.gov', 'f'),
(58, 'Deana', 100055, 'dpengelly1i@seesaa.net', 'f'),
(59, 'Spencer', 100056, 'shouseman1j@dell.com', 'm'),
(60, 'Edlin', 100057, 'ecrofthwaite1k@google.co.uk', 'f'),
(61, 'Tanya', 100058, 'tbester1l@sakura.ne.jp', 'm'),
(62, 'Pattin', 100059, 'pkeson1m@ycombinator.com', 'm'),
(63, 'Ciro', 100060, 'clitt1n@elegantthemes.com', 'm'),
(64, 'Rafe', 100061, 'rkolis1o@time.com', 'm'),
(65, 'Skippie', 100062, 'ssteptow1p@pcworld.com', 'f'),
(66, 'Berget', 100063, 'bettery1q@scribd.com', 'f'),
(67, 'Hanson', 100064, 'helmes1r@google.it', 'm'),
(68, 'Laurel', 100065, 'lunderdown1s@jiathis.com', 'f'),
(69, 'Ogdan', 100066, 'ofeitosa1t@elpais.com', 'f'),
(70, 'Bay', 100067, 'bhellwing1u@xing.com', 'f'),
(71, 'Minette', 100068, 'mfrancom1v@columbia.edu', 'm'),
(72, 'Blythe', 100069, 'bjahn1w@t.co', 'm'),
(73, 'Nance', 100070, 'nkobelt1x@nifty.com', 'f'),
(74, 'Wade', 100071, 'wshoulders1y@tinypic.com', 'm'),
(75, 'Valaria', 100072, 'vthomazet1z@telegraph.co.uk', 'm'),
(76, 'Consolata', 100073, 'cladel20@time.com', 'f'),
(77, 'Angelica', 100074, 'aigo21@hp.com', 'f'),
(78, 'Bernete', 100075, 'bfleetwood22@walmart.com', 'f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `precio` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `descripcion`, `cantidad`, `precio`) VALUES
(1, 'leche', 'leche entera', 20, '45.00'),
(2, 'azucar', 'azucar blanca', 35, '90.00'),
(3, 'Energy Drink', 'Cremin and Sons', 36, '291.33'),
(4, 'Oil - Grapeseed Oil', 'Bednar, King and Kilback', 94, '697.88'),
(5, 'Tuna - Salad Premix', 'Green and Sons', 44, '692.84'),
(6, 'Pails With Lids', 'Jakubowski-Kling', 37, '906.07'),
(7, 'Sparkling Wine - Rose, Freixenet', 'Schowalter-Morissette', 46, '443.28'),
(8, 'Milk - Skim', 'Graham, Miller and Weissnat', 100, '259.72'),
(9, 'Herb Du Provence - Primerba', 'Emard, Haag and Larkin', 39, '100.02'),
(10, 'Cookies - Englishbay Wht', 'Keebler, Bogisich and Mann', 56, '621.50'),
(11, 'Coffee Cup 8oz 5338cd', 'Simonis-Mohr', 2, '777.46'),
(12, 'Lettuce - Boston Bib', 'Cremin-Hintz', 11, '987.36'),
(13, 'Noodles - Cellophane, Thin', 'Skiles, Block and Konopelski', 66, '570.74'),
(14, 'Mushroom - King Eryingii', 'Kilback, Goyette and Padberg', 64, '5.71'),
(15, 'Tortillas - Flour, 8', 'Mohr and Sons', 38, '774.83'),
(16, 'Chevere Logs', 'Macejkovic, Heathcote and Keeling', 37, '401.61'),
(17, 'Tea - Decaf Lipton', 'Ledner-Abshire', 2, '363.67'),
(18, 'Lettuce - Iceberg', 'Osinski-Runolfsdottir', 9, '83.41'),
(19, 'Chips Potato Salt Vinegar 43g', 'Mueller, Moen and Kirlin', 41, '978.92'),
(20, 'Mushroom - Oyster, Fresh', 'Hudson-Beahan', 44, '962.29'),
(21, 'Peas - Pigeon, Dry', 'Jakubowski, Morissette and Kulas', 35, '877.97'),
(22, 'Gatorade - Xfactor Berry', 'Kassulke-Hand', 79, '840.01'),
(23, 'Smoked Tongue', 'Haley LLC', 30, '667.36'),
(24, 'Carrots - Mini, Stem On', 'Gislason, Runolfsson and Murazik', 35, '192.86'),
(25, 'Cake - Pancake', 'Barrows Inc', 53, '501.09'),
(26, 'Sauce - Vodka Blush', 'Torp, Howe and Daniel', 30, '382.20'),
(27, 'Rice - Wild', 'Grant-Leffler', 13, '970.26'),
(28, 'Rolled Oats', 'Ward and Sons', 26, '348.35'),
(29, 'Miso - Soy Bean Paste', 'Leffler Inc', 28, '526.83'),
(30, 'Parsley Italian - Fresh', 'McCullough-Trantow', 86, '950.45'),
(31, 'Carroway Seed', 'Cummerata and Sons', 32, '993.18'),
(32, 'Beef - Bresaola', 'Jones LLC', 79, '789.28'),
(33, 'Sausage - Blood Pudding', 'Bailey, Powlowski and Hermiston', 53, '287.99'),
(34, 'Sausage - Blood Pudding', 'Morissette and Sons', 27, '905.24'),
(35, 'Appetizer - Mango Chevre', 'Bruen LLC', 73, '859.24'),
(36, 'Squeeze Bottle', 'Barton and Sons', 27, '692.33'),
(37, 'Ham - Virginia', 'Schowalter-Anderson', 62, '392.67'),
(38, 'Wine - Riesling Dr. Pauly', 'Wyman-Ritchie', 40, '634.37'),
(39, 'Pastrami', 'Kutch, Roberts and Koelpin', 92, '145.15'),
(40, 'Mince Meat - Filling', 'Crooks-Olson', 75, '597.80'),
(41, 'Mushroom - Crimini', 'Lockman, Hansen and Maggio', 20, '972.94'),
(42, 'Cookie Double Choco', 'Ryan LLC', 93, '130.25'),
(43, 'Pear - Packum', 'Ledner Inc', 2, '539.78'),
(44, 'Peach - Halves', 'VonRueden, Langworth and Ebert', 42, '604.14'),
(45, 'Radish - Black, Winter, Organic', 'Stiedemann, Jerde and Kilback', 45, '87.63'),
(46, 'Beets - Candy Cane, Organic', 'Walsh-Walter', 13, '314.46'),
(47, 'Juice - Propel Sport', 'Jast-Bogan', 2, '862.25'),
(48, 'Island Oasis - Banana Daiquiri', 'Kessler Inc', 33, '490.85'),
(49, 'Bread - White, Unsliced', 'Morar, Leuschke and Lehner', 77, '931.37'),
(50, 'Wine - Pinot Noir Stoneleigh', 'Keebler Inc', 83, '635.11'),
(51, 'Cake - Dulce De Leche', 'Daniel-Glover', 15, '348.24'),
(52, 'Bay Leaf Fresh', 'Koelpin Group', 19, '392.99'),
(53, 'Beer - Camerons Auburn', 'Osinski Group', 23, '679.63'),
(54, 'Potatoes - Yukon Gold, 80 Ct', 'Will-Hackett', 78, '644.59'),
(55, 'Soap - Hand Soap', 'Rempel-Romaguera', 10, '568.79'),
(56, 'Broom - Angled', 'Johnston, Gleason and Beatty', 82, '562.22'),
(57, 'Milk - Chocolate 500ml', 'Hayes-Harvey', 62, '264.26'),
(58, 'Chickhen - Chicken Phyllo', 'Bayer-Nolan', 95, '653.23'),
(59, 'Ecolab - Solid Fusion', 'Durgan, Welch and Leffler', 75, '941.05'),
(60, 'Relish', 'Hegmann, Rau and Thiel', 73, '172.85'),
(61, 'Beef Striploin Aaa', 'Maggio-Schiller', 50, '157.43'),
(62, 'Chicken - Livers', 'Hoppe-Mann', 12, '750.10'),
(63, 'Pepsi - Diet, 355 Ml', 'O\'Conner and Sons', 39, '277.89'),
(64, 'Yoplait Drink', 'Heidenreich, Braun and Kiehn', 24, '684.58'),
(65, 'Table Cloth 81x81 Colour', 'Huel and Sons', 37, '901.94'),
(66, 'Bandage - Fexible 1x3', 'Kihn Group', 17, '970.04'),
(67, 'Egg - Salad Premix', 'Anderson, Spencer and Legros', 30, '520.78'),
(68, 'Garbage Bag - Clear', 'Bergstrom, Witting and Lubowitz', 82, '585.55'),
(69, 'Bread - Dark Rye', 'VonRueden Inc', 34, '575.72'),
(70, 'Wine - Rosso Del Veronese Igt', 'Mohr-McDermott', 20, '600.37'),
(71, 'Pheasants - Whole', 'Waters Inc', 4, '117.06'),
(72, 'Cookie Dough - Chunky', 'Ondricka, Hauck and Runolfsdottir', 38, '665.90'),
(73, 'Soup Campbells Split Pea And Ham', 'Heidenreich Inc', 83, '811.43'),
(74, 'Coconut - Creamed, Pure', 'Huel and Sons', 11, '34.35'),
(75, 'Pastry - Chocolate Chip Muffin', 'Schuster-Runte', 39, '211.33'),
(76, 'Bagel - Everything', 'Tremblay, Goldner and Gislason', 77, '945.16'),
(77, 'Potatoes - Yukon Gold, 80 Ct', 'Rogahn and Sons', 6, '399.36'),
(78, 'Stainless Steel Cleaner Vision', 'Russel, Ruecker and Stehr', 82, '694.71'),
(79, 'Squash - Pepper', 'Osinski and Sons', 20, '396.93'),
(80, 'Pork - Back Ribs', 'Kertzmann, Abshire and Terry', 98, '343.27'),
(81, 'Wine - White, Riesling, Henry Of', 'Schuster-Dach', 5, '763.14'),
(82, 'Barramundi', 'Hodkiewicz Group', 57, '331.77'),
(83, 'Sesame Seed', 'Sauer, Murray and Haag', 64, '820.38'),
(84, 'Vol Au Vents', 'Sanford and Sons', 66, '552.05'),
(85, 'Sauce - Thousand Island', 'Runte Inc', 49, '281.66'),
(86, 'Sambuca - Opal Nera', 'Reinger LLC', 56, '950.94'),
(87, 'Soup Campbells Split Pea And Ham', 'Ondricka-Johns', 37, '196.48'),
(88, 'Lettuce - Lolla Rosa', 'Moore, Kshlerin and Hand', 26, '811.33'),
(89, 'Extract - Lemon', 'Lynch, Douglas and Dickens', 95, '981.16'),
(90, 'Bread - Sour Batard', 'Cartwright-Jacobson', 86, '581.50'),
(91, 'Juice - Grapefruit, 341 Ml', 'Grant, Hermiston and Kohler', 11, '542.09'),
(92, 'Shrimp - Black Tiger 16/20', 'Brown, Gerhold and Stracke', 53, '667.75'),
(93, 'Table Cloth 81x81 White', 'Murray-Homenick', 58, '190.71'),
(94, 'Chocolate - Dark Callets', 'Skiles-Lang', 71, '207.99'),
(95, 'Garlic Powder', 'Hills-Morar', 12, '897.49'),
(96, 'C - Plus, Orange', 'Runolfsdottir LLC', 91, '52.36'),
(97, 'Sproutsmustard Cress', 'Kohler, Mitchell and Stiedemann', 1, '625.16'),
(98, 'Bread - Sour Sticks With Onion', 'Klocko and Sons', 96, '157.39'),
(99, 'Chocolate - Unsweetened', 'Klein-Kuvalis', 90, '539.22'),
(100, 'Tomatoes - Roma', 'Parisian-Bauch', 24, '532.39'),
(101, 'Crab Brie In Phyllo', 'Auer Inc', 68, '180.36'),
(102, 'Chocolate Liqueur - Godet White', 'Beier-Kautzer', 13, '445.39'),
(103, 'Veal Inside - Provimi', 'VonRueden-Zulauf', 27, '537.15'),
(104, 'Muffin - Mix - Strawberry Rhubarb', 'Luettgen-Beer', 55, '167.36'),
(105, 'Pork - Butt, Boneless', 'Bruen-Friesen', 82, '572.87'),
(106, 'Mushroom - Shitake, Dry', 'Bartoletti Group', 19, '198.13'),
(107, 'Tomatillo', 'Batz Inc', 15, '597.27'),
(108, 'Crab Meat Claw Pasteurise', 'Olson-Cruickshank', 62, '971.62'),
(109, 'Soup - French Can Pea', 'Witting Inc', 14, '96.21'),
(110, 'Shichimi Togarashi Peppeers', 'Dietrich-Lang', 24, '794.79'),
(111, 'Halibut - Whole, Fresh', 'Gottlieb-Friesen', 4, '166.82'),
(112, 'Apricots Fresh', 'Tremblay, Halvorson and Reinger', 77, '974.43'),
(113, 'Cake - Box Window 10x10x2.5', 'Koss-Littel', 1, '776.74'),
(114, 'Russian Prince', 'Bernhard, Skiles and Green', 55, '211.16'),
(115, 'Appetizer - Sausage Rolls', 'Considine LLC', 30, '34.63'),
(116, 'Mushroom - Chanterelle, Dry', 'Marquardt and Sons', 90, '785.50'),
(117, 'Vacuum Bags 12x16', 'Smitham-Quitzon', 32, '341.80'),
(118, 'Wine - Maipo Valle Cabernet', 'Kihn, Cartwright and Cummings', 44, '861.24'),
(119, 'Dc - Sakura Fu', 'Nikolaus-Moore', 16, '863.33'),
(120, 'Chicken - Base, Ultimate', 'Rolfson and Sons', 38, '873.27'),
(121, 'Lid - Translucent, 3.5 And 6 Oz', 'Hammes-Olson', 99, '369.54'),
(122, '7up Diet, 355 Ml', 'Jones, Abbott and Hirthe', 91, '53.13'),
(123, 'Coffee - Cafe Moreno', 'Spencer, Cruickshank and Kihn', 68, '796.14'),
(124, 'Tea - Orange Pekoe', 'Treutel, Connelly and Gibson', 10, '530.44'),
(125, 'Turkey - Oven Roast Breast', 'Mraz, Herman and Bogisich', 83, '833.87'),
(126, 'Pecan Raisin - Tarts', 'Brakus-Kassulke', 75, '107.84'),
(127, 'Beef - Shank', 'Cummerata-Wiegand', 83, '89.61'),
(128, 'Oil - Olive Bertolli', 'Smitham-Torphy', 20, '138.80'),
(129, 'Bagelers - Cinn / Brown', 'Douglas Inc', 37, '379.23'),
(130, 'Taro Root', 'Gutkowski, Nicolas and Bahringer', 74, '392.55'),
(131, 'Ecolab - Hobart Washarm End Cap', 'Bayer, Johns and Breitenberg', 52, '272.97'),
(132, 'Calvados - Boulard', 'Deckow and Sons', 32, '793.71'),
(133, 'Cut Wakame - Hanawakaba', 'Auer LLC', 87, '220.80'),
(134, 'Mushroom - Trumpet, Dry', 'Hegmann-Baumbach', 41, '483.08'),
(135, 'Cookies - Assorted', 'Macejkovic, Pouros and Kuhn', 11, '978.41'),
(136, 'Jolt Cola - Red Eye', 'Shields LLC', 97, '576.45'),
(137, 'Marsala - Sperone, Fine, D.o.c.', 'Hoeger and Sons', 13, '315.22'),
(138, 'Mikes Hard Lemonade', 'Nienow LLC', 47, '367.66'),
(139, 'Bandage - Flexible Neon', 'Jast-Barton', 58, '484.96'),
(140, 'Longos - Assorted Sandwich', 'Runte-Erdman', 13, '758.16'),
(141, 'Tomatoes - Yellow Hot House', 'Herman Inc', 19, '554.07'),
(142, 'Huck White Towels', 'Gutmann-Lebsack', 20, '215.52'),
(143, 'Tart - Lemon', 'Yundt-VonRueden', 12, '439.13'),
(144, 'Cheese - Parmesan Grated', 'Kshlerin-Kunze', 26, '304.81'),
(145, 'Shiratamako - Rice Flour', 'Bailey Inc', 24, '45.50'),
(146, 'Wheat - Soft Kernal Of Wheat', 'Durgan-Ritchie', 76, '278.73'),
(147, 'Beef - Bones, Marrow', 'Rolfson LLC', 89, '894.66'),
(148, 'Coriander - Seed', 'Schmitt, Ritchie and Ortiz', 74, '750.79'),
(149, 'Tea - Mint', 'Stehr and Sons', 69, '704.15'),
(150, 'Lid Tray - 12in Dome', 'Stark, Padberg and Pouros', 71, '333.09'),
(151, 'Beef - Flank Steak', 'Balistreri-Ryan', 55, '624.31'),
(152, 'Cheese - La Sauvagine', 'Weissnat, Nicolas and Parker', 20, '872.48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `codigo` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`codigo`, `nombre`, `direccion`, `correo`, `telefono`) VALUES
(1, 'Guatemala', 'zona1', 'sucguatez1@gmail.com', 2556688),
(2, 'Escuintla', 'zona3', 'sucescz3@gmail.com', 2556688),
(3, 'Kiosko', 'zona 14', 'kiosko@gmail.com', 74125896),
(4, 'RepustosJuan', 'km 23', 'RepustosJuan@gmail.com', 56565696),
(6, 'Wisoky-Bergnaum', '71818 Meadow Vale Way', 'swoodeson0@imgur.com', 2462328),
(7, 'Douglas-Larson', '044 Independence Alley', 'rmadge1@newyorker.com', 2456609),
(8, 'Metz-Reinger', '279 Larry Lane', 'jitskovitz2@friendfeed.com', 2495630),
(9, 'Kreiger and Sons', '8 Novick Lane', 'eboraston3@apache.org', 2400192),
(10, 'Jaskolski Inc', '333 Bartelt Circle', 'rheinreich4@nsw.gov.au', 2495829),
(11, 'Dickinson-Schoen', '34 Delaware Way', 'afuster5@unblog.fr', 2402859),
(12, 'Hermiston-Brekke', '47391 Rowland Road', 'bsegot6@abc.net.au', 2415390),
(13, 'Schamberger, Shields and Corwin', '9552 Sommers Point', 'ehartburn7@about.me', 2433697),
(14, 'Harvey Group', '3730 Sundown Plaza', 'ctrees8@fema.gov', 2442938),
(15, 'Deckow-Walter', '62 Troy Street', 'jpim9@altervista.org', 2463599),
(16, 'Bednar and Sons', '07 Texas Pass', 'clevisa@linkedin.com', 2452281),
(17, 'McCullough Group', '898 Elka Center', 'dtronib@dailymail.co.uk', 2437791),
(18, 'Harris, McKenzie and Hintz', '66403 Morningstar Hill', 'gfoldc@amazonaws.com', 2480766),
(19, 'Volkman-Kuphal', '29 Leroy Alley', 'wdayleyd@tinypic.com', 2467424),
(20, 'Rogahn, Bins and Wintheiser', '80988 Ridgeview Hill', 'fjanoute@ycombinator.com', 2414941),
(21, 'Collier-Kulas', '86 Heath Plaza', 'jyounglovef@nymag.com', 2446769),
(22, 'Johnston and Sons', '0261 Nancy Trail', 'pharlingg@tinypic.com', 2479013),
(23, 'Macejkovic-VonRueden', '09 Lillian Hill', 'mespinhah@jiathis.com', 2429016),
(24, 'Bailey Group', '3586 Amoth Crossing', 'wgerriti@bloomberg.com', 2495423),
(25, 'Shields-Dickens', '64597 Walton Center', 'lwishamj@google.com.au', 2480490),
(26, 'Mayer, Roob and Wiza', '0 Manitowish Way', 'pbernardeschik@dion.ne.jp', 2421944),
(27, 'O\'Reilly LLC', '516 Forest Dale Crossing', 'sbirkinshawl@geocities.jp', 2498929),
(28, 'Stokes-Aufderhar', '8370 Texas Hill', 'mpykem@clickbank.net', 2460801),
(29, 'Hettinger-Erdman', '400 Pankratz Circle', 'pciobutaron@virginia.edu', 2489219),
(30, 'Schinner and Sons', '6114 Marquette Trail', 'ciacoboo@studiopress.com', 2451359),
(31, 'Abshire and Sons', '76776 Service Avenue', 'hwillersonp@list-manage.com', 2471588),
(32, 'Kautzer, Parker and Parker', '3 Thompson Avenue', 'jbalsdoneq@cornell.edu', 2422883),
(33, 'Greenfelder-Gerhold', '63383 Stoughton Terrace', 'ialdenr@omniture.com', 2415828),
(34, 'Daniel Group', '792 Golf Court', 'sbailes@bloglovin.com', 2400128),
(35, 'Waelchi, Johnston and King', '07014 Pepper Wood Terrace', 'kroskellyt@icq.com', 2473716),
(36, 'Weimann-Gutmann', '4815 Florence Way', 'avinnicombeu@nps.gov', 2421796),
(37, 'Runte-Jacobs', '98 Oxford Pass', 'bdumbletonv@amazon.com', 2413952),
(38, 'Gutmann LLC', '71 Bultman Place', 'bsawneyw@mozilla.org', 2402369),
(39, 'Harris-Heaney', '6 Leroy Alley', 'eocarranx@facebook.com', 2464910),
(40, 'Dach LLC', '5736 Chive Lane', 'ccurtissy@google.de', 2477835),
(41, 'Bogisich, Torphy and Lakin', '37 Service Avenue', 'blauxmannz@prweb.com', 2472322),
(42, 'Kuhn, Douglas and Davis', '20 Lotheville Court', 'erenachowski10@networkadvertising.org', 2489525),
(43, 'Bechtelar Inc', '02429 Atwood Place', 'jkillock11@yandex.ru', 2417564),
(44, 'Thompson-Kemmer', '2226 Rigney Pass', 'ccruz12@bigcartel.com', 2457869),
(45, 'Reilly, Hansen and DuBuque', '6282 Swallow Parkway', 'goscollee13@xinhuanet.com', 2491745);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `codigo` int(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `caja` int(10) NOT NULL,
  `ventas` int(10) NOT NULL,
  `genero` varchar(2) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`codigo`, `nombre`, `caja`, `ventas`, `genero`, `password`) VALUES
(3, 'Katrinka', 101, 0, 'm', 'af579a200b74797b3e78822bf28c2985'),
(4, 'Katleen', 102, 0, 'm', 'e3699d375ded04880e3166dc55f89fde'),
(5, 'Felizio', 103, 0, 'm', '379094cd2c69562f8b8305439b49a613'),
(6, 'Arnie', 104, 0, 'f', '808cb3e29688a78c56610d2a457e5ee4'),
(7, 'Edwin', 105, 0, 'f', '4a562ffc4813726d83d0acdd854fc87d'),
(8, 'Laurens', 106, 0, 'f', '1a7417ff18ee9bfe6f04233dd7ec6908'),
(9, 'Allianora', 107, 0, 'm', '3910f2c2fc6b5bce7ed4d739ae576928'),
(10, 'Johnnie', 108, 0, 'f', 'e1d6c5af6076cb6f1d21833b017f7acf'),
(11, 'Kala', 109, 0, 'm', '08621114b828e2910eb45cc0f1d5c11e'),
(12, 'Terrijo', 110, 0, 'm', '5713177c9d4678186b4f52fc58adfca7'),
(13, 'Broderick', 111, 0, 'f', 'f00c4e0dbd8e53f198d650fc877d51c5'),
(14, 'Junia', 112, 0, 'm', '8623116fdaf6cec4a6f34cfdf33e8875'),
(15, 'Myrah', 113, 0, 'm', 'e6ce0d8beebbcb4a35ceeb81d0fa993a'),
(16, 'Wendeline', 114, 0, 'm', 'bebbd8a4c3b2f1498bf9ccd567e9390c'),
(17, 'Malcolm', 115, 0, 'm', 'b24449675845d066d0b8b0823c8125e7'),
(18, 'Otis', 116, 0, 'm', 'cc75ca180881baa4d6fa02673e247891'),
(19, 'Sanford', 117, 0, 'm', '47a30d30bcbe2a852751dbcc6f846a48'),
(20, 'Bar', 118, 0, 'm', 'c635b159445bf65eaf68805aafbfe449'),
(21, 'Dulcia', 119, 0, 'm', '971203006ee3988df71c8dce120ed62d'),
(22, 'Lynelle', 120, 0, 'm', 'e380d864596c236b46e7e9297598bd91'),
(23, 'Thane', 121, 0, 'f', '12802dee624dc4382cc761ee16e9049c'),
(24, 'Hadria', 122, 0, 'f', '7b633fbc7a79639ca0ed9e86b3d7b850'),
(25, 'Jeth', 123, 0, 'm', 'dbf829de0fc6d960acf642256df6f1c8'),
(26, 'Ax', 124, 0, 'm', '81bf16e8e61c76f20631f228b5d6401a'),
(27, 'Ray', 125, 0, 'm', '0b618c0b08706e9a9d772681cc2b3dc6'),
(28, 'Saree', 126, 0, 'f', '658d752708031c70773697d141142449'),
(29, 'Milton', 127, 0, 'f', 'dc5fc071ee4b9ba79be9bea97caddd07'),
(30, 'Brietta', 128, 0, 'm', '3a7297da824766aa2c82ec069f26a010'),
(31, 'Edgardo', 129, 0, 'm', 'd3a54d3e32661d11afa91973eef2722d'),
(32, 'Celle', 130, 0, 'f', '90f2c3b376c855119f2811c7b6dee4b8'),
(33, 'Vonni', 131, 0, 'f', '537a4aa90cb5d278383dc20480b50ff3'),
(34, 'Audry', 132, 0, 'f', '1b12e7f99a35c37335faa6e5741f5c90'),
(35, 'Quintus', 133, 0, 'm', '4047a9a71734daf75cb41224bbbc1a19'),
(36, 'Jammie', 134, 0, 'f', '3ec9f4dfec574f3f635d732154039a6c'),
(37, 'Sigismondo', 135, 0, 'm', 'da1355be7bdc9425517ad8538a482f46'),
(38, 'Woodrow', 136, 0, 'f', 'c2eb78603e380ffcbf0497769bc98dc3'),
(39, 'Armand', 137, 0, 'm', '355051380edb5c9244f554838c9f4a89'),
(40, 'Carce', 138, 0, 'm', '78a95632af796ae18e14fcf1fdd11d66'),
(41, 'Damaris', 139, 0, 'm', 'e53a099f23001a619d25b2a9b599f959'),
(42, 'Libbi', 140, 0, 'm', 'd9cf17bb063d02833d29ff57b758b390'),
(43, 'Graham', 141, 0, 'f', '3aff260ed01bffcba608c6c257ff00d0'),
(44, 'Ollie', 142, 0, 'f', '3783fae4fdd6a76d89d0b5447005e398'),
(45, 'Beilul', 143, 0, 'f', '9a6975c26306024b52ef9bdc424d3762'),
(46, 'Carolee', 144, 0, 'm', 'ae4aa109f05d219f8bd850bf9935804f'),
(47, 'Valery', 145, 0, 'm', '4c34647a7ed1a7b28cc562ab6dd20462'),
(48, 'Alicia', 146, 0, 'm', '9c5708196bbd77fe1ba8537c4f10549f'),
(49, 'Selle', 147, 0, 'f', '4938e4734869370fff8d8bc45b5724ab'),
(50, 'Cindra', 148, 0, 'm', '2dabed5d8187b21e7f27a3b51e78f811'),
(51, 'Loni', 149, 0, 'm', '8cb0fa8a996dcc419d26ff6ce93d930d'),
(52, 'Ferdinanda', 150, 0, 'm', '28aa1efcc938a79f1c2e31c141fa8a0e'),
(53, 'Giovanni', 151, 0, 'f', '8e3b0e39cead27a75f0028e40985ae60'),
(54, 'Gawen', 152, 0, 'm', '65b98fc90a2773ce06d1fb519724d858'),
(55, 'Violette', 153, 0, 'm', '488327b472479ec1d64832f598aba6b3'),
(56, 'Raquel', 154, 0, 'm', '0cc38b30d6b459aa8af76f80903c77b7'),
(57, 'Pandora', 155, 0, 'm', 'ed2e3c5093ad48e6d363dcca82b638dc'),
(58, 'Marve', 156, 0, 'f', '0b5da12265fbc8f8fe4b7fb23e5e2ede'),
(59, 'Lenee', 157, 0, 'm', 'a5a3315897837a34aa79dd97ad3ee02f'),
(60, 'Marji', 158, 0, 'f', 'b0c42e005f4de11d0a5ca5aad4a5555b'),
(61, 'Conrado', 159, 0, 'f', 'f0ee3620173aa54d11328256c38cc683'),
(62, 'Lynde', 160, 0, 'm', '65d2ddb1b56fe5ec4b38b402ca16b73a'),
(63, 'Sisely', 161, 0, 'f', 'd6c68bd59350e2617f234b2d7f59cf4a'),
(64, 'Willey', 162, 0, 'm', 'e6f0027ae1f1b58c2da9e69e62c71736'),
(65, 'Sharl', 163, 0, 'f', 'c6fd527bb12eb3856a0411ed336eaf2b'),
(66, 'Hannis', 164, 0, 'f', '904939a4e50127dd07ac3d2541c73b36'),
(67, 'Allen', 165, 0, 'm', 'e4f02800e8548231ed1286308d96cdd5'),
(68, 'Kelwin', 166, 0, 'f', '44482ee6b509d272b1925949f1852603'),
(69, 'Zerk', 167, 0, 'f', 'f99762b13703eea5e319cca1eaac127f'),
(70, 'Talbot', 168, 0, 'm', 'f0078ef07d7a2f6e5c9f5c77159f725e'),
(71, 'Jacqueline', 169, 0, 'm', 'ec69a1852cf95015ce35064e388d33ec'),
(72, 'Nessy', 170, 0, 'f', '4240134fc5caf45b704c0890e436dd79'),
(73, 'Hale', 171, 0, 'm', '55c9bf05407cbcc3bffab11ac7e4446f'),
(74, 'Garrick', 172, 0, 'm', '2d68f7b560d13a6712d80a108ca1f8c1'),
(75, 'Davidde', 173, 0, 'm', '461112211122bbe7d90bd165020c82aa'),
(76, 'Leonardo', 174, 0, 'f', '755a29fb7f3dabf4fd336044cb7d62b1'),
(77, 'Wolfy', 175, 0, 'f', '45a47b2f5bfc837647c6594a59f4d805'),
(78, 'Skippie', 176, 0, 'f', 'b5dffbc6db7f1e2e423a0143f28d22fb'),
(79, 'Corena', 177, 0, 'm', '808e4755f6cbf1c309c7ad98f4b5b29e'),
(80, 'Charmion', 178, 0, 'f', '386672a6e4b02e57c5e625d59032e582'),
(81, 'Mariellen', 179, 0, 'f', '46f8c0b68d0e90e0fe3325f5643cb87d'),
(82, 'Ashlee', 180, 0, 'm', 'f588c60a846001ae87e7097fd867c3f7'),
(83, 'Kristofer', 181, 0, 'f', '2eecb18f63bee4c8a538ec416a6141e9'),
(84, 'Darla', 182, 0, 'm', '0407f1aa8ea5610c74a3d4af76dc829c'),
(85, 'Bonny', 183, 0, 'f', '214106164783f06a87c5ce821509f726'),
(86, 'Regine', 184, 0, 'f', '1b5754f569a58dc1892399a912e22624'),
(87, 'Tracee', 185, 0, 'm', 'd8579be1141d7c7f94d36370ae6c67b5'),
(88, 'Hughie', 186, 0, 'm', '440df97463838b9c72c324163483a9b0'),
(89, 'Cobbie', 187, 0, 'm', '8a1e546e415fac80847b0b7afca27de5'),
(90, 'Monika', 188, 0, 'f', 'de604080d59e9aaba2abe49a52307fd8'),
(91, 'Ramsay', 189, 0, 'm', '97cf3fb8407ab58a5c36a4a458f85c92'),
(92, 'Oralie', 190, 0, 'f', '2305fd6fdd58b2f150fb97ee0730d839'),
(93, 'Kenneth', 191, 0, 'f', 'e0b451fed2fa27425f0cb0127875e702'),
(94, 'Marylynne', 192, 0, 'm', '42d1553dd50e3be2aac5835f8d02ddbf'),
(95, 'Rochelle', 193, 0, 'm', '66a887f853d2da94f5e19c0eeaa23561'),
(96, 'Anica', 194, 0, 'm', 'bccf08da8970c46e49a85d80c5bed840'),
(97, 'Stan', 195, 0, 'f', '87b2ca87df3bc9d5ccd64559dfaf1f77'),
(98, 'Donnie', 196, 0, 'f', '1b8e51668faa9a248221ea87167a11e9'),
(99, 'Jenna', 197, 0, 'f', 'dba9d9cfc7b71f1fb8f26a60c647f5b8'),
(100, 'Colene', 198, 0, 'm', '5af50bd1ab2f8dbed5686054d38e71b4'),
(101, 'Marlo', 199, 0, 'm', '9aecdb2f7d4436ba872ef0d3c57e2e90'),
(102, 'Saloma', 200, 0, 'f', 'fc6484e281d657239d285c6309b76be7'),
(103, 'Karalynn', 201, 0, 'f', 'ba9ebe0aa142e32901ef9693e3a52789'),
(104, 'Dacy', 202, 0, 'm', 'ff89124980ca9c31f8fd2ed3e72d699e'),
(105, 'Kendra', 203, 0, 'm', '271edba0b010d7f22b26649bb521ef65'),
(106, 'Hildegarde', 204, 0, 'm', '1b84b09290e11fd4535092c008a39fe4'),
(107, 'Sutherlan', 205, 0, 'm', 'a87ddd1a1ec6c87ae7bb89af69e3e104'),
(108, 'June', 206, 0, 'f', '55defb39ee0e3dc520491c8412aaaeae'),
(109, 'Meggy', 207, 0, 'm', 'c4b228b4a9153b6278ad1c059435db39'),
(110, 'Cristina', 208, 0, 'm', '8b585ad88c49ade548db400a44d1fbb9'),
(111, 'Colly', 209, 0, 'f', 'c569030152d65384b8a71e3d8ce40ed8'),
(112, 'Alexandro', 210, 0, 'f', 'df948f2d1bae50d0eeaa8a5fdebfe76d'),
(113, 'Zolly', 211, 0, 'f', '98e6814eb53d31652746dfdd79b47e6f'),
(114, 'Roberto', 212, 0, 'm', '0e953fb33f13da839e6cb44f97e89e4a'),
(115, 'Claudette', 213, 0, 'f', 'd513db1be9de0c405caf62b46776ad1f'),
(116, 'Candide', 214, 0, 'm', '5eb23261de475a87f42c500f6fce46cd'),
(117, 'Zorah', 215, 0, 'm', '1e833bae1d8bc8d51e0fdd38bad6a85e'),
(118, 'Nancee', 216, 0, 'f', '1ea1b6d03c329589341f6ddc9b92f402'),
(119, 'Kory', 217, 0, 'f', '8428a5b0c001973f484d0559a0625ebc'),
(120, 'Stanislaus', 218, 0, 'f', '36b81ada0bc09a364278824d3e41fb51'),
(121, 'Orran', 219, 0, 'f', 'cfc5da281830a381d79abcc58c0f944a'),
(122, 'Margery', 220, 0, 'm', '28c3b7f7fd95b2cfed8b353e8666c843'),
(123, 'Etta', 221, 0, 'm', '684f9b919c68ffb894f8565959eeb93e'),
(124, 'Callie', 222, 0, 'f', 'b8919635d8cdfc95db1fcc7b60b746a6'),
(125, 'Jolynn', 223, 0, 'f', '81e243f56e73b1798752178e4776a71a'),
(126, 'Jesselyn', 224, 0, 'm', 'a25b2f6f7d8f7a09b34769829fac375d'),
(127, 'Cirillo', 225, 0, 'f', '4a7cfdb3da577155309699cac265c344'),
(128, 'Laney', 226, 0, 'm', '7d8a4e118d45c4c8e914e7c17a4d0d18'),
(129, 'Minny', 227, 0, 'f', '6d9fbdb99d2700d5cbebb45840182df4'),
(130, 'Vin', 228, 0, 'm', '89b1a8223daa3385c4943f92eeb52935'),
(131, 'Karita', 229, 0, 'f', '624d5b6313fd6fe919f8559303d1535c'),
(132, 'Rickie', 230, 0, 'f', 'd94b580ac7ff11f604c6644d7292e0a3'),
(133, 'Tris', 231, 0, 'f', '41e496a38a7b2bb0943301140b5a8c72'),
(134, 'Aile', 232, 0, 'm', '96645c7f111a6cc69078382235284fc9'),
(135, 'Grover', 233, 0, 'f', 'bd8fabfa5494a85da0815c25aee88f78'),
(136, 'Flora', 234, 0, 'm', '104970c26d32e556f0c4ddd5082de95e'),
(137, 'Jeffry', 235, 0, 'm', '5a9ae0c4768eb8245c78c868ecd61ee2'),
(138, 'Gustavus', 236, 0, 'f', 'bf88a74cf0c2431a2cce567208fadd78'),
(139, 'Ada', 237, 0, 'm', 'cbcd6f3cd1e07eaa121c44b82ce8e8d5'),
(140, 'Jenn', 238, 0, 'f', 'fabb56c47561ef1d3ee53d433feee33c'),
(141, 'Nata', 239, 0, 'm', '19d609596e775d89d57c06afe9f81890'),
(142, 'Merissa', 240, 0, 'f', 'cda75d4ee88c2f3c7aa4aae796354b23'),
(143, 'Tate', 241, 0, 'm', 'f72a9fc14ab1c437d61fe3cb25bf5970'),
(144, 'Prent', 242, 0, 'f', '6e71e63248befdad80547439aad425ce'),
(145, 'Rickie', 243, 0, 'f', 'ce074488521eebef21b26520d8ec6394'),
(146, 'Meridith', 244, 0, 'f', 'a35dff7143b68e3571ba115117db9214'),
(147, 'Reina', 245, 0, 'f', 'ca859e7c2ec08f77cae5d9adaff345f5'),
(148, 'Ellsworth', 246, 0, 'm', '0ab4f0a7c86fc297a9b401734fe9d65c'),
(149, 'Prentice', 247, 0, 'f', '4d723f4853b9f57fe69bfc84b5760d8c'),
(150, 'Nanny', 248, 0, 'm', '4e79ecdd5513b36631438bba2ebed3c3'),
(151, 'Ofelia', 249, 0, 'f', 'd56733aed6f920270c168da38ca04a44'),
(152, 'Birk', 250, 0, 'm', '1e66442969242d1f7ad3e525ef33d428'),
(153, 'Deirdre', 251, 0, 'f', '2809e699adef86dd8a87f1eee2da0dfd'),
(154, 'Ashly', 252, 0, 'f', 'bdc0afbd8f998e4cb459c36a83295b0e'),
(155, 'Lucias', 253, 0, 'f', '4d8edd2e567bc2a35fe2f632aea1aa66'),
(156, 'Urban', 254, 0, 'm', '41c9b636763b1360c377457d374f62d8'),
(157, 'Bronny', 255, 0, 'f', '7cc700f1a84223168fceda46e9be2fb8'),
(158, 'Averyl', 256, 0, 'm', '26cded63415b511d4ea46741c39479cd'),
(159, 'Sheilakathryn', 257, 0, 'm', '0c9ae56bcb61aa4f310271c1ec6c4fb7'),
(160, 'Vinnie', 258, 0, 'f', '6f51f610cf5cf55850e38acaa2e124a5'),
(161, 'Ferdinand', 259, 0, 'f', '92fb462d29520b6bfb6ba0a107f5b700'),
(162, 'Peirce', 260, 0, 'm', '77544819281ce89da1edec364773e643'),
(163, 'Oliver', 261, 0, 'f', '67794e699d3f3f3c18a9680b07a82029'),
(164, 'Letizia', 262, 0, 'f', '909a7c1103b85fabff2ffd31c8b23078'),
(165, 'Inglis', 263, 0, 'f', '6c6bcf9308769f86badca3e7bc11c52d'),
(166, 'Tisha', 264, 0, 'm', '195b0e078fbde4e74a04d720dae78173'),
(167, 'Thomasin', 265, 0, 'm', '0e67f9f7e43da5b5ff664f1789b6848a'),
(168, 'Joyann', 266, 0, 'm', '0f286782a90d86815e25238c2b55cb6b'),
(169, 'Glenine', 267, 0, 'm', '6f6fc107257b297c7a4317da1b58f675'),
(170, 'Ashia', 268, 0, 'f', 'c9514921695b0b4985bc8d824db6af07'),
(171, 'Clarice', 269, 0, 'f', '6c9ed78da45e76791c0a5b9ec35cc8bb'),
(172, 'Gerrard', 270, 0, 'm', '34b6b1a8c510d245a2f50ac3b9bb28c8'),
(173, 'Aurore', 271, 0, 'm', 'c2f9279081e9465c9ab5bbc52608901e'),
(174, 'Ashlen', 272, 0, 'f', '2db712bc6f2cda5ecbe2f94484d92173'),
(175, 'Celeste', 273, 0, 'f', '18636cb033dd01e617cc282a64f29eaa'),
(176, 'Alecia', 274, 0, 'f', 'e0dfdcc5cd5e97b11a7c0700d7e6204a'),
(177, 'Fannie', 275, 0, 'f', '8723da938f685e29afe8d7c67cc4ef1a'),
(178, 'Luke', 276, 0, 'm', 'c4c07c862b7165168d2523fc6651ea34'),
(179, 'Lilian', 277, 0, 'm', 'e1bf8fefa3ba4353f041e7900209655c'),
(180, 'Bertram', 278, 0, 'm', '07b73dbc1286333a8adfc21641a83add'),
(181, 'Giacopo', 279, 0, 'f', '89272deaf3186d805d3b5ac9fe6d55c2'),
(182, 'Maggi', 280, 0, 'f', 'c6633ea4380973d73c498d7a0ab82cc6'),
(183, 'Roxy', 281, 0, 'f', '9212f8d92934cbcbb071ccc99d8b1f30'),
(184, 'Burch', 282, 0, 'f', '0e6f6fca0d4bef95e071cba25a40fa76'),
(185, 'Kip', 283, 0, 'f', '32efae2c2a31b27137eeca132a6bd765'),
(186, 'Ruthi', 284, 0, 'm', 'ff1ff7b2bc2d45694ead7f1c92d5ad8b'),
(187, 'Avictor', 285, 0, 'm', '4f676b1f3a5ec742d813042269bd891d'),
(188, 'Rosamond', 286, 0, 'f', 'f38feb3ccc1f1b8d552695ddd12eb9e3'),
(189, 'Chad', 287, 0, 'f', 'e38c9f7f7aea236e20f3316779f57f78'),
(190, 'Karin', 288, 0, 'm', '87d9d692f13027a1b76ee6e1cab59a3c'),
(191, 'Brandon', 289, 0, 'f', '0ed8061f5ad26aeca6a059efd8432c43'),
(192, 'Remus', 290, 0, 'f', 'eb35fcf8c876cc00a28d5c0f2b79530c'),
(193, 'Millisent', 291, 0, 'f', '715a172d3961d2d1ef59c63eefe058ed'),
(194, 'Karissa', 292, 0, 'm', '2058f4b40d42f3d9cb4e587c377e96c3'),
(195, 'Bayard', 293, 0, 'm', '52561f86eaf89283e0b09a05fa1d6a87'),
(196, 'Agnella', 294, 0, 'f', 'a74be62a8ffa810182dfdce7e8275756'),
(197, 'Britta', 295, 0, 'f', 'f294f77e1f63d72f3d6510c8c34376d2'),
(198, 'Jeffry', 296, 0, 'f', '4bdf08e1a42caec05a7d6ebe9438b0d5'),
(199, 'Natalee', 297, 0, 'm', 'a9ebde73593ec72b6837424c58ff9ad6'),
(200, 'Andee', 298, 0, 'f', '7dd107a256d9e4907e18df7b266b6445'),
(201, 'Keefer', 299, 0, 'm', '29724f5214c1dc8a8300b2f8374c673c'),
(202, 'Christean', 300, 0, 'f', 'c2247f7a2b679a0d6e99c9985a97b31b');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
