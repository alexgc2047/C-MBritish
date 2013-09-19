-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2013 a las 08:25:51
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `c&m`
--
CREATE DATABASE IF NOT EXISTS `c&m` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `c&m`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_recorder`
--

CREATE TABLE IF NOT EXISTS `action_recorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `success` char(1) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_action_recorder_module` (`module`),
  KEY `idx_action_recorder_user_id` (`user_id`),
  KEY `idx_action_recorder_identifier` (`identifier`),
  KEY `idx_action_recorder_date_added` (`date_added`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=219 ;

--
-- Volcado de datos para la tabla `action_recorder`
--

INSERT INTO `action_recorder` (`id`, `module`, `user_id`, `user_name`, `identifier`, `success`, `date_added`) VALUES
(4, 'ar_reset_password', 2, 'santoso@gmail.com', '127.0.0.1', '1', '2012-08-25 11:36:49'),
(171, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 07:21:44'),
(172, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 07:26:50'),
(173, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 07:38:07'),
(174, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 08:50:21'),
(175, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 09:02:31'),
(176, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 09:18:47'),
(177, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 09:21:06'),
(178, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 10:39:19'),
(179, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 10:45:00'),
(180, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 10:52:42'),
(181, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 10:56:13'),
(182, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 11:06:53'),
(183, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 11:13:15'),
(184, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 11:16:42'),
(185, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 11:26:00'),
(186, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 11:28:32'),
(187, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 11:41:57'),
(188, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 11:53:10'),
(189, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 12:02:21'),
(190, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 12:43:14'),
(191, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-25 12:52:28'),
(192, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 07:26:16'),
(193, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 08:16:08'),
(194, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 14:36:59'),
(195, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 14:43:12'),
(196, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 14:51:30'),
(197, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 14:59:29'),
(198, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 15:15:45'),
(199, 'ar_admin_login', 0, '', '127.0.0.1', '0', '2013-03-26 15:24:57'),
(200, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 15:25:11'),
(201, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 15:34:06'),
(202, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-26 15:45:44'),
(203, 'ar_admin_login', 0, '', '127.0.0.1', '0', '2013-03-27 07:32:17'),
(204, 'ar_admin_login', 0, '', '127.0.0.1', '0', '2013-03-27 07:32:43'),
(205, 'ar_admin_login', 0, '', '127.0.0.1', '0', '2013-03-27 07:32:59'),
(206, 'ar_admin_login', 0, '', '127.0.0.1', '0', '2013-03-27 07:33:22'),
(207, 'ar_admin_login', 0, '', '127.0.0.1', '0', '2013-03-27 07:33:36'),
(208, 'ar_admin_login', 0, '', '127.0.0.1', '0', '2013-03-27 07:34:00'),
(209, 'ar_admin_login', 0, '', '127.0.0.1', '0', '2013-03-27 07:34:22'),
(210, 'ar_admin_login', 0, 'admin', '127.0.0.1', '0', '2013-03-27 07:34:36'),
(211, 'ar_admin_login', 0, 'admin', '127.0.0.1', '0', '2013-03-27 07:36:18'),
(212, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-27 07:42:05'),
(213, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-27 07:50:19'),
(214, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-29 04:49:06'),
(215, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-29 04:50:59'),
(216, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-29 05:08:05'),
(217, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-03-29 05:18:39'),
(218, 'ar_admin_login', 1, 'Admin', '', '1', '2013-09-19 01:02:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) DEFAULT NULL,
  `entry_company` varchar(255) DEFAULT NULL,
  `entry_firstname` varchar(255) NOT NULL,
  `entry_lastname` varchar(255) NOT NULL,
  `entry_street_address` varchar(255) NOT NULL,
  `entry_suburb` varchar(255) DEFAULT NULL,
  `entry_postcode` varchar(255) NOT NULL,
  `entry_city` varchar(255) NOT NULL,
  `entry_state` varchar(255) DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_book_id`),
  KEY `idx_address_book_customers_id` (`customers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(1, 1, 'm', 'red', 'dian', 'santoso', 'florida', '', '343434', 'florida', '', 223, 18),
(2, 2, 'm', 'red', 'santoso', 'san', 'florida', 'Your suburb', '32342', 'florida', '', 223, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_format`
--

CREATE TABLE IF NOT EXISTS `address_format` (
  `address_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_format` varchar(128) NOT NULL,
  `address_summary` varchar(48) NOT NULL,
  PRIMARY KEY (`address_format_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `address_format`
--

INSERT INTO `address_format` (`address_format_id`, `address_format`, `address_summary`) VALUES
(1, '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country'),
(2, '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country'),
(3, '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country'),
(4, '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country'),
(5, '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrators`
--

CREATE TABLE IF NOT EXISTS `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `administrators`
--

INSERT INTO `administrators` (`id`, `user_name`, `user_password`) VALUES
(1, 'admin', '$P$DG4hfO3HQkBeDO.8J/GB33UqDq.hl//');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(64) NOT NULL,
  `banners_url` varchar(255) NOT NULL,
  `banners_image` varchar(64) NOT NULL,
  `banners_group` varchar(10) NOT NULL,
  `banners_html_text` text,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`banners_id`),
  KEY `idx_banners_group` (`banners_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`) VALUES
(1, 'osCommerce', 'http://www.oscommerce.com', 'banners/oscommerce.gif', '468x50', '', 0, NULL, NULL, '2012-08-25 08:48:58', '2012-09-24 07:03:11', 0),
(2, 'oke', 'http://www.eyefuldesign.info', 'payment-logo.png', '250x80', '', NULL, NULL, NULL, '2012-09-24 07:05:20', '2012-09-24 07:06:36', 1),
(4, 'paypal', 'http://www.eyefuldesign.info', 'paypal-payment-logo.png', '210x80', '', NULL, NULL, NULL, '2012-10-07 08:05:14', '2012-10-07 08:05:18', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners_history`
--

CREATE TABLE IF NOT EXISTS `banners_history` (
  `banners_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL,
  PRIMARY KEY (`banners_history_id`),
  KEY `idx_banners_history_banners_id` (`banners_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Volcado de datos para la tabla `banners_history`
--

INSERT INTO `banners_history` (`banners_history_id`, `banners_id`, `banners_shown`, `banners_clicked`, `banners_history_date`) VALUES
(1, 1, 103, 0, '2012-08-25 08:51:19'),
(2, 1, 131, 0, '2012-09-23 14:39:45'),
(4, 2, 46, 0, '2012-09-24 07:45:54'),
(5, 2, 226, 0, '2012-09-27 08:04:35'),
(7, 2, 248, 0, '2012-09-28 03:22:50'),
(9, 2, 670, 0, '2012-09-29 06:14:46'),
(11, 2, 23, 0, '2012-09-30 00:30:43'),
(14, 4, 190, 0, '2012-10-07 08:05:19'),
(15, 4, 412, 0, '2012-10-08 08:11:18'),
(16, 2, 317, 0, '2012-10-08 12:45:05'),
(17, 2, 582, 0, '2012-10-09 06:46:47'),
(18, 4, 580, 0, '2012-10-09 06:46:47'),
(19, 2, 148, 0, '2012-10-10 20:46:29'),
(20, 4, 147, 0, '2012-10-10 20:46:30'),
(21, 2, 254, 0, '2012-10-11 05:32:47'),
(22, 4, 363, 0, '2012-10-11 05:32:49'),
(23, 4, 3, 0, '2012-10-12 08:42:18'),
(24, 4, 174, 0, '2012-10-13 07:15:59'),
(25, 4, 5, 0, '2012-10-14 05:52:44'),
(26, 4, 2, 0, '2012-10-19 06:55:37'),
(27, 4, 3, 0, '2012-11-22 23:00:16'),
(28, 4, 273, 0, '2012-11-23 07:26:23'),
(29, 2, 265, 0, '2012-11-23 07:31:29'),
(30, 2, 74, 0, '2013-03-06 11:51:28'),
(31, 4, 74, 0, '2013-03-06 11:51:30'),
(32, 2, 9, 0, '2013-03-07 08:38:00'),
(33, 4, 9, 0, '2013-03-07 08:38:01'),
(34, 2, 7, 0, '2013-03-11 23:32:57'),
(35, 4, 7, 0, '2013-03-11 23:32:59'),
(36, 2, 22, 0, '2013-03-09 07:26:06'),
(37, 4, 22, 0, '2013-03-09 07:26:08'),
(38, 2, 202, 0, '2013-03-15 07:55:22'),
(39, 4, 267, 0, '2013-03-15 07:55:23'),
(40, 4, 164, 0, '2013-03-16 04:42:16'),
(41, 4, 1, 0, '2013-03-19 10:29:10'),
(42, 4, 60, 0, '2013-03-24 06:59:32'),
(43, 4, 1, 0, '2013-03-25 07:34:00'),
(44, 4, 82, 0, '2013-03-27 13:08:16'),
(45, 4, 47, 0, '2013-03-28 19:33:04'),
(46, 4, 6, 0, '2013-03-29 04:51:42'),
(47, 4, 4, 0, '2013-09-19 01:02:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` varchar(64) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `parent_id`, `sort_order`, `date_added`, `last_modified`) VALUES
(1, 'image-placeholder80x50-Optimized.png', 0, 1, '2012-08-25 08:48:58', '2012-09-27 08:09:12'),
(2, 'image-placeholder80x50-Optimized.png', 0, 2, '2012-08-25 08:48:58', '2012-09-27 08:17:18'),
(3, 'image-placeholder80x50-Optimized.png', 0, 3, '2012-08-25 08:48:58', '2012-09-27 08:20:24'),
(16, 'image-placeholder-Optimized.png', 1, 0, '2012-08-25 08:48:59', '2012-09-27 08:11:28'),
(17, 'image-placeholder-Optimized.png', 1, 0, '2012-08-25 08:48:59', '2012-09-27 08:10:06'),
(21, 'image-placeholder80x50-Optimized.png', 0, 4, '2012-08-25 08:48:59', '2012-09-27 08:24:33'),
(22, 'image-placeholder80x50-Optimized.png', 0, 5, '2012-09-27 08:26:30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories_description`
--

CREATE TABLE IF NOT EXISTS `categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) NOT NULL,
  PRIMARY KEY (`categories_id`,`language_id`),
  KEY `idx_categories_name` (`categories_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories_description`
--

INSERT INTO `categories_description` (`categories_id`, `language_id`, `categories_name`) VALUES
(16, 1, 'Lorem Amet'),
(16, 2, 'Lorem Amet'),
(16, 3, 'Lorem Amet'),
(17, 1, 'Lorem Dolor'),
(17, 2, 'Lorem Dolor'),
(17, 3, 'Lorem Dolor'),
(1, 1, 'Lorem Ipsum Set'),
(1, 2, 'Lorem Ipsum Set'),
(1, 3, 'Lorem Ipsum Set'),
(22, 1, 'Proin nec justo'),
(22, 2, 'Proin nec justo'),
(22, 3, 'Proin nec justo'),
(2, 1, 'Quisque eget purus'),
(2, 2, 'Quisque eget purus'),
(2, 3, 'Quisque eget purus'),
(21, 1, 'Suspendisse potenti'),
(21, 2, 'Suspendisse potenti'),
(21, 3, 'Suspendisse potenti'),
(3, 1, 'Vestibulum vitae'),
(3, 2, 'Vestibulum vitae'),
(3, 3, 'Vestibulum vitae');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_title` varchar(255) NOT NULL,
  `configuration_key` varchar(255) NOT NULL,
  `configuration_value` text NOT NULL,
  `configuration_description` varchar(255) NOT NULL,
  `configuration_group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `use_function` varchar(255) DEFAULT NULL,
  `set_function` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=658 ;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(1, 'Store Name', 'STORE_NAME', 'C&M British', 'The name of my store', 1, 1, '2013-03-26 14:37:40', '2012-08-25 08:48:59', NULL, NULL),
(2, 'Store Owner', 'STORE_OWNER', 'Admin', 'The name of my store owner', 1, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(3, 'E-Mail Address', 'STORE_OWNER_EMAIL_ADDRESS', '10030544@itcelaya.edu.mx', 'The e-mail address of my store owner', 1, 3, NULL, '2012-08-25 08:48:59', NULL, NULL),
(4, 'E-Mail From', 'EMAIL_FROM', '"Admin" <10030544@itcelaya.edu.mx>', 'The e-mail address used in (sent) e-mails', 1, 4, NULL, '2012-08-25 08:48:59', NULL, NULL),
(5, 'Country', 'STORE_COUNTRY', '223', 'The country my store is located in <br /><br /><strong>Note: Please remember to update the store zone.</strong>', 1, 6, NULL, '2012-08-25 08:48:59', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(6, 'Zone', 'STORE_ZONE', '18', 'The zone my store is located in', 1, 7, NULL, '2012-08-25 08:48:59', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list('),
(7, 'Expected Sort Order', 'EXPECTED_PRODUCTS_SORT', 'desc', 'This is the sort order used in the expected products box.', 1, 8, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''asc'', ''desc''), '),
(8, 'Expected Sort Field', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'The column to sort by in the expected products box.', 1, 9, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''products_name'', ''date_expected''), '),
(9, 'Switch To Default Language Currency', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Automatically switch to the language''s currency when it is changed', 1, 10, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(10, 'Send Extra Order Emails To', 'SEND_EXTRA_ORDER_EMAILS_TO', '', 'Send extra order emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 1, 11, NULL, '2012-08-25 08:48:59', NULL, NULL),
(11, 'Use Search-Engine Safe URLs', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Use search-engine safe urls for all site links', 1, 12, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(12, 'Display Cart After Adding Product', 'DISPLAY_CART', 'true', 'Display the shopping cart after adding a product (or return back to their origin)', 1, 14, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(13, 'Allow Guest To Tell A Friend', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'false', 'Allow guests to tell a friend about a product', 1, 15, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(14, 'Default Search Operator', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Default search operators', 1, 17, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''and'', ''or''), '),
(15, 'Store Address and Phone', 'STORE_NAME_ADDRESS', 'Store Name\nAddress\nCountry\nPhone', 'This is the Store Name, Address and Phone used on printable documents and displayed online', 1, 18, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_textarea('),
(16, 'Show Category Counts', 'SHOW_COUNTS', 'true', 'Count recursively how many products are in each category', 1, 19, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(17, 'Tax Decimal Places', 'TAX_DECIMAL_PLACES', '3', 'Pad the tax value this amount of decimal places', 1, 20, '2012-09-29 21:04:26', '2012-08-25 08:48:59', NULL, NULL),
(18, 'Display Prices with Tax', 'DISPLAY_PRICE_WITH_TAX', 'true', 'Display prices with tax included (true) or add the tax at the end (false)', 1, 21, '2012-09-29 21:03:44', '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(19, 'First Name', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Minimum length of first name', 2, 1, NULL, '2012-08-25 08:48:59', NULL, NULL),
(20, 'Last Name', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Minimum length of last name', 2, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(21, 'Date of Birth', 'ENTRY_DOB_MIN_LENGTH', '10', 'Minimum length of date of birth', 2, 3, NULL, '2012-08-25 08:48:59', NULL, NULL),
(22, 'E-Mail Address', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Minimum length of e-mail address', 2, 4, NULL, '2012-08-25 08:48:59', NULL, NULL),
(23, 'Street Address', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Minimum length of street address', 2, 5, NULL, '2012-08-25 08:48:59', NULL, NULL),
(24, 'Company', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Minimum length of company name', 2, 6, NULL, '2012-08-25 08:48:59', NULL, NULL),
(25, 'Post Code', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Minimum length of post code', 2, 7, NULL, '2012-08-25 08:48:59', NULL, NULL),
(26, 'City', 'ENTRY_CITY_MIN_LENGTH', '3', 'Minimum length of city', 2, 8, NULL, '2012-08-25 08:48:59', NULL, NULL),
(27, 'State', 'ENTRY_STATE_MIN_LENGTH', '2', 'Minimum length of state', 2, 9, NULL, '2012-08-25 08:48:59', NULL, NULL),
(28, 'Telephone Number', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Minimum length of telephone number', 2, 10, NULL, '2012-08-25 08:48:59', NULL, NULL),
(29, 'Password', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Minimum length of password', 2, 11, NULL, '2012-08-25 08:48:59', NULL, NULL),
(30, 'Credit Card Owner Name', 'CC_OWNER_MIN_LENGTH', '3', 'Minimum length of credit card owner name', 2, 12, NULL, '2012-08-25 08:48:59', NULL, NULL),
(31, 'Credit Card Number', 'CC_NUMBER_MIN_LENGTH', '10', 'Minimum length of credit card number', 2, 13, NULL, '2012-08-25 08:48:59', NULL, NULL),
(32, 'Review Text', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Minimum length of review text', 2, 14, NULL, '2012-08-25 08:48:59', NULL, NULL),
(33, 'Best Sellers', 'MIN_DISPLAY_BESTSELLERS', '1', 'Minimum number of best sellers to display', 2, 15, NULL, '2012-08-25 08:48:59', NULL, NULL),
(34, 'Also Purchased', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Minimum number of products to display in the ''This Customer Also Purchased'' box', 2, 16, NULL, '2012-08-25 08:48:59', NULL, NULL),
(35, 'Address Book Entries', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximum address book entries a customer is allowed to have', 3, 1, NULL, '2012-08-25 08:48:59', NULL, NULL),
(36, 'Search Results', 'MAX_DISPLAY_SEARCH_RESULTS', '20', 'Amount of products to list', 3, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(37, 'Page Links', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Number of ''number'' links use for page-sets', 3, 3, NULL, '2012-08-25 08:48:59', NULL, NULL),
(38, 'Special Products', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '6', 'Maximum number of products on special to display', 3, 4, '2012-09-24 06:56:58', '2012-08-25 08:48:59', NULL, NULL),
(39, 'New Products Module', 'MAX_DISPLAY_NEW_PRODUCTS', '6', 'Maximum number of new products to display in a category', 3, 5, '2012-10-09 10:27:14', '2012-08-25 08:48:59', NULL, NULL),
(40, 'Products Expected', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'Maximum number of products expected to display', 3, 6, NULL, '2012-08-25 08:48:59', NULL, NULL),
(41, 'Manufacturers List', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '5', 'Used in manufacturers box; when the number of manufacturers exceeds this number, a drop-down list will be displayed instead of the default list', 3, 7, '2012-10-11 19:11:44', '2012-08-25 08:48:59', NULL, NULL),
(42, 'Manufacturers Select Size', 'MAX_MANUFACTURERS_LIST', '5', 'Used in manufacturers box; when this value is ''1'' the classic drop-down list will be used for the manufacturers box. Otherwise, a list-box with the specified number of rows will be displayed.', 3, 7, '2012-10-11 19:12:15', '2012-08-25 08:48:59', NULL, NULL),
(43, 'Length of Manufacturers Name', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '25', 'Used in manufacturers box; maximum length of manufacturers name to display', 3, 8, '2012-09-24 06:57:45', '2012-08-25 08:48:59', NULL, NULL),
(44, 'New Reviews', 'MAX_DISPLAY_NEW_REVIEWS', '3', 'Maximum number of new reviews to display', 3, 9, '2012-09-24 06:57:56', '2012-08-25 08:48:59', NULL, NULL),
(45, 'Selection of Random Reviews', 'MAX_RANDOM_SELECT_REVIEWS', '10', 'How many records to select from to choose one random product review', 3, 10, NULL, '2012-08-25 08:48:59', NULL, NULL),
(46, 'Selection of Random New Products', 'MAX_RANDOM_SELECT_NEW', '10', 'How many records to select from to choose one random new product to display', 3, 11, NULL, '2012-08-25 08:48:59', NULL, NULL),
(47, 'Selection of Products on Special', 'MAX_RANDOM_SELECT_SPECIALS', '10', 'How many records to select from to choose one random product special to display', 3, 12, NULL, '2012-08-25 08:48:59', NULL, NULL),
(48, 'Categories To List Per Row', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'How many categories to list per row', 3, 13, '2012-10-09 10:23:57', '2012-08-25 08:48:59', NULL, NULL),
(49, 'New Products Listing', 'MAX_DISPLAY_PRODUCTS_NEW', '6', 'Maximum number of new products to display in new products page', 3, 14, '2012-10-09 10:22:06', '2012-08-25 08:48:59', NULL, NULL),
(50, 'Best Sellers', 'MAX_DISPLAY_BESTSELLERS', '10', 'Maximum number of best sellers to display', 3, 15, NULL, '2012-08-25 08:48:59', NULL, NULL),
(51, 'Also Purchased', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Maximum number of products to display in the ''This Customer Also Purchased'' box', 3, 16, NULL, '2012-08-25 08:48:59', NULL, NULL),
(52, 'Customer Order History Box', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Maximum number of products to display in the customer order history box', 3, 17, NULL, '2012-08-25 08:48:59', NULL, NULL),
(53, 'Order History', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Maximum number of orders to display in the order history page', 3, 18, NULL, '2012-08-25 08:48:59', NULL, NULL),
(54, 'Product Quantities In Shopping Cart', 'MAX_QTY_IN_CART', '0', 'Maximum number of product quantities that can be added to the shopping cart (0 for no limit)', 3, 19, '2012-09-24 06:58:28', '2012-08-25 08:48:59', NULL, NULL),
(55, 'Small Image Width', 'SMALL_IMAGE_WIDTH', '130', 'The pixel width of small images', 4, 1, '2012-09-24 06:55:47', '2012-08-25 08:48:59', NULL, NULL),
(56, 'Small Image Height', 'SMALL_IMAGE_HEIGHT', '160', 'The pixel height of small images', 4, 2, '2012-09-24 06:55:53', '2012-08-25 08:48:59', NULL, NULL),
(57, 'Heading Image Width', 'HEADING_IMAGE_WIDTH', '57', 'The pixel width of heading images', 4, 3, NULL, '2012-08-25 08:48:59', NULL, NULL),
(58, 'Heading Image Height', 'HEADING_IMAGE_HEIGHT', '40', 'The pixel height of heading images', 4, 4, NULL, '2012-08-25 08:48:59', NULL, NULL),
(59, 'Subcategory Image Width', 'SUBCATEGORY_IMAGE_WIDTH', '100', 'The pixel width of subcategory images', 4, 5, NULL, '2012-08-25 08:48:59', NULL, NULL),
(60, 'Subcategory Image Height', 'SUBCATEGORY_IMAGE_HEIGHT', '100', 'The pixel height of subcategory images', 4, 6, '2012-09-24 06:56:01', '2012-08-25 08:48:59', NULL, NULL),
(61, 'Calculate Image Size', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calculate the size of images?', 4, 7, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(62, 'Image Required', 'IMAGE_REQUIRED', 'true', 'Enable to display broken images. Good for development.', 4, 8, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(63, 'Gender', 'ACCOUNT_GENDER', 'true', 'Display gender in the customers account', 5, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(64, 'Date of Birth', 'ACCOUNT_DOB', 'true', 'Display date of birth in the customers account', 5, 2, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(65, 'Company', 'ACCOUNT_COMPANY', 'true', 'Display company in the customers account', 5, 3, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(66, 'Suburb', 'ACCOUNT_SUBURB', 'true', 'Display suburb in the customers account', 5, 4, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(67, 'State', 'ACCOUNT_STATE', 'true', 'Display state in the customers account', 5, 5, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(68, 'Installed Modules', 'MODULE_PAYMENT_INSTALLED', 'authorizenet_cc_aim.php;authorizenet_cc_sim.php;chronopay.php;cod.php;inpay.php;ipayment_cc.php;ipayment_elv.php;ipayment_pp.php;moneyorder.php;nochex.php;paypal_express.php;paypal_pro_dp.php;paypal_pro_payflow_dp.php;paypal_pro_payflow_ec.php;paypal_standard.php;paypoint_secpay.php;pm2checkout.php;psigate.php;rbsworldpay_hosted.php;sage_pay_direct.php;sage_pay_form.php;sage_pay_server.php;sofortueberweisung_direct.php', 'List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: cod.php;paypal_express.php)', 6, 0, '2012-10-13 09:11:41', '2012-08-25 08:48:59', NULL, NULL),
(69, 'Installed Modules', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_shipping.php;ot_tax.php;ot_total.php', 'List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', 6, 0, '2012-10-13 07:15:19', '2012-08-25 08:48:59', NULL, NULL),
(70, 'Installed Modules', 'MODULE_SHIPPING_INSTALLED', 'flat.php;item.php;table.php;zones.php', 'List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)', 6, 0, '2012-09-24 07:01:48', '2012-08-25 08:48:59', NULL, NULL),
(71, 'Installed Modules', 'MODULE_ACTION_RECORDER_INSTALLED', 'ar_admin_login.php;ar_contact_us.php;ar_reset_password.php;ar_tell_a_friend.php', 'List of action recorder module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(72, 'Installed Modules', 'MODULE_SOCIAL_BOOKMARKS_INSTALLED', 'sb_email.php;sb_google_plus_share.php;sb_facebook.php;sb_twitter.php;sb_pinterest.php;sb_digg.php', 'List of social bookmark module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, '2012-09-24 07:00:33', '2012-08-25 08:48:59', NULL, NULL),
(73, 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Do you want to accept Cash On Delevery payments?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(74, 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-08-25 08:48:59', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(75, 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(76, 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-08-25 08:48:59', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(77, 'Enable Flat Shipping', 'MODULE_SHIPPING_FLAT_STATUS', 'True', 'Do you want to offer flat rate shipping?', 6, 0, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(78, 'Shipping Cost', 'MODULE_SHIPPING_FLAT_COST', '5.00', 'The shipping cost for all orders using this shipping method.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(79, 'Tax Class', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2012-08-25 08:48:59', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(80, 'Shipping Zone', 'MODULE_SHIPPING_FLAT_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2012-08-25 08:48:59', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(81, 'Sort Order', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(82, 'Default Currency', 'DEFAULT_CURRENCY', 'USD', 'Default Currency', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(83, 'Default Language', 'DEFAULT_LANGUAGE', 'en', 'Default Language', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(84, 'Default Order Status For New Orders', 'DEFAULT_ORDERS_STATUS_ID', '1', 'When a new order is created, this order status will be assigned to it.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(85, 'Display Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Do you want to display the order shipping cost?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(86, 'Sort Order', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '2', 'Sort order of display.', 6, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(87, 'Allow Free Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'true', 'Do you want to allow free shipping?', 6, 3, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(88, 'Free Shipping For Orders Over', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '550', 'Provide free shipping for orders over the set amount.', 6, 4, NULL, '2012-08-25 08:48:59', 'currencies->format', NULL),
(89, 'Provide Free Shipping For Orders Made', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'both', 'Provide free shipping for orders sent to the set destination.', 6, 5, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''national'', ''international'', ''both''), '),
(90, 'Display Sub-Total', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Do you want to display the order sub-total cost?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(91, 'Sort Order', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '1', 'Sort order of display.', 6, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(92, 'Display Tax', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Do you want to display the order tax value?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(93, 'Sort Order', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '3', 'Sort order of display.', 6, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(94, 'Display Total', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Do you want to display the total order value?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(95, 'Sort Order', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '4', 'Sort order of display.', 6, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(96, 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES', '2', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(97, 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_TELL_A_FRIEND_EMAIL_MINUTES', '1', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(98, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_MINUTES', '5', 'Number of minutes to allow login attempts to occur.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(99, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_ATTEMPTS', '3', 'Number of login attempts to allow within the specified period.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(100, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_MINUTES', '1', 'Number of minutes to allow password resets to occur.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(101, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_ATTEMPTS', '1', 'Number of password reset attempts to allow within the specified period.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(102, 'Enable E-Mail Module', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS', 'True', 'Do you want to allow products to be shared through e-mail?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(103, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(104, 'Enable Google+ Share Module', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_STATUS', 'True', 'Do you want to allow products to be shared through Google+?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(105, 'Annotation', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ANNOTATION', 'Bubble', 'The annotation to display next to the button.', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''Inline'', ''Bubble'', ''Vertical-Bubble'', ''None''), '),
(106, 'Width', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_WIDTH', '', 'The maximum width of the button.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(107, 'Height', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_HEIGHT', '15', 'Sets the height of the button.', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''15'', ''20'', ''24'', ''60''), '),
(108, 'Alignment', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ALIGN', 'Left', 'The alignment of the button assets.', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''Left'', ''Right''), '),
(109, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_SORT_ORDER', '20', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(110, 'Enable Facebook Module', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_STATUS', 'True', 'Do you want to allow products to be shared through Facebook?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(111, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_SORT_ORDER', '30', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(112, 'Enable Twitter Module', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_STATUS', 'True', 'Do you want to allow products to be shared through Twitter?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(113, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_SORT_ORDER', '40', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(114, 'Enable Pinterest Module', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_STATUS', 'True', 'Do you want to allow Pinterest Button?', 6, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(115, 'Layout Position', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_BUTTON_COUNT_POSITION', 'None', 'Horizontal or Vertical or None', 6, 2, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''Horizontal'', ''Vertical'', ''None''), '),
(116, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(117, 'Country of Origin', 'SHIPPING_ORIGIN_COUNTRY', '223', 'Select the country of origin to be used in shipping quotes.', 7, 1, NULL, '2012-08-25 08:48:59', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(118, 'Postal Code', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.', 7, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(119, 'Enter the Maximum Package Weight you will ship', 'SHIPPING_MAX_WEIGHT', '50', 'Carriers have a max weight limit for a single package. This is a common one for all.', 7, 3, NULL, '2012-08-25 08:48:59', NULL, NULL),
(120, 'Package Tare weight.', 'SHIPPING_BOX_WEIGHT', '3', 'What is the weight of typical packaging of small to medium packages?', 7, 4, NULL, '2012-08-25 08:48:59', NULL, NULL),
(121, 'Larger packages - percentage increase.', 'SHIPPING_BOX_PADDING', '10', 'For 10% enter 10', 7, 5, NULL, '2012-08-25 08:48:59', NULL, NULL),
(122, 'Display Product Image', 'PRODUCT_LIST_IMAGE', '1', 'Do you want to display the Product Image?', 8, 1, NULL, '2012-08-25 08:48:59', NULL, NULL),
(123, 'Display Product Manufacturer Name', 'PRODUCT_LIST_MANUFACTURER', '5', 'Do you want to display the Product Manufacturer Name?', 8, 2, '2012-09-24 06:58:51', '2012-08-25 08:48:59', NULL, NULL),
(124, 'Display Product Model', 'PRODUCT_LIST_MODEL', '6', 'Do you want to display the Product Model?', 8, 3, '2012-09-24 06:58:56', '2012-08-25 08:48:59', NULL, NULL),
(125, 'Display Product Name', 'PRODUCT_LIST_NAME', '2', 'Do you want to display the Product Name?', 8, 4, NULL, '2012-08-25 08:48:59', NULL, NULL),
(126, 'Display Product Price', 'PRODUCT_LIST_PRICE', '3', 'Do you want to display the Product Price', 8, 5, NULL, '2012-08-25 08:48:59', NULL, NULL),
(127, 'Display Product Quantity', 'PRODUCT_LIST_QUANTITY', '7', 'Do you want to display the Product Quantity?', 8, 6, '2012-09-24 06:59:05', '2012-08-25 08:48:59', NULL, NULL),
(128, 'Display Product Weight', 'PRODUCT_LIST_WEIGHT', '8', 'Do you want to display the Product Weight?', 8, 7, '2012-09-24 06:59:14', '2012-08-25 08:48:59', NULL, NULL),
(129, 'Display Buy Now column', 'PRODUCT_LIST_BUY_NOW', '4', 'Do you want to display the Buy Now column?', 8, 8, NULL, '2012-08-25 08:48:59', NULL, NULL),
(130, 'Display Category/Manufacturer Filter (0=disable; 1=enable)', 'PRODUCT_LIST_FILTER', '1', 'Do you want to display the Category/Manufacturer Filter?', 8, 9, NULL, '2012-08-25 08:48:59', NULL, NULL),
(131, 'Location of Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 'PREV_NEXT_BAR_LOCATION', '3', 'Sets the location of the Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 8, 10, '2012-09-24 06:59:22', '2012-08-25 08:48:59', NULL, NULL),
(132, 'Check stock level', 'STOCK_CHECK', 'true', 'Check to see if sufficent stock is available', 9, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(133, 'Subtract stock', 'STOCK_LIMITED', 'true', 'Subtract product in stock by product orders', 9, 2, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(134, 'Allow Checkout', 'STOCK_ALLOW_CHECKOUT', 'true', 'Allow customer to checkout even if there is insufficient stock', 9, 3, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(135, 'Mark product out of stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Display something on screen so customer can see which product has insufficient stock', 9, 4, NULL, '2012-08-25 08:48:59', NULL, NULL),
(136, 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', 9, 5, NULL, '2012-08-25 08:48:59', NULL, NULL),
(137, 'Store Page Parse Time', 'STORE_PAGE_PARSE_TIME', 'false', 'Store the time it takes to parse a page', 10, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(138, 'Log Destination', 'STORE_PAGE_PARSE_TIME_LOG', '/var/log/www/tep/page_parse_time.log', 'Directory and filename of the page parse time log', 10, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(139, 'Log Date Format', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'The date format', 10, 3, NULL, '2012-08-25 08:48:59', NULL, NULL),
(140, 'Display The Page Parse Time', 'DISPLAY_PAGE_PARSE_TIME', 'true', 'Display the page parse time (store page parse time must be enabled)', 10, 4, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(141, 'Store Database Queries', 'STORE_DB_TRANSACTIONS', 'false', 'Store the database queries in the page parse time log', 10, 5, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(142, 'Use Cache', 'USE_CACHE', 'false', 'Use caching features', 11, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(143, 'Cache Directory', 'DIR_FS_CACHE', 'C:/xampp/htdocs/TopicosWeb/C&MBritish/includes/work/', 'The directory where the cached files are saved', 11, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(144, 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'sendmail', 'Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.', 12, 1, '2012-08-25 11:50:16', '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''sendmail'', ''smtp''),'),
(145, 'E-Mail Linefeeds', 'EMAIL_LINEFEED', 'LF', 'Defines the character sequence used to separate mail headers.', 12, 2, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''LF'', ''CRLF''),'),
(146, 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', 'false', 'Send e-mails in HTML format', 12, 3, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(147, 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Verify e-mail address through a DNS server', 12, 4, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(148, 'Send E-Mails', 'SEND_EMAILS', 'true', 'Send out e-mails', 12, 5, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(149, 'Enable download', 'DOWNLOAD_ENABLED', 'true', 'Enable the products download functions.', 13, 1, '2012-09-23 22:40:33', '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(150, 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', 'false', 'Use browser redirection for download. Disable on non-Unix systems.', 13, 2, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(151, 'Expiry delay (days)', 'DOWNLOAD_MAX_DAYS', '7', 'Set number of days before the download link expires. 0 means no limit.', 13, 3, NULL, '2012-08-25 08:48:59', NULL, ''),
(152, 'Maximum number of downloads', 'DOWNLOAD_MAX_COUNT', '5', 'Set the maximum number of downloads. 0 means no download authorized.', 13, 4, NULL, '2012-08-25 08:48:59', NULL, ''),
(153, 'Enable GZip Compression', 'GZIP_COMPRESSION', 'false', 'Enable HTTP GZip compression.', 14, 1, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(154, 'Compression Level', 'GZIP_LEVEL', '5', 'Use this compression level 0-9 (0 = minimum, 9 = maximum).', 14, 2, NULL, '2012-08-25 08:48:59', NULL, NULL),
(155, 'Session Directory', 'SESSION_WRITE_DIRECTORY', 'C:/xampp/htdocs/TopicosWeb/C&MBritish/includes/work/', 'If sessions are file based, store them in this directory.', 15, 1, NULL, '2012-08-25 08:48:59', NULL, NULL),
(156, 'Force Cookie Use', 'SESSION_FORCE_COOKIE_USE', 'False', 'Force the use of sessions when cookies are only enabled.', 15, 2, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(157, 'Check SSL Session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', 15, 3, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(158, 'Check User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', 15, 4, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(159, 'Check IP Address', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', 15, 5, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(160, 'Prevent Spider Sessions', 'SESSION_BLOCK_SPIDERS', 'True', 'Prevent known spiders from starting a session.', 15, 6, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(161, 'Recreate Session', 'SESSION_RECREATE', 'True', 'Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).', 15, 7, NULL, '2012-08-25 08:48:59', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(162, 'Last Update Check Time', 'LAST_UPDATE_CHECK_TIME', '', 'Last time a check for new versions of osCommerce was run', 6, 0, NULL, '2012-08-25 08:48:59', NULL, NULL),
(163, 'Enable PayPal Express Checkout', 'MODULE_PAYMENT_PAYPAL_EXPRESS_STATUS', 'True', 'Do you want to accept PayPal Express Checkout payments?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(164, 'Seller Account', 'MODULE_PAYMENT_PAYPAL_EXPRESS_SELLER_ACCOUNT', '10030544@itcelaya.edu.mx', 'The email address of the seller account if no API credentials has been setup.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(165, 'API Username', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_USERNAME', '', 'The username to use for the PayPal API service', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(166, 'API Password', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_PASSWORD', '', 'The password to use for the PayPal API service', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(167, 'API Signature', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_SIGNATURE', '', 'The signature to use for the PayPal API service', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(168, 'Transaction Server', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_SERVER', 'Live', 'Use the live or testing (sandbox) gateway server to process transactions?', 6, 0, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(169, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(170, 'PayPal Account Optional', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ACCOUNT_OPTIONAL', 'False', 'This must also be enabled in your PayPal account, in Profile > Website Payment Preferences.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(171, 'PayPal Instant Update', 'MODULE_PAYMENT_PAYPAL_EXPRESS_INSTANT_UPDATE', 'True', 'Support PayPal shipping and tax calculations on the PayPal.com site during Express Checkout.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(172, 'PayPal Checkout Image', 'MODULE_PAYMENT_PAYPAL_EXPRESS_CHECKOUT_IMAGE', 'Static', 'Use static or dynamic Express Checkout image buttons. Dynamic images are used with PayPal campaigns.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''Static'', ''Dynamic''), '),
(173, 'Debug E-Mail Address', 'MODULE_PAYMENT_PAYPAL_EXPRESS_DEBUG_EMAIL', '', 'All parameters of an invalid transaction will be sent to this email address.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(174, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-08-25 08:49:02', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(175, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_EXPRESS_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(176, 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-08-25 08:49:02', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(177, 'PayPal Transactions Order Status Level', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTIONS_ORDER_STATUS_ID', '4', 'Include PayPal transaction information in this order status level', 6, 0, NULL, '2012-08-25 08:49:02', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(178, 'cURL Program Location', 'MODULE_PAYMENT_PAYPAL_EXPRESS_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(179, 'Installed Modules', 'MODULE_HEADER_TAGS_INSTALLED', 'ht_manufacturer_title.php;ht_category_title.php;ht_product_title.php;ht_canonical.php;ht_robot_noindex.php', 'List of header tag module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, '2012-10-13 07:16:42', '2012-08-25 08:49:02', NULL, NULL),
(180, 'Enable Category Title Module', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_STATUS', 'True', 'Do you want to allow category titles to be added to the page title?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(181, 'Sort Order', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(182, 'Enable Manufacturer Title Module', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_STATUS', 'True', 'Do you want to allow manufacturer titles to be added to the page title?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(183, 'Sort Order', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(184, 'Enable Product Title Module', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_STATUS', 'True', 'Do you want to allow product titles to be added to the page title?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(185, 'Sort Order', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(186, 'Enable Canonical Module', 'MODULE_HEADER_TAGS_CANONICAL_STATUS', 'True', 'Do you want to enable the Canonical module?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(187, 'Sort Order', 'MODULE_HEADER_TAGS_CANONICAL_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(188, 'Enable Robot NoIndex Module', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_STATUS', 'True', 'Do you want to enable the Robot NoIndex module?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(189, 'Pages', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_PAGES', 'account.php;account_edit.php;account_history.php;account_history_info.php;account_newsletters.php;account_notifications.php;account_password.php;address_book.php;address_book_process.php;checkout_confirmation.php;checkout_payment.php;checkout_payment_address.php;checkout_process.php;checkout_shipping.php;checkout_shipping_address.php;checkout_success.php;cookie_usage.php;create_account.php;create_account_success.php;login.php;logoff.php;password_forgotten.php;password_reset.php;product_reviews_write.php;shopping_cart.php;ssl_check.php;tell_a_friend.php', 'The pages to add the meta robot noindex tag to.', 6, 0, NULL, '2012-08-25 08:49:02', 'ht_robot_noindex_show_pages', 'ht_robot_noindex_edit_pages('),
(190, 'Sort Order', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(191, 'Installed Modules', 'MODULE_ADMIN_DASHBOARD_INSTALLED', 'd_total_revenue.php;d_total_customers.php;d_orders.php;d_customers.php;d_admin_logins.php;d_security_checks.php;d_latest_news.php;d_latest_addons.php;d_version_check.php;d_reviews.php', 'List of Administration Tool Dashboard module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, '2013-03-26 07:31:47', '2012-08-25 08:49:02', NULL, NULL),
(192, 'Enable Administrator Logins Module', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_STATUS', 'True', 'Do you want to show the latest administrator logins on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(193, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(194, 'Enable Customers Module', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_STATUS', 'True', 'Do you want to show the newest customers on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(195, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(196, 'Enable Latest Add-Ons Module', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_STATUS', 'True', 'Do you want to show the latest osCommerce Add-Ons on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(197, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_SORT_ORDER', '800', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(198, 'Enable Latest News Module', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_STATUS', 'True', 'Do you want to show the latest osCommerce News on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(199, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(200, 'Enable Orders Module', 'MODULE_ADMIN_DASHBOARD_ORDERS_STATUS', 'True', 'Do you want to show the latest orders on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(201, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ORDERS_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(202, 'Enable Security Checks Module', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_STATUS', 'True', 'Do you want to run the security checks for this installation?', 6, 1, NULL, '2012-08-25 08:49:02', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(203, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_SORT_ORDER', '600', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:02', NULL, NULL),
(204, 'Enable Total Customers Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_STATUS', 'True', 'Do you want to show the total customers chart on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(205, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(206, 'Enable Total Revenue Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_STATUS', 'True', 'Do you want to show the total revenue chart on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(207, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(208, 'Enable Version Check Module', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_STATUS', 'True', 'Do you want to show the version check results on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(209, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_SORT_ORDER', '900', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(210, 'Enable Latest Reviews Module', 'MODULE_ADMIN_DASHBOARD_REVIEWS_STATUS', 'True', 'Do you want to show the latest reviews on the dashboard?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(211, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_REVIEWS_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(212, 'Installed Modules', 'MODULE_BOXES_INSTALLED', 'bm_shopping_cart.php;bm_product_cycle_slideshow.php;bm_categories.php;bm_manufacturers.php;bm_best_sellers.php;bm_manufacturer_info.php;bm_order_history.php;bm_product_notifications.php;bm_product_social_bookmarks.php;bm_featured.php', 'List of box module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, '2012-11-23 07:31:26', '2012-08-25 08:49:03', NULL, NULL),
(216, 'Enable Categories Module', 'MODULE_BOXES_CATEGORIES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(217, 'Content Placement', 'MODULE_BOXES_CATEGORIES_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(218, 'Sort Order', 'MODULE_BOXES_CATEGORIES_SORT_ORDER', '1020', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(228, 'Enable Manufacturer Info Module', 'MODULE_BOXES_MANUFACTURER_INFO_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(229, 'Content Placement', 'MODULE_BOXES_MANUFACTURER_INFO_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(230, 'Sort Order', 'MODULE_BOXES_MANUFACTURER_INFO_SORT_ORDER', '5010', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(231, 'Enable Manufacturers Module', 'MODULE_BOXES_MANUFACTURERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(232, 'Content Placement', 'MODULE_BOXES_MANUFACTURERS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(233, 'Sort Order', 'MODULE_BOXES_MANUFACTURERS_SORT_ORDER', '1030', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(234, 'Enable Order History Module', 'MODULE_BOXES_ORDER_HISTORY_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(235, 'Content Placement', 'MODULE_BOXES_ORDER_HISTORY_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(236, 'Sort Order', 'MODULE_BOXES_ORDER_HISTORY_SORT_ORDER', '5020', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(237, 'Enable Product Notifications Module', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(238, 'Content Placement', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(239, 'Sort Order', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_SORT_ORDER', '5040', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(240, 'Enable Product Social Bookmarks Module', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(241, 'Content Placement', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(242, 'Sort Order', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_SORT_ORDER', '5050', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(249, 'Enable Shopping Cart Module', 'MODULE_BOXES_SHOPPING_CART_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(250, 'Content Placement', 'MODULE_BOXES_SHOPPING_CART_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-08-25 08:49:03', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(251, 'Sort Order', 'MODULE_BOXES_SHOPPING_CART_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(258, 'Installed Template Block Groups', 'TEMPLATE_BLOCK_GROUPS', 'boxes;header_tags', 'This is automatically updated. No need to edit.', 6, 0, NULL, '2012-08-25 08:49:03', NULL, NULL),
(259, 'Enable Check/Money Order Module', 'MODULE_PAYMENT_MONEYORDER_STATUS', 'True', 'Do you want to accept Check/Money Order payments?', 6, 1, NULL, '2012-09-23 22:41:54', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(260, 'Make Payable to:', 'MODULE_PAYMENT_MONEYORDER_PAYTO', 'dian', 'Who should payments be made payable to?', 6, 1, NULL, '2012-09-23 22:41:54', NULL, NULL),
(261, 'Sort order of display.', 'MODULE_PAYMENT_MONEYORDER_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-09-23 22:41:54', NULL, NULL),
(262, 'Payment Zone', 'MODULE_PAYMENT_MONEYORDER_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-09-23 22:41:54', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(263, 'Set Order Status', 'MODULE_PAYMENT_MONEYORDER_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-09-23 22:41:54', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(264, 'Enable Digg Module', 'MODULE_SOCIAL_BOOKMARKS_DIGG_STATUS', 'True', 'Do you want to allow products to be shared through Digg?', 6, 1, NULL, '2012-09-24 07:00:16', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(265, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_DIGG_SORT_ORDER', '60', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-09-24 07:00:16', NULL, NULL),
(273, 'Enable Item Shipping', 'MODULE_SHIPPING_ITEM_STATUS', 'True', 'Do you want to offer per item rate shipping?', 6, 0, NULL, '2012-09-24 07:01:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(274, 'Shipping Cost', 'MODULE_SHIPPING_ITEM_COST', '2.50', 'The shipping cost will be multiplied by the number of items in an order that uses this shipping method.', 6, 0, NULL, '2012-09-24 07:01:36', NULL, NULL),
(275, 'Handling Fee', 'MODULE_SHIPPING_ITEM_HANDLING', '0', 'Handling fee for this shipping method.', 6, 0, NULL, '2012-09-24 07:01:36', NULL, NULL),
(276, 'Tax Class', 'MODULE_SHIPPING_ITEM_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2012-09-24 07:01:36', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(277, 'Shipping Zone', 'MODULE_SHIPPING_ITEM_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2012-09-24 07:01:36', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(278, 'Sort Order', 'MODULE_SHIPPING_ITEM_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2012-09-24 07:01:36', NULL, NULL),
(286, 'Enable Table Method', 'MODULE_SHIPPING_TABLE_STATUS', 'True', 'Do you want to offer table rate shipping?', 6, 0, NULL, '2012-09-24 07:01:48', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(287, 'Shipping Table', 'MODULE_SHIPPING_TABLE_COST', '25:8.50,50:5.50,10000:0.00', 'The shipping cost is based on the total cost or weight of items. Example: 25:8.50,50:5.50,etc.. Up to 25 charge 8.50, from there to 50 charge 5.50, etc', 6, 0, NULL, '2012-09-24 07:01:48', NULL, NULL),
(288, 'Table Method', 'MODULE_SHIPPING_TABLE_MODE', 'weight', 'The shipping cost is based on the order total or the total weight of the items ordered.', 6, 0, NULL, '2012-09-24 07:01:48', NULL, 'tep_cfg_select_option(array(''weight'', ''price''), '),
(289, 'Handling Fee', 'MODULE_SHIPPING_TABLE_HANDLING', '0', 'Handling fee for this shipping method.', 6, 0, NULL, '2012-09-24 07:01:48', NULL, NULL),
(290, 'Tax Class', 'MODULE_SHIPPING_TABLE_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2012-09-24 07:01:48', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(291, 'Shipping Zone', 'MODULE_SHIPPING_TABLE_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2012-09-24 07:01:48', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(292, 'Sort Order', 'MODULE_SHIPPING_TABLE_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2012-09-24 07:01:48', NULL, NULL),
(293, 'Enable Zones Method', 'MODULE_SHIPPING_ZONES_STATUS', 'True', 'Do you want to offer zone rate shipping?', 6, 0, NULL, '2012-09-24 07:01:52', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(294, 'Tax Class', 'MODULE_SHIPPING_ZONES_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2012-09-24 07:01:52', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(295, 'Sort Order', 'MODULE_SHIPPING_ZONES_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2012-09-24 07:01:52', NULL, NULL),
(296, 'Zone 1 Countries', 'MODULE_SHIPPING_ZONES_COUNTRIES_1', 'US,CA', 'Comma separated list of two character ISO country codes that are part of Zone 1.', 6, 0, NULL, '2012-09-24 07:01:52', NULL, NULL),
(297, 'Zone 1 Shipping Table', 'MODULE_SHIPPING_ZONES_COST_1', '3:8.50,7:10.50,99:20.00', 'Shipping rates to Zone 1 destinations based on a group of maximum order weights. Example: 3:8.50,7:10.50,... Weights less than or equal to 3 would cost 8.50 for Zone 1 destinations.', 6, 0, NULL, '2012-09-24 07:01:52', NULL, NULL),
(298, 'Zone 1 Handling Fee', 'MODULE_SHIPPING_ZONES_HANDLING_1', '0', 'Handling Fee for this shipping zone', 6, 0, NULL, '2012-09-24 07:01:52', NULL, NULL),
(332, 'Enable Products Cycle Slideshow Module', 'MODULE_BOXES_PRODUCT_CYCLE_SLIDESHOW_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-10-08 08:29:31', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(333, 'Content Placement', 'MODULE_BOXES_PRODUCT_CYCLE_SLIDESHOW_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-10-08 08:29:31', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(334, 'Sort Order', 'MODULE_BOXES_PRODUCT_CYCLE_SLIDESHOW_SORT_ORDER', '1010', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-08 08:29:31', NULL, NULL),
(335, 'Items - Number of Featured Products', 'PCS_MAX_DISPLAY_FEATURED_PRODUCTS', '5', '<p>How many featured products should be in the slideshow?</p><p><b>Note:</b> This is the maximum value. If fewer products are found, the found ones will be used.</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, NULL),
(336, 'Items - Number of New Products', 'PCS_MAX_DISPLAY_NEW_PRODUCTS', '5', '<p>How many new products should be in the slideshow?</p><p><b>Note:</b> This is the maximum value. If fewer products are found, the found ones will be used.</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, NULL),
(337, 'Items - Number of Specials', 'PCS_MAX_DISPLAY_SPECIALS', '5', '<p>How many specials should be in the slideshow?</p><p><b>Note:</b> This is the maximum value. If fewer products are found, the found ones will be used.</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, NULL),
(338, 'Items - Number of Bestsellers', 'PCS_MAX_DISPLAY_BESTSELLERS', '0', '<p>How many bestsellers should be in the slideshow?</p><p><b>Note:</b> This is the maximum value. If fewer products are found, the found ones will be used.</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, NULL),
(339, 'FX - Transition FX', 'PCS_FX', 'scrollHorz', '<p>Which transition FX should be used?</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, 'tep_cfg_select_option(array(''blindX'', ''blindY'', ''blindZ'', ''cover'', ''curtainX'', ''curtainY'', ''fade'', ''fadeZoom'', ''growX'', ''growY'', ''scrollUp'', ''scrollDown'', ''scrollLeft'', ''scrollRight'', ''scrollHorz'', ''scrollVert'', ''shuffle'', ''slideX'', ''slideY'', ''toss'', ''turnUp'', ''turnDown'', ''turnLeft'', ''turnRight'', ''uncover'', ''wipe'', ''zoom''), '),
(340, 'FX - Easing', 'PCS_EASING', 'easeInQuad', '<p>Which easing style should be used?</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, 'tep_cfg_select_option(array(''None'',''easeInQuad'', ''easeOutQuad'', ''easeInOutQuad'', ''easeInCubic'', ''easeOutCubic'', ''easeInOutCubic'', ''easeInQuart'', ''easeOutQuart'', ''easeInOutQuart'', ''easeInQuint'', ''easeOutQuint'', ''easeInOutQuint'', ''easeInSine'', ''easeOutSine'', ''easeInOutSine'', ''easeInExpo'', ''easeOutExpo'', ''easeInOutExpo'', ''easeInCirc'', ''easeOutCirc'', ''easeInOutCirc'', ''easeInElastic'', ''easeOutElastic'', ''easeInOutElastic'', ''easeInBack'', ''easeOutBack'', ''easeInOutBack'', ''easeInBounce'', ''easeOutBounce'', ''easeInOutBounce''), '),
(341, 'FX - Sync transitions?', 'PCS_SYNC', 'true', 'The sync option controls whether the slide transitions occur simultaneously. The default is true which means that the current slide transitions out as the next slide transitions in.', 6, 10, NULL, '2012-10-08 08:29:31', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(342, 'FX - Transition Speed', 'PCS_SPEED', '2000', '<p>The duration of the transition in milliseconds</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, NULL),
(343, 'FX - Timeout', 'PCS_TIMEOUT', '8000', '<p>The time in milliseconds between transitions</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, NULL),
(344, 'General - Pause onMouseOver?', 'PCS_PAUSE', 'true', '<p>Pause the slideshow on mouse over?</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(345, 'General - Display randomly?', 'PCS_RANDOM', 'true', '<p>Display the items in random order?</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(346, 'General - Image Quality', 'PCS_IMAGE_QUALITY', '100', '<p>Which quality should the images in the slideshow have? (1-100)</p>', 6, 10, NULL, '2012-10-08 08:29:31', NULL, NULL),
(372, 'Display Featured Products', 'FEATURED_PRODUCTS_DISPLAY', 'true', 'Set to true or false in order to display featured.', 18, 1, '2012-10-09 09:07:52', '2012-10-09 07:09:42', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(373, 'Maximum Display of Featured', 'MAX_DISPLAY_FEATURED_PRODUCTS', '6', 'This is the maximum amount of items to display on the front page.', 18, 2, '2012-10-09 09:20:52', '2012-10-09 07:09:42', NULL, NULL),
(374, 'Include Sub Categories When Displaying Featured Products', 'FEATURED_PRODUCTS_SUB_CATEGORIES', 'true', 'Set to true or false in order to display featured including sub categories.', 18, 3, '2012-10-09 07:11:54', '2012-10-09 07:09:42', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(375, 'Specials Only When Displaying Featured Products', 'FEATURED_PRODUCTS_SPECIALS_ONLY', 'false', 'Set to true or false in order to display only on special featured products.', 18, 4, '2012-10-09 10:26:26', '2012-10-09 07:09:42', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(376, 'Enable Featured Module', 'MODULE_BOXES_FEATURED_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-10-09 07:16:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(377, 'Content Placement', 'MODULE_BOXES_FEATURED_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-10-09 07:16:17', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(378, 'Sort Order', 'MODULE_BOXES_FEATURED_SORT_ORDER', '6800', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-09 07:16:17', NULL, NULL),
(379, 'Enable Authorize.net Credit Card AIM', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_STATUS', 'True', 'Do you want to accept Authorize.net Credit Card AIM payments?', 6, 0, NULL, '2012-10-13 07:17:04', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(380, 'Login ID', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_LOGIN_ID', '', 'The login ID used for the Authorize.net service', 6, 0, NULL, '2012-10-13 07:17:04', NULL, NULL),
(381, 'Transaction Key', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_TRANSACTION_KEY', '', 'Transaction key used for encrypting data', 6, 0, NULL, '2012-10-13 07:17:04', NULL, NULL),
(382, 'MD5 Hash', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_MD5_HASH', '', 'The MD5 hash value to verify transactions with', 6, 0, NULL, '2012-10-13 07:17:04', NULL, NULL),
(383, 'Transaction Server', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_TRANSACTION_SERVER', 'Live', 'Perform transactions on the live or test server. The test server should only be used by developers with Authorize.net test accounts.', 6, 0, NULL, '2012-10-13 07:17:04', NULL, 'tep_cfg_select_option(array(''Live'', ''Test''), '),
(384, 'Transaction Mode', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_TRANSACTION_MODE', 'Live', 'Transaction mode used for processing orders', 6, 0, NULL, '2012-10-13 07:17:04', NULL, 'tep_cfg_select_option(array(''Live'', ''Test''), '),
(385, 'Transaction Method', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_TRANSACTION_METHOD', 'Authorization', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:17:04', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Capture''), '),
(386, 'Sort order of display.', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:17:04', NULL, NULL),
(387, 'Payment Zone', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:17:04', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(388, 'Set Order Status', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:17:04', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(389, 'cURL Program Location', 'MODULE_PAYMENT_AUTHORIZENET_CC_AIM_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2012-10-13 07:17:04', NULL, NULL),
(390, 'Enable Authorize.net Credit Card SIM', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_STATUS', 'True', 'Do you want to accept Authorize.net Credit Card SIM payments?', 6, 0, NULL, '2012-10-13 07:18:31', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(391, 'Login ID', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_LOGIN_ID', '', 'The login ID used for the Authorize.net service', 6, 0, NULL, '2012-10-13 07:18:31', NULL, NULL),
(392, 'Transaction Key', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_TRANSACTION_KEY', '', 'Transaction key used for encrypting data', 6, 0, NULL, '2012-10-13 07:18:31', NULL, NULL),
(393, 'MD5 Hash', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_MD5_HASH', '', 'The MD5 hash value to verify transactions with', 6, 0, NULL, '2012-10-13 07:18:31', NULL, NULL),
(394, 'Transaction Server', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_TRANSACTION_SERVER', 'Live', 'Perform transactions on the live or test server. The test server should only be used by developers with Authorize.net test accounts.', 6, 0, NULL, '2012-10-13 07:18:31', NULL, 'tep_cfg_select_option(array(''Live'', ''Test''), '),
(395, 'Transaction Mode', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_TRANSACTION_MODE', 'Live', 'Transaction mode used for processing orders', 6, 0, NULL, '2012-10-13 07:18:31', NULL, 'tep_cfg_select_option(array(''Live'', ''Test''), '),
(396, 'Transaction Method', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_TRANSACTION_METHOD', 'Authorization', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:18:31', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Capture''), '),
(397, 'Sort order of display.', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:18:31', NULL, NULL),
(398, 'Payment Zone', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:18:31', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(399, 'Set Order Status', 'MODULE_PAYMENT_AUTHORIZENET_CC_SIM_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:18:31', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(400, 'Enable ChronoPay', 'MODULE_PAYMENT_CHRONOPAY_STATUS', 'True', 'Do you want to accept ChronoPay payments?', 6, 3, NULL, '2012-10-13 07:19:10', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(401, 'ChronoPay Product ID', 'MODULE_PAYMENT_CHRONOPAY_PRODUCT_ID', '', 'The product ID to assign transactions to.', 6, 4, NULL, '2012-10-13 07:19:10', NULL, NULL),
(402, 'MD5 Hash Signature', 'MODULE_PAYMENT_CHRONOPAY_MD5_HASH', '', 'Use this value to verify transactions with.', 6, 4, NULL, '2012-10-13 07:19:10', NULL, NULL),
(403, 'Payment Zone', 'MODULE_PAYMENT_CHRONOPAY_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:19:10', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(404, 'Set Preparing Order Status', 'MODULE_PAYMENT_CHRONOPAY_PREPARE_ORDER_STATUS_ID', '5', 'Set the status of prepared orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:19:10', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(405, 'Set ChronoPay Acknowledged Order Status', 'MODULE_PAYMENT_CHRONOPAY_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:19:10', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(406, 'Sort order of display.', 'MODULE_PAYMENT_CHRONOPAY_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:19:10', NULL, NULL),
(419, 'Enable iPayment', 'MODULE_PAYMENT_IPAYMENT_CC_STATUS', 'True', 'Do you want to accept iPayment payments?', 6, 1, NULL, '2012-10-13 07:21:31', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(420, 'Account Number', 'MODULE_PAYMENT_IPAYMENT_CC_ID', '99999', 'The account number used for the iPayment service', 6, 2, NULL, '2012-10-13 07:21:31', NULL, NULL),
(421, 'User ID', 'MODULE_PAYMENT_IPAYMENT_CC_USER_ID', '99998', 'The user ID for the iPayment service', 6, 3, NULL, '2012-10-13 07:21:31', NULL, NULL),
(422, 'User Password', 'MODULE_PAYMENT_IPAYMENT_CC_PASSWORD', '0', 'The user password for the iPayment service', 6, 4, NULL, '2012-10-13 07:21:31', NULL, NULL),
(423, 'Transaction Method', 'MODULE_PAYMENT_IPAYMENT_CC_TRANSACTION_METHOD', 'Authorization', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:21:31', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Capture''), '),
(424, 'Secret Hash Password', 'MODULE_PAYMENT_IPAYMENT_CC_SECRET_HASH_PASSWORD', 'testtest', 'The secret hash password to validate transactions with', 6, 4, NULL, '2012-10-13 07:21:31', NULL, NULL),
(425, 'Transaction Notification (E-Mail)', 'MODULE_PAYMENT_IPAYMENT_CC_DEBUG_EMAIL', '', 'An e-mail address to send transaction notifications to.', 6, 0, NULL, '2012-10-13 07:21:31', NULL, NULL),
(426, 'Sort order of display.', 'MODULE_PAYMENT_IPAYMENT_CC_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:21:31', NULL, NULL),
(427, 'Payment Zone', 'MODULE_PAYMENT_IPAYMENT_CC_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:21:31', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(428, 'Set Order Status', 'MODULE_PAYMENT_IPAYMENT_CC_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:21:31', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(429, 'Enable iPayment (ELV)', 'MODULE_PAYMENT_IPAYMENT_ELV_STATUS', 'True', 'Do you want to accept iPayment (ELV) payments?', 6, 1, NULL, '2012-10-13 07:23:09', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(430, 'Account Number', 'MODULE_PAYMENT_IPAYMENT_ELV_ID', '99999', 'The account number used for the iPayment service', 6, 2, NULL, '2012-10-13 07:23:09', NULL, NULL),
(431, 'User ID', 'MODULE_PAYMENT_IPAYMENT_ELV_USER_ID', '99998', 'The user ID for the iPayment service', 6, 3, NULL, '2012-10-13 07:23:09', NULL, NULL),
(432, 'User Password', 'MODULE_PAYMENT_IPAYMENT_ELV_PASSWORD', '0', 'The user password for the iPayment service', 6, 4, NULL, '2012-10-13 07:23:09', NULL, NULL),
(433, 'Transaction Method', 'MODULE_PAYMENT_IPAYMENT_ELV_TRANSACTION_METHOD', 'Authorization', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:23:09', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Capture''), '),
(434, 'Secret Hash Password', 'MODULE_PAYMENT_IPAYMENT_ELV_SECRET_HASH_PASSWORD', 'testtest', 'The secret hash password to validate transactions with', 6, 4, NULL, '2012-10-13 07:23:10', NULL, NULL),
(435, 'Transaction Notification (E-Mail)', 'MODULE_PAYMENT_IPAYMENT_ELV_DEBUG_EMAIL', '', 'An e-mail address to send transaction notifications to.', 6, 0, NULL, '2012-10-13 07:23:10', NULL, NULL),
(436, 'Sort order of display.', 'MODULE_PAYMENT_IPAYMENT_ELV_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:23:10', NULL, NULL),
(437, 'Payment Zone', 'MODULE_PAYMENT_IPAYMENT_ELV_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:23:10', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(438, 'Set Order Status', 'MODULE_PAYMENT_IPAYMENT_ELV_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:23:10', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(439, 'Enable iPayment (Prepaid)', 'MODULE_PAYMENT_IPAYMENT_PP_STATUS', 'True', 'Do you want to accept iPayment (Prepaid) payments?', 6, 1, NULL, '2012-10-13 07:26:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(440, 'Account Number', 'MODULE_PAYMENT_IPAYMENT_PP_ID', '999997', 'The account number used for the iPayment service', 6, 2, NULL, '2012-10-13 07:26:36', NULL, NULL),
(441, 'User ID', 'MODULE_PAYMENT_IPAYMENT_PP_USER_ID', '999997', 'The user ID for the iPayment service', 6, 3, NULL, '2012-10-13 07:26:36', NULL, NULL),
(442, 'User Password', 'MODULE_PAYMENT_IPAYMENT_PP_PASSWORD', '999997', 'The user password for the iPayment service', 6, 4, NULL, '2012-10-13 07:26:36', NULL, NULL),
(443, 'Transaction Method', 'MODULE_PAYMENT_IPAYMENT_PP_TRANSACTION_METHOD', 'Authorization', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:26:36', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Capture''), '),
(444, 'Secret Hash Password', 'MODULE_PAYMENT_IPAYMENT_PP_SECRET_HASH_PASSWORD', '', 'The secret hash password to validate transactions with', 6, 4, NULL, '2012-10-13 07:26:36', NULL, NULL),
(445, 'Transaction Notification (E-Mail)', 'MODULE_PAYMENT_IPAYMENT_PP_DEBUG_EMAIL', '', 'An e-mail address to send transaction notifications to.', 6, 0, NULL, '2012-10-13 07:26:36', NULL, NULL),
(446, 'Sort order of display.', 'MODULE_PAYMENT_IPAYMENT_PP_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:26:36', NULL, NULL),
(447, 'Payment Zone', 'MODULE_PAYMENT_IPAYMENT_PP_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:26:36', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(448, 'Set Order Status', 'MODULE_PAYMENT_IPAYMENT_PP_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:26:36', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(449, 'Enable NOCHEX Module', 'MODULE_PAYMENT_NOCHEX_STATUS', 'True', 'Do you want to accept NOCHEX payments?', 6, 3, NULL, '2012-10-13 07:27:26', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(450, 'E-Mail Address', 'MODULE_PAYMENT_NOCHEX_ID', 'you@yourbuisness.com', 'The e-mail address to use for the NOCHEX service', 6, 4, NULL, '2012-10-13 07:27:26', NULL, NULL),
(451, 'Sort order of display.', 'MODULE_PAYMENT_NOCHEX_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:27:26', NULL, NULL),
(452, 'Payment Zone', 'MODULE_PAYMENT_NOCHEX_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:27:26', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(453, 'Set Order Status', 'MODULE_PAYMENT_NOCHEX_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:27:26', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(454, 'Enable PayPal Direct', 'MODULE_PAYMENT_PAYPAL_PRO_DP_STATUS', 'True', 'Do you want to accept PayPal Direct payments?', 6, 1, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(455, 'API Username', 'MODULE_PAYMENT_PAYPAL_PRO_DP_API_USERNAME', '', 'The username to use for the PayPal API service.', 6, 0, NULL, '2012-10-13 07:28:08', NULL, NULL),
(456, 'API Password', 'MODULE_PAYMENT_PAYPAL_PRO_DP_API_PASSWORD', '', 'The password to use for the PayPal API service.', 6, 0, NULL, '2012-10-13 07:28:08', NULL, NULL),
(457, 'API Signature', 'MODULE_PAYMENT_PAYPAL_PRO_DP_API_SIGNATURE', '', 'The signature to use for the PayPal API service.', 6, 0, NULL, '2012-10-13 07:28:08', NULL, NULL),
(458, 'Transaction Server', 'MODULE_PAYMENT_PAYPAL_PRO_DP_TRANSACTION_SERVER', 'Live', 'Use the live or testing (sandbox) gateway server to process transactions?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(459, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_PRO_DP_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(460, 'Card Acceptance Page', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARD_INPUT_PAGE', 'Confirmation', 'The location to accept card information. Either on the Checkout Confirmation page or the Checkout Payment page.', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''Confirmation'', ''Payment''), '),
(461, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_PRO_DP_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:28:08', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(462, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_PRO_DP_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:28:08', NULL, NULL),
(463, 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_PRO_DP_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value.', 6, 0, NULL, '2012-10-13 07:28:08', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(464, 'cURL Program Location', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2012-10-13 07:28:08', NULL, NULL),
(465, 'Accept Visa', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARDTYPE_VISA', 'True', 'Accept Visa card payments?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(466, 'Accept Visa Debit', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARDTYPE_VISA_DEBIT', 'True', 'Accept Visa Debit card payments?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(467, 'Accept Visa Electron', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARDTYPE_VISA_ELECTRON', 'True', 'Accept Visa Electron card payments?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(468, 'Accept MasterCard', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARDTYPE_MASTERCARD', 'True', 'Accept MasterCard card payments?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(469, 'Accept Discover', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARDTYPE_DISCOVER', 'True', 'Accept Discover card payments?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(470, 'Accept American Express', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARDTYPE_AMEX', 'True', 'Accept American Express card payments?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(471, 'Accept Maestro', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARDTYPE_SWITCH', 'True', 'Accept Maestro card payments?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(472, 'Accept Solo', 'MODULE_PAYMENT_PAYPAL_PRO_DP_CARDTYPE_SOLO', 'True', 'Accept Solo card payments?', 6, 0, NULL, '2012-10-13 07:28:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(473, 'Enable PayPal Direct (UK)', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_STATUS', 'True', 'Do you want to accept PayPal Direct (UK) payments?', 6, 1, NULL, '2012-10-13 07:29:35', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(474, 'Vendor', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_VENDOR', '', 'Your merchant login ID that you created when you registered for the Website Payments Pro account.', 6, 0, NULL, '2012-10-13 07:29:35', NULL, NULL),
(475, 'User', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_USERNAME', '', 'If you set up one or more additional users on the account, this value is the ID of the user authorised to process transactions. If, however, you have not set up additional users on the account, USER has the same value as VENDOR.', 6, 0, NULL, '2012-10-13 07:29:35', NULL, NULL),
(476, 'Password', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_PASSWORD', '', 'The 6- to 32-character password that you defined while registering for the account.', 6, 0, NULL, '2012-10-13 07:29:35', NULL, NULL),
(477, 'Partner', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_PARTNER', 'PayPalUK', 'The ID provided to you by the authorised PayPal Reseller who registered you for the Payflow SDK. If you purchased your account directly from PayPal, use PayPalUK.', 6, 0, NULL, '2012-10-13 07:29:35', NULL, NULL),
(478, 'Transaction Server', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_TRANSACTION_SERVER', 'Live', 'Use the live or testing (sandbox) gateway server to process transactions?', 6, 0, NULL, '2012-10-13 07:29:35', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(479, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:29:35', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(480, 'Card Acceptance Page', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_CARD_INPUT_PAGE', 'Confirmation', 'The location to accept card information. Either on the Checkout Confirmation page or the Checkout Payment page.', 6, 0, NULL, '2012-10-13 07:29:35', NULL, 'tep_cfg_select_option(array(''Confirmation'', ''Payment''), '),
(481, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:29:35', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(482, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:29:35', NULL, NULL),
(483, 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value.', 6, 0, NULL, '2012-10-13 07:29:35', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(484, 'cURL Program Location', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_DP_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2012-10-13 07:29:35', NULL, NULL),
(485, 'Enable PayPal Express Checkout (UK)', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_STATUS', 'True', 'Do you want to accept PayPal Express Checkout (UK) payments?', 6, 1, NULL, '2012-10-13 07:31:03', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(486, 'Vendor', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_VENDOR', '', 'Your merchant login ID that you created when you registered for the Website Payments Pro account.', 6, 0, NULL, '2012-10-13 07:31:03', NULL, NULL),
(487, 'User', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_USERNAME', '', 'If you set up one or more additional users on the account, this value is the ID of the user authorised to process transactions. If, however, you have not set up additional users on the account, USER has the same value as VENDOR.', 6, 0, NULL, '2012-10-13 07:31:03', NULL, NULL),
(488, 'Password', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_PASSWORD', '', 'The 6- to 32-character password that you defined while registering for the account.', 6, 0, NULL, '2012-10-13 07:31:03', NULL, NULL),
(489, 'Partner', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_PARTNER', 'PayPalUK', 'The ID provided to you by the authorised PayPal Reseller who registered you for the Payflow SDK. If you purchased your account directly from PayPal, use PayPalUK.', 6, 0, NULL, '2012-10-13 07:31:03', NULL, NULL),
(490, 'Transaction Server', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_TRANSACTION_SERVER', 'Live', 'Use the live or testing (sandbox) gateway server to process transactions?', 6, 0, NULL, '2012-10-13 07:31:03', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(491, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_TRANSACTION_METHOD', 'Authorization', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:31:03', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(492, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:31:03', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(493, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:31:03', NULL, NULL),
(494, 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value.', 6, 0, NULL, '2012-10-13 07:31:03', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(495, 'cURL Program Location', 'MODULE_PAYMENT_PAYPAL_PRO_PAYFLOW_EC_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2012-10-13 07:31:03', NULL, NULL),
(496, 'Enable PayPal Website Payments Standard', 'MODULE_PAYMENT_PAYPAL_STANDARD_STATUS', 'True', 'Do you want to accept PayPal Website Payments Standard payments?', 6, 3, NULL, '2012-10-13 07:32:01', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(497, 'E-Mail Address', 'MODULE_PAYMENT_PAYPAL_STANDARD_ID', '', 'The PayPal seller e-mail address to accept payments for', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(498, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_STANDARD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:32:01', NULL, NULL),
(499, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_STANDARD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:32:01', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(500, 'Set Preparing Order Status', 'MODULE_PAYMENT_PAYPAL_STANDARD_PREPARE_ORDER_STATUS_ID', '6', 'Set the status of prepared orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:32:01', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(501, 'Set PayPal Acknowledged Order Status', 'MODULE_PAYMENT_PAYPAL_STANDARD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:32:01', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(502, 'Gateway Server', 'MODULE_PAYMENT_PAYPAL_STANDARD_GATEWAY_SERVER', 'Live', 'Use the testing (sandbox) or live gateway server for transactions?', 6, 6, NULL, '2012-10-13 07:32:01', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(503, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_STANDARD_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:32:01', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(504, 'Page Style', 'MODULE_PAYMENT_PAYPAL_STANDARD_PAGE_STYLE', '', 'The page style to use for the transaction procedure (defined at your PayPal Profile page)', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(505, 'Debug E-Mail Address', 'MODULE_PAYMENT_PAYPAL_STANDARD_DEBUG_EMAIL', '', 'All parameters of an Invalid IPN notification will be sent to this email address if one is entered.', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(506, 'Enable Encrypted Web Payments', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_STATUS', 'False', 'Do you want to enable Encrypted Web Payments?', 6, 3, NULL, '2012-10-13 07:32:01', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(507, 'Your Private Key', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PRIVATE_KEY', '', 'The location of your Private Key to use for signing the data. (*.pem)', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(508, 'Your Public Certificate', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PUBLIC_KEY', '', 'The location of your Public Certificate to use for signing the data. (*.pem)', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(509, 'PayPals Public Certificate', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PAYPAL_KEY', '', 'The location of the PayPal Public Certificate for encrypting the data.', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(510, 'Your PayPal Public Certificate ID', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_CERT_ID', '', 'The Certificate ID to use from your PayPal Encrypted Payment Settings Profile.', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(511, 'Working Directory', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_WORKING_DIRECTORY', '', 'The working directory to use for temporary files. (trailing slash needed)', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(512, 'OpenSSL Location', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_OPENSSL', '/usr/bin/openssl', 'The location of the openssl binary file.', 6, 4, NULL, '2012-10-13 07:32:01', NULL, NULL),
(513, 'Enable PayPoint.net SECPay Module', 'MODULE_PAYMENT_PAYPOINT_SECPAY_STATUS', 'True', 'Do you want to accept PayPoint.net SECPay payments?', 6, 1, NULL, '2012-10-13 07:32:43', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(514, 'Merchant ID', 'MODULE_PAYMENT_PAYPOINT_SECPAY_MERCHANT_ID', 'secpay', 'Merchant ID to use for the SECPay service', 6, 2, NULL, '2012-10-13 07:32:43', NULL, NULL),
(515, 'Transaction Currency', 'MODULE_PAYMENT_PAYPOINT_SECPAY_CURRENCY', 'Any Currency', 'The currency to use for credit card transactions', 6, 3, NULL, '2012-10-13 07:32:43', NULL, 'tep_cfg_select_option(array(''Any Currency'', ''Default Currency''), '),
(516, 'Transaction Mode', 'MODULE_PAYMENT_PAYPOINT_SECPAY_TEST_STATUS', 'Always Successful', 'Transaction mode to use for the PayPoint.net SECPay service', 6, 4, NULL, '2012-10-13 07:32:43', NULL, 'tep_cfg_select_option(array(''Always Successful'', ''Always Fail'', ''Production''), '),
(517, 'Sort order of display.', 'MODULE_PAYMENT_PAYPOINT_SECPAY_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:32:43', NULL, NULL),
(518, 'Payment Zone', 'MODULE_PAYMENT_PAYPOINT_SECPAY_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:32:43', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(519, 'Set Order Status', 'MODULE_PAYMENT_PAYPOINT_SECPAY_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:32:43', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(520, 'Remote Password', 'MODULE_PAYMENT_PAYPOINT_SECPAY_REMOTE', 'secpay', 'The Remote Password needs to be created in the PayPoint extranet.', 6, 0, NULL, '2012-10-13 07:32:43', NULL, NULL),
(521, 'Digest Key', 'MODULE_PAYMENT_PAYPOINT_SECPAY_READERS_DIGEST', 'secpay', 'The Digest Key needs to be created in the PayPoint extranet.', 6, 0, NULL, '2012-10-13 07:32:43', NULL, NULL),
(522, 'Enable 2Checkout', 'MODULE_PAYMENT_2CHECKOUT_STATUS', 'True', 'Do you want to accept 2CheckOut payments?', 6, 0, NULL, '2012-10-13 07:33:34', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(523, 'Vendor Account', 'MODULE_PAYMENT_2CHECKOUT_LOGIN', '', 'The vendor account number for the 2Checkout gateway.', 6, 0, NULL, '2012-10-13 07:33:34', NULL, NULL),
(524, 'Transaction Mode', 'MODULE_PAYMENT_2CHECKOUT_TESTMODE', 'Test', 'Transaction mode used for the 2Checkout gateway.', 6, 0, NULL, '2012-10-13 07:33:34', NULL, 'tep_cfg_select_option(array(''Test'', ''Production''), '),
(525, 'Secret Word', 'MODULE_PAYMENT_2CHECKOUT_SECRET_WORD', '', 'The secret word to confirm transactions with. (Must be the same as defined on the Vendor Admin interface)', 6, 0, NULL, '2012-10-13 07:33:34', NULL, NULL),
(526, 'Payment Routine', 'MODULE_PAYMENT_2CHECKOUT_ROUTINE', 'Multi-Page', 'The payment routine to use on the 2Checkout gateway.', 6, 0, NULL, '2012-10-13 07:33:34', NULL, 'tep_cfg_select_option(array(''Multi-Page'', ''Single-Page''), '),
(527, 'Processing Currency', 'MODULE_PAYMENT_2CHECKOUT_CURRENCY', 'USD', 'The currency to process transactions in. (Must be the same as defined on the Vendor Admin interface)', 6, 0, NULL, '2012-10-13 07:33:34', NULL, 'pm2checkout::getCurrencies('),
(528, 'Sort Order', 'MODULE_PAYMENT_2CHECKOUT_SORT_ORDER', '0', 'Sort order of display. (Lowest is displayed first)', 6, 0, NULL, '2012-10-13 07:33:34', NULL, NULL),
(529, 'Payment Zone', 'MODULE_PAYMENT_2CHECKOUT_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:33:34', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(530, 'Set Order Status', 'MODULE_PAYMENT_2CHECKOUT_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value.', 6, 0, NULL, '2012-10-13 07:33:34', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(540, 'Enable RBS WorldPay Hosted', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_STATUS', 'True', 'Do you want to accept RBS WorldPay Hosted payments?', 6, 0, NULL, '2012-10-13 07:35:05', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(541, 'Installation ID', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_INSTALLATION_ID', '', 'Your WorldPay Installation ID', 6, 0, NULL, '2012-10-13 07:35:05', NULL, NULL),
(542, 'Callback Password', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_CALLBACK_PASSWORD', '', 'A password that is sent back in the callback response (specified in the WorldPay Customer Management System)', 6, 0, NULL, '2012-10-13 07:35:05', NULL, NULL),
(543, 'MD5 Password', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_MD5_PASSWORD', '', 'The MD5 secret encryption password used to validate transaction responses with (specified in the WorldPay Customer Management System)', 6, 0, NULL, '2012-10-13 07:35:05', NULL, NULL),
(544, 'Transaction Method', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_TRANSACTION_METHOD', 'Capture', 'The processing method to use for each transaction', 6, 0, NULL, '2012-10-13 07:35:05', NULL, 'tep_cfg_select_option(array(''Pre-Authorization'', ''Capture''), '),
(545, 'Test Mode', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_TESTMODE', 'True', 'Process transactions in test mode?', 6, 0, NULL, '2012-10-13 07:35:05', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(546, 'Sort order of display.', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:35:05', NULL, NULL),
(547, 'Payment Zone', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:35:05', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(548, 'Set Preparing Order Status', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_PREPARE_ORDER_STATUS_ID', '7', 'Set the status of prepared orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:35:05', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(549, 'Set Order Status', 'MODULE_PAYMENT_RBSWORLDPAY_HOSTED_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:35:05', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(550, 'Enable Sage Pay Direct Module', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_STATUS', 'True', 'Do you want to accept Sage Pay Direct payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(551, 'Vendor Login Name', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_VENDOR_LOGIN_NAME', '', 'The vendor login name to connect to the gateway with.', 6, 0, NULL, '2012-10-13 07:35:42', NULL, NULL),
(552, 'Verify With CVC', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_VERIFY_WITH_CVC', 'True', 'Verify the credit card with the billing address with the Credit Card Verification Checknumber (CVC)?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(553, 'Transaction Method', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_TRANSACTION_METHOD', 'Authenticate', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''Authenticate'', ''Deferred'', ''Payment''), '),
(554, 'Transaction Server', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_TRANSACTION_SERVER', 'Live', 'Perform transactions on the production server or on the testing server.', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''Live'', ''Test'', ''Simulator''), '),
(555, 'Sort order of display.', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:35:42', NULL, NULL),
(556, 'Payment Zone', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:35:42', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(557, 'Set Order Status', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:35:42', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(558, 'cURL Program Location', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2012-10-13 07:35:42', NULL, NULL),
(559, 'Accept Visa', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_VISA', 'True', 'Do you want to accept Visa payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(560, 'Accept Mastercard', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_MC', 'True', 'Do you want to accept Mastercard payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(561, 'Accept Visa Delta/Debit', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_DELTA', 'True', 'Do you want to accept Visa Delta/Debit payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(562, 'Accept Solo', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_SOLO', 'True', 'Do you want to accept Solo payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(563, 'Accept Maestro', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_MAESTRO', 'True', 'Do you want to accept Maestro payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(564, 'Accept Visa Electron UK Debit', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_UKE', 'True', 'Do you want to accept Visa Electron UK Debit payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(565, 'Accept American Express', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_AMEX', 'True', 'Do you want to accept American Express payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(566, 'Accept Diners Club', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_DC', 'True', 'Do you want to accept Diners Club payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(567, 'Accept Japan Credit Bureau', 'MODULE_PAYMENT_SAGE_PAY_DIRECT_ALLOW_JCB', 'True', 'Do you want to accept Japan Credit Bureau payments?', 6, 0, NULL, '2012-10-13 07:35:42', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(568, 'Enable Sage Pay Form Module', 'MODULE_PAYMENT_SAGE_PAY_FORM_STATUS', 'True', 'Do you want to accept Sage Pay Form payments?', 6, 0, NULL, '2012-10-13 07:37:16', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(569, 'Vendor Login Name', 'MODULE_PAYMENT_SAGE_PAY_FORM_VENDOR_LOGIN_NAME', '', 'The vendor login name to connect to the gateway with.', 6, 0, NULL, '2012-10-13 07:37:16', NULL, NULL),
(570, 'Encryption Password', 'MODULE_PAYMENT_SAGE_PAY_FORM_ENCRYPTION_PASSWORD', '', 'The encrpytion password to secure transactions with.', 6, 0, NULL, '2012-10-13 07:37:16', NULL, NULL),
(571, 'Transaction Method', 'MODULE_PAYMENT_SAGE_PAY_FORM_TRANSACTION_METHOD', 'Authenticate', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:37:16', NULL, 'tep_cfg_select_option(array(''Authenticate'', ''Deferred'', ''Payment''), '),
(572, 'Transaction Server', 'MODULE_PAYMENT_SAGE_PAY_FORM_TRANSACTION_SERVER', 'Live', 'Perform transactions on the production server or on the testing server.', 6, 0, NULL, '2012-10-13 07:37:16', NULL, 'tep_cfg_select_option(array(''Live'', ''Test'', ''Simulator''), '),
(573, 'Vendor E-Mail', 'MODULE_PAYMENT_SAGE_PAY_FORM_VENDOR_EMAIL', '', 'An e-mail address on which you can be contacted when a transaction completes. NOTE: If you wish to use multiple email addresses, you should add them using the : (colon) character as a separator. e.g. me@mail1.com:me@mail2.com', 6, 0, NULL, '2012-10-13 07:37:16', NULL, NULL),
(574, 'Send E-Mail', 'MODULE_PAYMENT_SAGE_PAY_FORM_SEND_EMAIL', 'Customer and Vendor', 'Who to send e-mails to.', 6, 0, NULL, '2012-10-13 07:37:16', NULL, 'tep_cfg_select_option(array(''No One'', ''Customer and Vendor'', ''Vendor Only''), '),
(575, 'Customer E-Mail Message', 'MODULE_PAYMENT_SAGE_PAY_FORM_CUSTOMER_EMAIL_MESSAGE', '', 'A message to the customer which is inserted into the successful transaction e-mails only.', 6, 0, NULL, '2012-10-13 07:37:16', NULL, 'sage_pay_form_textarea_field('),
(576, 'Sort order of display.', 'MODULE_PAYMENT_SAGE_PAY_FORM_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:37:16', NULL, NULL);
INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(577, 'Payment Zone', 'MODULE_PAYMENT_SAGE_PAY_FORM_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:37:16', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(578, 'Set Order Status', 'MODULE_PAYMENT_SAGE_PAY_FORM_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:37:16', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(579, 'Enable Sage Pay Server Module', 'MODULE_PAYMENT_SAGE_PAY_SERVER_STATUS', 'True', 'Do you want to accept Sage Pay Server payments?', 6, 0, NULL, '2012-10-13 07:38:07', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(580, 'Vendor Login Name', 'MODULE_PAYMENT_SAGE_PAY_SERVER_VENDOR_LOGIN_NAME', '', 'The vendor login name to connect to the gateway with.', 6, 0, NULL, '2012-10-13 07:38:07', NULL, NULL),
(581, 'Profile Payment Page', 'MODULE_PAYMENT_SAGE_PAY_SERVER_PROFILE_PAGE', 'Normal', 'Profile page to use for the payment page.', 6, 0, NULL, '2012-10-13 07:38:07', NULL, 'tep_cfg_select_option(array(''Normal'', ''Low''), '),
(582, 'Transaction Method', 'MODULE_PAYMENT_SAGE_PAY_SERVER_TRANSACTION_METHOD', 'Authenticate', 'The processing method to use for each transaction.', 6, 0, NULL, '2012-10-13 07:38:07', NULL, 'tep_cfg_select_option(array(''Authenticate'', ''Deferred'', ''Payment''), '),
(583, 'Transaction Server', 'MODULE_PAYMENT_SAGE_PAY_SERVER_TRANSACTION_SERVER', 'Live', 'Perform transactions on the production server or on the testing server.', 6, 0, NULL, '2012-10-13 07:38:07', NULL, 'tep_cfg_select_option(array(''Live'', ''Test'', ''Simulator''), '),
(584, 'Sort order of display.', 'MODULE_PAYMENT_SAGE_PAY_SERVER_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 07:38:07', NULL, NULL),
(585, 'Payment Zone', 'MODULE_PAYMENT_SAGE_PAY_SERVER_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 07:38:07', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(586, 'Set Order Status', 'MODULE_PAYMENT_SAGE_PAY_SERVER_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 07:38:07', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(587, 'cURL Program Location', 'MODULE_PAYMENT_SAGE_PAY_SERVER_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2012-10-13 07:38:07', NULL, NULL),
(623, 'Enable inpay on your webshop?', 'MODULE_PAYMENT_INPAY_STATUS', 'True', '', 6, 0, NULL, '2012-10-13 09:11:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(624, 'Gateway Server', 'MODULE_PAYMENT_INPAY_GATEWAY_SERVER', 'Production', 'Use the testing or production gateway server for transactions', 6, 1, NULL, '2012-10-13 09:11:08', NULL, 'tep_cfg_select_option(array(''Production'', ''Test''), '),
(625, 'Your merchant id', 'MODULE_PAYMENT_INPAY_MERCHANT_ID', '', 'Your merchant unique identifier (supplied by inpay)', 6, 2, NULL, '2012-10-13 09:11:08', NULL, NULL),
(626, 'Your secret key', 'MODULE_PAYMENT_INPAY_SECRET_KEY', '', 'Your secret key (supplied by inpay)', 6, 3, NULL, '2012-10-13 09:11:08', NULL, NULL),
(627, 'Flow Layout', 'MODULE_PAYMENT_INPAY_FLOW_LAYOUT', 'multi_page', 'Layout for the buyer flow', 6, 4, NULL, '2012-10-13 09:11:08', NULL, NULL),
(628, 'Decrease stock on payment creation', 'MODULE_PAYMENT_INPAY_DECREASE_STOCK_ON_CREATION', 'True', 'Do you want to decrease stock upon payment creation?', 6, 5, NULL, '2012-10-13 09:11:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(629, 'Debug E-Mail Address', 'MODULE_PAYMENT_INPAY_DEBUG_EMAIL', '', 'All parameters of an Invalid IPN notification will be sent to this email address if one is entered.', 6, 6, NULL, '2012-10-13 09:11:08', NULL, NULL),
(630, 'Payment Zone', 'MODULE_PAYMENT_INPAY_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 7, NULL, '2012-10-13 09:11:08', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(631, 'Sort order of display.', 'MODULE_PAYMENT_INPAY_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 8, NULL, '2012-10-13 09:11:08', NULL, NULL),
(632, 'Set inpay Acknowledged Order Status', 'MODULE_PAYMENT_INPAY_CREATE_ORDER_STATUS_ID', '9', 'Set the status of orders made with this payment module to this value', 6, 9, NULL, '2012-10-13 09:11:08', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(633, 'Set inpay sum too low Order Status', 'MODULE_PAYMENT_INPAY_SUM_TOO_LOW_ORDER_STATUS_ID', '10', 'Set the status of orders which are paid with insufficient fund (sum too low) to this value', 6, 10, NULL, '2012-10-13 09:11:08', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(634, 'Set inpay Completed Order Status', 'MODULE_PAYMENT_INPAY_COMP_ORDER_STATUS_ID', '11', 'Set the status of orders which are confirmed as paid (approved) to this value', 6, 11, NULL, '2012-10-13 09:11:08', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(635, 'Enable PSiGate Module', 'MODULE_PAYMENT_PSIGATE_STATUS', 'True', 'Do you want to accept PSiGate payments?', 6, 1, NULL, '2012-10-13 09:11:40', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(636, 'Merchant ID', 'MODULE_PAYMENT_PSIGATE_MERCHANT_ID', 'teststorewithcard', 'Merchant ID used for the PSiGate service', 6, 2, NULL, '2012-10-13 09:11:40', NULL, NULL),
(637, 'Transaction Mode', 'MODULE_PAYMENT_PSIGATE_TRANSACTION_MODE', 'Always Good', 'Transaction mode to use for the PSiGate service', 6, 3, NULL, '2012-10-13 09:11:40', NULL, 'tep_cfg_select_option(array(''Production'', ''Always Good'', ''Always Duplicate'', ''Always Decline''), '),
(638, 'Transaction Type', 'MODULE_PAYMENT_PSIGATE_TRANSACTION_TYPE', 'PreAuth', 'Transaction type to use for the PSiGate service', 6, 4, NULL, '2012-10-13 09:11:40', NULL, 'tep_cfg_select_option(array(''Sale'', ''PreAuth'', ''PostAuth''), '),
(639, 'Credit Card Collection', 'MODULE_PAYMENT_PSIGATE_INPUT_MODE', 'Local', 'Should the credit card details be collected locally or remotely at PSiGate?', 6, 5, NULL, '2012-10-13 09:11:40', NULL, 'tep_cfg_select_option(array(''Local'', ''Remote''), '),
(640, 'Transaction Currency', 'MODULE_PAYMENT_PSIGATE_CURRENCY', 'USD', 'The currency to use for credit card transactions', 6, 6, NULL, '2012-10-13 09:11:40', NULL, 'tep_cfg_select_option(array(''CAD'', ''USD''), '),
(641, 'Sort order of display.', 'MODULE_PAYMENT_PSIGATE_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 09:11:40', NULL, NULL),
(642, 'Payment Zone', 'MODULE_PAYMENT_PSIGATE_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 09:11:40', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(643, 'Set Order Status', 'MODULE_PAYMENT_PSIGATE_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2012-10-13 09:11:40', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(644, 'Sofortüberweisung direkter Modus aktivieren', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_STATUS', 'True', 'Bezahlung per Sofortüberweisung acceptieren?', 6, 1, NULL, '2012-10-13 09:13:39', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(645, 'Kundennummer:', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_KDNR', '10000', 'Ihre Kundennummer bei der Sofortüberweisung', 6, 1, NULL, '2012-10-13 09:13:39', NULL, NULL),
(646, 'Projektnummer:', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_PROJEKT', '500000', 'Die verantwortliche Projektnummer bei der Sofortüberweisung, zu der die Zahlung gehört', 6, 1, NULL, '2012-10-13 09:13:39', NULL, NULL),
(647, 'Input-Passwort:', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_INPUT_PASSWORT', '', 'Das Input-Passwort (unter Nicht änderbare Parameter / Input-Passwort)', 6, 1, NULL, '2012-10-13 09:13:39', NULL, NULL),
(648, 'Benachrichtigung-Passwort:', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_BNA_PASSWORT', '', 'Das Benachrichtigung-Passwort (unter Benachrichtigungen festlegen)', 6, 1, NULL, '2012-10-13 09:13:39', NULL, NULL),
(649, 'Contentpasswort:', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_CNT_PASSWORT', '', 'Das Contentpasswort (unter Content-Passwort)', 6, 1, NULL, '2012-10-13 09:13:39', NULL, NULL),
(650, 'Sort order of display.', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-10-13 09:13:39', NULL, NULL),
(651, 'Payment Zone', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2012-10-13 09:13:39', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(652, 'Set Preparing Order Status', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_PREPARE_ORDER_STATUS_ID', '8', 'Order Status vor Eingang Bestellung', 6, 0, NULL, '2012-10-13 09:13:39', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(653, 'Set Order Status', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_ORDER_STATUS_ID', '0', 'Order Status nach Eingang Bestellung', 6, 0, NULL, '2012-10-13 09:13:39', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(654, 'Store Transactiondetails', 'MODULE_PAYMENT_SOFORTUEBERWEISUNG_DIRECT_STORE_TRANSACTION_DETAILS', 'True', 'Transactionsdetails bei Benachrichtigung in das Kommentarfeld speichern (zum debuggen, ist für Kunden via Konto sichtbar)', 6, 2, NULL, '2012-10-13 09:13:39', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(655, 'Enable Best Sellers Module', 'MODULE_BOXES_BEST_SELLERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2012-11-23 07:29:50', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(656, 'Content Placement', 'MODULE_BOXES_BEST_SELLERS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2012-11-23 07:29:50', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(657, 'Sort Order', 'MODULE_BOXES_BEST_SELLERS_SORT_ORDER', '1200', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2012-11-23 07:29:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration_group`
--

CREATE TABLE IF NOT EXISTS `configuration_group` (
  `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_group_title` varchar(64) NOT NULL,
  `configuration_group_description` varchar(255) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT '1',
  PRIMARY KEY (`configuration_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `configuration_group`
--

INSERT INTO `configuration_group` (`configuration_group_id`, `configuration_group_title`, `configuration_group_description`, `sort_order`, `visible`) VALUES
(1, 'My Store', 'General information about my store', 1, 1),
(2, 'Minimum Values', 'The minimum values for functions / data', 2, 1),
(3, 'Maximum Values', 'The maximum values for functions / data', 3, 1),
(4, 'Images', 'Image parameters', 4, 1),
(5, 'Customer Details', 'Customer account configuration', 5, 1),
(6, 'Module Options', 'Hidden from configuration', 6, 0),
(7, 'Shipping/Packaging', 'Shipping options available at my store', 7, 1),
(8, 'Product Listing', 'Product Listing    configuration options', 8, 1),
(9, 'Stock', 'Stock configuration options', 9, 1),
(10, 'Logging', 'Logging configuration options', 10, 1),
(11, 'Cache', 'Caching configuration options', 11, 1),
(12, 'E-Mail Options', 'General setting for E-Mail transport and HTML E-Mails', 12, 1),
(13, 'Download', 'Downloadable products options', 13, 1),
(14, 'GZip Compression', 'GZip compression options', 14, 1),
(15, 'Sessions', 'Session options', 15, 1),
(18, 'Featured', 'Featured Products Display', 18, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `startdate` char(8) DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `counter`
--

INSERT INTO `counter` (`startdate`, `counter`) VALUES
('20120825', 4612);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `counter_history`
--

CREATE TABLE IF NOT EXISTS `counter_history` (
  `month` char(8) DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `countries_name` varchar(255) NOT NULL,
  `countries_iso_code_2` char(2) NOT NULL,
  `countries_iso_code_3` char(3) NOT NULL,
  `address_format_id` int(11) NOT NULL,
  PRIMARY KEY (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 5),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 5),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 4),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 3),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 2),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `currencies_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` char(3) NOT NULL,
  `symbol_left` varchar(12) DEFAULT NULL,
  `symbol_right` varchar(12) DEFAULT NULL,
  `decimal_point` char(1) DEFAULT NULL,
  `thousands_point` char(1) DEFAULT NULL,
  `decimal_places` char(1) DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`currencies_id`),
  KEY `idx_currencies_code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'U.S. Dollar', 'USD', '$', '', '.', ',', '2', 1.00000000, '2012-08-25 08:49:00'),
(2, 'Euro', 'EUR', '', 'â‚¬', '.', ',', '2', 1.00000000, '2012-08-25 08:49:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_gender` char(1) DEFAULT NULL,
  `customers_firstname` varchar(255) NOT NULL,
  `customers_lastname` varchar(255) NOT NULL,
  `customers_dob` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customers_email_address` varchar(255) NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) NOT NULL,
  `customers_fax` varchar(255) DEFAULT NULL,
  `customers_password` varchar(60) NOT NULL,
  `customers_newsletter` char(1) DEFAULT NULL,
  PRIMARY KEY (`customers_id`),
  KEY `idx_customers_email_address` (`customers_email_address`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `customers_email_address`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `customers_password`, `customers_newsletter`) VALUES
(1, 'm', 'dian', 'santoso', '2012-08-25 00:00:00', 'budal@gmail.com', 1, '43435345', '', '$P$Dlfbfh83Hb1AfQ/TaKyQcb1xHL2cy71', '0'),
(2, 'm', 'santoso', 'san', '2013-03-24 00:00:00', 'santoso@gmail.com', 2, '2324345', 'Your fax number', '$P$DzXFL.xKsWKQOvU1VjTDqYflIPHrxz1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_basket`
--

CREATE TABLE IF NOT EXISTS `customers_basket` (
  `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,4) DEFAULT NULL,
  `customers_basket_date_added` char(8) DEFAULT NULL,
  PRIMARY KEY (`customers_basket_id`),
  KEY `idx_customers_basket_customers_id` (`customers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`) VALUES
(5, 2, '30', 1, NULL, '20130324'),
(7, 2, '34', 1, NULL, '20130324'),
(8, 1, '31{1}19{2}16{5}10', 1, NULL, '20130324');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_basket_attributes`
--

CREATE TABLE IF NOT EXISTS `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_value_id` int(11) NOT NULL,
  PRIMARY KEY (`customers_basket_attributes_id`),
  KEY `idx_customers_basket_att_customers_id` (`customers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `customers_basket_attributes`
--

INSERT INTO `customers_basket_attributes` (`customers_basket_attributes_id`, `customers_id`, `products_id`, `products_options_id`, `products_options_value_id`) VALUES
(6, 1, '31{1}19{2}16{5}10', 1, 19),
(7, 1, '31{1}19{2}16{5}10', 2, 16),
(8, 1, '31{1}19{2}16{5}10', 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_info`
--

CREATE TABLE IF NOT EXISTS `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0',
  `password_reset_key` char(40) DEFAULT NULL,
  `password_reset_date` datetime DEFAULT NULL,
  PRIMARY KEY (`customers_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`, `password_reset_key`, `password_reset_date`) VALUES
(1, '2013-03-28 19:52:51', 54, '2012-08-25 08:56:04', '2013-03-16 18:21:25', 0, NULL, NULL),
(2, '2013-03-27 13:44:41', 9, '2013-03-24 07:08:42', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `featured`
--

CREATE TABLE IF NOT EXISTS `featured` (
  `featured_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL DEFAULT '0',
  `featured_date_added` datetime DEFAULT NULL,
  `featured_last_modified` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`featured_id`),
  KEY `idx_products_id` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `featured`
--

INSERT INTO `featured` (`featured_id`, `products_id`, `featured_date_added`, `featured_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 30, '2012-10-09 07:14:09', NULL, NULL, NULL, 1),
(2, 34, '2012-10-09 07:14:39', NULL, NULL, NULL, 1),
(3, 33, '2012-10-09 07:15:05', NULL, NULL, NULL, 1),
(4, 31, '2012-10-09 07:15:22', NULL, NULL, NULL, 1),
(5, 37, '2012-10-09 07:15:41', NULL, NULL, NULL, 1),
(6, 36, '2012-10-09 07:15:57', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geo_zones`
--

CREATE TABLE IF NOT EXISTS `geo_zones` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_name` varchar(32) NOT NULL,
  `geo_zone_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', NULL, '2012-08-25 08:49:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` char(2) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `directory` varchar(32) DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  PRIMARY KEY (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`) VALUES
(1, 'English', 'en', 'icon.gif', 'english', 1),
(2, 'French', 'fr', 'icon.gif', 'french', 2),
(3, 'German', 'de', 'icon.gif', 'german', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manufacturers`
--

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(32) NOT NULL,
  `manufacturers_image` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`),
  KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`) VALUES
(4, 'Nam non metus', 'manufacturer_fox.gif', '2012-08-25 08:49:01', '2012-09-27 08:28:59'),
(5, 'Sed tortor lectus', 'manufacturer_logitech.gif', '2012-08-25 08:49:01', '2012-09-27 08:29:45'),
(6, 'Massa vel commodo', 'manufacturer_canon.gif', '2012-08-25 08:49:01', '2012-09-27 08:28:28'),
(8, 'Nulla lobortis posuere', 'manufacturer_gt_interactive.gif', '2012-08-25 08:49:01', '2012-09-27 08:29:15'),
(9, 'Nunc sapien diam', 'manufacturer_hewlett_packard.gif', '2012-08-25 08:49:01', '2012-09-27 08:29:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manufacturers_info`
--

CREATE TABLE IF NOT EXISTS `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`,`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `manufacturers_info`
--

INSERT INTO `manufacturers_info` (`manufacturers_id`, `languages_id`, `manufacturers_url`, `url_clicked`, `date_last_click`) VALUES
(4, 1, 'http://www.fox.com', 0, NULL),
(4, 2, 'http://www.fox.com', 0, NULL),
(4, 3, 'http://www.fox.com', 0, NULL),
(5, 1, 'http://www.logitech.com', 0, NULL),
(5, 2, 'http://www.logitech.com', 0, NULL),
(5, 3, 'http://www.logitech.com', 0, NULL),
(6, 1, 'http://www.canon.com', 0, NULL),
(6, 2, 'http://www.canon.com', 0, NULL),
(6, 3, 'http://www.canon.com', 0, NULL),
(8, 1, 'http://www.infogrames.com', 0, NULL),
(8, 2, 'http://www.infogrames.com', 0, NULL),
(8, 3, 'http://www.infogrames.com', 0, NULL),
(9, 1, 'http://www.hewlettpackard.com', 0, NULL),
(9, 2, 'http://www.hewlettpackard.com', 0, NULL),
(9, 3, 'http://www.hewlettpackard.com', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletters`
--

CREATE TABLE IF NOT EXISTS `newsletters` (
  `newsletters_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `module` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0',
  PRIMARY KEY (`newsletters_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `newsletters`
--

INSERT INTO `newsletters` (`newsletters_id`, `title`, `content`, `module`, `date_added`, `date_sent`, `status`, `locked`) VALUES
(1, 'hello', 'hello', 'newsletter', '2012-08-25 08:58:48', '2013-03-21 07:00:32', 1, 1),
(2, 'good', 'good', 'product_notification', '2012-08-25 08:59:22', '2013-03-25 06:43:32', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) NOT NULL,
  `customers_company` varchar(255) DEFAULT NULL,
  `customers_street_address` varchar(255) NOT NULL,
  `customers_suburb` varchar(255) DEFAULT NULL,
  `customers_city` varchar(255) NOT NULL,
  `customers_postcode` varchar(255) NOT NULL,
  `customers_state` varchar(255) DEFAULT NULL,
  `customers_country` varchar(255) NOT NULL,
  `customers_telephone` varchar(255) NOT NULL,
  `customers_email_address` varchar(255) NOT NULL,
  `customers_address_format_id` int(5) NOT NULL,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_company` varchar(255) DEFAULT NULL,
  `delivery_street_address` varchar(255) NOT NULL,
  `delivery_suburb` varchar(255) DEFAULT NULL,
  `delivery_city` varchar(255) NOT NULL,
  `delivery_postcode` varchar(255) NOT NULL,
  `delivery_state` varchar(255) DEFAULT NULL,
  `delivery_country` varchar(255) NOT NULL,
  `delivery_address_format_id` int(5) NOT NULL,
  `billing_name` varchar(255) NOT NULL,
  `billing_company` varchar(255) DEFAULT NULL,
  `billing_street_address` varchar(255) NOT NULL,
  `billing_suburb` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_postcode` varchar(255) NOT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `cc_owner` varchar(255) DEFAULT NULL,
  `cc_number` varchar(32) DEFAULT NULL,
  `cc_expires` varchar(4) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `idx_orders_customers_id` (`customers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`orders_id`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `customers_email_address`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_status`, `orders_date_finished`, `currency`, `currency_value`) VALUES
(9, 1, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', '43435345', 'budal@gmail.com', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'Cash on Delivery', '', '', '', '', NULL, '2012-09-30 07:53:06', 1, NULL, 'USD', '1.000000'),
(13, 1, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', '43435345', 'budal@gmail.com', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'Cash on Delivery', '', '', '', '', NULL, '2012-10-11 19:32:00', 1, NULL, 'USD', '1.000000'),
(15, 1, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', '43435345', 'budal@gmail.com', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'Pay with your online bank - instant and 100% secure', '', '', '', '', '2013-03-24 07:02:15', '2012-10-13 09:22:51', 3, NULL, 'USD', '1.000000'),
(16, 1, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', '43435345', 'budal@gmail.com', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'Cash on Delivery', '', '', '', '', '2013-03-24 07:01:56', '2013-03-24 07:00:52', 3, NULL, 'USD', '1.000000'),
(17, 1, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', '43435345', 'budal@gmail.com', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'dian santoso', 'red', 'florida', '', 'florida', '343434', 'Florida', 'United States', 2, 'Cash on Delivery', '', '', '', '', NULL, '2013-03-24 07:13:36', 1, NULL, 'USD', '1.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products`
--

CREATE TABLE IF NOT EXISTS `orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) DEFAULT NULL,
  `products_name` varchar(64) NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL,
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_orders_products_orders_id` (`orders_id`),
  KEY `idx_orders_products_products_id` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Volcado de datos para la tabla `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(20, 9, 38, 'B0022', 'Sony VAIO Green', '345.0000', '345.0000', '0.0000', 1),
(21, 9, 32, 'B003', 'Hewlet Packard S Monitor', '543.0000', '543.0000', '7.0000', 1),
(22, 9, 33, 'B004', 'Apple Macbook', '232.0000', '232.0000', '7.0000', 1),
(30, 13, 33, 'B004', 'Brown Stripe T-Shirt', '232.0000', '232.0000', '7.0000', 1),
(31, 13, 29, 'B001', 'Cyan T-Shirt', '122.0000', '122.0000', '7.0000', 1),
(32, 13, 34, 'b005', 'Pink T-Shirt', '122.0000', '122.0000', '7.0000', 1),
(33, 13, 36, 'B0020', 'Gray T-Shirt', '120.0000', '120.0000', '7.0000', 1),
(34, 13, 31, 'b003', 'Love T-Shirt', '121.0000', '203.0000', '7.0000', 1),
(35, 13, 38, 'B0022', 'Yellow T-shirt', '345.0000', '421.0000', '0.0000', 1),
(41, 15, 33, 'B004', 'Brown Stripe T-Shirt', '232.0000', '232.0000', '7.0000', 1),
(42, 15, 35, 'B0019', 'Black Blue T-Shirt', '120.0000', '120.0000', '0.0000', 1),
(43, 15, 37, 'B0021', 'Blue Tshirt', '232.0000', '232.0000', '7.0000', 1),
(44, 15, 36, 'B0020', 'Gray T-Shirt', '120.0000', '120.0000', '7.0000', 1),
(45, 15, 31, 'b003', 'Love T-Shirt', '121.0000', '203.0000', '7.0000', 1),
(46, 16, 31, 'b003', 'Fuis Lorem', '121.0000', '203.0000', '7.0000', 1),
(47, 16, 36, 'B0020', 'Set Amet Lorem', '120.0000', '120.0000', '7.0000', 1),
(48, 16, 33, 'B004', 'Lorem Dolor Amet', '232.0000', '232.0000', '7.0000', 1),
(49, 17, 36, 'B0020', 'Set Amet Lorem', '120.0000', '120.0000', '7.0000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products_attributes`
--

CREATE TABLE IF NOT EXISTS `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_options` varchar(32) NOT NULL,
  `products_options_values` varchar(32) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) NOT NULL,
  PRIMARY KEY (`orders_products_attributes_id`),
  KEY `idx_orders_products_att_orders_id` (`orders_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `orders_products_attributes`
--

INSERT INTO `orders_products_attributes` (`orders_products_attributes_id`, `orders_id`, `orders_products_id`, `products_options`, `products_options_values`, `options_values_price`, `price_prefix`) VALUES
(3, 13, 34, 'Color', 'Black', '12.0000', '+'),
(4, 13, 34, 'Size', 'L', '20.0000', '+'),
(5, 13, 34, 'Version', 'Download: Windows - English', '50.0000', '+'),
(6, 13, 35, 'Color', 'Blue', '36.0000', '+'),
(7, 13, 35, 'Size', 'L', '40.0000', '+'),
(11, 15, 45, 'Color', 'Black', '12.0000', '+'),
(12, 15, 45, 'Size', 'L', '20.0000', '+'),
(13, 15, 45, 'Version', 'Download: Windows - English', '50.0000', '+'),
(14, 16, 46, 'Color', 'Black', '12.0000', '+'),
(15, 16, 46, 'Size', 'L', '20.0000', '+'),
(16, 16, 46, 'Version', 'Download: Windows - English', '50.0000', '+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products_download`
--

CREATE TABLE IF NOT EXISTS `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) NOT NULL,
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orders_products_download_id`),
  KEY `idx_orders_products_download_orders_id` (`orders_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `orders_products_download`
--

INSERT INTO `orders_products_download` (`orders_products_download_id`, `orders_id`, `orders_products_id`, `orders_products_filename`, `download_maxdays`, `download_count`) VALUES
(1, 6, 12, 'unreal.zip', 7, 3),
(2, 13, 34, 'unreal.zip', 12, 5),
(4, 15, 45, 'unreal.zip', 12, 5),
(5, 16, 46, 'unreal.zip', 12, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_status`
--

CREATE TABLE IF NOT EXISTS `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) NOT NULL,
  `public_flag` int(11) DEFAULT '1',
  `downloads_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name` (`orders_status_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`) VALUES
(1, 1, 'Pending', 1, 0),
(1, 2, 'Pending', 1, 0),
(1, 3, 'Pending', 1, 0),
(2, 1, 'Processing', 1, 1),
(2, 2, 'Processing', 1, 0),
(2, 3, 'Processing', 1, 0),
(3, 1, 'Delivered', 1, 1),
(3, 2, 'Delivered', 1, 0),
(3, 3, 'Delivered', 1, 0),
(4, 1, 'PayPal [Transactions]', 0, 0),
(4, 2, 'PayPal [Transactions]', 1, 0),
(4, 3, 'PayPal [Transactions]', 1, 0),
(5, 1, 'Preparing [ChronoPay]', 0, 0),
(5, 2, 'Preparing [ChronoPay]', 0, 0),
(5, 3, 'Preparing [ChronoPay]', 0, 0),
(6, 1, 'Preparing [PayPal Standard]', 0, 0),
(6, 2, 'Preparing [PayPal Standard]', 0, 0),
(6, 3, 'Preparing [PayPal Standard]', 0, 0),
(7, 1, 'Preparing [WorldPay]', 0, 0),
(7, 2, 'Preparing [WorldPay]', 0, 0),
(7, 3, 'Preparing [WorldPay]', 0, 0),
(8, 1, 'Sofortüberweisung Vorbereitung', 0, 0),
(8, 2, 'Sofortüberweisung Vorbereitung', 0, 0),
(8, 3, 'Sofortüberweisung Vorbereitung', 0, 0),
(9, 1, 'Processing [inpay]', 1, 0),
(9, 2, 'Processing [inpay]', 1, 0),
(9, 3, 'Processing [inpay]', 1, 0),
(10, 1, 'Sum too low [inpay]', 1, 0),
(10, 2, 'Sum too low [inpay]', 1, 0),
(10, 3, 'Sum too low [inpay]', 1, 0),
(11, 1, 'Completed [inpay]', 1, 0),
(11, 2, 'Completed [inpay]', 1, 0),
(11, 3, 'Completed [inpay]', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_status_history`
--

CREATE TABLE IF NOT EXISTS `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` text,
  PRIMARY KEY (`orders_status_history_id`),
  KEY `idx_orders_status_history_orders_id` (`orders_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(11, 9, 1, '2012-09-30 07:53:06', 1, 'hellow....'),
(15, 13, 1, '2012-10-11 19:32:00', 1, ''),
(16, 16, 1, '2013-03-24 07:00:52', 1, ''),
(17, 16, 3, '2013-03-24 07:01:57', 1, ''),
(18, 15, 3, '2013-03-24 07:02:16', 1, ''),
(19, 17, 1, '2013-03-24 07:13:36', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_total`
--

CREATE TABLE IF NOT EXISTS `orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_orders_total_orders_id` (`orders_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Volcado de datos para la tabla `orders_total`
--

INSERT INTO `orders_total` (`orders_total_id`, `orders_id`, `title`, `text`, `value`, `class`, `sort_order`) VALUES
(32, 9, 'Sub-Total:', '$1,174.25', '1174.2500', 'ot_subtotal', 1),
(33, 9, 'FL TAX 7.0%:', '$54.25', '54.2500', 'ot_tax', 3),
(34, 9, 'Flat Rate (Best Way):', '$5.00', '5.0000', 'ot_shipping', 2),
(35, 9, 'Total:', '<strong>$1,179.25</strong>', '1179.2500', 'ot_total', 4),
(47, 13, 'Sub-Total:', '$1,275.93', '1275.9300', 'ot_subtotal', 1),
(48, 13, 'FL TAX 7.0%:', '$55.93', '55.9300', 'ot_tax', 3),
(49, 13, 'Flat Rate (Best Way):', '$5.00', '5.0000', 'ot_shipping', 2),
(50, 13, 'Total:', '<strong>$1,280.93</strong>', '1280.9300', 'ot_total', 4),
(55, 15, 'Sub-Total:', '$962.09', '962.0900', 'ot_subtotal', 1),
(56, 15, 'Free Shipping:', '$0.00', '0.0000', 'ot_shipping', 2),
(57, 15, 'FL TAX 7.0%:', '$55.09', '55.0900', 'ot_tax', 3),
(58, 15, 'Total:', '<strong>$962.09</strong>', '962.0900', 'ot_total', 4),
(59, 16, 'Sub-Total:', '$593.85', '593.8500', 'ot_subtotal', 1),
(60, 16, 'Free Shipping:', '$0.00', '0.0000', 'ot_shipping', 2),
(61, 16, 'FL TAX 7.0%:', '$38.85', '38.8500', 'ot_tax', 3),
(62, 16, 'Total:', '<strong>$593.85</strong>', '593.8500', 'ot_total', 4),
(63, 17, 'Sub-Total:', '$128.40', '128.4000', 'ot_subtotal', 1),
(64, 17, 'Per Item (Best Way):', '$2.50', '2.5000', 'ot_shipping', 2),
(65, 17, 'FL TAX 7.0%:', '$8.40', '8.4000', 'ot_tax', 3),
(66, 17, 'Total:', '<strong>$130.90</strong>', '130.9000', 'ot_total', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(12) DEFAULT NULL,
  `products_image` varchar(64) DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` decimal(5,2) NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_id`),
  KEY `idx_products_model` (`products_model`),
  KEY `idx_products_date_added` (`products_date_added`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`) VALUES
(29, 22, 'B001', 'image-2.jpg', '223.0000', '2012-09-27 08:14:15', '2013-03-29 04:50:26', NULL, '2.00', 1, 1, 6, 1),
(30, 43, 'B002', 'image-1.jpg', '145.0000', '2012-09-27 08:15:24', '2012-11-23 10:47:00', NULL, '2.00', 1, 0, 6, 1),
(31, 53, 'b003', 'image-3.jpg', '234.0000', '2012-09-27 08:16:31', '2013-03-21 16:04:58', NULL, '2.00', 1, 1, 4, 2),
(32, 31, 'B003', 'image-1.jpg', '543.0000', '2012-09-27 08:18:54', '2012-11-23 10:51:08', NULL, '2.00', 1, 1, 4, 1),
(33, 51, 'B004', 'image-2.jpg', '232.0000', '2012-09-27 08:19:51', '2012-11-23 10:51:21', NULL, '2.00', 1, 1, 8, 3),
(34, 42, 'b005', 'image-3.jpg', '122.0000', '2012-09-27 08:21:47', '2013-03-15 09:03:36', '0000-00-00 00:00:00', '2.00', 1, 1, 9, 1),
(35, 54, 'B0019', 'image-1.jpg', '453.0000', '2012-09-27 08:22:52', '2012-11-23 10:51:49', NULL, '2.00', 1, 0, 9, 0),
(36, 84, 'B0020', 'image-2.jpg', '120.0000', '2012-09-27 08:23:51', '2013-03-15 09:03:58', '0000-00-00 00:00:00', '2.00', 1, 1, 9, 3),
(37, 34, 'B0021', 'image-2.jpg', '232.0000', '2012-09-27 08:25:53', '2012-11-23 10:52:18', NULL, '2.00', 1, 1, 5, 0),
(38, 42, 'B0022', 'image-1.jpg', '345.0000', '2012-09-27 08:27:41', '2012-11-23 10:53:25', NULL, '2.00', 1, 0, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_attributes`
--

CREATE TABLE IF NOT EXISTS `products_attributes` (
  `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) NOT NULL,
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_products_attributes_products_id` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`) VALUES
(1, 38, 1, 18, '34.0000', '+'),
(2, 38, 1, 19, '35.0000', '+'),
(3, 38, 1, 20, '36.0000', '+'),
(4, 38, 2, 16, '40.0000', '+'),
(5, 38, 2, 15, '41.0000', '+'),
(6, 38, 2, 17, '42.0000', '+'),
(7, 38, 2, 14, '43.0000', '+'),
(8, 31, 1, 19, '12.0000', '+'),
(9, 31, 1, 18, '14.0000', '+'),
(10, 31, 2, 16, '20.0000', '+'),
(11, 31, 2, 15, '22.0000', '+'),
(12, 31, 5, 10, '50.0000', '+'),
(13, 37, 1, 3, '0.0000', '+'),
(14, 37, 1, 3, '0.0000', '+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_attributes_download`
--

CREATE TABLE IF NOT EXISTS `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) NOT NULL,
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0',
  PRIMARY KEY (`products_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products_attributes_download`
--

INSERT INTO `products_attributes_download` (`products_attributes_id`, `products_attributes_filename`, `products_attributes_maxdays`, `products_attributes_maxcount`) VALUES
(12, 'unreal.zip', 12, 5),
(26, 'unreal.zip', 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_description`
--

CREATE TABLE IF NOT EXISTS `products_description` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) NOT NULL,
  `products_description` text,
  `products_url` varchar(255) DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0',
  PRIMARY KEY (`products_id`,`language_id`),
  KEY `products_name` (`products_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Volcado de datos para la tabla `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(29, 1, 'Ipsum Amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.apple.com', 6),
(29, 2, 'Ipsum Amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.apple.com', 0),
(29, 3, 'Ipsum Amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.apple.com', 0),
(30, 1, 'Set Dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.heaven.com', 10),
(30, 2, 'Set Dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.heaven.com', 0),
(30, 3, 'Set Dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.heaven.com', 0),
(31, 1, 'Fuis Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.kingdom.com', 24),
(31, 2, 'Fuis Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.kingdom.com', 0),
(31, 3, 'Fuis Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.kingdom.com', 0),
(32, 1, 'Lorem Dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.kingdom.com', 0),
(32, 2, 'Lorem Dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.kingdom.com', 0),
(32, 3, 'Lorem Dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.kingdom.com', 0),
(33, 1, 'Lorem Dolor Amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.omega.com', 7),
(33, 2, 'Lorem Dolor Amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.omega.com', 0),
(33, 3, 'Lorem Dolor Amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.omega.com', 0),
(34, 1, 'Fuis Amet Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.grammar.com', 6),
(34, 2, 'Fuis Amet Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.grammar.com', 0),
(34, 3, 'Fuis Amet Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.grammar.com', 0),
(35, 1, 'Lorem Dolor Fuis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.atlas.com', 45),
(35, 2, 'Lorem Dolor Fuis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.atlas.com', 0),
(35, 3, 'Lorem Dolor Fuis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.atlas.com', 0),
(36, 1, 'Set Amet Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.noticer.com', 9),
(36, 2, 'Set Amet Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.noticer.com', 0),
(36, 3, 'Set Amet Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac libero sit amet ipsum facilisis mattis quis feugiat quam. Nulla facilisi. Nam molestie, justo eget fermentum gravida, mi metus consequat lorem, et fermentum felis tellus vitae ipsum. Etiam a felis diam. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu, non aliquet enim. Mauris viverra velit eu ligula malesuada eget tincidunt lectus egestas. Suspendisse potenti. Proin nec justo arcu. Mauris consequat augue id quam tincidunt iaculis. In quam diam, ultrices id malesuada id, hendrerit sed nisi. Aliquam ut leo leo. Integer posuere semper sem id gravida. Vestibulum ultrices tempor aliquet.', 'http://www.noticer.com', 0),
(37, 1, 'Cons Ipsum', 'Morbi ligula justo, commodo id rhoncus nec, mollis nec nisi. Sed tortor lectus, posuere sed lobortis vitae, aliquam a sem. In adipiscing nibh a turpis mollis vitae dignissim elit sollicitudin. Quisque eget purus et tortor tristique dapibus. Vestibulum vitae felis ac orci euismod vestibulum. Nulla lobortis posuere facilisis. Nunc sapien diam, ultricies sed consectetur nec, congue in augue. Praesent vitae nisi quis augue tincidunt pretium a in diam.', 'http://www.belly.com', 7),
(37, 2, 'Cons Ipsum', 'Morbi ligula justo, commodo id rhoncus nec, mollis nec nisi. Sed tortor lectus, posuere sed lobortis vitae, aliquam a sem. In adipiscing nibh a turpis mollis vitae dignissim elit sollicitudin. Quisque eget purus et tortor tristique dapibus. Vestibulum vitae felis ac orci euismod vestibulum. Nulla lobortis posuere facilisis. Nunc sapien diam, ultricies sed consectetur nec, congue in augue. Praesent vitae nisi quis augue tincidunt pretium a in diam.', 'http://www.belly.com', 0),
(37, 3, 'Cons Ipsum', 'Morbi ligula justo, commodo id rhoncus nec, mollis nec nisi. Sed tortor lectus, posuere sed lobortis vitae, aliquam a sem. In adipiscing nibh a turpis mollis vitae dignissim elit sollicitudin. Quisque eget purus et tortor tristique dapibus. Vestibulum vitae felis ac orci euismod vestibulum. Nulla lobortis posuere facilisis. Nunc sapien diam, ultricies sed consectetur nec, congue in augue. Praesent vitae nisi quis augue tincidunt pretium a in diam.', 'http://www.belly.com', 0),
(38, 1, 'Duios Lorem Ipsim', 'Morbi ligula justo, commodo id rhoncus nec, mollis nec nisi. Sed tortor lectus, posuere sed lobortis vitae, aliquam a sem. In adipiscing nibh a turpis mollis vitae dignissim elit sollicitudin. Quisque eget purus et tortor tristique dapibus. Vestibulum vitae felis ac orci euismod vestibulum. Nulla lobortis posuere facilisis. Nunc sapien diam, ultricies sed consectetur nec, congue in augue. Praesent vitae nisi quis augue tincidunt pretium a in diam.', 'http://www.fat.com', 127),
(38, 2, 'Duios Lorem Ipsim', 'Morbi ligula justo, commodo id rhoncus nec, mollis nec nisi. Sed tortor lectus, posuere sed lobortis vitae, aliquam a sem. In adipiscing nibh a turpis mollis vitae dignissim elit sollicitudin. Quisque eget purus et tortor tristique dapibus. Vestibulum vitae felis ac orci euismod vestibulum. Nulla lobortis posuere facilisis. Nunc sapien diam, ultricies sed consectetur nec, congue in augue. Praesent vitae nisi quis augue tincidunt pretium a in diam.', 'http://www.fat.com', 0),
(38, 3, 'Duios Lorem Ipsim', 'Morbi ligula justo, commodo id rhoncus nec, mollis nec nisi. Sed tortor lectus, posuere sed lobortis vitae, aliquam a sem. In adipiscing nibh a turpis mollis vitae dignissim elit sollicitudin. Quisque eget purus et tortor tristique dapibus. Vestibulum vitae felis ac orci euismod vestibulum. Nulla lobortis posuere facilisis. Nunc sapien diam, ultricies sed consectetur nec, congue in augue. Praesent vitae nisi quis augue tincidunt pretium a in diam.', 'http://www.fat.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_images`
--

CREATE TABLE IF NOT EXISTS `products_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `htmlcontent` text,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_images_prodid` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(4, 38, 'large-1.jpg', '', 1),
(5, 38, 'large-2.jpg', '', 2),
(6, 38, 'large-3.jpg', '', 3),
(7, 38, 'large-1.jpg', '', 4),
(8, 38, 'large-2.jpg', '', 5),
(9, 38, 'large-3.jpg', '', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_notifications`
--

CREATE TABLE IF NOT EXISTS `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`products_id`,`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products_notifications`
--

INSERT INTO `products_notifications` (`products_id`, `customers_id`, `date_added`) VALUES
(5, 1, '2012-08-25 11:34:42'),
(21, 1, '2012-09-23 15:23:22'),
(22, 1, '2012-09-23 22:37:48'),
(29, 1, '2012-10-11 11:00:13'),
(31, 1, '2012-09-28 20:29:00'),
(32, 1, '2012-09-28 20:29:00'),
(33, 1, '2012-09-30 07:53:21'),
(35, 1, '2012-09-29 10:46:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options`
--

CREATE TABLE IF NOT EXISTS `products_options` (
  `products_options_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(32) NOT NULL,
  PRIMARY KEY (`products_options_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `language_id`, `products_options_name`) VALUES
(1, 1, 'Color'),
(1, 2, 'Color'),
(1, 3, 'Color'),
(2, 1, 'Size'),
(2, 2, 'Size'),
(2, 3, 'Size'),
(3, 1, 'Model'),
(3, 2, 'Model'),
(3, 3, 'Model'),
(4, 1, 'Memory'),
(4, 2, 'Memory'),
(4, 3, 'Memory'),
(5, 1, 'Version'),
(5, 2, 'Version'),
(5, 3, 'Version');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options_values`
--

CREATE TABLE IF NOT EXISTS `products_options_values` (
  `products_options_values_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(64) NOT NULL,
  PRIMARY KEY (`products_options_values_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `language_id`, `products_options_values_name`) VALUES
(1, 1, '4 mb'),
(1, 2, '4 mb'),
(1, 3, '4 mb'),
(2, 1, '8 mb'),
(2, 2, '8 mb'),
(2, 3, '8 mb'),
(3, 1, '16 mb'),
(3, 2, '16 mb'),
(3, 3, '16 mb'),
(4, 1, '32 mb'),
(4, 2, '32 mb'),
(4, 3, '32 mb'),
(5, 1, 'Value'),
(5, 2, 'Value'),
(5, 3, 'Value'),
(6, 1, 'Premium'),
(6, 2, 'Premium'),
(6, 3, 'Premium'),
(7, 1, 'Deluxe'),
(7, 2, 'Deluxe'),
(7, 3, 'Deluxe'),
(8, 1, 'PS/2'),
(8, 2, 'PS/2'),
(8, 3, 'PS/2'),
(9, 1, 'USB'),
(9, 2, 'USB'),
(9, 3, 'USB'),
(10, 1, 'Download: Windows - English'),
(10, 2, 'Download: Windows - English'),
(10, 3, 'Download: Windows - English'),
(13, 1, 'Box: Windows - English'),
(13, 2, 'Box: Windows - English'),
(13, 3, 'Box: Windows - English'),
(14, 1, 'XL'),
(14, 2, 'XL'),
(14, 3, 'XL'),
(15, 1, 'M'),
(15, 2, 'M'),
(15, 3, 'M'),
(16, 1, 'L'),
(16, 2, 'L'),
(16, 3, 'L'),
(17, 1, 'S'),
(17, 2, 'S'),
(17, 3, 'S'),
(18, 1, 'Gray'),
(18, 2, 'Gray'),
(18, 3, 'Gray'),
(19, 1, 'Black'),
(19, 2, 'Black'),
(19, 3, 'Black'),
(20, 1, 'Blue'),
(20, 2, 'Blue'),
(20, 3, 'Blue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options_values_to_products_options`
--

CREATE TABLE IF NOT EXISTS `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  PRIMARY KEY (`products_options_values_to_products_options_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `products_options_values_to_products_options`
--

INSERT INTO `products_options_values_to_products_options` (`products_options_values_to_products_options_id`, `products_options_id`, `products_options_values_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 4, 3),
(4, 4, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 5, 10),
(13, 5, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_to_categories`
--

CREATE TABLE IF NOT EXISTS `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`products_id`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(29, 16),
(30, 16),
(31, 17),
(32, 2),
(33, 2),
(34, 3),
(35, 3),
(36, 3),
(37, 21),
(38, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `reviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reviews_id`),
  KEY `idx_reviews_products_id` (`products_id`),
  KEY `idx_reviews_customers_id` (`customers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `date_added`, `last_modified`, `reviews_status`, `reviews_read`) VALUES
(2, 31, 1, 'dian santoso', 4, '2012-09-27 08:37:48', '2012-09-27 08:39:22', 1, 6),
(3, 33, 1, 'dian santoso', 3, '2012-09-27 08:38:45', '2012-09-27 08:39:21', 1, 20),
(4, 38, 1, 'dian santoso', 5, '2012-09-27 08:39:09', '2012-09-27 08:39:20', 1, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews_description`
--

CREATE TABLE IF NOT EXISTS `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` text NOT NULL,
  PRIMARY KEY (`reviews_id`,`languages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reviews_description`
--

INSERT INTO `reviews_description` (`reviews_id`, `languages_id`, `reviews_text`) VALUES
(2, 1, 'Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero. Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu'),
(3, 1, 'Integer pellentesque iaculis ipsum, et auctor turpis porttitor eget. Curabitur sit amet neque quis massa vulputate egestas vel nec tellus. Nam non metus arcu. Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero.'),
(4, 1, 'Praesent ornare, massa vel commodo faucibus, leo lacus interdum sapien, quis feugiat justo ante eu libero.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sec_directory_whitelist`
--

CREATE TABLE IF NOT EXISTS `sec_directory_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `sec_directory_whitelist`
--

INSERT INTO `sec_directory_whitelist` (`id`, `directory`) VALUES
(1, 'admin/backups'),
(2, 'admin/images/graphs'),
(3, 'images'),
(4, 'images/banners'),
(5, 'images/dvd'),
(6, 'images/gt_interactive'),
(7, 'images/hewlett_packard'),
(8, 'images/matrox'),
(9, 'images/microsoft'),
(10, 'images/samsung'),
(11, 'images/sierra'),
(12, 'includes/work'),
(13, 'pub');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `sesskey` varchar(32) NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`sesskey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`sesskey`, `expiry`, `value`) VALUES
('6jgls9gt2ijpjcnkk8m39g72h1', 1379572738, 'language|s:7:"english";languages_id|s:1:"1";admin|a:2:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";}'),
('sbpbok5268s0ue6ni290jiqbc3', 1379572054, 'sessiontoken|s:32:"5f4690a78d2eb6805d06325fbf24f396";cart|O:12:"shoppingCart":5:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:6:"cartID";N;s:12:"content_type";b:0;}language|s:7:"english";languages_id|s:1:"1";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:3:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:1;a:4:{s:4:"page";s:12:"specials.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:2;a:4:{s:4:"page";s:14:"contact_us.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slideshow`
--

CREATE TABLE IF NOT EXISTS `slideshow` (
  `slideshow_id` int(11) NOT NULL AUTO_INCREMENT,
  `slideshow_name` varchar(255) NOT NULL,
  `slideshow_description` text NOT NULL,
  `slideshow_image` varchar(255) DEFAULT NULL,
  `slideshow_url` tinytext NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`slideshow_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `slideshow`
--

INSERT INTO `slideshow` (`slideshow_id`, `slideshow_name`, `slideshow_description`, `slideshow_image`, `slideshow_url`, `date_added`, `last_modified`) VALUES
(16, 'ban1', 'baner1', 'slideshow/banner.png', 'http://www.eyefuldesign.info', '2013-03-15 19:37:49', NULL),
(17, 'ban 2', 'banner 2', 'slideshow/banner.png', 'http://www.eyefuldesign.info', '2013-03-15 19:38:21', NULL),
(18, 'ban3', 'banner 3', 'slideshow/banner.png', 'http://www.eyefuldesign.info', '2013-03-15 19:38:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specials`
--

CREATE TABLE IF NOT EXISTS `specials` (
  `specials_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`specials_id`),
  KEY `idx_specials_products_id` (`products_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(5, 29, '122.0000', '2012-09-27 08:32:34', NULL, NULL, NULL, 1),
(6, 30, '122.0000', '2012-09-27 08:32:51', NULL, NULL, NULL, 1),
(7, 31, '121.0000', '2012-09-27 08:33:04', '2013-03-15 09:27:12', NULL, NULL, 1),
(8, 35, '120.0000', '2012-09-27 08:33:24', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_title` varchar(32) NOT NULL,
  `tax_class_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Taxable Goods', 'The following types of products are included non-food, services, etc', '2012-08-25 08:49:02', '2012-08-25 08:49:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_rates`
--

CREATE TABLE IF NOT EXISTS `tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,4) NOT NULL,
  `tax_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`tax_rates_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 1, 1, 1, '7.0000', 'FL TAX 7.0%', '2012-08-25 08:49:02', '2012-08-25 08:49:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `whos_online`
--

CREATE TABLE IF NOT EXISTS `whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time_entry` varchar(14) NOT NULL,
  `time_last_click` varchar(14) NOT NULL,
  `last_page_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(0, 'Guest', 'sbpbok5268s0ue6ni290jiqbc3', '::1', '1379570522', '1379570614', '/TopicosWeb/C&MBritish/contact_us.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_zones_country_id` (`zone_country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=182 ;

--
-- Volcado de datos para la tabla `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-WÃ¼rttemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'ThÃ¼ringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'NiederÃ¶sterreich'),
(97, 14, 'OO', 'OberÃ¶sterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'KÃ¤rnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'GraubÃ¼nden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'ZÃ¼rich'),
(130, 195, 'A CoruÃ±a', 'A CoruÃ±a'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zones_to_geo_zones`
--

CREATE TABLE IF NOT EXISTS `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`association_id`),
  KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `zones_to_geo_zones`
--

INSERT INTO `zones_to_geo_zones` (`association_id`, `zone_country_id`, `zone_id`, `geo_zone_id`, `last_modified`, `date_added`) VALUES
(1, 223, 18, 1, NULL, '2012-08-25 08:49:02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
