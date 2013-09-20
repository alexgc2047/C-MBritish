-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2013 a las 05:37:12
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `c&mbritish`
--
CREATE DATABASE IF NOT EXISTS `c&mbritish` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `c&mbritish`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `action_recorder`
--

INSERT INTO `action_recorder` (`id`, `module`, `user_id`, `user_name`, `identifier`, `success`, `date_added`) VALUES
(1, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-01-19 20:45:20'),
(2, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-01-19 21:10:10'),
(3, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-01-19 21:20:59'),
(4, 'ar_reset_password', 1, 'naidosotnas@gmail.com', '127.0.0.1', '1', '2013-01-19 22:06:09'),
(5, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-01-19 22:13:56'),
(6, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-01-19 22:19:18'),
(7, 'ar_reset_password', 1, 'naidosotnas@gmail.com', '127.0.0.1', '1', '2013-01-19 22:26:11'),
(8, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-01-20 04:23:05'),
(9, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-01 08:02:43'),
(10, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-01 08:36:29'),
(11, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-01 08:41:38'),
(12, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-01 20:26:52'),
(13, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-01 21:16:25'),
(14, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-01 21:47:54'),
(15, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-07 08:21:19'),
(16, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-07 08:31:11'),
(17, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-07 08:44:28'),
(18, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-07 12:23:41'),
(19, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-07 13:24:27'),
(20, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-07 13:33:01'),
(21, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-07 13:33:41'),
(22, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-07 13:48:58'),
(23, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-11 08:32:33'),
(24, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-11 08:53:00'),
(25, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-13 19:26:11'),
(26, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-14 15:15:19'),
(27, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-15 06:41:32'),
(28, 'ar_tell_a_friend', 2, 'dian', '127.0.0.1', '1', '2013-02-15 10:03:53'),
(29, 'ar_tell_a_friend', 2, 'dsadas', '127.0.0.1', '0', '2013-02-15 10:05:14'),
(30, 'ar_admin_login', 1, 'admin', '127.0.0.1', '1', '2013-02-15 10:19:49'),
(31, 'ar_admin_login', 1, 'Admin', '', '1', '2013-09-19 11:30:21'),
(32, 'ar_admin_login', 1, 'Admin', '', '1', '2013-09-19 12:50:27'),
(33, 'ar_admin_login', 0, 'Karlis', '', '0', '2013-09-19 13:03:54'),
(34, 'ar_admin_login', 0, 'Karlis', '', '0', '2013-09-19 13:04:03'),
(35, 'ar_admin_login', 1, 'Admin', '', '1', '2013-09-19 13:04:57'),
(36, 'ar_admin_login', 1, 'Admin', '', '1', '2013-09-19 14:01:03'),
(37, 'ar_admin_login', 1, 'Admin', '', '1', '2013-09-19 14:35:54');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(2, 2, 'm', 'red', 'dian', 'santoso', 'florida', '', '34343', 'florida', '', 223, 18),
(3, 3, 'f', '', 'Karla', 'Arroyo', 'Justo Sierra 136', '15 de Mayo', '38020', 'Celaya', 'Guanajuato', 138, 0),
(4, 4, 'm', '', 'Alejandro', 'Gomez', 'Leandro Valle 403', 'Apaseo el Alto', '38500', 'Apaseo el Alto', 'Guanajuato', 138, 0);

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
(1, 'admin', '$P$D8c7k83aYBkGHP.J2znS/bng35UFIA0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`) VALUES
(2, 'payment', 'http://www.google.com', 'payment.png', '160x50', '', NULL, NULL, NULL, '2013-01-19 20:46:33', '2013-01-19 20:46:40', 1),
(3, 'twitter', 'http://www.google.com', '1358519771_twitter_bird_blueprint-social.png', '180x80', '', NULL, NULL, NULL, '2013-01-19 20:47:11', '2013-01-19 20:47:24', 1),
(10, 'b', 'http://www.eyefuldesign.info', 'banner-right.png', 'r270x80', '', NULL, NULL, NULL, '2013-02-07 08:46:06', '2013-02-07 13:26:24', 1),
(11, 'l', 'http://www.eyefuldesign.info', 'banner-left.png', 'l270x80', '', 0, NULL, NULL, '2013-02-07 08:47:03', '2013-02-07 12:00:18', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `banners_history`
--

INSERT INTO `banners_history` (`banners_history_id`, `banners_id`, `banners_shown`, `banners_clicked`, `banners_history_date`) VALUES
(2, 2, 82, 0, '2013-01-19 20:46:41'),
(3, 3, 81, 0, '2013-01-19 20:47:24'),
(4, 3, 1, 0, '2013-01-20 04:22:31'),
(5, 2, 1, 0, '2013-01-20 04:22:32'),
(6, 3, 465, 0, '2013-02-01 08:01:32'),
(7, 2, 465, 0, '2013-02-01 08:01:33'),
(8, 3, 500, 0, '2013-02-07 08:18:28'),
(9, 2, 500, 0, '2013-02-07 08:18:29'),
(11, 11, 160, 0, '2013-02-07 08:47:37'),
(12, 10, 160, 0, '2013-02-07 08:47:37'),
(13, 3, 56, 0, '2013-02-11 08:31:45'),
(14, 11, 43, 0, '2013-02-11 08:31:45'),
(15, 10, 43, 0, '2013-02-11 08:31:45'),
(16, 2, 56, 0, '2013-02-11 08:31:46'),
(17, 3, 630, 0, '2013-02-13 08:08:26'),
(18, 11, 349, 0, '2013-02-13 08:08:26'),
(19, 10, 349, 0, '2013-02-13 08:08:27'),
(20, 2, 628, 0, '2013-02-13 08:08:27'),
(21, 3, 35, 0, '2013-02-14 10:33:54'),
(22, 11, 26, 0, '2013-02-14 10:33:54'),
(23, 10, 26, 0, '2013-02-14 10:33:54'),
(24, 2, 35, 0, '2013-02-14 10:33:55'),
(25, 3, 292, 0, '2013-02-15 06:49:38'),
(26, 11, 137, 0, '2013-02-15 06:49:39'),
(27, 10, 137, 0, '2013-02-15 06:49:39'),
(28, 2, 291, 0, '2013-02-15 06:49:40'),
(29, 3, 131, 2, '2013-09-19 11:28:36'),
(30, 11, 31, 0, '2013-09-19 11:28:36'),
(31, 10, 31, 0, '2013-09-19 11:28:36'),
(32, 2, 143, 0, '2013-09-19 11:28:37');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `parent_id`, `sort_order`, `date_added`, `last_modified`) VALUES
(22, NULL, 0, 0, '2013-01-19 21:22:03', '2013-02-15 06:43:50'),
(23, NULL, 0, 0, '2013-01-19 21:22:36', '2013-02-15 06:45:06'),
(24, NULL, 0, 0, '2013-01-19 21:25:43', '2013-02-15 06:44:10'),
(25, 'image-1.jpg', 24, 1, '2013-01-19 21:26:20', '2013-02-11 08:38:13'),
(26, 'image-2.jpg', 24, 2, '2013-01-19 21:26:43', '2013-02-07 13:53:11'),
(27, NULL, 0, 0, '2013-01-19 21:30:38', '2013-02-15 06:44:29'),
(28, NULL, 0, 0, '2013-01-19 21:31:06', '2013-02-15 06:44:48'),
(29, NULL, 0, 0, '2013-01-19 21:34:06', '2013-02-15 06:43:22'),
(30, NULL, 0, 0, '2013-01-19 21:34:26', '2013-02-15 06:45:41'),
(31, NULL, 0, 0, '2013-01-19 21:34:45', '2013-02-15 06:45:23');

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
(22, 1, 'Classic Jacket'),
(22, 2, 'Classic Jacket'),
(22, 4, 'Classic Jacket'),
(25, 1, 'Classic Style'),
(25, 2, 'Classic Style'),
(25, 4, 'Classic Style'),
(29, 1, 'Classic Style Jacket'),
(29, 2, 'Classic Style Jacket'),
(29, 4, 'Classic Style Jacket'),
(24, 1, 'Elegant Jacket'),
(24, 2, 'Elegant Jacket'),
(24, 4, 'Elegant Jacket'),
(27, 1, 'Minimalist Jacket'),
(27, 2, 'Minimalist Jacket'),
(27, 4, 'Minimalist Jacket'),
(28, 1, 'Minimalist Modern Jacket'),
(28, 2, 'Minimalist Modern Jacket'),
(28, 4, 'Minimalist Modern Jacket'),
(26, 1, 'Modern Style'),
(26, 2, 'Modern Style'),
(26, 4, 'Modern Style'),
(23, 1, 'Modern White Jacket'),
(23, 2, 'Modern White Jacket'),
(23, 4, 'Modern White Jacket'),
(31, 1, 'Simple Futuristic Jacket'),
(31, 2, 'Simple Futuristic Jacket'),
(31, 4, 'Simple Futuristic Jacket'),
(30, 1, 'Simple Modern Jacket'),
(30, 2, 'Simple Modern Jacket'),
(30, 4, 'Simple Modern Jacket');

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
  `set_function` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=331 ;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(1, 'Store Name', 'STORE_NAME', 'C&M British', 'The name of my store', 1, 1, '2013-02-15 06:41:55', '2013-01-19 19:33:32', NULL, NULL),
(2, 'Store Owner', 'STORE_OWNER', 'Admin', 'The name of my store owner', 1, 2, NULL, '2013-01-19 19:33:32', NULL, NULL),
(3, 'E-Mail Address', 'STORE_OWNER_EMAIL_ADDRESS', '10030544@itcelaya.edu.mx', 'The e-mail address of my store owner', 1, 3, NULL, '2013-01-19 19:33:32', NULL, NULL),
(4, 'E-Mail From', 'EMAIL_FROM', '"Admin" <10030544@itcelaya.edu.mx>', 'The e-mail address used in (sent) e-mails', 1, 4, NULL, '2013-01-19 19:33:32', NULL, NULL),
(5, 'Country', 'STORE_COUNTRY', '223', 'The country my store is located in <br /><br /><strong>Note: Please remember to update the store zone.</strong>', 1, 6, NULL, '2013-01-19 19:33:32', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(6, 'Zone', 'STORE_ZONE', '18', 'The zone my store is located in', 1, 7, NULL, '2013-01-19 19:33:32', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list('),
(7, 'Expected Sort Order', 'EXPECTED_PRODUCTS_SORT', 'desc', 'This is the sort order used in the expected products box.', 1, 8, NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''asc'', ''desc''), '),
(8, 'Expected Sort Field', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'The column to sort by in the expected products box.', 1, 9, NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''products_name'', ''date_expected''), '),
(9, 'Switch To Default Language Currency', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Automatically switch to the language''s currency when it is changed', 1, 10, NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(10, 'Send Extra Order Emails To', 'SEND_EXTRA_ORDER_EMAILS_TO', '', 'Send extra order emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 1, 11, NULL, '2013-01-19 19:33:32', NULL, NULL),
(11, 'Use Search-Engine Safe URLs', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Use search-engine safe urls for all site links', 1, 12, NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(12, 'Display Cart After Adding Product', 'DISPLAY_CART', 'true', 'Display the shopping cart after adding a product (or return back to their origin)', 1, 14, NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(13, 'Allow Guest To Tell A Friend', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'true', 'Allow guests to tell a friend about a product', 1, 15, '2013-01-19 21:44:47', '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(14, 'Default Search Operator', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Default search operators', 1, 17, NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''and'', ''or''), '),
(15, 'Store Address and Phone', 'STORE_NAME_ADDRESS', 'Store Name\nAddress\nCountry\nPhone', 'This is the Store Name, Address and Phone used on printable documents and displayed online', 1, 18, NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_textarea('),
(16, 'Show Category Counts', 'SHOW_COUNTS', 'true', 'Count recursively how many products are in each category', 1, 19, NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(17, 'Tax Decimal Places', 'TAX_DECIMAL_PLACES', '0', 'Pad the tax value this amount of decimal places', 1, 20, NULL, '2013-01-19 19:33:32', NULL, NULL),
(18, 'Display Prices with Tax', 'DISPLAY_PRICE_WITH_TAX', 'true', 'Display prices with tax included (true) or add the tax at the end (false)', 1, 21, '2013-02-15 06:42:13', '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(19, 'First Name', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Minimum length of first name', 2, 1, NULL, '2013-01-19 19:33:32', NULL, NULL),
(20, 'Last Name', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Minimum length of last name', 2, 2, NULL, '2013-01-19 19:33:32', NULL, NULL),
(21, 'Date of Birth', 'ENTRY_DOB_MIN_LENGTH', '10', 'Minimum length of date of birth', 2, 3, NULL, '2013-01-19 19:33:32', NULL, NULL),
(22, 'E-Mail Address', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Minimum length of e-mail address', 2, 4, NULL, '2013-01-19 19:33:32', NULL, NULL),
(23, 'Street Address', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Minimum length of street address', 2, 5, NULL, '2013-01-19 19:33:32', NULL, NULL),
(24, 'Company', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Minimum length of company name', 2, 6, NULL, '2013-01-19 19:33:32', NULL, NULL),
(25, 'Post Code', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Minimum length of post code', 2, 7, NULL, '2013-01-19 19:33:32', NULL, NULL),
(26, 'City', 'ENTRY_CITY_MIN_LENGTH', '3', 'Minimum length of city', 2, 8, NULL, '2013-01-19 19:33:32', NULL, NULL),
(27, 'State', 'ENTRY_STATE_MIN_LENGTH', '2', 'Minimum length of state', 2, 9, NULL, '2013-01-19 19:33:32', NULL, NULL),
(28, 'Telephone Number', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Minimum length of telephone number', 2, 10, NULL, '2013-01-19 19:33:32', NULL, NULL),
(29, 'Password', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Minimum length of password', 2, 11, NULL, '2013-01-19 19:33:32', NULL, NULL),
(30, 'Credit Card Owner Name', 'CC_OWNER_MIN_LENGTH', '3', 'Minimum length of credit card owner name', 2, 12, NULL, '2013-01-19 19:33:32', NULL, NULL),
(31, 'Credit Card Number', 'CC_NUMBER_MIN_LENGTH', '10', 'Minimum length of credit card number', 2, 13, NULL, '2013-01-19 19:33:32', NULL, NULL),
(32, 'Review Text', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Minimum length of review text', 2, 14, NULL, '2013-01-19 19:33:32', NULL, NULL),
(33, 'Best Sellers', 'MIN_DISPLAY_BESTSELLERS', '1', 'Minimum number of best sellers to display', 2, 15, NULL, '2013-01-19 19:33:32', NULL, NULL),
(34, 'Also Purchased', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Minimum number of products to display in the ''This Customer Also Purchased'' box', 2, 16, NULL, '2013-01-19 19:33:32', NULL, NULL),
(35, 'Address Book Entries', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximum address book entries a customer is allowed to have', 3, 1, NULL, '2013-01-19 19:33:32', NULL, NULL),
(36, 'Search Results', 'MAX_DISPLAY_SEARCH_RESULTS', '5', 'Amount of products to list', 3, 2, '2013-02-01 21:16:34', '2013-01-19 19:33:32', NULL, NULL),
(37, 'Page Links', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Number of ''number'' links use for page-sets', 3, 3, NULL, '2013-01-19 19:33:32', NULL, NULL),
(38, 'Special Products', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '9', 'Maximum number of products on special to display', 3, 4, NULL, '2013-01-19 19:33:32', NULL, NULL),
(39, 'New Products Module', 'MAX_DISPLAY_NEW_PRODUCTS', '9', 'Maximum number of new products to display in a category', 3, 5, NULL, '2013-01-19 19:33:32', NULL, NULL),
(40, 'Products Expected', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'Maximum number of products expected to display', 3, 6, NULL, '2013-01-19 19:33:32', NULL, NULL),
(41, 'Manufacturers List', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '0', 'Used in manufacturers box; when the number of manufacturers exceeds this number, a drop-down list will be displayed instead of the default list', 3, 7, '2013-02-13 19:28:31', '2013-01-19 19:33:32', NULL, NULL),
(42, 'Manufacturers Select Size', 'MAX_MANUFACTURERS_LIST', '1', 'Used in manufacturers box; when this value is ''1'' the classic drop-down list will be used for the manufacturers box. Otherwise, a list-box with the specified number of rows will be displayed.', 3, 7, '2013-02-13 19:40:16', '2013-01-19 19:33:32', NULL, NULL),
(43, 'Length of Manufacturers Name', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Used in manufacturers box; maximum length of manufacturers name to display', 3, 8, NULL, '2013-01-19 19:33:32', NULL, NULL),
(44, 'New Reviews', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Maximum number of new reviews to display', 3, 9, NULL, '2013-01-19 19:33:32', NULL, NULL),
(45, 'Selection of Random Reviews', 'MAX_RANDOM_SELECT_REVIEWS', '10', 'How many records to select from to choose one random product review', 3, 10, NULL, '2013-01-19 19:33:32', NULL, NULL),
(46, 'Selection of Random New Products', 'MAX_RANDOM_SELECT_NEW', '10', 'How many records to select from to choose one random new product to display', 3, 11, NULL, '2013-01-19 19:33:32', NULL, NULL),
(47, 'Selection of Products on Special', 'MAX_RANDOM_SELECT_SPECIALS', '10', 'How many records to select from to choose one random product special to display', 3, 12, NULL, '2013-01-19 19:33:33', NULL, NULL),
(48, 'Categories To List Per Row', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'How many categories to list per row', 3, 13, NULL, '2013-01-19 19:33:33', NULL, NULL),
(49, 'New Products Listing', 'MAX_DISPLAY_PRODUCTS_NEW', '3', 'Maximum number of new products to display in new products page', 3, 14, '2013-02-01 20:27:23', '2013-01-19 19:33:33', NULL, NULL),
(50, 'Best Sellers', 'MAX_DISPLAY_BESTSELLERS', '10', 'Maximum number of best sellers to display', 3, 15, NULL, '2013-01-19 19:33:33', NULL, NULL),
(51, 'Also Purchased', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Maximum number of products to display in the ''This Customer Also Purchased'' box', 3, 16, NULL, '2013-01-19 19:33:33', NULL, NULL),
(52, 'Customer Order History Box', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Maximum number of products to display in the customer order history box', 3, 17, NULL, '2013-01-19 19:33:33', NULL, NULL),
(53, 'Order History', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Maximum number of orders to display in the order history page', 3, 18, NULL, '2013-01-19 19:33:33', NULL, NULL),
(54, 'Product Quantities In Shopping Cart', 'MAX_QTY_IN_CART', '0', 'Maximum number of product quantities that can be added to the shopping cart (0 for no limit)', 3, 19, '2013-01-19 21:10:47', '2013-01-19 19:33:33', NULL, NULL),
(55, 'Small Image Width', 'SMALL_IMAGE_WIDTH', '130', 'The pixel width of small images', 4, 1, '2013-02-07 08:22:24', '2013-01-19 19:33:33', NULL, NULL),
(56, 'Small Image Height', 'SMALL_IMAGE_HEIGHT', '160', 'The pixel height of small images', 4, 2, '2013-02-15 06:42:40', '2013-01-19 19:33:33', NULL, NULL),
(57, 'Heading Image Width', 'HEADING_IMAGE_WIDTH', '57', 'The pixel width of heading images', 4, 3, NULL, '2013-01-19 19:33:33', NULL, NULL),
(58, 'Heading Image Height', 'HEADING_IMAGE_HEIGHT', '40', 'The pixel height of heading images', 4, 4, NULL, '2013-01-19 19:33:33', NULL, NULL),
(59, 'Subcategory Image Width', 'SUBCATEGORY_IMAGE_WIDTH', '130', 'The pixel width of subcategory images', 4, 5, '2013-02-11 08:53:20', '2013-01-19 19:33:33', NULL, NULL),
(60, 'Subcategory Image Height', 'SUBCATEGORY_IMAGE_HEIGHT', '160', 'The pixel height of subcategory images', 4, 6, '2013-02-15 06:42:52', '2013-01-19 19:33:33', NULL, NULL),
(61, 'Calculate Image Size', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calculate the size of images?', 4, 7, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(62, 'Image Required', 'IMAGE_REQUIRED', 'true', 'Enable to display broken images. Good for development.', 4, 8, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(63, 'Gender', 'ACCOUNT_GENDER', 'true', 'Display gender in the customers account', 5, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(64, 'Date of Birth', 'ACCOUNT_DOB', 'true', 'Display date of birth in the customers account', 5, 2, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(65, 'Company', 'ACCOUNT_COMPANY', 'true', 'Display company in the customers account', 5, 3, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(66, 'Suburb', 'ACCOUNT_SUBURB', 'true', 'Display suburb in the customers account', 5, 4, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(67, 'State', 'ACCOUNT_STATE', 'true', 'Display state in the customers account', 5, 5, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(68, 'Installed Modules', 'MODULE_PAYMENT_INSTALLED', 'cod.php;paypal_express.php;paypal_standard.php', 'List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: cod.php;paypal_express.php)', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(69, 'Installed Modules', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php', 'List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(70, 'Installed Modules', 'MODULE_SHIPPING_INSTALLED', 'flat.php;item.php;table.php;zones.php', 'List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(71, 'Installed Modules', 'MODULE_ACTION_RECORDER_INSTALLED', 'ar_admin_login.php;ar_contact_us.php;ar_reset_password.php;ar_tell_a_friend.php', 'List of action recorder module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(72, 'Installed Modules', 'MODULE_SOCIAL_BOOKMARKS_INSTALLED', 'sb_email.php;sb_google_plus_share.php;sb_facebook.php;sb_twitter.php;sb_pinterest.php;sb_digg.php', 'List of social bookmark module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, '2013-01-19 21:41:58', '2013-01-19 19:33:33', NULL, NULL),
(73, 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Do you want to accept Cash On Delevery payments?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(74, 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2013-01-19 19:33:33', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(75, 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(76, 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2013-01-19 19:33:33', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(77, 'Enable Flat Shipping', 'MODULE_SHIPPING_FLAT_STATUS', 'True', 'Do you want to offer flat rate shipping?', 6, 0, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(78, 'Shipping Cost', 'MODULE_SHIPPING_FLAT_COST', '5.00', 'The shipping cost for all orders using this shipping method.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(79, 'Tax Class', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2013-01-19 19:33:33', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(80, 'Shipping Zone', 'MODULE_SHIPPING_FLAT_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2013-01-19 19:33:33', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(81, 'Sort Order', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(82, 'Default Currency', 'DEFAULT_CURRENCY', 'USD', 'Default Currency', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(83, 'Default Language', 'DEFAULT_LANGUAGE', 'en', 'Default Language', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(84, 'Default Order Status For New Orders', 'DEFAULT_ORDERS_STATUS_ID', '1', 'When a new order is created, this order status will be assigned to it.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(85, 'Display Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Do you want to display the order shipping cost?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(86, 'Sort Order', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '2', 'Sort order of display.', 6, 2, NULL, '2013-01-19 19:33:33', NULL, NULL),
(87, 'Allow Free Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', 'Do you want to allow free shipping?', 6, 3, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(88, 'Free Shipping For Orders Over', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50', 'Provide free shipping for orders over the set amount.', 6, 4, NULL, '2013-01-19 19:33:33', 'currencies->format', NULL),
(89, 'Provide Free Shipping For Orders Made', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', 'Provide free shipping for orders sent to the set destination.', 6, 5, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''national'', ''international'', ''both''), '),
(90, 'Display Sub-Total', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Do you want to display the order sub-total cost?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(91, 'Sort Order', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '1', 'Sort order of display.', 6, 2, NULL, '2013-01-19 19:33:33', NULL, NULL),
(92, 'Display Tax', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Do you want to display the order tax value?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(93, 'Sort Order', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '3', 'Sort order of display.', 6, 2, NULL, '2013-01-19 19:33:33', NULL, NULL),
(94, 'Display Total', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Do you want to display the total order value?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(95, 'Sort Order', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '4', 'Sort order of display.', 6, 2, NULL, '2013-01-19 19:33:33', NULL, NULL),
(96, 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(97, 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_TELL_A_FRIEND_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(98, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_MINUTES', '5', 'Number of minutes to allow login attempts to occur.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(99, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_ATTEMPTS', '3', 'Number of login attempts to allow within the specified period.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(100, 'Allowed Minutes', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_MINUTES', '5', 'Number of minutes to allow password resets to occur.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(101, 'Allowed Attempts', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_ATTEMPTS', '1', 'Number of password reset attempts to allow within the specified period.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(102, 'Enable E-Mail Module', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS', 'True', 'Do you want to allow products to be shared through e-mail?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(103, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(104, 'Enable Google+ Share Module', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_STATUS', 'True', 'Do you want to allow products to be shared through Google+?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(105, 'Annotation', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ANNOTATION', 'None', 'The annotation to display next to the button.', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''Inline'', ''Bubble'', ''Vertical-Bubble'', ''None''), '),
(106, 'Width', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_WIDTH', '', 'The maximum width of the button.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(107, 'Height', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_HEIGHT', '15', 'Sets the height of the button.', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''15'', ''20'', ''24'', ''60''), '),
(108, 'Alignment', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ALIGN', 'Left', 'The alignment of the button assets.', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''Left'', ''Right''), '),
(109, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_SORT_ORDER', '20', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(110, 'Enable Facebook Module', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_STATUS', 'True', 'Do you want to allow products to be shared through Facebook?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(111, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_SORT_ORDER', '30', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(112, 'Enable Twitter Module', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_STATUS', 'True', 'Do you want to allow products to be shared through Twitter?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(113, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_SORT_ORDER', '40', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(114, 'Enable Pinterest Module', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_STATUS', 'True', 'Do you want to allow Pinterest Button?', 6, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(115, 'Layout Position', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_BUTTON_COUNT_POSITION', 'None', 'Horizontal or Vertical or None', 6, 2, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''Horizontal'', ''Vertical'', ''None''), '),
(116, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(117, 'Country of Origin', 'SHIPPING_ORIGIN_COUNTRY', '223', 'Select the country of origin to be used in shipping quotes.', 7, 1, NULL, '2013-01-19 19:33:33', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(118, 'Postal Code', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.', 7, 2, NULL, '2013-01-19 19:33:33', NULL, NULL),
(119, 'Enter the Maximum Package Weight you will ship', 'SHIPPING_MAX_WEIGHT', '50', 'Carriers have a max weight limit for a single package. This is a common one for all.', 7, 3, NULL, '2013-01-19 19:33:33', NULL, NULL),
(120, 'Package Tare weight.', 'SHIPPING_BOX_WEIGHT', '3', 'What is the weight of typical packaging of small to medium packages?', 7, 4, NULL, '2013-01-19 19:33:33', NULL, NULL),
(121, 'Larger packages - percentage increase.', 'SHIPPING_BOX_PADDING', '10', 'For 10% enter 10', 7, 5, NULL, '2013-01-19 19:33:33', NULL, NULL),
(122, 'Display Product Image', 'PRODUCT_LIST_IMAGE', '1', 'Do you want to display the Product Image?', 8, 1, NULL, '2013-01-19 19:33:33', NULL, NULL),
(123, 'Display Product Manufacturer Name', 'PRODUCT_LIST_MANUFACTURER', '4', 'Do you want to display the Product Manufacturer Name?', 8, 2, '2013-01-19 21:12:30', '2013-01-19 19:33:33', NULL, NULL),
(124, 'Display Product Model', 'PRODUCT_LIST_MODEL', '5', 'Do you want to display the Product Model?', 8, 3, '2013-01-19 21:12:34', '2013-01-19 19:33:33', NULL, NULL),
(125, 'Display Product Name', 'PRODUCT_LIST_NAME', '2', 'Do you want to display the Product Name?', 8, 4, NULL, '2013-01-19 19:33:33', NULL, NULL),
(126, 'Display Product Price', 'PRODUCT_LIST_PRICE', '3', 'Do you want to display the Product Price', 8, 5, NULL, '2013-01-19 19:33:33', NULL, NULL),
(127, 'Display Product Quantity', 'PRODUCT_LIST_QUANTITY', '6', 'Do you want to display the Product Quantity?', 8, 6, '2013-01-19 21:12:42', '2013-01-19 19:33:33', NULL, NULL),
(128, 'Display Product Weight', 'PRODUCT_LIST_WEIGHT', '7', 'Do you want to display the Product Weight?', 8, 7, '2013-01-19 21:12:49', '2013-01-19 19:33:33', NULL, NULL),
(129, 'Display Buy Now column', 'PRODUCT_LIST_BUY_NOW', '8', 'Do you want to display the Buy Now column?', 8, 8, '2013-01-19 21:12:55', '2013-01-19 19:33:33', NULL, NULL),
(130, 'Display Category/Manufacturer Filter (0=disable; 1=enable)', 'PRODUCT_LIST_FILTER', '1', 'Do you want to display the Category/Manufacturer Filter?', 8, 9, NULL, '2013-01-19 19:33:33', NULL, NULL),
(131, 'Location of Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 'PREV_NEXT_BAR_LOCATION', '3', 'Sets the location of the Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 8, 10, '2013-01-19 21:13:02', '2013-01-19 19:33:33', NULL, NULL),
(132, 'Check stock level', 'STOCK_CHECK', 'true', 'Check to see if sufficent stock is available', 9, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(133, 'Subtract stock', 'STOCK_LIMITED', 'true', 'Subtract product in stock by product orders', 9, 2, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(134, 'Allow Checkout', 'STOCK_ALLOW_CHECKOUT', 'true', 'Allow customer to checkout even if there is insufficient stock', 9, 3, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(135, 'Mark product out of stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Display something on screen so customer can see which product has insufficient stock', 9, 4, NULL, '2013-01-19 19:33:33', NULL, NULL),
(136, 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', 9, 5, NULL, '2013-01-19 19:33:33', NULL, NULL),
(137, 'Store Page Parse Time', 'STORE_PAGE_PARSE_TIME', 'false', 'Store the time it takes to parse a page', 10, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(138, 'Log Destination', 'STORE_PAGE_PARSE_TIME_LOG', '/var/log/www/tep/page_parse_time.log', 'Directory and filename of the page parse time log', 10, 2, NULL, '2013-01-19 19:33:33', NULL, NULL),
(139, 'Log Date Format', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'The date format', 10, 3, NULL, '2013-01-19 19:33:33', NULL, NULL),
(140, 'Display The Page Parse Time', 'DISPLAY_PAGE_PARSE_TIME', 'true', 'Display the page parse time (store page parse time must be enabled)', 10, 4, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(141, 'Store Database Queries', 'STORE_DB_TRANSACTIONS', 'false', 'Store the database queries in the page parse time log', 10, 5, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(142, 'Use Cache', 'USE_CACHE', 'false', 'Use caching features', 11, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(143, 'Cache Directory', 'DIR_FS_CACHE', 'C:/xampp/htdocs/C&MBritish/includes/work/', 'The directory where the cached files are saved', 11, 2, NULL, '2013-01-19 19:33:33', NULL, NULL),
(144, 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'sendmail', 'Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.', 12, 1, '2013-01-19 22:24:41', '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''sendmail'', ''smtp''),'),
(145, 'E-Mail Linefeeds', 'EMAIL_LINEFEED', 'LF', 'Defines the character sequence used to separate mail headers.', 12, 2, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''LF'', ''CRLF''),'),
(146, 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', 'false', 'Send e-mails in HTML format', 12, 3, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(147, 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Verify e-mail address through a DNS server', 12, 4, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(148, 'Send E-Mails', 'SEND_EMAILS', 'true', 'Send out e-mails', 12, 5, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(149, 'Enable download', 'DOWNLOAD_ENABLED', 'false', 'Enable the products download functions.', 13, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(150, 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', 'false', 'Use browser redirection for download. Disable on non-Unix systems.', 13, 2, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(151, 'Expiry delay (days)', 'DOWNLOAD_MAX_DAYS', '7', 'Set number of days before the download link expires. 0 means no limit.', 13, 3, NULL, '2013-01-19 19:33:33', NULL, ''),
(152, 'Maximum number of downloads', 'DOWNLOAD_MAX_COUNT', '5', 'Set the maximum number of downloads. 0 means no download authorized.', 13, 4, NULL, '2013-01-19 19:33:33', NULL, ''),
(153, 'Enable GZip Compression', 'GZIP_COMPRESSION', 'false', 'Enable HTTP GZip compression.', 14, 1, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''true'', ''false''), '),
(154, 'Compression Level', 'GZIP_LEVEL', '5', 'Use this compression level 0-9 (0 = minimum, 9 = maximum).', 14, 2, NULL, '2013-01-19 19:33:33', NULL, NULL),
(155, 'Session Directory', 'SESSION_WRITE_DIRECTORY', 'C:/xampp/htdocs/C&MBritish/includes/work/', 'If sessions are file based, store them in this directory.', 15, 1, NULL, '2013-01-19 19:33:33', NULL, NULL),
(156, 'Force Cookie Use', 'SESSION_FORCE_COOKIE_USE', 'False', 'Force the use of sessions when cookies are only enabled.', 15, 2, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(157, 'Check SSL Session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', 15, 3, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(158, 'Check User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', 15, 4, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(159, 'Check IP Address', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', 15, 5, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(160, 'Prevent Spider Sessions', 'SESSION_BLOCK_SPIDERS', 'True', 'Prevent known spiders from starting a session.', 15, 6, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(161, 'Recreate Session', 'SESSION_RECREATE', 'True', 'Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).', 15, 7, NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(162, 'Last Update Check Time', 'LAST_UPDATE_CHECK_TIME', '', 'Last time a check for new versions of osCommerce was run', 6, 0, NULL, '2013-01-19 19:33:33', NULL, NULL),
(163, 'Enable PayPal Express Checkout', 'MODULE_PAYMENT_PAYPAL_EXPRESS_STATUS', 'True', 'Do you want to accept PayPal Express Checkout payments?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(164, 'Seller Account', 'MODULE_PAYMENT_PAYPAL_EXPRESS_SELLER_ACCOUNT', '10030544@itcelaya.edu.mx', 'The email address of the seller account if no API credentials has been setup.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(165, 'API Username', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_USERNAME', '', 'The username to use for the PayPal API service', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(166, 'API Password', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_PASSWORD', '', 'The password to use for the PayPal API service', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(167, 'API Signature', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_SIGNATURE', '', 'The signature to use for the PayPal API service', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(168, 'Transaction Server', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_SERVER', 'Live', 'Use the live or testing (sandbox) gateway server to process transactions?', 6, 0, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(169, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(170, 'PayPal Account Optional', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ACCOUNT_OPTIONAL', 'False', 'This must also be enabled in your PayPal account, in Profile > Website Payment Preferences.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(171, 'PayPal Instant Update', 'MODULE_PAYMENT_PAYPAL_EXPRESS_INSTANT_UPDATE', 'True', 'Support PayPal shipping and tax calculations on the PayPal.com site during Express Checkout.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(172, 'PayPal Checkout Image', 'MODULE_PAYMENT_PAYPAL_EXPRESS_CHECKOUT_IMAGE', 'Static', 'Use static or dynamic Express Checkout image buttons. Dynamic images are used with PayPal campaigns.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Static'', ''Dynamic''), '),
(173, 'Debug E-Mail Address', 'MODULE_PAYMENT_PAYPAL_EXPRESS_DEBUG_EMAIL', '', 'All parameters of an invalid transaction will be sent to this email address.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(174, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2013-01-19 19:33:36', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(175, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_EXPRESS_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(176, 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2013-01-19 19:33:36', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(177, 'PayPal Transactions Order Status Level', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTIONS_ORDER_STATUS_ID', '4', 'Include PayPal transaction information in this order status level', 6, 0, NULL, '2013-01-19 19:33:36', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(178, 'cURL Program Location', 'MODULE_PAYMENT_PAYPAL_EXPRESS_CURL', '/usr/bin/curl', 'The location to the cURL program application.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(179, 'Installed Modules', 'MODULE_HEADER_TAGS_INSTALLED', 'ht_canonical.php;ht_manufacturer_title.php;ht_category_title.php;ht_product_title.php;ht_robot_noindex.php', 'List of header tag module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(180, 'Enable Category Title Module', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_STATUS', 'True', 'Do you want to allow category titles to be added to the page title?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(181, 'Sort Order', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(182, 'Enable Manufacturer Title Module', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_STATUS', 'True', 'Do you want to allow manufacturer titles to be added to the page title?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(183, 'Sort Order', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(184, 'Enable Product Title Module', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_STATUS', 'True', 'Do you want to allow product titles to be added to the page title?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(185, 'Sort Order', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(186, 'Enable Canonical Module', 'MODULE_HEADER_TAGS_CANONICAL_STATUS', 'True', 'Do you want to enable the Canonical module?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(187, 'Sort Order', 'MODULE_HEADER_TAGS_CANONICAL_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(188, 'Enable Robot NoIndex Module', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_STATUS', 'True', 'Do you want to enable the Robot NoIndex module?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(189, 'Pages', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_PAGES', 'account.php;account_edit.php;account_history.php;account_history_info.php;account_newsletters.php;account_notifications.php;account_password.php;address_book.php;address_book_process.php;checkout_confirmation.php;checkout_payment.php;checkout_payment_address.php;checkout_process.php;checkout_shipping.php;checkout_shipping_address.php;checkout_success.php;cookie_usage.php;create_account.php;create_account_success.php;login.php;logoff.php;password_forgotten.php;password_reset.php;product_reviews_write.php;shopping_cart.php;ssl_check.php;tell_a_friend.php', 'The pages to add the meta robot noindex tag to.', 6, 0, NULL, '2013-01-19 19:33:36', 'ht_robot_noindex_show_pages', 'ht_robot_noindex_edit_pages('),
(190, 'Sort Order', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(191, 'Installed Modules', 'MODULE_ADMIN_DASHBOARD_INSTALLED', 'd_total_revenue.php;d_total_customers.php;d_orders.php;d_customers.php;d_admin_logins.php;d_security_checks.php;d_latest_news.php;d_latest_addons.php;d_version_check.php;d_reviews.php', 'List of Administration Tool Dashboard module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(192, 'Enable Administrator Logins Module', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_STATUS', 'True', 'Do you want to show the latest administrator logins on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(193, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(194, 'Enable Customers Module', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_STATUS', 'True', 'Do you want to show the newest customers on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(195, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(196, 'Enable Latest Add-Ons Module', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_STATUS', 'True', 'Do you want to show the latest osCommerce Add-Ons on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(197, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_SORT_ORDER', '800', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(198, 'Enable Latest News Module', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_STATUS', 'True', 'Do you want to show the latest osCommerce News on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(199, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(200, 'Enable Orders Module', 'MODULE_ADMIN_DASHBOARD_ORDERS_STATUS', 'True', 'Do you want to show the latest orders on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(201, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ORDERS_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(202, 'Enable Security Checks Module', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_STATUS', 'True', 'Do you want to run the security checks for this installation?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(203, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_SORT_ORDER', '600', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(204, 'Enable Total Customers Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_STATUS', 'True', 'Do you want to show the total customers chart on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(205, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(206, 'Enable Total Revenue Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_STATUS', 'True', 'Do you want to show the total revenue chart on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(207, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(208, 'Enable Version Check Module', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_STATUS', 'True', 'Do you want to show the version check results on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(209, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_SORT_ORDER', '900', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(210, 'Enable Latest Reviews Module', 'MODULE_ADMIN_DASHBOARD_REVIEWS_STATUS', 'True', 'Do you want to show the latest reviews on the dashboard?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(211, 'Sort Order', 'MODULE_ADMIN_DASHBOARD_REVIEWS_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(212, 'Installed Modules', 'MODULE_BOXES_INSTALLED', 'bm_categories.php;bm_manufacturers.php;bm_search.php;bm_whats_new.php;bm_information.php;bm_shopping_cart.php;bm_manufacturer_info.php;bm_order_history.php;bm_best_sellers.php;bm_product_notifications.php;bm_product_social_bookmarks.php;bm_specials.php;bm_reviews.php;bm_languages.php;bm_currencies.php;bm_side_banners.php', 'List of box module filenames separated by a semi-colon. This is automatically updated. No need to edit.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(213, 'Enable Best Sellers Module', 'MODULE_BOXES_BEST_SELLERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(214, 'Content Placement', 'MODULE_BOXES_BEST_SELLERS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(215, 'Sort Order', 'MODULE_BOXES_BEST_SELLERS_SORT_ORDER', '5030', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(216, 'Enable Categories Module', 'MODULE_BOXES_CATEGORIES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(217, 'Content Placement', 'MODULE_BOXES_CATEGORIES_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(218, 'Sort Order', 'MODULE_BOXES_CATEGORIES_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(219, 'Enable Currencies Module', 'MODULE_BOXES_CURRENCIES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(220, 'Content Placement', 'MODULE_BOXES_CURRENCIES_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(221, 'Sort Order', 'MODULE_BOXES_CURRENCIES_SORT_ORDER', '5090', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(222, 'Enable Information Module', 'MODULE_BOXES_INFORMATION_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(223, 'Content Placement', 'MODULE_BOXES_INFORMATION_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(224, 'Sort Order', 'MODULE_BOXES_INFORMATION_SORT_ORDER', '1050', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(225, 'Enable Languages Module', 'MODULE_BOXES_LANGUAGES_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(226, 'Content Placement', 'MODULE_BOXES_LANGUAGES_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(227, 'Sort Order', 'MODULE_BOXES_LANGUAGES_SORT_ORDER', '5080', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(228, 'Enable Manufacturer Info Module', 'MODULE_BOXES_MANUFACTURER_INFO_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(229, 'Content Placement', 'MODULE_BOXES_MANUFACTURER_INFO_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(230, 'Sort Order', 'MODULE_BOXES_MANUFACTURER_INFO_SORT_ORDER', '5010', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(231, 'Enable Manufacturers Module', 'MODULE_BOXES_MANUFACTURERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(232, 'Content Placement', 'MODULE_BOXES_MANUFACTURERS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(233, 'Sort Order', 'MODULE_BOXES_MANUFACTURERS_SORT_ORDER', '1020', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(234, 'Enable Order History Module', 'MODULE_BOXES_ORDER_HISTORY_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(235, 'Content Placement', 'MODULE_BOXES_ORDER_HISTORY_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(236, 'Sort Order', 'MODULE_BOXES_ORDER_HISTORY_SORT_ORDER', '5020', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(237, 'Enable Product Notifications Module', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(238, 'Content Placement', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(239, 'Sort Order', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_SORT_ORDER', '5040', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(240, 'Enable Product Social Bookmarks Module', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(241, 'Content Placement', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), ');
INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(242, 'Sort Order', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_SORT_ORDER', '5050', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(243, 'Enable Reviews Module', 'MODULE_BOXES_REVIEWS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(244, 'Content Placement', 'MODULE_BOXES_REVIEWS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(245, 'Sort Order', 'MODULE_BOXES_REVIEWS_SORT_ORDER', '5070', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(246, 'Enable Search Module', 'MODULE_BOXES_SEARCH_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(247, 'Content Placement', 'MODULE_BOXES_SEARCH_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(248, 'Sort Order', 'MODULE_BOXES_SEARCH_SORT_ORDER', '1030', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(249, 'Enable Shopping Cart Module', 'MODULE_BOXES_SHOPPING_CART_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(250, 'Content Placement', 'MODULE_BOXES_SHOPPING_CART_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(251, 'Sort Order', 'MODULE_BOXES_SHOPPING_CART_SORT_ORDER', '5000', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(252, 'Enable Specials Module', 'MODULE_BOXES_SPECIALS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(253, 'Content Placement', 'MODULE_BOXES_SPECIALS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(254, 'Sort Order', 'MODULE_BOXES_SPECIALS_SORT_ORDER', '5060', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(255, 'Enable What''s New Module', 'MODULE_BOXES_WHATS_NEW_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(256, 'Content Placement', 'MODULE_BOXES_WHATS_NEW_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(257, 'Sort Order', 'MODULE_BOXES_WHATS_NEW_SORT_ORDER', '1040', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(258, 'Installed Template Block Groups', 'TEMPLATE_BLOCK_GROUPS', 'boxes;header_tags', 'This is automatically updated. No need to edit.', 6, 0, NULL, '2013-01-19 19:33:36', NULL, NULL),
(259, 'Enable Side Banners Module', 'MODULE_BOXES_SIDE_BANNERS_STATUS', 'True', 'Do you want to add the module to your shop?', 6, 1, NULL, '2013-01-19 20:45:27', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(260, 'Content Placement', 'MODULE_BOXES_SIDE_BANNERS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', 6, 1, NULL, '2013-01-19 20:45:27', NULL, 'tep_cfg_select_option(array(''Left Column'', ''Right Column''), '),
(261, 'Sort Order', 'MODULE_BOXES_SIDE_BANNERS_SORT_ORDER', '5100', 'Sort order of display. Lowest is displayed first.', 6, 5100, NULL, '2013-01-19 20:45:27', NULL, NULL),
(262, 'Maximum number Side banners', 'MODULE_BOXES_SIDE_BANNERS_MAX', '5', 'The maximum number side-banners to show', 6, 1, NULL, '2013-01-19 20:45:27', NULL, '0'),
(263, 'Enable Item Shipping', 'MODULE_SHIPPING_ITEM_STATUS', 'True', 'Do you want to offer per item rate shipping?', 6, 0, NULL, '2013-01-19 21:14:08', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(264, 'Shipping Cost', 'MODULE_SHIPPING_ITEM_COST', '2.50', 'The shipping cost will be multiplied by the number of items in an order that uses this shipping method.', 6, 0, NULL, '2013-01-19 21:14:08', NULL, NULL),
(265, 'Handling Fee', 'MODULE_SHIPPING_ITEM_HANDLING', '0', 'Handling fee for this shipping method.', 6, 0, NULL, '2013-01-19 21:14:08', NULL, NULL),
(266, 'Tax Class', 'MODULE_SHIPPING_ITEM_TAX_CLASS', '1', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2013-01-19 21:14:08', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(267, 'Shipping Zone', 'MODULE_SHIPPING_ITEM_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2013-01-19 21:14:08', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(268, 'Sort Order', 'MODULE_SHIPPING_ITEM_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2013-01-19 21:14:08', NULL, NULL),
(269, 'Enable Table Method', 'MODULE_SHIPPING_TABLE_STATUS', 'True', 'Do you want to offer table rate shipping?', 6, 0, NULL, '2013-01-19 21:14:17', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(270, 'Shipping Table', 'MODULE_SHIPPING_TABLE_COST', '25:8.50,50:5.50,10000:0.00', 'The shipping cost is based on the total cost or weight of items. Example: 25:8.50,50:5.50,etc.. Up to 25 charge 8.50, from there to 50 charge 5.50, etc', 6, 0, NULL, '2013-01-19 21:14:17', NULL, NULL),
(271, 'Table Method', 'MODULE_SHIPPING_TABLE_MODE', 'weight', 'The shipping cost is based on the order total or the total weight of the items ordered.', 6, 0, NULL, '2013-01-19 21:14:17', NULL, 'tep_cfg_select_option(array(''weight'', ''price''), '),
(272, 'Handling Fee', 'MODULE_SHIPPING_TABLE_HANDLING', '0', 'Handling fee for this shipping method.', 6, 0, NULL, '2013-01-19 21:14:17', NULL, NULL),
(273, 'Tax Class', 'MODULE_SHIPPING_TABLE_TAX_CLASS', '1', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2013-01-19 21:14:17', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(274, 'Shipping Zone', 'MODULE_SHIPPING_TABLE_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2013-01-19 21:14:17', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(275, 'Sort Order', 'MODULE_SHIPPING_TABLE_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2013-01-19 21:14:17', NULL, NULL),
(276, 'Enable Zones Method', 'MODULE_SHIPPING_ZONES_STATUS', 'True', 'Do you want to offer zone rate shipping?', 6, 0, NULL, '2013-01-19 21:14:30', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(277, 'Tax Class', 'MODULE_SHIPPING_ZONES_TAX_CLASS', '1', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2013-01-19 21:14:30', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes('),
(278, 'Sort Order', 'MODULE_SHIPPING_ZONES_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2013-01-19 21:14:30', NULL, NULL),
(279, 'Zone 1 Countries', 'MODULE_SHIPPING_ZONES_COUNTRIES_1', 'US,CA', 'Comma separated list of two character ISO country codes that are part of Zone 1.', 6, 0, NULL, '2013-01-19 21:14:30', NULL, NULL),
(280, 'Zone 1 Shipping Table', 'MODULE_SHIPPING_ZONES_COST_1', '3:8.50,7:10.50,99:20.00', 'Shipping rates to Zone 1 destinations based on a group of maximum order weights. Example: 3:8.50,7:10.50,... Weights less than or equal to 3 would cost 8.50 for Zone 1 destinations.', 6, 0, NULL, '2013-01-19 21:14:30', NULL, NULL),
(281, 'Zone 1 Handling Fee', 'MODULE_SHIPPING_ZONES_HANDLING_1', '0', 'Handling Fee for this shipping zone', 6, 0, NULL, '2013-01-19 21:14:30', NULL, NULL),
(282, 'Enable Digg Module', 'MODULE_SOCIAL_BOOKMARKS_DIGG_STATUS', 'True', 'Do you want to allow products to be shared through Digg?', 6, 1, NULL, '2013-01-19 21:41:45', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(283, 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_DIGG_SORT_ORDER', '60', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-01-19 21:41:45', NULL, NULL),
(284, 'Enable PayPal Website Payments Standard', 'MODULE_PAYMENT_PAYPAL_STANDARD_STATUS', 'True', 'Do you want to accept PayPal Website Payments Standard payments?', 6, 3, NULL, '2013-09-19 13:06:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(285, 'E-Mail Address', 'MODULE_PAYMENT_PAYPAL_STANDARD_ID', 'sprtn_link.hrdy@hotmail.com', 'The PayPal seller e-mail address to accept payments for', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(286, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_STANDARD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2013-09-19 13:06:36', NULL, NULL),
(287, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_STANDARD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2013-09-19 13:06:36', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(288, 'Set Preparing Order Status', 'MODULE_PAYMENT_PAYPAL_STANDARD_PREPARE_ORDER_STATUS_ID', '5', 'Set the status of prepared orders made with this payment module to this value', 6, 0, NULL, '2013-09-19 13:06:36', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(289, 'Set PayPal Acknowledged Order Status', 'MODULE_PAYMENT_PAYPAL_STANDARD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2013-09-19 13:06:36', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(290, 'Gateway Server', 'MODULE_PAYMENT_PAYPAL_STANDARD_GATEWAY_SERVER', 'Live', 'Use the testing (sandbox) or live gateway server for transactions?', 6, 6, NULL, '2013-09-19 13:06:36', NULL, 'tep_cfg_select_option(array(''Live'', ''Sandbox''), '),
(291, 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_STANDARD_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', 6, 0, NULL, '2013-09-19 13:06:36', NULL, 'tep_cfg_select_option(array(''Authorization'', ''Sale''), '),
(292, 'Page Style', 'MODULE_PAYMENT_PAYPAL_STANDARD_PAGE_STYLE', '', 'The page style to use for the transaction procedure (defined at your PayPal Profile page)', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(293, 'Debug E-Mail Address', 'MODULE_PAYMENT_PAYPAL_STANDARD_DEBUG_EMAIL', '', 'All parameters of an Invalid IPN notification will be sent to this email address if one is entered.', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(294, 'Enable Encrypted Web Payments', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_STATUS', 'False', 'Do you want to enable Encrypted Web Payments?', 6, 3, NULL, '2013-09-19 13:06:36', NULL, 'tep_cfg_select_option(array(''True'', ''False''), '),
(295, 'Your Private Key', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PRIVATE_KEY', '', 'The location of your Private Key to use for signing the data. (*.pem)', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(296, 'Your Public Certificate', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PUBLIC_KEY', '', 'The location of your Public Certificate to use for signing the data. (*.pem)', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(297, 'PayPals Public Certificate', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_PAYPAL_KEY', '', 'The location of the PayPal Public Certificate for encrypting the data.', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(298, 'Your PayPal Public Certificate ID', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_CERT_ID', '', 'The Certificate ID to use from your PayPal Encrypted Payment Settings Profile.', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(299, 'Working Directory', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_WORKING_DIRECTORY', '', 'The working directory to use for temporary files. (trailing slash needed)', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(300, 'OpenSSL Location', 'MODULE_PAYMENT_PAYPAL_STANDARD_EWP_OPENSSL', '/usr/bin/openssl', 'The location of the openssl binary file.', 6, 4, NULL, '2013-09-19 13:06:36', NULL, NULL),
(301, 'Only display invoice for delivered orders?', 'DISPLAY_PDF_DELIVERED_ONLY', 'false', 'Would you like to display a PDF invoice link only if the order status has been set as delivered?<br />[ Default = true ]<br />', 16, 1, '2013-09-19 13:33:27', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(302, 'Force PDF download?', 'FORCE_PDF_INVOICE_DOWNLOAD', 'false', 'Choose how you want the generated invoice displayed to the customer.<br />Inline - opens within browser using plugin.<br />[ This is the default value - false ]<br />Download - force browser to offer PDF for download - set to true to enable this feature.<', 16, 2, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, 'tep_cfg_select_option(array(''false'', ''true''),'),
(303, 'Invoice Date', 'PDF_INV_DATE', 'order', 'Do you want the invoice date to be today''s date or the date of order?<br />[ Default = order ]<br />', 16, 3, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''order'', ''today''),'),
(304, 'Choose Logo', 'PDF_INVOICE_IMAGE', 'includes/modules/pdf_invoice/sample_logo.png', 'Path and name of store logo to insert into PDF<br />Max dimensions 600 x 180px<br />Valid formats: jpg, gif, png<br />', 16, 4, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(305, 'Image Correction Factor', 'PDF_INV_IMG_CORRECTION', '0.18', 'Adjust value to fine-tune image size.<br />[ Default = 0.18 ]<br />See readme.txt for details.<br />', 16, 5, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(306, 'Set Invoice Font', 'PDF_INV_CORE_FONT', 'arial', 'Choose a font for the PDF invoice.<br />Arial<br />Times<br />Courier<br />Helvetica<br />', 16, 6, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, 'tep_cfg_select_option(array(''arial'', ''times'',''courier'',''helvetica''),'),
(307, 'Set Default Text Colour', 'PDF_INV_STANDARD_COLOR', '#000000', 'Choose a hexidecimal colour for normal invoice text.<br />Enter as six character hex number, with or without #<br />', 16, 7, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(308, 'Set Store Name Text Colour', 'PDF_INV_COM_NAME_COLOR', '#000099', 'Choose a hexidecimal colour for the company name.<br />Enter as six character hex number, with or without #<br />', 16, 8, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(309, 'Set Company Address Text Colour', 'PDF_INV_COM_ADDRESS_COLOR', '#424242', 'Choose a hexidecimal colour for the company address &amp; other details.<br />Enter as six character hex number, with or without #<br />', 16, 9, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(310, 'Set Company email Address Text Colour', 'PDF_INV_COM_EMAIL_COLOR', '#009999', 'Choose a hexidecimal colour for the company email address &amp; other details.<br />Enter as six character hex number, with or without #<br />', 16, 10, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(311, 'Set Company Web Address Text Colour', 'PDF_INV_COM_WEB_ADDRESS_COLOR', '#009999', 'Choose a hexidecimal colour for the company web address &amp; other details.<br />Enter as six character hex number, with or without #<br />', 16, 11, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(312, 'Set Invoice Number, ID &amp; Date Text Colour', 'PDF_INV_NUMIDDATE_COLOR', '#990000', 'Choose a hexidecimal colour for the invoice number, id &amp; date.<br />Enter as six character hex number, with or without #<br />', 16, 12, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(313, 'Set Invoice Line &amp; Text Colour', 'PDF_INV_INVLINE_COLOR', '#808080', 'Choose a hexidecimal colour for invoice line &amp; text.<br />Enter as six character hex number, with or without #<br />', 16, 13, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(314, 'Set Invoice Footer Text Colour', 'PDF_INV_FOOTER_COLOR', '#990000', 'Choose a hexidecimal colour for invoice footer text.<br />Enter as six character hex number, with or without #<br />', 16, 14, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(315, 'Set Box Border Colour', 'PDF_INV_BORDER_COLOR', '#666666', 'Choose a hexidecimal colour for the box border colour.<br />Enter as six character hex number, with or without #<br />', 16, 15, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(316, 'Set Box Fill Colour', 'PDF_INV_CELL_COLOR', '#EEEEEE', 'Choose a hexidecimal colour for the box fill colour.<br />Enter as six character hex number, with or without #<br />', 16, 16, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(317, 'Do you want to display a text watermark?', 'PDF_SHOW_WATERMARK', 'false', 'Would you like to display a text watermark through the invoice?<br />[ Default = false ]<br />', 16, 17, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(318, 'Set Watermark Text', 'PDF_INV_WATERMARK_TEXT', 'Copy Invoice', 'Enter text for watermark. [ Default = "Copy Invoice" ]<br />', 16, 18, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(319, 'Set Watermark Colour', 'PDF_INV_WATERMARK_COLOR', '#EEEEEE', 'Choose a hexidecimal colour for the watermark. KEEP IT PALE!<br />Enter as six character hex number, with or without #<br />', 16, 19, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(320, 'Footer Text', 'PDF_INV_FOOTER_TEXT', 'Thank you for your order.', 'Enter some text (eg address or marketing) for the invoice footer.<br />', 16, 20, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(321, 'Do you want to display a Tax reference?', 'DISPLAY_PDF_TAX_NUMBER', 'false', 'Would you like to display your VAT / Tax reference on the invoice?<br />[ Default = false ]<br />', 16, 21, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(322, 'Set Tax Number description', 'PDF_TAX_NAME', 'VAT number:', 'Choose a prefix description for your VAT / Tax reference.<br />[ Default = VAT number: ]<br />', 16, 22, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(323, 'Enter Tax Number', 'PDF_TAX_NUMBER', '', 'Enter your VAT / Tax number here.<br />', 16, 23, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(324, 'Remove http:// from the web address?', 'REMOVE_HTTP_WEB_ADDRESS', 'true', 'Would you like to remove http:// (if present) from the web address on the invoice?<br />[ Default = true ]<br />', 16, 24, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(325, 'Show the customer reference number?', 'DISPLAY_CUSTOMER_REFERENCE', 'false', 'Would you like to display the customer reference number on the invoice?<br />[ Default = false ]<br />', 16, 25, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(326, 'Do you want to display order comments?', 'DISPLAY_PDF_COMMENTS', 'false', 'Would you like to display comments linked to this order?<br />[ Default = false ]<br />', 16, 26, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(327, 'Show the products model?', 'DISPLAY_PRODUCT_MODEL', 'false', 'Would you like to display the product model on the invoice?<br />[ Default = false ]<br />', 16, 27, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(328, 'Choose the size of the products model box.', 'PRODUCT_MODEL_BOX_WIDTH', '24', 'If you have chosen to show the products model box how wide do you want it?<br />[ Default = 24 ]<br />', 16, 28, '2013-02-12 12:00:00', '2013-02-12 12:00:00', NULL, ''),
(329, 'Display currency symbol in product lines?', 'DISPLAY_PROD_LINE_CURRENCY', 'false', 'Would you like to display the currency symbol in the product lines on the invoice?<br />[ Default = false ]<br />', 16, 29, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(330, 'Do you want to display a page number?', 'DISPLAY_PAGE_NUMBER', 'false', 'Would you like to display the page number in the footer?<br />[ Default = false ]<br />', 16, 30, '2013-02-12 12:00:00', '2013-02-12 12:00:00', '', 'tep_cfg_select_option(array(''false'', ''true''),');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

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
(16, 'PDF Invoices', 'Options for configuring PDF invoices', 16, 1);

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
('20130119', 2215);

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
(1, 'U.S. Dollar', 'USD', '$', '', '.', ',', '2', 1.00000000, '2013-01-19 19:33:34'),
(2, 'Euro', 'EUR', '', 'â‚¬', '.', ',', '2', 1.00000000, '2013-01-19 19:33:34');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `customers_email_address`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `customers_password`, `customers_newsletter`) VALUES
(2, 'm', 'dian', 'santoso', '2013-02-01 00:00:00', 'budal@gmail.com', 2, '6776763', '', '$P$DPnJCpby0nVVRufUy/RuyJChsxuUu51', '0'),
(3, 'f', 'Karla', 'Arroyo', '1990-05-04 00:00:00', 'nocturnaop9@hotmail.com', 3, '1234567890', '123677', '$P$D458M1RndzMpIwyXbdToz8hOtVsQKk/', ''),
(4, 'm', 'Alejandro', 'Gomez', '1992-04-07 00:00:00', 'sprtn_link.hrdy@hotmail.com', 4, '524611978553', '', '$P$DjOZtXLGtXrtN2us5IqoYw6g.Eccld0', '');

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
(5, 2, '32', 1, NULL, '20130214'),
(6, 3, '37', 1, NULL, '20130919'),
(7, 3, '32', 1, NULL, '20130919');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(2, '2013-02-15 09:15:31', 14, '2013-02-01 09:24:26', '2013-02-01 21:49:39', 0, NULL, NULL),
(3, '2013-09-19 14:02:10', 1, '2013-09-19 13:42:12', NULL, 0, NULL, NULL),
(4, '2013-09-19 22:12:36', 1, '2013-09-19 14:38:19', NULL, 0, NULL, NULL);

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
(1, 'Florida', 'Florida local sales tax zone', NULL, '2013-01-19 19:33:35');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`) VALUES
(1, 'English', 'en', 'gb.png', 'english', 0),
(2, 'French', 'fr', 'fr.png', 'french', 0),
(4, 'Espanol', 'es', 'icon.gif', 'espanol', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`) VALUES
(1, 'Matrox', 'manufacturer_matrox.gif', '2013-01-19 19:33:34', NULL),
(2, 'Microsoft', 'manufacturer_microsoft.gif', '2013-01-19 19:33:34', NULL),
(3, 'Warner', 'manufacturer_warner.gif', '2013-01-19 19:33:34', NULL),
(4, 'Fox', 'manufacturer_fox.gif', '2013-01-19 19:33:34', NULL),
(5, 'Logitech', 'manufacturer_logitech.gif', '2013-01-19 19:33:34', NULL),
(6, 'Canon', 'manufacturer_canon.gif', '2013-01-19 19:33:34', NULL),
(7, 'Sierra', 'manufacturer_sierra.gif', '2013-01-19 19:33:34', NULL),
(8, 'GT Interactive', 'manufacturer_gt_interactive.gif', '2013-01-19 19:33:34', NULL),
(9, 'Hewlett Packard', 'manufacturer_hewlett_packard.gif', '2013-01-19 19:33:34', NULL),
(10, 'Samsung', 'manufacturer_samsung.png', '2013-01-19 19:33:34', NULL);

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
(1, 1, 'http://www.matrox.com', 0, NULL),
(1, 2, 'http://www.matrox.com', 0, NULL),
(1, 4, 'http://www.matrox.com', 0, NULL),
(2, 1, 'http://www.microsoft.com', 0, NULL),
(2, 2, 'http://www.microsoft.com', 0, NULL),
(2, 4, 'http://www.microsoft.com', 0, NULL),
(3, 1, 'http://www.warner.com', 0, NULL),
(3, 2, 'http://www.warner.com', 0, NULL),
(3, 4, 'http://www.warner.com', 0, NULL),
(4, 1, 'http://www.fox.com', 0, NULL),
(4, 2, 'http://www.fox.com', 0, NULL),
(4, 4, 'http://www.fox.com', 0, NULL),
(5, 1, 'http://www.logitech.com', 0, NULL),
(5, 2, 'http://www.logitech.com', 0, NULL),
(5, 4, 'http://www.logitech.com', 0, NULL),
(6, 1, 'http://www.canon.com', 0, NULL),
(6, 2, 'http://www.canon.com', 0, NULL),
(6, 4, 'http://www.canon.com', 0, NULL),
(7, 1, 'http://www.sierra.com', 0, NULL),
(7, 2, 'http://www.sierra.com', 0, NULL),
(7, 4, 'http://www.sierra.com', 0, NULL),
(8, 1, 'http://www.infogrames.com', 0, NULL),
(8, 2, 'http://www.infogrames.com', 0, NULL),
(8, 4, 'http://www.infogrames.com', 0, NULL),
(9, 1, 'http://www.hewlettpackard.com', 0, NULL),
(9, 2, 'http://www.hewlettpackard.com', 0, NULL),
(9, 4, 'http://www.hewlettpackard.com', 0, NULL),
(10, 1, 'http://www.samsung.com', 0, NULL),
(10, 2, 'http://www.samsung.com', 0, NULL),
(10, 4, 'http://www.samsung.com', 0, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`orders_id`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `customers_email_address`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_status`, `orders_date_finished`, `currency`, `currency_value`) VALUES
(3, 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '6776763', 'budal@gmail.com', 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', 2, 'Cash on Delivery', '', '', '', '', NULL, '2013-02-01 21:20:07', 1, NULL, 'USD', '1.000000'),
(4, 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '6776763', 'budal@gmail.com', 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', 2, 'Cash on Delivery', '', '', '', '', NULL, '2013-02-07 09:38:56', 1, NULL, 'USD', '1.000000'),
(5, 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '6776763', 'budal@gmail.com', 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', 2, 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', 2, 'Cash on Delivery', '', '', '', '', NULL, '2013-02-15 08:39:56', 1, NULL, 'USD', '1.000000'),
(6, 4, 'Alejandro Gomez', '', 'Leandro Valle 403', 'Apaseo el Alto', 'Apaseo el Alto', '38500', 'Guanajuato', 'Mexico', '524611978553', 'sprtn_link.hrdy@hotmail.com', 1, 'Alejandro Gomez', '', 'Leandro Valle 403', 'Apaseo el Alto', 'Apaseo el Alto', '38500', 'Guanajuato', 'Mexico', 1, 'Alejandro Gomez', '', 'Leandro Valle 403', 'Apaseo el Alto', 'Apaseo el Alto', '38500', 'Guanajuato', 'Mexico', 1, 'Pago contra entrega', '', '', '', '', NULL, '2013-09-19 14:41:01', 1, NULL, 'USD', '1.000000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(4, 3, 36, 'PHCP', 'White Futuristic Chair', '55.0000', '55.0000', '7.0000', 1),
(5, 3, 37, 'PSC', 'Modern Woodern Chair', '42.0000', '42.0000', '7.0000', 1),
(6, 3, 31, 'FFW', 'Elegant Wooden Simple Chair', '35.0000', '35.0000', '7.0000', 1),
(7, 3, 34, 'GEASF1', 'Clean White Modern Chair', '50.0000', '50.0000', '7.0000', 1),
(8, 3, 35, 'GWATSA', 'Wood Sleek Chair', '31.0000', '31.0000', '7.0000', 1),
(9, 3, 29, 'BR-D-M', 'Classic Wooden Arm Chair', '40.0000', '40.0000', '7.0000', 1),
(10, 4, 29, 'BR-D-M', 'Classic Wooden Arm Chair', '40.0000', '40.0000', '7.0000', 1),
(11, 5, 32, 'FMW', 'Clean Blue Modern Jacket', '55.0000', '55.0000', '7.0000', 1),
(12, 5, 35, 'GWATSA', 'Wood Sleek Jacket', '31.0000', '31.0000', '7.0000', 1),
(13, 6, 32, 'FMW', 'Clean Blue Modern Jacket', '55.0000', '55.0000', '0.0000', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(1, 4, 'Pending', 1, 0),
(2, 1, 'Processing', 1, 1),
(2, 2, 'Processing', 1, 0),
(2, 4, 'Processing', 1, 0),
(3, 1, 'Delivered', 1, 1),
(3, 2, 'Delivered', 1, 0),
(3, 4, 'Delivered', 1, 0),
(4, 1, 'PayPal [Transactions]', 0, 0),
(4, 2, 'PayPal [Transactions]', 1, 0),
(4, 4, 'PayPal [Transactions]', 1, 0),
(5, 1, 'Preparing [PayPal Standard]', 0, 0),
(5, 2, 'Preparing [PayPal Standard]', 0, 0),
(5, 4, 'Preparing [PayPal Standard]', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(3, 3, 1, '2013-02-01 21:20:08', 1, 'cxs asadad dasda dad'),
(4, 4, 1, '2013-02-07 09:38:56', 1, 'gh gh h hghgh'),
(5, 5, 1, '2013-02-15 08:39:56', 1, ''),
(6, 6, 1, '2013-09-19 14:41:01', 1, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `orders_total`
--

INSERT INTO `orders_total` (`orders_total_id`, `orders_id`, `title`, `text`, `value`, `class`, `sort_order`) VALUES
(9, 3, 'Sub-Total:', '$253.00', '253.0000', 'ot_subtotal', 1),
(10, 3, 'FL TAX 7.0%:', '$17.71', '17.7100', 'ot_tax', 3),
(11, 3, 'Flat Rate (Best Way):', '$5.00', '5.0000', 'ot_shipping', 2),
(12, 3, 'Total:', '<strong>$275.71</strong>', '275.7100', 'ot_total', 4),
(13, 4, 'Sub-Total:', '$40.00', '40.0000', 'ot_subtotal', 1),
(14, 4, 'FL TAX 7.0%:', '$2.80', '2.8000', 'ot_tax', 3),
(15, 4, 'Per Item (Best Way):', '$2.50', '2.5000', 'ot_shipping', 2),
(16, 4, 'Total:', '<strong>$45.48</strong>', '45.4750', 'ot_total', 4),
(17, 5, 'Sub-Total:', '$92.02', '92.0200', 'ot_subtotal', 1),
(18, 5, 'FL TAX 7.0%:', '$6.02', '6.0200', 'ot_tax', 3),
(19, 5, 'Flat Rate (Best Way):', '$5.00', '5.0000', 'ot_shipping', 2),
(20, 5, 'Total:', '<strong>$97.02</strong>', '97.0200', 'ot_total', 4),
(21, 6, 'SubTotal:', '$55.00', '55.0000', 'ot_subtotal', 1),
(22, 6, 'Tarifa Plana (Mejor manera):', '$5.00', '5.0000', 'ot_shipping', 2),
(23, 6, 'Total:', '<strong>$60.00</strong>', '60.0000', 'ot_total', 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`) VALUES
(29, 43, 'BR-D-M', 'image-1.jpg', '45.0000', '2013-01-19 21:24:06', '2013-02-15 06:47:09', NULL, '2.00', 1, 1, 10, 2),
(30, 34, 'BR-W-P', 'image-2.jpg', '35.0000', '2013-01-19 21:25:16', '2013-02-15 06:52:49', NULL, '2.00', 1, 1, 10, 0),
(31, 54, 'FFW', 'image-3.jpg', '45.0000', '2013-01-19 21:27:57', '2013-02-15 06:48:40', NULL, '3.00', 1, 1, 10, 1),
(32, 31, 'FMW', 'image-2.jpg', '55.0000', '2013-01-19 21:29:02', '2013-02-15 06:48:05', NULL, '3.00', 1, 1, 10, 2),
(33, 55, 'FS', 'image-4.jpg', '35.0000', '2013-01-19 21:30:08', '2013-02-15 06:49:23', NULL, '2.00', 1, 1, 10, 0),
(34, 64, 'GEASF1', 'image-2.jpg', '55.0000', '2013-01-19 21:32:54', '2013-02-15 06:51:55', NULL, '2.00', 1, 1, 10, 1),
(35, 53, 'GWATSA', 'image-1.jpg', '35.0000', '2013-01-19 21:33:44', '2013-02-15 06:52:20', '0000-00-00 00:00:00', '3.00', 1, 1, 10, 2),
(36, 54, 'PHCP', 'image-2.jpg', '55.0000', '2013-01-19 21:35:43', '2013-02-15 06:53:42', '0000-00-00 00:00:00', '2.00', 1, 1, 10, 1),
(37, 43, 'PSC', 'image-3.jpg', '45.0000', '2013-01-19 21:36:32', '2013-02-15 06:53:16', NULL, '3.00', 1, 1, 10, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(29, 1, 'Classic Jacket', 'Classic Jacket', 'classic.com', 8),
(29, 2, 'Classic Jacket', 'Classic Jacket', 'classic.com', 0),
(29, 4, 'Classic Jacket', 'Classic Jacket', 'classic.com', 0),
(30, 1, 'Parabolica White Jacket', 'Parabolica White Jacket', 'modern.com', 9),
(30, 2, 'Parabolica White Jacket', 'Parabolica White Jacket', 'modern.com', 0),
(30, 4, 'Parabolica White Jacket', 'Parabolica White Jacket', 'modern.com', 0),
(31, 1, 'Elegant Jacket', 'Elegant Jacket', 'elegant.com', 14),
(31, 2, 'Elegant Jacket', 'Elegant Jacket', 'elegant.com', 0),
(31, 4, 'Elegant Jacket', 'Elegant Jacket', 'elegant.com', 0),
(32, 1, 'Clean Blue Modern Jacket', 'Clean Blue Modern Jacket', 'modern.com', 15),
(32, 2, 'Clean Blue Modern Jacket', 'Clean Blue Modern Jacket', 'modern.com', 0),
(32, 4, 'Clean Blue Modern Jacket', 'Clean Blue Modern Jacket', 'modern.com', 2),
(33, 1, 'Strong Jacket', 'Strong Jacket', 'classic.com', 2),
(33, 2, 'Strong Jacket', 'Strong Jacket', 'classic.com', 0),
(33, 4, 'Strong Jacket', 'Strong Jacket', 'classic.com', 0),
(34, 1, 'Clean White Modern Jacket', 'Clean White Modern Jacket', 'modern.com', 2),
(34, 2, 'Clean White Modern Jacket', 'Clean White Modern Jacket', 'modern.com', 0),
(34, 4, 'Clean White Modern Jacket', 'Clean White Modern Jacket', 'modern.com', 0),
(35, 1, 'Wood Sleek Jacket', 'Wood Sleek Jacket', 'classic.com', 15),
(35, 2, 'Wood Sleek Jacket', 'Wood Sleek Jacket', 'classic.com', 0),
(35, 4, 'Wood Sleek Jacket', 'Wood Sleek Jacket', 'classic.com', 0),
(36, 1, 'White Futuristic Jacket', 'White Futuristic Jacket', 'futuristic.com', 9),
(36, 2, 'White Futuristic Jacket', 'White Futuristic Jacket', 'futuristic.com', 0),
(36, 4, 'White Futuristic Jacket', 'White Futuristic Jacket', 'futuristic.com', 0),
(37, 1, 'Modern Jacket', 'Modern Jacket', 'modern.com', 7),
(37, 2, 'Modern Jacket', 'Modern Jacket', 'modern.com', 0),
(37, 4, 'Modern Jacket', 'Modern Jacket', 'modern.com', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(5, 34, 'image-1.jpg', '', 1),
(6, 34, 'image-3.jpg', '', 2),
(7, 34, 'image-4.jpg', '', 3);

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
(29, 2, '2013-02-01 09:26:18'),
(31, 2, '2013-02-01 21:20:20'),
(34, 2, '2013-02-01 21:20:20'),
(35, 1, '2013-01-19 21:40:41'),
(37, 2, '2013-02-01 09:26:53');

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
(1, 4, 'Color'),
(2, 1, 'Size'),
(2, 2, 'Size'),
(2, 4, 'Size'),
(3, 1, 'Model'),
(3, 2, 'Model'),
(3, 4, 'Model'),
(4, 1, 'Memory'),
(4, 2, 'Memory'),
(4, 4, 'Memory'),
(5, 1, 'Version'),
(5, 2, 'Version'),
(5, 4, 'Version');

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
(1, 4, '4 mb'),
(2, 1, '8 mb'),
(2, 2, '8 mb'),
(2, 4, '8 mb'),
(3, 1, '16 mb'),
(3, 2, '16 mb'),
(3, 4, '16 mb'),
(4, 1, '32 mb'),
(4, 2, '32 mb'),
(4, 4, '32 mb'),
(5, 1, 'Value'),
(5, 2, 'Value'),
(5, 4, 'Value'),
(6, 1, 'Premium'),
(6, 2, 'Premium'),
(6, 4, 'Premium'),
(7, 1, 'Deluxe'),
(7, 2, 'Deluxe'),
(7, 4, 'Deluxe'),
(8, 1, 'PS/2'),
(8, 2, 'PS/2'),
(8, 4, 'PS/2'),
(9, 1, 'USB'),
(9, 2, 'USB'),
(9, 4, 'USB'),
(10, 1, 'Download: Windows - English'),
(10, 2, 'Download: Windows - English'),
(10, 4, 'Download: Windows - English'),
(13, 1, 'Box: Windows - English'),
(13, 2, 'Box: Windows - English'),
(13, 4, 'Box: Windows - English');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options_values_to_products_options`
--

CREATE TABLE IF NOT EXISTS `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  PRIMARY KEY (`products_options_values_to_products_options_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

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
(13, 5, 13);

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
(29, 22),
(30, 23),
(31, 25),
(32, 25),
(33, 26),
(34, 28),
(35, 28),
(36, 31),
(37, 31);

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
(2, 35, NULL, 'dian san san', 4, '2013-01-19 21:39:06', '2013-01-19 21:39:24', 1, 3),
(3, 29, NULL, 'dian san san', 2, '2013-01-19 21:47:05', '2013-01-19 21:47:15', 1, 4),
(4, 32, NULL, 'dian san san', 5, '2013-01-19 21:48:12', '2013-01-19 21:48:17', 1, 19);

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
(2, 1, 'Wrangler AT SA lorem ipsum set dolor amet fuis consequer. Wrangler AT SA lorem ipsum set dolor amet fuis consequer.'),
(3, 1, 'Bridge Dry Medium lorem ipsum consequer fuis dolor amet. Bridge Dry Medium lorem ipsum consequer fuis dolor amet.'),
(4, 1, 'Firestoner Medium Wet lorem ipsum consequer fuis dolor amet. Firestoner Medium Wet lorem ipsum consequer fuis dolor amet.');

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
('09mq7dt06mt2n8mo6nq9tv0lt5', 1379618092, 'language|s:7:"english";languages_id|s:1:"1";admin|a:2:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";}'),
('60l9ffkapcmf1ovpu3v28o3jm5', 1379618019, 'sessiontoken|s:32:"dd175faee70491f8ec4e473e7e58dae3";cart|O:12:"shoppingCart":5:{s:8:"contents";a:2:{i:37;a:1:{s:3:"qty";s:1:"1";}i:32;a:1:{s:3:"qty";s:1:"1";}}s:5:"total";d:100;s:6:"weight";d:6;s:6:"cartID";s:5:"61409";s:12:"content_type";s:8:"physical";}language|s:7:"english";languages_id|s:1:"1";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:4:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:4:{s:5:"cPath";s:5:"24_25";s:4:"sort";s:2:"2a";s:6:"action";s:7:"buy_now";s:11:"products_id";s:2:"32";}s:4:"post";a:0:{}}i:1;a:4:{s:4:"page";s:17:"shopping_cart.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:2;a:4:{s:4:"page";s:21:"checkout_shipping.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:3;a:4:{s:4:"page";s:11:"account.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}customer_id|i:3;customer_first_name|s:5:"Karla";customer_default_address_id|i:3;customer_country_id|s:3:"138";customer_zone_id|i:0;sendto|i:3;cartID|s:5:"61409";comments|N;shipping|N;'),
('816ig7v6g5b0b1m8n95msnec45', 1379618661, 'sessiontoken|s:32:"1466fca4d368e5c6e516609589292dbd";cart|O:12:"shoppingCart":4:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:12:"content_type";b:0;}language|s:7:"espanol";languages_id|s:1:"4";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}'),
('a945c8tvclee0bgvvcfu2bqud2', 1379610889, 'language|s:7:"english";languages_id|s:1:"1";admin|a:2:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";}'),
('ceh82rv7eruqpg36kar152heo0', 1379649627, 'sessiontoken|s:32:"1571a3fdb69394aad51e1ca4007bfb77";cart|O:12:"shoppingCart":5:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:6:"cartID";s:5:"34834";s:12:"content_type";b:0;}language|s:7:"english";languages_id|s:1:"1";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:4:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:1;a:4:{s:4:"page";s:17:"shopping_cart.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:2;a:4:{s:4:"page";s:11:"account.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:3;a:4:{s:4:"page";s:19:"account_history.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:1:{s:8:"language";s:2:"en";}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}customer_id|s:1:"4";customer_default_address_id|s:1:"4";customer_first_name|s:9:"Alejandro";customer_country_id|s:3:"138";customer_zone_id|s:1:"0";'),
('flq7if9fnc3p6r3393qs6vdfn2', 1379648151, 'language|s:7:"espanol";languages_id|s:1:"4";redirect_origin|a:2:{s:4:"page";s:9:"index.php";s:3:"get";a:0:{}}'),
('ibbkv8dfs77md3p0kmd4vhak06', 1379614416, 'sessiontoken|s:32:"9f42b08e13cce0f706e615cf1be0b82d";cart|O:12:"shoppingCart":5:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:6:"cartID";N;s:12:"content_type";b:0;}language|s:6:"french";languages_id|s:1:"2";currency|s:3:"USD";navigation|O:17:"navigationHistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:9:"index.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:4:{s:4:"page";s:11:"account.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(5, 29, '40.0000', '2013-01-19 21:48:35', NULL, '2013-03-30 00:00:00', '2013-09-19 11:28:35', 0),
(6, 34, '50.0000', '2013-01-19 21:48:48', NULL, '2013-03-30 00:00:00', '2013-09-19 11:28:35', 0),
(7, 31, '35.0000', '2013-01-19 21:49:00', NULL, '2013-03-30 00:00:00', '2013-09-19 11:28:35', 0),
(8, 37, '42.0000', '2013-01-19 21:49:13', NULL, '2013-03-30 00:00:00', '2013-09-19 11:28:35', 0),
(9, 30, '32.0000', '2013-01-19 21:49:33', NULL, '2013-03-30 00:00:00', '2013-09-19 11:28:35', 0),
(10, 35, '31.0000', '2013-01-19 21:49:48', NULL, '2013-03-30 00:00:00', '2013-09-19 11:28:35', 0);

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
(1, 'Taxable Goods', 'The following types of products are included non-food, services, etc', '2013-01-19 19:33:35', '2013-01-19 19:33:35');

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
(1, 1, 1, 1, '7.0000', 'FL TAX 7.0%', '2013-01-19 19:33:35', '2013-01-19 19:33:35');

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
(4, 'Alejandro Gomez', 'ceh82rv7eruqpg36kar152heo0', '::1', '1379646757', '1379648185', '/C&MBritish/account_history.php?language=en');

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
(1, 223, 18, 1, NULL, '2013-01-19 19:33:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
