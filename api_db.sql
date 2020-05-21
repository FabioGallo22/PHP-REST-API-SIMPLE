-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2020 a las 22:54:33
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Fashion', 'Category for anything related to fashion.', '2019-06-01 00:35:07', '2019-05-30 20:34:33'),
(2, 'Electronics', 'Gadgets, drones and more.', '2019-06-01 00:35:07', '2019-05-30 20:34:33'),
(3, 'Motors', 'Motor sports and more', '2019-06-01 00:35:07', '2019-05-30 20:34:54'),
(5, 'Movies', 'Movie products.', '2019-09-01 00:12:58', '2019-09-08 16:27:26'),
(6, 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2019-01-08 16:27:47'),
(13, 'Sports', 'Drop into new winter gear.', '2019-01-09 02:24:24', '2019-01-09 04:24:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', '336', 3, '2019-06-01 01:12:26', '2019-05-31 20:12:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', '299', 2, '2019-06-01 01:12:26', '2019-05-31 20:12:26'),
(3, 'Samsung Galaxy S4', 'How about no?', '600', 3, '2019-06-01 01:12:26', '2019-05-31 20:12:26'),
(6, 'Bench Shirt', 'The best shirt!', '29', 1, '2019-06-01 01:12:26', '2019-05-31 05:12:21'),
(7, 'Lenovo Laptop', 'My business partner.', '399', 2, '2019-06-01 01:13:45', '2019-05-31 05:13:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', '259', 2, '2019-06-01 01:14:13', '2019-05-31 05:14:08'),
(9, 'Spalding Watch', 'My sports watch.', '199', 1, '2019-06-01 01:18:36', '2019-05-31 05:18:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', '300', 2, '2019-06-06 17:10:01', '2019-06-05 21:09:51'),
(11, 'Huawei Y300', 'For testing purposes.', '100', 2, '2019-06-06 17:11:04', '2019-06-05 21:10:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', '60', 1, '2019-06-06 17:12:21', '2019-06-05 21:12:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', '70', 1, '2019-06-06 17:12:59', '2019-06-05 21:12:49'),
(26, 'Another product', 'Awesome product!', '555', 2, '2019-11-22 19:07:34', '2019-11-21 23:07:34'),
(28, 'Wallet', 'You can absolutely use this one!', '799', 6, '2019-12-04 21:12:03', '2019-12-04 01:12:03'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', '333', 1, '2019-12-13 00:52:54', '2019-12-12 04:52:54'),
(42, 'Nike Shoes for Men', 'Nike Shoes', '12999', 3, '2019-12-12 06:47:08', '2019-12-12 08:47:08'),
(48, 'Bristol Shoes', 'Awesome shoes.', '999', 5, '2019-01-08 06:36:37', '2019-01-08 08:36:37'),
(60, 'Rolex Watch', 'Luxury watch.', '25000', 1, '2019-01-11 15:46:02', '2019-01-11 17:46:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
