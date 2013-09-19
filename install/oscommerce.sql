# osCommerce, Open Source E-Commerce Solutions
# http://www.oscommerce.com
#
# Database Backup For Jacket Store
# Copyright (c) 2013 dian
#
# Database: osc-chair
# Database Server: localhost
#
# Backup Date: 02/14/2013 22:20:17

drop table if exists action_recorder;
create table action_recorder (
  id int(11) not null auto_increment,
  module varchar(255) not null ,
  user_id int(11) ,
  user_name varchar(255) ,
  identifier varchar(255) not null ,
  success char(1) ,
  date_added datetime not null ,
  PRIMARY KEY (id),
  KEY idx_action_recorder_module (module),
  KEY idx_action_recorder_user_id (user_id),
  KEY idx_action_recorder_identifier (identifier),
  KEY idx_action_recorder_date_added (date_added)
);

insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('1', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-01-19 20:45:20');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('2', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-01-19 21:10:10');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('3', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-01-19 21:20:59');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('4', 'ar_reset_password', '1', 'naidosotnas@gmail.com', '127.0.0.1', '1', '2013-01-19 22:06:09');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('5', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-01-19 22:13:56');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('6', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-01-19 22:19:18');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('7', 'ar_reset_password', '1', 'naidosotnas@gmail.com', '127.0.0.1', '1', '2013-01-19 22:26:11');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('8', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-01-20 04:23:05');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('9', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-01 08:02:43');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('10', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-01 08:36:29');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('11', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-01 08:41:38');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('12', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-01 20:26:52');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('13', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-01 21:16:25');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('14', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-01 21:47:54');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('15', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-07 08:21:19');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('16', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-07 08:31:11');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('17', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-07 08:44:28');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('18', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-07 12:23:41');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('19', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-07 13:24:27');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('20', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-07 13:33:01');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('21', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-07 13:33:41');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('22', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-07 13:48:58');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('23', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-11 08:32:33');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('24', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-11 08:53:00');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('25', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-13 19:26:11');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('26', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-14 15:15:19');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('27', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-15 06:41:32');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('28', 'ar_tell_a_friend', '2', 'dian', '127.0.0.1', '1', '2013-02-15 10:03:53');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('29', 'ar_tell_a_friend', '2', 'dsadas', '127.0.0.1', '0', '2013-02-15 10:05:14');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('30', 'ar_admin_login', '1', 'admin', '127.0.0.1', '1', '2013-02-15 10:19:49');
drop table if exists address_book;
create table address_book (
  address_book_id int(11) not null auto_increment,
  customers_id int(11) not null ,
  entry_gender char(1) ,
  entry_company varchar(255) ,
  entry_firstname varchar(255) not null ,
  entry_lastname varchar(255) not null ,
  entry_street_address varchar(255) not null ,
  entry_suburb varchar(255) ,
  entry_postcode varchar(255) not null ,
  entry_city varchar(255) not null ,
  entry_state varchar(255) ,
  entry_country_id int(11) default '0' not null ,
  entry_zone_id int(11) default '0' not null ,
  PRIMARY KEY (address_book_id),
  KEY idx_address_book_customers_id (customers_id)
);

insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('2', '2', 'm', 'red', 'dian', 'santoso', 'florida', '', '34343', 'florida', '', '223', '18');
drop table if exists address_format;
create table address_format (
  address_format_id int(11) not null auto_increment,
  address_format varchar(128) not null ,
  address_summary varchar(48) not null ,
  PRIMARY KEY (address_format_id)
);

insert into address_format (address_format_id, address_format, address_summary) values ('1', '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('2', '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('3', '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('4', '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('5', '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country');
drop table if exists administrators;
create table administrators (
  id int(11) not null auto_increment,
  user_name varchar(255) not null ,
  user_password varchar(60) not null ,
  PRIMARY KEY (id)
);

insert into administrators (id, user_name, user_password) values ('1', 'admin', '$P$DSjeI9j1AwIAi/96MfGFbqc/qBhUrQ0');
drop table if exists banners;
create table banners (
  banners_id int(11) not null auto_increment,
  banners_title varchar(64) not null ,
  banners_url varchar(255) not null ,
  banners_image varchar(64) not null ,
  banners_group varchar(10) not null ,
  banners_html_text text ,
  expires_impressions int(7) default '0' ,
  expires_date datetime ,
  date_scheduled datetime ,
  date_added datetime not null ,
  date_status_change datetime ,
  status int(1) default '1' not null ,
  PRIMARY KEY (banners_id),
  KEY idx_banners_group (banners_group)
);

insert into banners (banners_id, banners_title, banners_url, banners_image, banners_group, banners_html_text, expires_impressions, expires_date, date_scheduled, date_added, date_status_change, status) values ('2', 'payment', 'http://www.google.com', 'payment.png', '160x50', '', NULL, NULL, NULL, '2013-01-19 20:46:33', '2013-01-19 20:46:40', '1');
insert into banners (banners_id, banners_title, banners_url, banners_image, banners_group, banners_html_text, expires_impressions, expires_date, date_scheduled, date_added, date_status_change, status) values ('3', 'twitter', 'http://www.google.com', '1358519771_twitter_bird_blueprint-social.png', '180x80', '', NULL, NULL, NULL, '2013-01-19 20:47:11', '2013-01-19 20:47:24', '1');
insert into banners (banners_id, banners_title, banners_url, banners_image, banners_group, banners_html_text, expires_impressions, expires_date, date_scheduled, date_added, date_status_change, status) values ('10', 'b', 'http://www.eyefuldesign.info', 'banner-right.png', 'r270x80', '', NULL, NULL, NULL, '2013-02-07 08:46:06', '2013-02-07 13:26:24', '1');
insert into banners (banners_id, banners_title, banners_url, banners_image, banners_group, banners_html_text, expires_impressions, expires_date, date_scheduled, date_added, date_status_change, status) values ('11', 'l', 'http://www.eyefuldesign.info', 'banner-left.png', 'l270x80', '', '0', NULL, NULL, '2013-02-07 08:47:03', '2013-02-07 12:00:18', '1');
drop table if exists banners_history;
create table banners_history (
  banners_history_id int(11) not null auto_increment,
  banners_id int(11) not null ,
  banners_shown int(5) default '0' not null ,
  banners_clicked int(5) default '0' not null ,
  banners_history_date datetime not null ,
  PRIMARY KEY (banners_history_id),
  KEY idx_banners_history_banners_id (banners_id)
);

insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('2', '2', '82', '0', '2013-01-19 20:46:41');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('3', '3', '81', '0', '2013-01-19 20:47:24');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('4', '3', '1', '0', '2013-01-20 04:22:31');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('5', '2', '1', '0', '2013-01-20 04:22:32');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('6', '3', '465', '0', '2013-02-01 08:01:32');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('7', '2', '465', '0', '2013-02-01 08:01:33');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('8', '3', '500', '0', '2013-02-07 08:18:28');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('9', '2', '500', '0', '2013-02-07 08:18:29');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('11', '11', '160', '0', '2013-02-07 08:47:37');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('12', '10', '160', '0', '2013-02-07 08:47:37');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('13', '3', '56', '0', '2013-02-11 08:31:45');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('14', '11', '43', '0', '2013-02-11 08:31:45');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('15', '10', '43', '0', '2013-02-11 08:31:45');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('16', '2', '56', '0', '2013-02-11 08:31:46');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('17', '3', '630', '0', '2013-02-13 08:08:26');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('18', '11', '349', '0', '2013-02-13 08:08:26');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('19', '10', '349', '0', '2013-02-13 08:08:27');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('20', '2', '628', '0', '2013-02-13 08:08:27');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('21', '3', '35', '0', '2013-02-14 10:33:54');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('22', '11', '26', '0', '2013-02-14 10:33:54');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('23', '10', '26', '0', '2013-02-14 10:33:54');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('24', '2', '35', '0', '2013-02-14 10:33:55');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('25', '3', '292', '0', '2013-02-15 06:49:38');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('26', '11', '137', '0', '2013-02-15 06:49:39');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('27', '10', '137', '0', '2013-02-15 06:49:39');
insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('28', '2', '291', '0', '2013-02-15 06:49:40');
drop table if exists categories;
create table categories (
  categories_id int(11) not null auto_increment,
  categories_image varchar(64) ,
  parent_id int(11) default '0' not null ,
  sort_order int(3) ,
  date_added datetime ,
  last_modified datetime ,
  PRIMARY KEY (categories_id),
  KEY idx_categories_parent_id (parent_id)
);

insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('22', NULL, '0', '0', '2013-01-19 21:22:03', '2013-02-15 06:43:50');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('23', NULL, '0', '0', '2013-01-19 21:22:36', '2013-02-15 06:45:06');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('24', NULL, '0', '0', '2013-01-19 21:25:43', '2013-02-15 06:44:10');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('25', 'image-1.jpg', '24', '1', '2013-01-19 21:26:20', '2013-02-11 08:38:13');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('26', 'image-2.jpg', '24', '2', '2013-01-19 21:26:43', '2013-02-07 13:53:11');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('27', NULL, '0', '0', '2013-01-19 21:30:38', '2013-02-15 06:44:29');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('28', NULL, '0', '0', '2013-01-19 21:31:06', '2013-02-15 06:44:48');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('29', NULL, '0', '0', '2013-01-19 21:34:06', '2013-02-15 06:43:22');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('30', NULL, '0', '0', '2013-01-19 21:34:26', '2013-02-15 06:45:41');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('31', NULL, '0', '0', '2013-01-19 21:34:45', '2013-02-15 06:45:23');
drop table if exists categories_description;
create table categories_description (
  categories_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  categories_name varchar(32) not null ,
  PRIMARY KEY (categories_id, language_id),
  KEY idx_categories_name (categories_name)
);

insert into categories_description (categories_id, language_id, categories_name) values ('22', '1', 'Classic Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('22', '2', 'Classic Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('22', '3', 'Classic Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('25', '1', 'Classic Style');
insert into categories_description (categories_id, language_id, categories_name) values ('25', '2', 'Classic Style');
insert into categories_description (categories_id, language_id, categories_name) values ('25', '3', 'Classic Style');
insert into categories_description (categories_id, language_id, categories_name) values ('29', '1', 'Classic Style Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('29', '2', 'Classic Style Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('29', '3', 'Classic Style Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('24', '1', 'Elegant Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('24', '2', 'Elegant Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('24', '3', 'Elegant Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('27', '1', 'Minimalist Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('27', '2', 'Minimalist Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('27', '3', 'Minimalist Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('28', '1', 'Minimalist Modern Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('28', '2', 'Minimalist Modern Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('28', '3', 'Minimalist Modern Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('26', '1', 'Modern Style');
insert into categories_description (categories_id, language_id, categories_name) values ('26', '2', 'Modern Style');
insert into categories_description (categories_id, language_id, categories_name) values ('26', '3', 'Modern Style');
insert into categories_description (categories_id, language_id, categories_name) values ('23', '1', 'Modern White Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('23', '2', 'Modern White Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('23', '3', 'Modern White Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('31', '1', 'Simple Futuristic Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('31', '2', 'Simple Futuristic Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('31', '3', 'Simple Futuristic Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('30', '1', 'Simple Modern Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('30', '2', 'Simple Modern Jacket');
insert into categories_description (categories_id, language_id, categories_name) values ('30', '3', 'Simple Modern Jacket');
drop table if exists configuration;
create table configuration (
  configuration_id int(11) not null auto_increment,
  configuration_title varchar(255) not null ,
  configuration_key varchar(255) not null ,
  configuration_value text not null ,
  configuration_description varchar(255) not null ,
  configuration_group_id int(11) not null ,
  sort_order int(5) ,
  last_modified datetime ,
  date_added datetime not null ,
  use_function varchar(255) ,
  set_function varchar(255) ,
  PRIMARY KEY (configuration_id)
);

insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('1', 'Store Name', 'STORE_NAME', 'Jacket Store', 'The name of my store', '1', '1', '2013-02-15 06:41:55', '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('2', 'Store Owner', 'STORE_OWNER', 'dian', 'The name of my store owner', '1', '2', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('3', 'E-Mail Address', 'STORE_OWNER_EMAIL_ADDRESS', 'budalsekolah@gmail.com', 'The e-mail address of my store owner', '1', '3', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('4', 'E-Mail From', 'EMAIL_FROM', '\"dian\" <budalsekolah@gmail.com>', 'The e-mail address used in (sent) e-mails', '1', '4', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('5', 'Country', 'STORE_COUNTRY', '223', 'The country my store is located in <br /><br /><strong>Note: Please remember to update the store zone.</strong>', '1', '6', NULL, '2013-01-19 19:33:32', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('6', 'Zone', 'STORE_ZONE', '18', 'The zone my store is located in', '1', '7', NULL, '2013-01-19 19:33:32', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('7', 'Expected Sort Order', 'EXPECTED_PRODUCTS_SORT', 'desc', 'This is the sort order used in the expected products box.', '1', '8', NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'asc\', \'desc\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('8', 'Expected Sort Field', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'The column to sort by in the expected products box.', '1', '9', NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'products_name\', \'date_expected\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('9', 'Switch To Default Language Currency', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Automatically switch to the language\'s currency when it is changed', '1', '10', NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('10', 'Send Extra Order Emails To', 'SEND_EXTRA_ORDER_EMAILS_TO', '', 'Send extra order emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', '1', '11', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('11', 'Use Search-Engine Safe URLs', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Use search-engine safe urls for all site links', '1', '12', NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('12', 'Display Cart After Adding Product', 'DISPLAY_CART', 'true', 'Display the shopping cart after adding a product (or return back to their origin)', '1', '14', NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('13', 'Allow Guest To Tell A Friend', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'true', 'Allow guests to tell a friend about a product', '1', '15', '2013-01-19 21:44:47', '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('14', 'Default Search Operator', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Default search operators', '1', '17', NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'and\', \'or\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('15', 'Store Address and Phone', 'STORE_NAME_ADDRESS', 'Store Name
Address
Country
Phone', 'This is the Store Name, Address and Phone used on printable documents and displayed online', '1', '18', NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_textarea(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('16', 'Show Category Counts', 'SHOW_COUNTS', 'true', 'Count recursively how many products are in each category', '1', '19', NULL, '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('17', 'Tax Decimal Places', 'TAX_DECIMAL_PLACES', '0', 'Pad the tax value this amount of decimal places', '1', '20', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('18', 'Display Prices with Tax', 'DISPLAY_PRICE_WITH_TAX', 'true', 'Display prices with tax included (true) or add the tax at the end (false)', '1', '21', '2013-02-15 06:42:13', '2013-01-19 19:33:32', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('19', 'First Name', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Minimum length of first name', '2', '1', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('20', 'Last Name', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Minimum length of last name', '2', '2', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('21', 'Date of Birth', 'ENTRY_DOB_MIN_LENGTH', '10', 'Minimum length of date of birth', '2', '3', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('22', 'E-Mail Address', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Minimum length of e-mail address', '2', '4', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('23', 'Street Address', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Minimum length of street address', '2', '5', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('24', 'Company', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Minimum length of company name', '2', '6', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('25', 'Post Code', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Minimum length of post code', '2', '7', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('26', 'City', 'ENTRY_CITY_MIN_LENGTH', '3', 'Minimum length of city', '2', '8', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('27', 'State', 'ENTRY_STATE_MIN_LENGTH', '2', 'Minimum length of state', '2', '9', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('28', 'Telephone Number', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Minimum length of telephone number', '2', '10', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('29', 'Password', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Minimum length of password', '2', '11', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('30', 'Credit Card Owner Name', 'CC_OWNER_MIN_LENGTH', '3', 'Minimum length of credit card owner name', '2', '12', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('31', 'Credit Card Number', 'CC_NUMBER_MIN_LENGTH', '10', 'Minimum length of credit card number', '2', '13', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('32', 'Review Text', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Minimum length of review text', '2', '14', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('33', 'Best Sellers', 'MIN_DISPLAY_BESTSELLERS', '1', 'Minimum number of best sellers to display', '2', '15', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('34', 'Also Purchased', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Minimum number of products to display in the \'This Customer Also Purchased\' box', '2', '16', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('35', 'Address Book Entries', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximum address book entries a customer is allowed to have', '3', '1', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('36', 'Search Results', 'MAX_DISPLAY_SEARCH_RESULTS', '5', 'Amount of products to list', '3', '2', '2013-02-01 21:16:34', '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('37', 'Page Links', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Number of \'number\' links use for page-sets', '3', '3', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('38', 'Special Products', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '9', 'Maximum number of products on special to display', '3', '4', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('39', 'New Products Module', 'MAX_DISPLAY_NEW_PRODUCTS', '9', 'Maximum number of new products to display in a category', '3', '5', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('40', 'Products Expected', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'Maximum number of products expected to display', '3', '6', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('41', 'Manufacturers List', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '0', 'Used in manufacturers box; when the number of manufacturers exceeds this number, a drop-down list will be displayed instead of the default list', '3', '7', '2013-02-13 19:28:31', '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('42', 'Manufacturers Select Size', 'MAX_MANUFACTURERS_LIST', '1', 'Used in manufacturers box; when this value is \'1\' the classic drop-down list will be used for the manufacturers box. Otherwise, a list-box with the specified number of rows will be displayed.', '3', '7', '2013-02-13 19:40:16', '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('43', 'Length of Manufacturers Name', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Used in manufacturers box; maximum length of manufacturers name to display', '3', '8', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('44', 'New Reviews', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Maximum number of new reviews to display', '3', '9', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('45', 'Selection of Random Reviews', 'MAX_RANDOM_SELECT_REVIEWS', '10', 'How many records to select from to choose one random product review', '3', '10', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('46', 'Selection of Random New Products', 'MAX_RANDOM_SELECT_NEW', '10', 'How many records to select from to choose one random new product to display', '3', '11', NULL, '2013-01-19 19:33:32', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('47', 'Selection of Products on Special', 'MAX_RANDOM_SELECT_SPECIALS', '10', 'How many records to select from to choose one random product special to display', '3', '12', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('48', 'Categories To List Per Row', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'How many categories to list per row', '3', '13', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('49', 'New Products Listing', 'MAX_DISPLAY_PRODUCTS_NEW', '3', 'Maximum number of new products to display in new products page', '3', '14', '2013-02-01 20:27:23', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('50', 'Best Sellers', 'MAX_DISPLAY_BESTSELLERS', '10', 'Maximum number of best sellers to display', '3', '15', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('51', 'Also Purchased', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Maximum number of products to display in the \'This Customer Also Purchased\' box', '3', '16', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('52', 'Customer Order History Box', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Maximum number of products to display in the customer order history box', '3', '17', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('53', 'Order History', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Maximum number of orders to display in the order history page', '3', '18', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('54', 'Product Quantities In Shopping Cart', 'MAX_QTY_IN_CART', '0', 'Maximum number of product quantities that can be added to the shopping cart (0 for no limit)', '3', '19', '2013-01-19 21:10:47', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('55', 'Small Image Width', 'SMALL_IMAGE_WIDTH', '130', 'The pixel width of small images', '4', '1', '2013-02-07 08:22:24', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('56', 'Small Image Height', 'SMALL_IMAGE_HEIGHT', '160', 'The pixel height of small images', '4', '2', '2013-02-15 06:42:40', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('57', 'Heading Image Width', 'HEADING_IMAGE_WIDTH', '57', 'The pixel width of heading images', '4', '3', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('58', 'Heading Image Height', 'HEADING_IMAGE_HEIGHT', '40', 'The pixel height of heading images', '4', '4', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('59', 'Subcategory Image Width', 'SUBCATEGORY_IMAGE_WIDTH', '130', 'The pixel width of subcategory images', '4', '5', '2013-02-11 08:53:20', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('60', 'Subcategory Image Height', 'SUBCATEGORY_IMAGE_HEIGHT', '160', 'The pixel height of subcategory images', '4', '6', '2013-02-15 06:42:52', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('61', 'Calculate Image Size', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calculate the size of images?', '4', '7', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('62', 'Image Required', 'IMAGE_REQUIRED', 'true', 'Enable to display broken images. Good for development.', '4', '8', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('63', 'Gender', 'ACCOUNT_GENDER', 'true', 'Display gender in the customers account', '5', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('64', 'Date of Birth', 'ACCOUNT_DOB', 'true', 'Display date of birth in the customers account', '5', '2', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('65', 'Company', 'ACCOUNT_COMPANY', 'true', 'Display company in the customers account', '5', '3', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('66', 'Suburb', 'ACCOUNT_SUBURB', 'true', 'Display suburb in the customers account', '5', '4', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('67', 'State', 'ACCOUNT_STATE', 'true', 'Display state in the customers account', '5', '5', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('68', 'Installed Modules', 'MODULE_PAYMENT_INSTALLED', 'cod.php;paypal_express.php', 'List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: cod.php;paypal_express.php)', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('69', 'Installed Modules', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php', 'List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('70', 'Installed Modules', 'MODULE_SHIPPING_INSTALLED', 'flat.php;item.php;table.php;zones.php', 'List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('71', 'Installed Modules', 'MODULE_ACTION_RECORDER_INSTALLED', 'ar_admin_login.php;ar_contact_us.php;ar_reset_password.php;ar_tell_a_friend.php', 'List of action recorder module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('72', 'Installed Modules', 'MODULE_SOCIAL_BOOKMARKS_INSTALLED', 'sb_email.php;sb_google_plus_share.php;sb_facebook.php;sb_twitter.php;sb_pinterest.php;sb_digg.php', 'List of social bookmark module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', '2013-01-19 21:41:58', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('73', 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Do you want to accept Cash On Delevery payments?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('74', 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2013-01-19 19:33:33', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('75', 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('76', 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2013-01-19 19:33:33', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('77', 'Enable Flat Shipping', 'MODULE_SHIPPING_FLAT_STATUS', 'True', 'Do you want to offer flat rate shipping?', '6', '0', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('78', 'Shipping Cost', 'MODULE_SHIPPING_FLAT_COST', '5.00', 'The shipping cost for all orders using this shipping method.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('79', 'Tax Class', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', '6', '0', NULL, '2013-01-19 19:33:33', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('80', 'Shipping Zone', 'MODULE_SHIPPING_FLAT_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', NULL, '2013-01-19 19:33:33', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('81', 'Sort Order', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('82', 'Default Currency', 'DEFAULT_CURRENCY', 'USD', 'Default Currency', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('83', 'Default Language', 'DEFAULT_LANGUAGE', 'en', 'Default Language', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('84', 'Default Order Status For New Orders', 'DEFAULT_ORDERS_STATUS_ID', '1', 'When a new order is created, this order status will be assigned to it.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('85', 'Display Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Do you want to display the order shipping cost?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('86', 'Sort Order', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '2', 'Sort order of display.', '6', '2', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('87', 'Allow Free Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', 'Do you want to allow free shipping?', '6', '3', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('88', 'Free Shipping For Orders Over', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50', 'Provide free shipping for orders over the set amount.', '6', '4', NULL, '2013-01-19 19:33:33', 'currencies->format', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('89', 'Provide Free Shipping For Orders Made', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', 'Provide free shipping for orders sent to the set destination.', '6', '5', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'national\', \'international\', \'both\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('90', 'Display Sub-Total', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Do you want to display the order sub-total cost?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('91', 'Sort Order', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '1', 'Sort order of display.', '6', '2', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('92', 'Display Tax', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Do you want to display the order tax value?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('93', 'Sort Order', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '3', 'Sort order of display.', '6', '2', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('94', 'Display Total', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Do you want to display the total order value?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('95', 'Sort Order', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '4', 'Sort order of display.', '6', '2', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('96', 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('97', 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_TELL_A_FRIEND_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('98', 'Allowed Minutes', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_MINUTES', '5', 'Number of minutes to allow login attempts to occur.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('99', 'Allowed Attempts', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_ATTEMPTS', '3', 'Number of login attempts to allow within the specified period.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('100', 'Allowed Minutes', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_MINUTES', '5', 'Number of minutes to allow password resets to occur.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('101', 'Allowed Attempts', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_ATTEMPTS', '1', 'Number of password reset attempts to allow within the specified period.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('102', 'Enable E-Mail Module', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS', 'True', 'Do you want to allow products to be shared through e-mail?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('103', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('104', 'Enable Google+ Share Module', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_STATUS', 'True', 'Do you want to allow products to be shared through Google+?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('105', 'Annotation', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ANNOTATION', 'None', 'The annotation to display next to the button.', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'Inline\', \'Bubble\', \'Vertical-Bubble\', \'None\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('106', 'Width', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_WIDTH', '', 'The maximum width of the button.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('107', 'Height', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_HEIGHT', '15', 'Sets the height of the button.', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'15\', \'20\', \'24\', \'60\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('108', 'Alignment', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ALIGN', 'Left', 'The alignment of the button assets.', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'Left\', \'Right\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('109', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_SORT_ORDER', '20', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('110', 'Enable Facebook Module', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_STATUS', 'True', 'Do you want to allow products to be shared through Facebook?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('111', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_SORT_ORDER', '30', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('112', 'Enable Twitter Module', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_STATUS', 'True', 'Do you want to allow products to be shared through Twitter?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('113', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_SORT_ORDER', '40', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('114', 'Enable Pinterest Module', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_STATUS', 'True', 'Do you want to allow Pinterest Button?', '6', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('115', 'Layout Position', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_BUTTON_COUNT_POSITION', 'None', 'Horizontal or Vertical or None', '6', '2', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'Horizontal\', \'Vertical\', \'None\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('116', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('117', 'Country of Origin', 'SHIPPING_ORIGIN_COUNTRY', '223', 'Select the country of origin to be used in shipping quotes.', '7', '1', NULL, '2013-01-19 19:33:33', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('118', 'Postal Code', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.', '7', '2', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('119', 'Enter the Maximum Package Weight you will ship', 'SHIPPING_MAX_WEIGHT', '50', 'Carriers have a max weight limit for a single package. This is a common one for all.', '7', '3', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('120', 'Package Tare weight.', 'SHIPPING_BOX_WEIGHT', '3', 'What is the weight of typical packaging of small to medium packages?', '7', '4', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('121', 'Larger packages - percentage increase.', 'SHIPPING_BOX_PADDING', '10', 'For 10% enter 10', '7', '5', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('122', 'Display Product Image', 'PRODUCT_LIST_IMAGE', '1', 'Do you want to display the Product Image?', '8', '1', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('123', 'Display Product Manufacturer Name', 'PRODUCT_LIST_MANUFACTURER', '4', 'Do you want to display the Product Manufacturer Name?', '8', '2', '2013-01-19 21:12:30', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('124', 'Display Product Model', 'PRODUCT_LIST_MODEL', '5', 'Do you want to display the Product Model?', '8', '3', '2013-01-19 21:12:34', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('125', 'Display Product Name', 'PRODUCT_LIST_NAME', '2', 'Do you want to display the Product Name?', '8', '4', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('126', 'Display Product Price', 'PRODUCT_LIST_PRICE', '3', 'Do you want to display the Product Price', '8', '5', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('127', 'Display Product Quantity', 'PRODUCT_LIST_QUANTITY', '6', 'Do you want to display the Product Quantity?', '8', '6', '2013-01-19 21:12:42', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('128', 'Display Product Weight', 'PRODUCT_LIST_WEIGHT', '7', 'Do you want to display the Product Weight?', '8', '7', '2013-01-19 21:12:49', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('129', 'Display Buy Now column', 'PRODUCT_LIST_BUY_NOW', '8', 'Do you want to display the Buy Now column?', '8', '8', '2013-01-19 21:12:55', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('130', 'Display Category/Manufacturer Filter (0=disable; 1=enable)', 'PRODUCT_LIST_FILTER', '1', 'Do you want to display the Category/Manufacturer Filter?', '8', '9', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('131', 'Location of Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 'PREV_NEXT_BAR_LOCATION', '3', 'Sets the location of the Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', '8', '10', '2013-01-19 21:13:02', '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('132', 'Check stock level', 'STOCK_CHECK', 'true', 'Check to see if sufficent stock is available', '9', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('133', 'Subtract stock', 'STOCK_LIMITED', 'true', 'Subtract product in stock by product orders', '9', '2', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('134', 'Allow Checkout', 'STOCK_ALLOW_CHECKOUT', 'true', 'Allow customer to checkout even if there is insufficient stock', '9', '3', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('135', 'Mark product out of stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Display something on screen so customer can see which product has insufficient stock', '9', '4', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('136', 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', '9', '5', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('137', 'Store Page Parse Time', 'STORE_PAGE_PARSE_TIME', 'false', 'Store the time it takes to parse a page', '10', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('138', 'Log Destination', 'STORE_PAGE_PARSE_TIME_LOG', '/var/log/www/tep/page_parse_time.log', 'Directory and filename of the page parse time log', '10', '2', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('139', 'Log Date Format', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'The date format', '10', '3', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('140', 'Display The Page Parse Time', 'DISPLAY_PAGE_PARSE_TIME', 'true', 'Display the page parse time (store page parse time must be enabled)', '10', '4', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('141', 'Store Database Queries', 'STORE_DB_TRANSACTIONS', 'false', 'Store the database queries in the page parse time log', '10', '5', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('142', 'Use Cache', 'USE_CACHE', 'false', 'Use caching features', '11', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('143', 'Cache Directory', 'DIR_FS_CACHE', 'D:/xampp/htdocs/test/osc-chair/catalog/includes/work/', 'The directory where the cached files are saved', '11', '2', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('144', 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'sendmail', 'Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.', '12', '1', '2013-01-19 22:24:41', '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'sendmail\', \'smtp\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('145', 'E-Mail Linefeeds', 'EMAIL_LINEFEED', 'LF', 'Defines the character sequence used to separate mail headers.', '12', '2', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'LF\', \'CRLF\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('146', 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', 'false', 'Send e-mails in HTML format', '12', '3', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('147', 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Verify e-mail address through a DNS server', '12', '4', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('148', 'Send E-Mails', 'SEND_EMAILS', 'true', 'Send out e-mails', '12', '5', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('149', 'Enable download', 'DOWNLOAD_ENABLED', 'false', 'Enable the products download functions.', '13', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('150', 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', 'false', 'Use browser redirection for download. Disable on non-Unix systems.', '13', '2', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('151', 'Expiry delay (days)', 'DOWNLOAD_MAX_DAYS', '7', 'Set number of days before the download link expires. 0 means no limit.', '13', '3', NULL, '2013-01-19 19:33:33', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('152', 'Maximum number of downloads', 'DOWNLOAD_MAX_COUNT', '5', 'Set the maximum number of downloads. 0 means no download authorized.', '13', '4', NULL, '2013-01-19 19:33:33', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('153', 'Enable GZip Compression', 'GZIP_COMPRESSION', 'false', 'Enable HTTP GZip compression.', '14', '1', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('154', 'Compression Level', 'GZIP_LEVEL', '5', 'Use this compression level 0-9 (0 = minimum, 9 = maximum).', '14', '2', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('155', 'Session Directory', 'SESSION_WRITE_DIRECTORY', 'D:/xampp/htdocs/test/osc-chair/catalog/includes/work/', 'If sessions are file based, store them in this directory.', '15', '1', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('156', 'Force Cookie Use', 'SESSION_FORCE_COOKIE_USE', 'False', 'Force the use of sessions when cookies are only enabled.', '15', '2', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('157', 'Check SSL Session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', '15', '3', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('158', 'Check User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', '15', '4', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('159', 'Check IP Address', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', '15', '5', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('160', 'Prevent Spider Sessions', 'SESSION_BLOCK_SPIDERS', 'True', 'Prevent known spiders from starting a session.', '15', '6', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('161', 'Recreate Session', 'SESSION_RECREATE', 'True', 'Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).', '15', '7', NULL, '2013-01-19 19:33:33', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('162', 'Last Update Check Time', 'LAST_UPDATE_CHECK_TIME', '', 'Last time a check for new versions of osCommerce was run', '6', '0', NULL, '2013-01-19 19:33:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('163', 'Enable PayPal Express Checkout', 'MODULE_PAYMENT_PAYPAL_EXPRESS_STATUS', 'True', 'Do you want to accept PayPal Express Checkout payments?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('164', 'Seller Account', 'MODULE_PAYMENT_PAYPAL_EXPRESS_SELLER_ACCOUNT', 'budalsekolah@gmail.com', 'The email address of the seller account if no API credentials has been setup.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('165', 'API Username', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_USERNAME', '', 'The username to use for the PayPal API service', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('166', 'API Password', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_PASSWORD', '', 'The password to use for the PayPal API service', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('167', 'API Signature', 'MODULE_PAYMENT_PAYPAL_EXPRESS_API_SIGNATURE', '', 'The signature to use for the PayPal API service', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('168', 'Transaction Server', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_SERVER', 'Live', 'Use the live or testing (sandbox) gateway server to process transactions?', '6', '0', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Live\', \'Sandbox\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('169', 'Transaction Method', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTION_METHOD', 'Sale', 'The processing method to use for each transaction.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Authorization\', \'Sale\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('170', 'PayPal Account Optional', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ACCOUNT_OPTIONAL', 'False', 'This must also be enabled in your PayPal account, in Profile > Website Payment Preferences.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('171', 'PayPal Instant Update', 'MODULE_PAYMENT_PAYPAL_EXPRESS_INSTANT_UPDATE', 'True', 'Support PayPal shipping and tax calculations on the PayPal.com site during Express Checkout.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('172', 'PayPal Checkout Image', 'MODULE_PAYMENT_PAYPAL_EXPRESS_CHECKOUT_IMAGE', 'Static', 'Use static or dynamic Express Checkout image buttons. Dynamic images are used with PayPal campaigns.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Static\', \'Dynamic\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('173', 'Debug E-Mail Address', 'MODULE_PAYMENT_PAYPAL_EXPRESS_DEBUG_EMAIL', '', 'All parameters of an invalid transaction will be sent to this email address.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('174', 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2013-01-19 19:33:36', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('175', 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_EXPRESS_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('176', 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_EXPRESS_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2013-01-19 19:33:36', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('177', 'PayPal Transactions Order Status Level', 'MODULE_PAYMENT_PAYPAL_EXPRESS_TRANSACTIONS_ORDER_STATUS_ID', '4', 'Include PayPal transaction information in this order status level', '6', '0', NULL, '2013-01-19 19:33:36', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('178', 'cURL Program Location', 'MODULE_PAYMENT_PAYPAL_EXPRESS_CURL', '/usr/bin/curl', 'The location to the cURL program application.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('179', 'Installed Modules', 'MODULE_HEADER_TAGS_INSTALLED', 'ht_canonical.php;ht_manufacturer_title.php;ht_category_title.php;ht_product_title.php;ht_robot_noindex.php', 'List of header tag module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('180', 'Enable Category Title Module', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_STATUS', 'True', 'Do you want to allow category titles to be added to the page title?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('181', 'Sort Order', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('182', 'Enable Manufacturer Title Module', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_STATUS', 'True', 'Do you want to allow manufacturer titles to be added to the page title?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('183', 'Sort Order', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('184', 'Enable Product Title Module', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_STATUS', 'True', 'Do you want to allow product titles to be added to the page title?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('185', 'Sort Order', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('186', 'Enable Canonical Module', 'MODULE_HEADER_TAGS_CANONICAL_STATUS', 'True', 'Do you want to enable the Canonical module?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('187', 'Sort Order', 'MODULE_HEADER_TAGS_CANONICAL_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('188', 'Enable Robot NoIndex Module', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_STATUS', 'True', 'Do you want to enable the Robot NoIndex module?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('189', 'Pages', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_PAGES', 'account.php;account_edit.php;account_history.php;account_history_info.php;account_newsletters.php;account_notifications.php;account_password.php;address_book.php;address_book_process.php;checkout_confirmation.php;checkout_payment.php;checkout_payment_address.php;checkout_process.php;checkout_shipping.php;checkout_shipping_address.php;checkout_success.php;cookie_usage.php;create_account.php;create_account_success.php;login.php;logoff.php;password_forgotten.php;password_reset.php;product_reviews_write.php;shopping_cart.php;ssl_check.php;tell_a_friend.php', 'The pages to add the meta robot noindex tag to.', '6', '0', NULL, '2013-01-19 19:33:36', 'ht_robot_noindex_show_pages', 'ht_robot_noindex_edit_pages(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('190', 'Sort Order', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('191', 'Installed Modules', 'MODULE_ADMIN_DASHBOARD_INSTALLED', 'd_total_revenue.php;d_total_customers.php;d_orders.php;d_customers.php;d_admin_logins.php;d_security_checks.php;d_latest_news.php;d_latest_addons.php;d_version_check.php;d_reviews.php', 'List of Administration Tool Dashboard module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('192', 'Enable Administrator Logins Module', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_STATUS', 'True', 'Do you want to show the latest administrator logins on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('193', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('194', 'Enable Customers Module', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_STATUS', 'True', 'Do you want to show the newest customers on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('195', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('196', 'Enable Latest Add-Ons Module', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_STATUS', 'True', 'Do you want to show the latest osCommerce Add-Ons on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('197', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_SORT_ORDER', '800', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('198', 'Enable Latest News Module', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_STATUS', 'True', 'Do you want to show the latest osCommerce News on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('199', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('200', 'Enable Orders Module', 'MODULE_ADMIN_DASHBOARD_ORDERS_STATUS', 'True', 'Do you want to show the latest orders on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('201', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ORDERS_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('202', 'Enable Security Checks Module', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_STATUS', 'True', 'Do you want to run the security checks for this installation?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('203', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_SORT_ORDER', '600', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('204', 'Enable Total Customers Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_STATUS', 'True', 'Do you want to show the total customers chart on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('205', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('206', 'Enable Total Revenue Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_STATUS', 'True', 'Do you want to show the total revenue chart on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('207', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('208', 'Enable Version Check Module', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_STATUS', 'True', 'Do you want to show the version check results on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('209', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_SORT_ORDER', '900', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('210', 'Enable Latest Reviews Module', 'MODULE_ADMIN_DASHBOARD_REVIEWS_STATUS', 'True', 'Do you want to show the latest reviews on the dashboard?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('211', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_REVIEWS_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('212', 'Installed Modules', 'MODULE_BOXES_INSTALLED', 'bm_categories.php;bm_manufacturers.php;bm_search.php;bm_whats_new.php;bm_information.php;bm_shopping_cart.php;bm_manufacturer_info.php;bm_order_history.php;bm_best_sellers.php;bm_product_notifications.php;bm_product_social_bookmarks.php;bm_specials.php;bm_reviews.php;bm_languages.php;bm_currencies.php;bm_side_banners.php', 'List of box module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('213', 'Enable Best Sellers Module', 'MODULE_BOXES_BEST_SELLERS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('214', 'Content Placement', 'MODULE_BOXES_BEST_SELLERS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('215', 'Sort Order', 'MODULE_BOXES_BEST_SELLERS_SORT_ORDER', '5030', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('216', 'Enable Categories Module', 'MODULE_BOXES_CATEGORIES_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('217', 'Content Placement', 'MODULE_BOXES_CATEGORIES_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('218', 'Sort Order', 'MODULE_BOXES_CATEGORIES_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('219', 'Enable Currencies Module', 'MODULE_BOXES_CURRENCIES_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('220', 'Content Placement', 'MODULE_BOXES_CURRENCIES_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('221', 'Sort Order', 'MODULE_BOXES_CURRENCIES_SORT_ORDER', '5090', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('222', 'Enable Information Module', 'MODULE_BOXES_INFORMATION_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('223', 'Content Placement', 'MODULE_BOXES_INFORMATION_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('224', 'Sort Order', 'MODULE_BOXES_INFORMATION_SORT_ORDER', '1050', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('225', 'Enable Languages Module', 'MODULE_BOXES_LANGUAGES_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('226', 'Content Placement', 'MODULE_BOXES_LANGUAGES_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('227', 'Sort Order', 'MODULE_BOXES_LANGUAGES_SORT_ORDER', '5080', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('228', 'Enable Manufacturer Info Module', 'MODULE_BOXES_MANUFACTURER_INFO_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('229', 'Content Placement', 'MODULE_BOXES_MANUFACTURER_INFO_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('230', 'Sort Order', 'MODULE_BOXES_MANUFACTURER_INFO_SORT_ORDER', '5010', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('231', 'Enable Manufacturers Module', 'MODULE_BOXES_MANUFACTURERS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('232', 'Content Placement', 'MODULE_BOXES_MANUFACTURERS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('233', 'Sort Order', 'MODULE_BOXES_MANUFACTURERS_SORT_ORDER', '1020', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('234', 'Enable Order History Module', 'MODULE_BOXES_ORDER_HISTORY_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('235', 'Content Placement', 'MODULE_BOXES_ORDER_HISTORY_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('236', 'Sort Order', 'MODULE_BOXES_ORDER_HISTORY_SORT_ORDER', '5020', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('237', 'Enable Product Notifications Module', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('238', 'Content Placement', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('239', 'Sort Order', 'MODULE_BOXES_PRODUCT_NOTIFICATIONS_SORT_ORDER', '5040', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('240', 'Enable Product Social Bookmarks Module', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('241', 'Content Placement', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('242', 'Sort Order', 'MODULE_BOXES_PRODUCT_SOCIAL_BOOKMARKS_SORT_ORDER', '5050', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('243', 'Enable Reviews Module', 'MODULE_BOXES_REVIEWS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('244', 'Content Placement', 'MODULE_BOXES_REVIEWS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('245', 'Sort Order', 'MODULE_BOXES_REVIEWS_SORT_ORDER', '5070', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('246', 'Enable Search Module', 'MODULE_BOXES_SEARCH_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('247', 'Content Placement', 'MODULE_BOXES_SEARCH_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('248', 'Sort Order', 'MODULE_BOXES_SEARCH_SORT_ORDER', '1030', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('249', 'Enable Shopping Cart Module', 'MODULE_BOXES_SHOPPING_CART_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('250', 'Content Placement', 'MODULE_BOXES_SHOPPING_CART_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('251', 'Sort Order', 'MODULE_BOXES_SHOPPING_CART_SORT_ORDER', '5000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('252', 'Enable Specials Module', 'MODULE_BOXES_SPECIALS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('253', 'Content Placement', 'MODULE_BOXES_SPECIALS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('254', 'Sort Order', 'MODULE_BOXES_SPECIALS_SORT_ORDER', '5060', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('255', 'Enable What\'s New Module', 'MODULE_BOXES_WHATS_NEW_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('256', 'Content Placement', 'MODULE_BOXES_WHATS_NEW_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 19:33:36', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('257', 'Sort Order', 'MODULE_BOXES_WHATS_NEW_SORT_ORDER', '1040', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('258', 'Installed Template Block Groups', 'TEMPLATE_BLOCK_GROUPS', 'boxes;header_tags', 'This is automatically updated. No need to edit.', '6', '0', NULL, '2013-01-19 19:33:36', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('259', 'Enable Side Banners Module', 'MODULE_BOXES_SIDE_BANNERS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2013-01-19 20:45:27', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('260', 'Content Placement', 'MODULE_BOXES_SIDE_BANNERS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2013-01-19 20:45:27', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('261', 'Sort Order', 'MODULE_BOXES_SIDE_BANNERS_SORT_ORDER', '5100', 'Sort order of display. Lowest is displayed first.', '6', '5100', NULL, '2013-01-19 20:45:27', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('262', 'Maximum number Side banners', 'MODULE_BOXES_SIDE_BANNERS_MAX', '5', 'The maximum number side-banners to show', '6', '1', NULL, '2013-01-19 20:45:27', NULL, '0');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('263', 'Enable Item Shipping', 'MODULE_SHIPPING_ITEM_STATUS', 'True', 'Do you want to offer per item rate shipping?', '6', '0', NULL, '2013-01-19 21:14:08', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('264', 'Shipping Cost', 'MODULE_SHIPPING_ITEM_COST', '2.50', 'The shipping cost will be multiplied by the number of items in an order that uses this shipping method.', '6', '0', NULL, '2013-01-19 21:14:08', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('265', 'Handling Fee', 'MODULE_SHIPPING_ITEM_HANDLING', '0', 'Handling fee for this shipping method.', '6', '0', NULL, '2013-01-19 21:14:08', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('266', 'Tax Class', 'MODULE_SHIPPING_ITEM_TAX_CLASS', '1', 'Use the following tax class on the shipping fee.', '6', '0', NULL, '2013-01-19 21:14:08', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('267', 'Shipping Zone', 'MODULE_SHIPPING_ITEM_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', NULL, '2013-01-19 21:14:08', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('268', 'Sort Order', 'MODULE_SHIPPING_ITEM_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2013-01-19 21:14:08', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('269', 'Enable Table Method', 'MODULE_SHIPPING_TABLE_STATUS', 'True', 'Do you want to offer table rate shipping?', '6', '0', NULL, '2013-01-19 21:14:17', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('270', 'Shipping Table', 'MODULE_SHIPPING_TABLE_COST', '25:8.50,50:5.50,10000:0.00', 'The shipping cost is based on the total cost or weight of items. Example: 25:8.50,50:5.50,etc.. Up to 25 charge 8.50, from there to 50 charge 5.50, etc', '6', '0', NULL, '2013-01-19 21:14:17', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('271', 'Table Method', 'MODULE_SHIPPING_TABLE_MODE', 'weight', 'The shipping cost is based on the order total or the total weight of the items ordered.', '6', '0', NULL, '2013-01-19 21:14:17', NULL, 'tep_cfg_select_option(array(\'weight\', \'price\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('272', 'Handling Fee', 'MODULE_SHIPPING_TABLE_HANDLING', '0', 'Handling fee for this shipping method.', '6', '0', NULL, '2013-01-19 21:14:17', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('273', 'Tax Class', 'MODULE_SHIPPING_TABLE_TAX_CLASS', '1', 'Use the following tax class on the shipping fee.', '6', '0', NULL, '2013-01-19 21:14:17', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('274', 'Shipping Zone', 'MODULE_SHIPPING_TABLE_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', NULL, '2013-01-19 21:14:17', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('275', 'Sort Order', 'MODULE_SHIPPING_TABLE_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2013-01-19 21:14:17', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('276', 'Enable Zones Method', 'MODULE_SHIPPING_ZONES_STATUS', 'True', 'Do you want to offer zone rate shipping?', '6', '0', NULL, '2013-01-19 21:14:30', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('277', 'Tax Class', 'MODULE_SHIPPING_ZONES_TAX_CLASS', '1', 'Use the following tax class on the shipping fee.', '6', '0', NULL, '2013-01-19 21:14:30', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('278', 'Sort Order', 'MODULE_SHIPPING_ZONES_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2013-01-19 21:14:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('279', 'Zone 1 Countries', 'MODULE_SHIPPING_ZONES_COUNTRIES_1', 'US,CA', 'Comma separated list of two character ISO country codes that are part of Zone 1.', '6', '0', NULL, '2013-01-19 21:14:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('280', 'Zone 1 Shipping Table', 'MODULE_SHIPPING_ZONES_COST_1', '3:8.50,7:10.50,99:20.00', 'Shipping rates to Zone 1 destinations based on a group of maximum order weights. Example: 3:8.50,7:10.50,... Weights less than or equal to 3 would cost 8.50 for Zone 1 destinations.', '6', '0', NULL, '2013-01-19 21:14:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('281', 'Zone 1 Handling Fee', 'MODULE_SHIPPING_ZONES_HANDLING_1', '0', 'Handling Fee for this shipping zone', '6', '0', NULL, '2013-01-19 21:14:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('282', 'Enable Digg Module', 'MODULE_SOCIAL_BOOKMARKS_DIGG_STATUS', 'True', 'Do you want to allow products to be shared through Digg?', '6', '1', NULL, '2013-01-19 21:41:45', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('283', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_DIGG_SORT_ORDER', '60', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2013-01-19 21:41:45', NULL, NULL);
drop table if exists configuration_group;
create table configuration_group (
  configuration_group_id int(11) not null auto_increment,
  configuration_group_title varchar(64) not null ,
  configuration_group_description varchar(255) not null ,
  sort_order int(5) ,
  visible int(1) default '1' ,
  PRIMARY KEY (configuration_group_id)
);

insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('1', 'My Store', 'General information about my store', '1', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('2', 'Minimum Values', 'The minimum values for functions / data', '2', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('3', 'Maximum Values', 'The maximum values for functions / data', '3', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('4', 'Images', 'Image parameters', '4', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('5', 'Customer Details', 'Customer account configuration', '5', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('6', 'Module Options', 'Hidden from configuration', '6', '0');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('7', 'Shipping/Packaging', 'Shipping options available at my store', '7', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('8', 'Product Listing', 'Product Listing    configuration options', '8', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('9', 'Stock', 'Stock configuration options', '9', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('10', 'Logging', 'Logging configuration options', '10', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('11', 'Cache', 'Caching configuration options', '11', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('12', 'E-Mail Options', 'General setting for E-Mail transport and HTML E-Mails', '12', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('13', 'Download', 'Downloadable products options', '13', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('14', 'GZip Compression', 'GZip compression options', '14', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('15', 'Sessions', 'Session options', '15', '1');
drop table if exists counter;
create table counter (
  startdate char(8) ,
  counter int(12) 
);

insert into counter (startdate, counter) values ('20130119', '2072');
drop table if exists counter_history;
create table counter_history (
  month char(8) ,
  counter int(12) 
);

drop table if exists countries;
create table countries (
  countries_id int(11) not null auto_increment,
  countries_name varchar(255) not null ,
  countries_iso_code_2 char(2) not null ,
  countries_iso_code_3 char(3) not null ,
  address_format_id int(11) not null ,
  PRIMARY KEY (countries_id),
  KEY IDX_COUNTRIES_NAME (countries_name)
);

insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('1', 'Afghanistan', 'AF', 'AFG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('2', 'Albania', 'AL', 'ALB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('3', 'Algeria', 'DZ', 'DZA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('4', 'American Samoa', 'AS', 'ASM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('5', 'Andorra', 'AD', 'AND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('6', 'Angola', 'AO', 'AGO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('7', 'Anguilla', 'AI', 'AIA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('8', 'Antarctica', 'AQ', 'ATA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('9', 'Antigua and Barbuda', 'AG', 'ATG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('10', 'Argentina', 'AR', 'ARG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('11', 'Armenia', 'AM', 'ARM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('12', 'Aruba', 'AW', 'ABW', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('13', 'Australia', 'AU', 'AUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('14', 'Austria', 'AT', 'AUT', '5');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('15', 'Azerbaijan', 'AZ', 'AZE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('16', 'Bahamas', 'BS', 'BHS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('17', 'Bahrain', 'BH', 'BHR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('18', 'Bangladesh', 'BD', 'BGD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('19', 'Barbados', 'BB', 'BRB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('20', 'Belarus', 'BY', 'BLR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('21', 'Belgium', 'BE', 'BEL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('22', 'Belize', 'BZ', 'BLZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('23', 'Benin', 'BJ', 'BEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('24', 'Bermuda', 'BM', 'BMU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('25', 'Bhutan', 'BT', 'BTN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('26', 'Bolivia', 'BO', 'BOL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('27', 'Bosnia and Herzegowina', 'BA', 'BIH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('28', 'Botswana', 'BW', 'BWA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('29', 'Bouvet Island', 'BV', 'BVT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('30', 'Brazil', 'BR', 'BRA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('31', 'British Indian Ocean Territory', 'IO', 'IOT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('32', 'Brunei Darussalam', 'BN', 'BRN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('33', 'Bulgaria', 'BG', 'BGR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('34', 'Burkina Faso', 'BF', 'BFA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('35', 'Burundi', 'BI', 'BDI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('36', 'Cambodia', 'KH', 'KHM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('37', 'Cameroon', 'CM', 'CMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('38', 'Canada', 'CA', 'CAN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('39', 'Cape Verde', 'CV', 'CPV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('40', 'Cayman Islands', 'KY', 'CYM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('41', 'Central African Republic', 'CF', 'CAF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('42', 'Chad', 'TD', 'TCD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('43', 'Chile', 'CL', 'CHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('44', 'China', 'CN', 'CHN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('45', 'Christmas Island', 'CX', 'CXR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('47', 'Colombia', 'CO', 'COL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('48', 'Comoros', 'KM', 'COM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('49', 'Congo', 'CG', 'COG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('50', 'Cook Islands', 'CK', 'COK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('51', 'Costa Rica', 'CR', 'CRI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('52', 'Cote D\'Ivoire', 'CI', 'CIV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('53', 'Croatia', 'HR', 'HRV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('54', 'Cuba', 'CU', 'CUB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('55', 'Cyprus', 'CY', 'CYP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('56', 'Czech Republic', 'CZ', 'CZE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('57', 'Denmark', 'DK', 'DNK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('58', 'Djibouti', 'DJ', 'DJI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('59', 'Dominica', 'DM', 'DMA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('60', 'Dominican Republic', 'DO', 'DOM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('61', 'East Timor', 'TP', 'TMP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('62', 'Ecuador', 'EC', 'ECU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('63', 'Egypt', 'EG', 'EGY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('64', 'El Salvador', 'SV', 'SLV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('65', 'Equatorial Guinea', 'GQ', 'GNQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('66', 'Eritrea', 'ER', 'ERI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('67', 'Estonia', 'EE', 'EST', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('68', 'Ethiopia', 'ET', 'ETH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('70', 'Faroe Islands', 'FO', 'FRO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('71', 'Fiji', 'FJ', 'FJI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('72', 'Finland', 'FI', 'FIN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('73', 'France', 'FR', 'FRA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('74', 'France, Metropolitan', 'FX', 'FXX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('75', 'French Guiana', 'GF', 'GUF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('76', 'French Polynesia', 'PF', 'PYF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('77', 'French Southern Territories', 'TF', 'ATF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('78', 'Gabon', 'GA', 'GAB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('79', 'Gambia', 'GM', 'GMB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('80', 'Georgia', 'GE', 'GEO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('81', 'Germany', 'DE', 'DEU', '5');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('82', 'Ghana', 'GH', 'GHA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('83', 'Gibraltar', 'GI', 'GIB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('84', 'Greece', 'GR', 'GRC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('85', 'Greenland', 'GL', 'GRL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('86', 'Grenada', 'GD', 'GRD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('87', 'Guadeloupe', 'GP', 'GLP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('88', 'Guam', 'GU', 'GUM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('89', 'Guatemala', 'GT', 'GTM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('90', 'Guinea', 'GN', 'GIN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('91', 'Guinea-bissau', 'GW', 'GNB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('92', 'Guyana', 'GY', 'GUY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('93', 'Haiti', 'HT', 'HTI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('95', 'Honduras', 'HN', 'HND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('96', 'Hong Kong', 'HK', 'HKG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('97', 'Hungary', 'HU', 'HUN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('98', 'Iceland', 'IS', 'ISL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('99', 'India', 'IN', 'IND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('100', 'Indonesia', 'ID', 'IDN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('102', 'Iraq', 'IQ', 'IRQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('103', 'Ireland', 'IE', 'IRL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('104', 'Israel', 'IL', 'ISR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('105', 'Italy', 'IT', 'ITA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('106', 'Jamaica', 'JM', 'JAM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('107', 'Japan', 'JP', 'JPN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('108', 'Jordan', 'JO', 'JOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('109', 'Kazakhstan', 'KZ', 'KAZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('110', 'Kenya', 'KE', 'KEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('111', 'Kiribati', 'KI', 'KIR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('112', 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('113', 'Korea, Republic of', 'KR', 'KOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('114', 'Kuwait', 'KW', 'KWT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('115', 'Kyrgyzstan', 'KG', 'KGZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('117', 'Latvia', 'LV', 'LVA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('118', 'Lebanon', 'LB', 'LBN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('119', 'Lesotho', 'LS', 'LSO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('120', 'Liberia', 'LR', 'LBR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('122', 'Liechtenstein', 'LI', 'LIE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('123', 'Lithuania', 'LT', 'LTU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('124', 'Luxembourg', 'LU', 'LUX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('125', 'Macau', 'MO', 'MAC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('126', 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('127', 'Madagascar', 'MG', 'MDG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('128', 'Malawi', 'MW', 'MWI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('129', 'Malaysia', 'MY', 'MYS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('130', 'Maldives', 'MV', 'MDV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('131', 'Mali', 'ML', 'MLI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('132', 'Malta', 'MT', 'MLT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('133', 'Marshall Islands', 'MH', 'MHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('134', 'Martinique', 'MQ', 'MTQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('135', 'Mauritania', 'MR', 'MRT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('136', 'Mauritius', 'MU', 'MUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('137', 'Mayotte', 'YT', 'MYT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('138', 'Mexico', 'MX', 'MEX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('139', 'Micronesia, Federated States of', 'FM', 'FSM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('140', 'Moldova, Republic of', 'MD', 'MDA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('141', 'Monaco', 'MC', 'MCO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('142', 'Mongolia', 'MN', 'MNG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('143', 'Montserrat', 'MS', 'MSR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('144', 'Morocco', 'MA', 'MAR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('145', 'Mozambique', 'MZ', 'MOZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('146', 'Myanmar', 'MM', 'MMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('147', 'Namibia', 'NA', 'NAM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('148', 'Nauru', 'NR', 'NRU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('149', 'Nepal', 'NP', 'NPL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('150', 'Netherlands', 'NL', 'NLD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('151', 'Netherlands Antilles', 'AN', 'ANT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('152', 'New Caledonia', 'NC', 'NCL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('153', 'New Zealand', 'NZ', 'NZL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('154', 'Nicaragua', 'NI', 'NIC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('155', 'Niger', 'NE', 'NER', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('156', 'Nigeria', 'NG', 'NGA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('157', 'Niue', 'NU', 'NIU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('158', 'Norfolk Island', 'NF', 'NFK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('159', 'Northern Mariana Islands', 'MP', 'MNP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('160', 'Norway', 'NO', 'NOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('161', 'Oman', 'OM', 'OMN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('162', 'Pakistan', 'PK', 'PAK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('163', 'Palau', 'PW', 'PLW', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('164', 'Panama', 'PA', 'PAN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('165', 'Papua New Guinea', 'PG', 'PNG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('166', 'Paraguay', 'PY', 'PRY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('167', 'Peru', 'PE', 'PER', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('168', 'Philippines', 'PH', 'PHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('169', 'Pitcairn', 'PN', 'PCN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('170', 'Poland', 'PL', 'POL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('171', 'Portugal', 'PT', 'PRT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('172', 'Puerto Rico', 'PR', 'PRI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('173', 'Qatar', 'QA', 'QAT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('174', 'Reunion', 'RE', 'REU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('175', 'Romania', 'RO', 'ROM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('176', 'Russian Federation', 'RU', 'RUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('177', 'Rwanda', 'RW', 'RWA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('179', 'Saint Lucia', 'LC', 'LCA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('181', 'Samoa', 'WS', 'WSM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('182', 'San Marino', 'SM', 'SMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('183', 'Sao Tome and Principe', 'ST', 'STP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('184', 'Saudi Arabia', 'SA', 'SAU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('185', 'Senegal', 'SN', 'SEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('186', 'Seychelles', 'SC', 'SYC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('187', 'Sierra Leone', 'SL', 'SLE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('188', 'Singapore', 'SG', 'SGP', '4');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('189', 'Slovakia (Slovak Republic)', 'SK', 'SVK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('190', 'Slovenia', 'SI', 'SVN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('191', 'Solomon Islands', 'SB', 'SLB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('192', 'Somalia', 'SO', 'SOM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('193', 'South Africa', 'ZA', 'ZAF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('194', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('195', 'Spain', 'ES', 'ESP', '3');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('196', 'Sri Lanka', 'LK', 'LKA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('197', 'St. Helena', 'SH', 'SHN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('199', 'Sudan', 'SD', 'SDN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('200', 'Suriname', 'SR', 'SUR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('202', 'Swaziland', 'SZ', 'SWZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('203', 'Sweden', 'SE', 'SWE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('204', 'Switzerland', 'CH', 'CHE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('205', 'Syrian Arab Republic', 'SY', 'SYR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('206', 'Taiwan', 'TW', 'TWN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('207', 'Tajikistan', 'TJ', 'TJK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('209', 'Thailand', 'TH', 'THA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('210', 'Togo', 'TG', 'TGO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('211', 'Tokelau', 'TK', 'TKL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('212', 'Tonga', 'TO', 'TON', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('213', 'Trinidad and Tobago', 'TT', 'TTO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('214', 'Tunisia', 'TN', 'TUN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('215', 'Turkey', 'TR', 'TUR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('216', 'Turkmenistan', 'TM', 'TKM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('217', 'Turks and Caicos Islands', 'TC', 'TCA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('218', 'Tuvalu', 'TV', 'TUV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('219', 'Uganda', 'UG', 'UGA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('220', 'Ukraine', 'UA', 'UKR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('221', 'United Arab Emirates', 'AE', 'ARE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('222', 'United Kingdom', 'GB', 'GBR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('223', 'United States', 'US', 'USA', '2');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('225', 'Uruguay', 'UY', 'URY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('226', 'Uzbekistan', 'UZ', 'UZB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('227', 'Vanuatu', 'VU', 'VUT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('229', 'Venezuela', 'VE', 'VEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('230', 'Viet Nam', 'VN', 'VNM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('231', 'Virgin Islands (British)', 'VG', 'VGB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('234', 'Western Sahara', 'EH', 'ESH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('235', 'Yemen', 'YE', 'YEM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('236', 'Yugoslavia', 'YU', 'YUG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('237', 'Zaire', 'ZR', 'ZAR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('238', 'Zambia', 'ZM', 'ZMB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('239', 'Zimbabwe', 'ZW', 'ZWE', '1');
drop table if exists currencies;
create table currencies (
  currencies_id int(11) not null auto_increment,
  title varchar(32) not null ,
  code char(3) not null ,
  symbol_left varchar(12) ,
  symbol_right varchar(12) ,
  decimal_point char(1) ,
  thousands_point char(1) ,
  decimal_places char(1) ,
  value float(13,8) ,
  last_updated datetime ,
  PRIMARY KEY (currencies_id),
  KEY idx_currencies_code (code)
);

insert into currencies (currencies_id, title, code, symbol_left, symbol_right, decimal_point, thousands_point, decimal_places, value, last_updated) values ('1', 'U.S. Dollar', 'USD', '$', '', '.', ',', '2', '1.00000000', '2013-01-19 19:33:34');
insert into currencies (currencies_id, title, code, symbol_left, symbol_right, decimal_point, thousands_point, decimal_places, value, last_updated) values ('2', 'Euro', 'EUR', '', '€', '.', ',', '2', '1.00000000', '2013-01-19 19:33:34');
drop table if exists customers;
create table customers (
  customers_id int(11) not null auto_increment,
  customers_gender char(1) ,
  customers_firstname varchar(255) not null ,
  customers_lastname varchar(255) not null ,
  customers_dob datetime default '0000-00-00 00:00:00' not null ,
  customers_email_address varchar(255) not null ,
  customers_default_address_id int(11) ,
  customers_telephone varchar(255) not null ,
  customers_fax varchar(255) ,
  customers_password varchar(60) not null ,
  customers_newsletter char(1) ,
  PRIMARY KEY (customers_id),
  KEY idx_customers_email_address (customers_email_address)
);

insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter) values ('2', 'm', 'dian', 'santoso', '2013-02-01 00:00:00', 'budal@gmail.com', '2', '6776763', '', '$P$DPnJCpby0nVVRufUy/RuyJChsxuUu51', '0');
drop table if exists customers_basket;
create table customers_basket (
  customers_basket_id int(11) not null auto_increment,
  customers_id int(11) not null ,
  products_id tinytext not null ,
  customers_basket_quantity int(2) not null ,
  final_price decimal(15,4) ,
  customers_basket_date_added char(8) ,
  PRIMARY KEY (customers_basket_id),
  KEY idx_customers_basket_customers_id (customers_id)
);

insert into customers_basket (customers_basket_id, customers_id, products_id, customers_basket_quantity, final_price, customers_basket_date_added) values ('5', '2', '32', '1', NULL, '20130214');
drop table if exists customers_basket_attributes;
create table customers_basket_attributes (
  customers_basket_attributes_id int(11) not null auto_increment,
  customers_id int(11) not null ,
  products_id tinytext not null ,
  products_options_id int(11) not null ,
  products_options_value_id int(11) not null ,
  PRIMARY KEY (customers_basket_attributes_id),
  KEY idx_customers_basket_att_customers_id (customers_id)
);

drop table if exists customers_info;
create table customers_info (
  customers_info_id int(11) not null ,
  customers_info_date_of_last_logon datetime ,
  customers_info_number_of_logons int(5) ,
  customers_info_date_account_created datetime ,
  customers_info_date_account_last_modified datetime ,
  global_product_notifications int(1) default '0' ,
  password_reset_key char(40) ,
  password_reset_date datetime ,
  PRIMARY KEY (customers_info_id)
);

insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications, password_reset_key, password_reset_date) values ('2', '2013-02-15 09:15:31', '14', '2013-02-01 09:24:26', '2013-02-01 21:49:39', '0', NULL, NULL);
drop table if exists geo_zones;
create table geo_zones (
  geo_zone_id int(11) not null auto_increment,
  geo_zone_name varchar(32) not null ,
  geo_zone_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime not null ,
  PRIMARY KEY (geo_zone_id)
);

insert into geo_zones (geo_zone_id, geo_zone_name, geo_zone_description, last_modified, date_added) values ('1', 'Florida', 'Florida local sales tax zone', NULL, '2013-01-19 19:33:35');
drop table if exists languages;
create table languages (
  languages_id int(11) not null auto_increment,
  name varchar(32) not null ,
  code char(2) not null ,
  image varchar(64) ,
  directory varchar(32) ,
  sort_order int(3) ,
  PRIMARY KEY (languages_id),
  KEY IDX_LANGUAGES_NAME (name)
);

insert into languages (languages_id, name, code, image, directory, sort_order) values ('1', 'English', 'en', 'gb.png', 'english', '0');
insert into languages (languages_id, name, code, image, directory, sort_order) values ('2', 'French', 'fr', 'fr.png', 'french', '0');
insert into languages (languages_id, name, code, image, directory, sort_order) values ('3', 'Indonesian', 'id', 'id.png', 'indonesian', '0');
drop table if exists manufacturers;
create table manufacturers (
  manufacturers_id int(11) not null auto_increment,
  manufacturers_name varchar(32) not null ,
  manufacturers_image varchar(64) ,
  date_added datetime ,
  last_modified datetime ,
  PRIMARY KEY (manufacturers_id),
  KEY IDX_MANUFACTURERS_NAME (manufacturers_name)
);

insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('1', 'Matrox', 'manufacturer_matrox.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('2', 'Microsoft', 'manufacturer_microsoft.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('3', 'Warner', 'manufacturer_warner.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('4', 'Fox', 'manufacturer_fox.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('5', 'Logitech', 'manufacturer_logitech.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('6', 'Canon', 'manufacturer_canon.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('7', 'Sierra', 'manufacturer_sierra.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('8', 'GT Interactive', 'manufacturer_gt_interactive.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('9', 'Hewlett Packard', 'manufacturer_hewlett_packard.gif', '2013-01-19 19:33:34', NULL);
insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('10', 'Samsung', 'manufacturer_samsung.png', '2013-01-19 19:33:34', NULL);
drop table if exists manufacturers_info;
create table manufacturers_info (
  manufacturers_id int(11) not null ,
  languages_id int(11) not null ,
  manufacturers_url varchar(255) not null ,
  url_clicked int(5) default '0' not null ,
  date_last_click datetime ,
  PRIMARY KEY (manufacturers_id, languages_id)
);

insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('1', '1', 'http://www.matrox.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('1', '2', 'http://www.matrox.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('1', '3', 'http://www.matrox.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('2', '1', 'http://www.microsoft.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('2', '2', 'http://www.microsoft.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('2', '3', 'http://www.microsoft.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('3', '1', 'http://www.warner.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('3', '2', 'http://www.warner.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('3', '3', 'http://www.warner.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('4', '1', 'http://www.fox.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('4', '2', 'http://www.fox.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('4', '3', 'http://www.fox.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('5', '1', 'http://www.logitech.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('5', '2', 'http://www.logitech.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('5', '3', 'http://www.logitech.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('6', '1', 'http://www.canon.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('6', '2', 'http://www.canon.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('6', '3', 'http://www.canon.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('7', '1', 'http://www.sierra.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('7', '2', 'http://www.sierra.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('7', '3', 'http://www.sierra.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('8', '1', 'http://www.infogrames.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('8', '2', 'http://www.infogrames.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('8', '3', 'http://www.infogrames.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('9', '1', 'http://www.hewlettpackard.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('9', '2', 'http://www.hewlettpackard.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('9', '3', 'http://www.hewlettpackard.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('10', '1', 'http://www.samsung.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('10', '2', 'http://www.samsung.com', '0', NULL);
insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) values ('10', '3', 'http://www.samsung.com', '0', NULL);
drop table if exists newsletters;
create table newsletters (
  newsletters_id int(11) not null auto_increment,
  title varchar(255) not null ,
  content text not null ,
  module varchar(255) not null ,
  date_added datetime not null ,
  date_sent datetime ,
  status int(1) ,
  locked int(1) default '0' ,
  PRIMARY KEY (newsletters_id)
);

drop table if exists orders;
create table orders (
  orders_id int(11) not null auto_increment,
  customers_id int(11) not null ,
  customers_name varchar(255) not null ,
  customers_company varchar(255) ,
  customers_street_address varchar(255) not null ,
  customers_suburb varchar(255) ,
  customers_city varchar(255) not null ,
  customers_postcode varchar(255) not null ,
  customers_state varchar(255) ,
  customers_country varchar(255) not null ,
  customers_telephone varchar(255) not null ,
  customers_email_address varchar(255) not null ,
  customers_address_format_id int(5) not null ,
  delivery_name varchar(255) not null ,
  delivery_company varchar(255) ,
  delivery_street_address varchar(255) not null ,
  delivery_suburb varchar(255) ,
  delivery_city varchar(255) not null ,
  delivery_postcode varchar(255) not null ,
  delivery_state varchar(255) ,
  delivery_country varchar(255) not null ,
  delivery_address_format_id int(5) not null ,
  billing_name varchar(255) not null ,
  billing_company varchar(255) ,
  billing_street_address varchar(255) not null ,
  billing_suburb varchar(255) ,
  billing_city varchar(255) not null ,
  billing_postcode varchar(255) not null ,
  billing_state varchar(255) ,
  billing_country varchar(255) not null ,
  billing_address_format_id int(5) not null ,
  payment_method varchar(255) not null ,
  cc_type varchar(20) ,
  cc_owner varchar(255) ,
  cc_number varchar(32) ,
  cc_expires varchar(4) ,
  last_modified datetime ,
  date_purchased datetime ,
  orders_status int(5) not null ,
  orders_date_finished datetime ,
  currency char(3) ,
  currency_value decimal(14,6) ,
  PRIMARY KEY (orders_id),
  KEY idx_orders_customers_id (customers_id)
);

insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('3', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '6776763', 'budal@gmail.com', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '2', 'Cash on Delivery', '', '', '', '', NULL, '2013-02-01 21:20:07', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('4', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '6776763', 'budal@gmail.com', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '2', 'Cash on Delivery', '', '', '', '', NULL, '2013-02-07 09:38:56', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('5', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '6776763', 'budal@gmail.com', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '2', 'dian santoso', 'red', 'florida', '', 'florida', '34343', 'Florida', 'United States', '2', 'Cash on Delivery', '', '', '', '', NULL, '2013-02-15 08:39:56', '1', NULL, 'USD', '1.000000');
drop table if exists orders_products;
create table orders_products (
  orders_products_id int(11) not null auto_increment,
  orders_id int(11) not null ,
  products_id int(11) not null ,
  products_model varchar(12) ,
  products_name varchar(64) not null ,
  products_price decimal(15,4) not null ,
  final_price decimal(15,4) not null ,
  products_tax decimal(7,4) not null ,
  products_quantity int(2) not null ,
  PRIMARY KEY (orders_products_id),
  KEY idx_orders_products_orders_id (orders_id),
  KEY idx_orders_products_products_id (products_id)
);

insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('4', '3', '36', 'PHCP', 'White Futuristic Chair', '55.0000', '55.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('5', '3', '37', 'PSC', 'Modern Woodern Chair', '42.0000', '42.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('6', '3', '31', 'FFW', 'Elegant Wooden Simple Chair', '35.0000', '35.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('7', '3', '34', 'GEASF1', 'Clean White Modern Chair', '50.0000', '50.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('8', '3', '35', 'GWATSA', 'Wood Sleek Chair', '31.0000', '31.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('9', '3', '29', 'BR-D-M', 'Classic Wooden Arm Chair', '40.0000', '40.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('10', '4', '29', 'BR-D-M', 'Classic Wooden Arm Chair', '40.0000', '40.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('11', '5', '32', 'FMW', 'Clean Blue Modern Jacket', '55.0000', '55.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('12', '5', '35', 'GWATSA', 'Wood Sleek Jacket', '31.0000', '31.0000', '7.0000', '1');
drop table if exists orders_products_attributes;
create table orders_products_attributes (
  orders_products_attributes_id int(11) not null auto_increment,
  orders_id int(11) not null ,
  orders_products_id int(11) not null ,
  products_options varchar(32) not null ,
  products_options_values varchar(32) not null ,
  options_values_price decimal(15,4) not null ,
  price_prefix char(1) not null ,
  PRIMARY KEY (orders_products_attributes_id),
  KEY idx_orders_products_att_orders_id (orders_id)
);

drop table if exists orders_products_download;
create table orders_products_download (
  orders_products_download_id int(11) not null auto_increment,
  orders_id int(11) default '0' not null ,
  orders_products_id int(11) default '0' not null ,
  orders_products_filename varchar(255) not null ,
  download_maxdays int(2) default '0' not null ,
  download_count int(2) default '0' not null ,
  PRIMARY KEY (orders_products_download_id),
  KEY idx_orders_products_download_orders_id (orders_id)
);

drop table if exists orders_status;
create table orders_status (
  orders_status_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  orders_status_name varchar(32) not null ,
  public_flag int(11) default '1' ,
  downloads_flag int(11) default '0' ,
  PRIMARY KEY (orders_status_id, language_id),
  KEY idx_orders_status_name (orders_status_name)
);

insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('1', '1', 'Pending', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('1', '2', 'Pending', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('1', '3', 'Pending', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('2', '1', 'Processing', '1', '1');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('2', '2', 'Processing', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('2', '3', 'Processing', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('3', '1', 'Delivered', '1', '1');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('3', '2', 'Delivered', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('3', '3', 'Delivered', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('4', '1', 'PayPal [Transactions]', '0', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('4', '2', 'PayPal [Transactions]', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('4', '3', 'PayPal [Transactions]', '1', '0');
drop table if exists orders_status_history;
create table orders_status_history (
  orders_status_history_id int(11) not null auto_increment,
  orders_id int(11) not null ,
  orders_status_id int(5) not null ,
  date_added datetime not null ,
  customer_notified int(1) default '0' ,
  comments text ,
  PRIMARY KEY (orders_status_history_id),
  KEY idx_orders_status_history_orders_id (orders_id)
);

insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('3', '3', '1', '2013-02-01 21:20:08', '1', 'cxs asadad dasda dad');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('4', '4', '1', '2013-02-07 09:38:56', '1', 'gh gh h hghgh');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('5', '5', '1', '2013-02-15 08:39:56', '1', '');
drop table if exists orders_total;
create table orders_total (
  orders_total_id int(10) unsigned not null auto_increment,
  orders_id int(11) not null ,
  title varchar(255) not null ,
  text varchar(255) not null ,
  value decimal(15,4) not null ,
  class varchar(32) not null ,
  sort_order int(11) not null ,
  PRIMARY KEY (orders_total_id),
  KEY idx_orders_total_orders_id (orders_id)
);

insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('9', '3', 'Sub-Total:', '$253.00', '253.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('10', '3', 'FL TAX 7.0%:', '$17.71', '17.7100', 'ot_tax', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('11', '3', 'Flat Rate (Best Way):', '$5.00', '5.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('12', '3', 'Total:', '<strong>$275.71</strong>', '275.7100', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('13', '4', 'Sub-Total:', '$40.00', '40.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('14', '4', 'FL TAX 7.0%:', '$2.80', '2.8000', 'ot_tax', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('15', '4', 'Per Item (Best Way):', '$2.50', '2.5000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('16', '4', 'Total:', '<strong>$45.48</strong>', '45.4750', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('17', '5', 'Sub-Total:', '$92.02', '92.0200', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('18', '5', 'FL TAX 7.0%:', '$6.02', '6.0200', 'ot_tax', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('19', '5', 'Flat Rate (Best Way):', '$5.00', '5.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('20', '5', 'Total:', '<strong>$97.02</strong>', '97.0200', 'ot_total', '4');
drop table if exists products;
create table products (
  products_id int(11) not null auto_increment,
  products_quantity int(4) not null ,
  products_model varchar(12) ,
  products_image varchar(64) ,
  products_price decimal(15,4) not null ,
  products_date_added datetime not null ,
  products_last_modified datetime ,
  products_date_available datetime ,
  products_weight decimal(5,2) not null ,
  products_status tinyint(1) not null ,
  products_tax_class_id int(11) not null ,
  manufacturers_id int(11) ,
  products_ordered int(11) default '0' not null ,
  PRIMARY KEY (products_id),
  KEY idx_products_model (products_model),
  KEY idx_products_date_added (products_date_added)
);

insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('29', '43', 'BR-D-M', 'image-1.jpg', '45.0000', '2013-01-19 21:24:06', '2013-02-15 06:47:09', NULL, '2.00', '1', '1', '10', '2');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('30', '34', 'BR-W-P', 'image-2.jpg', '35.0000', '2013-01-19 21:25:16', '2013-02-15 06:52:49', NULL, '2.00', '1', '1', '10', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('31', '54', 'FFW', 'image-3.jpg', '45.0000', '2013-01-19 21:27:57', '2013-02-15 06:48:40', NULL, '3.00', '1', '1', '10', '1');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('32', '32', 'FMW', 'image-2.jpg', '55.0000', '2013-01-19 21:29:02', '2013-02-15 06:48:05', NULL, '3.00', '1', '1', '10', '1');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('33', '55', 'FS', 'image-4.jpg', '35.0000', '2013-01-19 21:30:08', '2013-02-15 06:49:23', NULL, '2.00', '1', '1', '10', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('34', '64', 'GEASF1', 'image-2.jpg', '55.0000', '2013-01-19 21:32:54', '2013-02-15 06:51:55', NULL, '2.00', '1', '1', '10', '1');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('35', '53', 'GWATSA', 'image-1.jpg', '35.0000', '2013-01-19 21:33:44', '2013-02-15 06:52:20', '2013-02-28 00:00:00', '3.00', '1', '1', '10', '2');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('36', '54', 'PHCP', 'image-2.jpg', '55.0000', '2013-01-19 21:35:43', '2013-02-15 06:53:42', '2013-02-28 00:00:00', '2.00', '1', '1', '10', '1');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered) values ('37', '43', 'PSC', 'image-3.jpg', '45.0000', '2013-01-19 21:36:32', '2013-02-15 06:53:16', NULL, '3.00', '1', '1', '10', '1');
drop table if exists products_attributes;
create table products_attributes (
  products_attributes_id int(11) not null auto_increment,
  products_id int(11) not null ,
  options_id int(11) not null ,
  options_values_id int(11) not null ,
  options_values_price decimal(15,4) not null ,
  price_prefix char(1) not null ,
  PRIMARY KEY (products_attributes_id),
  KEY idx_products_attributes_products_id (products_id)
);

drop table if exists products_attributes_download;
create table products_attributes_download (
  products_attributes_id int(11) not null ,
  products_attributes_filename varchar(255) not null ,
  products_attributes_maxdays int(2) default '0' ,
  products_attributes_maxcount int(2) default '0' ,
  PRIMARY KEY (products_attributes_id)
);

insert into products_attributes_download (products_attributes_id, products_attributes_filename, products_attributes_maxdays, products_attributes_maxcount) values ('26', 'unreal.zip', '7', '3');
drop table if exists products_description;
create table products_description (
  products_id int(11) not null auto_increment,
  language_id int(11) default '1' not null ,
  products_name varchar(64) not null ,
  products_description text ,
  products_url varchar(255) ,
  products_viewed int(5) default '0' ,
  PRIMARY KEY (products_id, language_id),
  KEY products_name (products_name)
);

insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('29', '1', 'Classic Jacket', 'Classic Jacket', 'classic.com', '8');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('29', '2', 'Classic Jacket', 'Classic Jacket', 'classic.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('29', '3', 'Classic Jacket', 'Classic Jacket', 'classic.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('30', '1', 'Parabolica White Jacket', 'Parabolica White Jacket', 'modern.com', '9');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('30', '2', 'Parabolica White Jacket', 'Parabolica White Jacket', 'modern.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('30', '3', 'Parabolica White Jacket', 'Parabolica White Jacket', 'modern.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('31', '1', 'Elegant Jacket', 'Elegant Jacket', 'elegant.com', '14');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('31', '2', 'Elegant Jacket', 'Elegant Jacket', 'elegant.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('31', '3', 'Elegant Jacket', 'Elegant Jacket', 'elegant.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('32', '1', 'Clean Blue Modern Jacket', 'Clean Blue Modern Jacket', 'modern.com', '14');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('32', '2', 'Clean Blue Modern Jacket', 'Clean Blue Modern Jacket', 'modern.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('32', '3', 'Clean Blue Modern Jacket', 'Clean Blue Modern Jacket', 'modern.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('33', '1', 'Strong Jacket', 'Strong Jacket', 'classic.com', '2');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('33', '2', 'Strong Jacket', 'Strong Jacket', 'classic.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('33', '3', 'Strong Jacket', 'Strong Jacket', 'classic.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('34', '1', 'Clean White Modern Jacket', 'Clean White Modern Jacket', 'modern.com', '2');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('34', '2', 'Clean White Modern Jacket', 'Clean White Modern Jacket', 'modern.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('34', '3', 'Clean White Modern Jacket', 'Clean White Modern Jacket', 'modern.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('35', '1', 'Wood Sleek Jacket', 'Wood Sleek Jacket', 'classic.com', '15');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('35', '2', 'Wood Sleek Jacket', 'Wood Sleek Jacket', 'classic.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('35', '3', 'Wood Sleek Jacket', 'Wood Sleek Jacket', 'classic.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('36', '1', 'White Futuristic Jacket', 'White Futuristic Jacket', 'futuristic.com', '9');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('36', '2', 'White Futuristic Jacket', 'White Futuristic Jacket', 'futuristic.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('36', '3', 'White Futuristic Jacket', 'White Futuristic Jacket', 'futuristic.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('37', '1', 'Modern Jacket', 'Modern Jacket', 'modern.com', '6');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('37', '2', 'Modern Jacket', 'Modern Jacket', 'modern.com', '0');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('37', '3', 'Modern Jacket', 'Modern Jacket', 'modern.com', '0');
drop table if exists products_images;
create table products_images (
  id int(11) not null auto_increment,
  products_id int(11) not null ,
  image varchar(64) ,
  htmlcontent text ,
  sort_order int(11) not null ,
  PRIMARY KEY (id),
  KEY products_images_prodid (products_id)
);

insert into products_images (id, products_id, image, htmlcontent, sort_order) values ('5', '34', 'image-1.jpg', '', '1');
insert into products_images (id, products_id, image, htmlcontent, sort_order) values ('6', '34', 'image-3.jpg', '', '2');
insert into products_images (id, products_id, image, htmlcontent, sort_order) values ('7', '34', 'image-4.jpg', '', '3');
drop table if exists products_notifications;
create table products_notifications (
  products_id int(11) not null ,
  customers_id int(11) not null ,
  date_added datetime not null ,
  PRIMARY KEY (products_id, customers_id)
);

insert into products_notifications (products_id, customers_id, date_added) values ('29', '2', '2013-02-01 09:26:18');
insert into products_notifications (products_id, customers_id, date_added) values ('31', '2', '2013-02-01 21:20:20');
insert into products_notifications (products_id, customers_id, date_added) values ('34', '2', '2013-02-01 21:20:20');
insert into products_notifications (products_id, customers_id, date_added) values ('35', '1', '2013-01-19 21:40:41');
insert into products_notifications (products_id, customers_id, date_added) values ('37', '2', '2013-02-01 09:26:53');
drop table if exists products_options;
create table products_options (
  products_options_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  products_options_name varchar(32) not null ,
  PRIMARY KEY (products_options_id, language_id)
);

insert into products_options (products_options_id, language_id, products_options_name) values ('1', '1', 'Color');
insert into products_options (products_options_id, language_id, products_options_name) values ('1', '2', 'Color');
insert into products_options (products_options_id, language_id, products_options_name) values ('1', '3', 'Color');
insert into products_options (products_options_id, language_id, products_options_name) values ('2', '1', 'Size');
insert into products_options (products_options_id, language_id, products_options_name) values ('2', '2', 'Size');
insert into products_options (products_options_id, language_id, products_options_name) values ('2', '3', 'Size');
insert into products_options (products_options_id, language_id, products_options_name) values ('3', '1', 'Model');
insert into products_options (products_options_id, language_id, products_options_name) values ('3', '2', 'Model');
insert into products_options (products_options_id, language_id, products_options_name) values ('3', '3', 'Model');
insert into products_options (products_options_id, language_id, products_options_name) values ('4', '1', 'Memory');
insert into products_options (products_options_id, language_id, products_options_name) values ('4', '2', 'Memory');
insert into products_options (products_options_id, language_id, products_options_name) values ('4', '3', 'Memory');
insert into products_options (products_options_id, language_id, products_options_name) values ('5', '1', 'Version');
insert into products_options (products_options_id, language_id, products_options_name) values ('5', '2', 'Version');
insert into products_options (products_options_id, language_id, products_options_name) values ('5', '3', 'Version');
drop table if exists products_options_values;
create table products_options_values (
  products_options_values_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  products_options_values_name varchar(64) not null ,
  PRIMARY KEY (products_options_values_id, language_id)
);

insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('1', '1', '4 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('1', '2', '4 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('1', '3', '4 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('2', '1', '8 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('2', '2', '8 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('2', '3', '8 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('3', '1', '16 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('3', '2', '16 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('3', '3', '16 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('4', '1', '32 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('4', '2', '32 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('4', '3', '32 mb');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('5', '1', 'Value');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('5', '2', 'Value');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('5', '3', 'Value');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('6', '1', 'Premium');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('6', '2', 'Premium');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('6', '3', 'Premium');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('7', '1', 'Deluxe');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('7', '2', 'Deluxe');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('7', '3', 'Deluxe');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('8', '1', 'PS/2');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('8', '2', 'PS/2');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('8', '3', 'PS/2');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('9', '1', 'USB');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('9', '2', 'USB');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('9', '3', 'USB');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('10', '1', 'Download: Windows - English');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('10', '2', 'Download: Windows - English');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('10', '3', 'Download: Windows - English');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('13', '1', 'Box: Windows - English');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('13', '2', 'Box: Windows - English');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('13', '3', 'Box: Windows - English');
drop table if exists products_options_values_to_products_options;
create table products_options_values_to_products_options (
  products_options_values_to_products_options_id int(11) not null auto_increment,
  products_options_id int(11) not null ,
  products_options_values_id int(11) not null ,
  PRIMARY KEY (products_options_values_to_products_options_id)
);

insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('1', '4', '1');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('2', '4', '2');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('3', '4', '3');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('4', '4', '4');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('5', '3', '5');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('6', '3', '6');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('7', '3', '7');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('8', '3', '8');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('9', '3', '9');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('10', '5', '10');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('13', '5', '13');
drop table if exists products_to_categories;
create table products_to_categories (
  products_id int(11) not null ,
  categories_id int(11) not null ,
  PRIMARY KEY (products_id, categories_id)
);

insert into products_to_categories (products_id, categories_id) values ('29', '22');
insert into products_to_categories (products_id, categories_id) values ('30', '23');
insert into products_to_categories (products_id, categories_id) values ('31', '25');
insert into products_to_categories (products_id, categories_id) values ('32', '25');
insert into products_to_categories (products_id, categories_id) values ('33', '26');
insert into products_to_categories (products_id, categories_id) values ('34', '28');
insert into products_to_categories (products_id, categories_id) values ('35', '28');
insert into products_to_categories (products_id, categories_id) values ('36', '31');
insert into products_to_categories (products_id, categories_id) values ('37', '31');
drop table if exists reviews;
create table reviews (
  reviews_id int(11) not null auto_increment,
  products_id int(11) not null ,
  customers_id int(11) ,
  customers_name varchar(255) not null ,
  reviews_rating int(1) ,
  date_added datetime ,
  last_modified datetime ,
  reviews_status tinyint(1) default '0' not null ,
  reviews_read int(5) default '0' not null ,
  PRIMARY KEY (reviews_id),
  KEY idx_reviews_products_id (products_id),
  KEY idx_reviews_customers_id (customers_id)
);

insert into reviews (reviews_id, products_id, customers_id, customers_name, reviews_rating, date_added, last_modified, reviews_status, reviews_read) values ('2', '35', NULL, 'dian san san', '4', '2013-01-19 21:39:06', '2013-01-19 21:39:24', '1', '3');
insert into reviews (reviews_id, products_id, customers_id, customers_name, reviews_rating, date_added, last_modified, reviews_status, reviews_read) values ('3', '29', NULL, 'dian san san', '2', '2013-01-19 21:47:05', '2013-01-19 21:47:15', '1', '4');
insert into reviews (reviews_id, products_id, customers_id, customers_name, reviews_rating, date_added, last_modified, reviews_status, reviews_read) values ('4', '32', NULL, 'dian san san', '5', '2013-01-19 21:48:12', '2013-01-19 21:48:17', '1', '19');
drop table if exists reviews_description;
create table reviews_description (
  reviews_id int(11) not null ,
  languages_id int(11) not null ,
  reviews_text text not null ,
  PRIMARY KEY (reviews_id, languages_id)
);

insert into reviews_description (reviews_id, languages_id, reviews_text) values ('2', '1', 'Wrangler AT SA lorem ipsum set dolor amet fuis consequer. Wrangler AT SA lorem ipsum set dolor amet fuis consequer.');
insert into reviews_description (reviews_id, languages_id, reviews_text) values ('3', '1', 'Bridge Dry Medium lorem ipsum consequer fuis dolor amet. Bridge Dry Medium lorem ipsum consequer fuis dolor amet.');
insert into reviews_description (reviews_id, languages_id, reviews_text) values ('4', '1', 'Firestoner Medium Wet lorem ipsum consequer fuis dolor amet. Firestoner Medium Wet lorem ipsum consequer fuis dolor amet.');
drop table if exists sec_directory_whitelist;
create table sec_directory_whitelist (
  id int(11) not null auto_increment,
  directory varchar(255) not null ,
  PRIMARY KEY (id)
);

insert into sec_directory_whitelist (id, directory) values ('1', 'admin/backups');
insert into sec_directory_whitelist (id, directory) values ('2', 'admin/images/graphs');
insert into sec_directory_whitelist (id, directory) values ('3', 'images');
insert into sec_directory_whitelist (id, directory) values ('4', 'images/banners');
insert into sec_directory_whitelist (id, directory) values ('5', 'images/dvd');
insert into sec_directory_whitelist (id, directory) values ('6', 'images/gt_interactive');
insert into sec_directory_whitelist (id, directory) values ('7', 'images/hewlett_packard');
insert into sec_directory_whitelist (id, directory) values ('8', 'images/matrox');
insert into sec_directory_whitelist (id, directory) values ('9', 'images/microsoft');
insert into sec_directory_whitelist (id, directory) values ('10', 'images/samsung');
insert into sec_directory_whitelist (id, directory) values ('11', 'images/sierra');
insert into sec_directory_whitelist (id, directory) values ('12', 'includes/work');
insert into sec_directory_whitelist (id, directory) values ('13', 'pub');
drop table if exists sessions;
create table sessions (
  sesskey varchar(32) not null ,
  expiry int(11) unsigned not null ,
  value text not null ,
  PRIMARY KEY (sesskey)
);

drop table if exists specials;
create table specials (
  specials_id int(11) not null auto_increment,
  products_id int(11) not null ,
  specials_new_products_price decimal(15,4) not null ,
  specials_date_added datetime ,
  specials_last_modified datetime ,
  expires_date datetime ,
  date_status_change datetime ,
  status int(1) default '1' not null ,
  PRIMARY KEY (specials_id),
  KEY idx_specials_products_id (products_id)
);

insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status) values ('5', '29', '40.0000', '2013-01-19 21:48:35', NULL, '2013-03-30 00:00:00', NULL, '1');
insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status) values ('6', '34', '50.0000', '2013-01-19 21:48:48', NULL, '2013-03-30 00:00:00', NULL, '1');
insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status) values ('7', '31', '35.0000', '2013-01-19 21:49:00', NULL, '2013-03-30 00:00:00', NULL, '1');
insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status) values ('8', '37', '42.0000', '2013-01-19 21:49:13', NULL, '2013-03-30 00:00:00', NULL, '1');
insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status) values ('9', '30', '32.0000', '2013-01-19 21:49:33', NULL, '2013-03-30 00:00:00', NULL, '1');
insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status) values ('10', '35', '31.0000', '2013-01-19 21:49:48', NULL, '2013-03-30 00:00:00', NULL, '1');
drop table if exists tax_class;
create table tax_class (
  tax_class_id int(11) not null auto_increment,
  tax_class_title varchar(32) not null ,
  tax_class_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime not null ,
  PRIMARY KEY (tax_class_id)
);

insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('1', 'Taxable Goods', 'The following types of products are included non-food, services, etc', '2013-01-19 19:33:35', '2013-01-19 19:33:35');
drop table if exists tax_rates;
create table tax_rates (
  tax_rates_id int(11) not null auto_increment,
  tax_zone_id int(11) not null ,
  tax_class_id int(11) not null ,
  tax_priority int(5) default '1' ,
  tax_rate decimal(7,4) not null ,
  tax_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime not null ,
  PRIMARY KEY (tax_rates_id)
);

insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('1', '1', '1', '1', '7.0000', 'FL TAX 7.0%', '2013-01-19 19:33:35', '2013-01-19 19:33:35');
drop table if exists whos_online;
create table whos_online (
  customer_id int(11) ,
  full_name varchar(255) not null ,
  session_id varchar(128) not null ,
  ip_address varchar(15) not null ,
  time_entry varchar(14) not null ,
  time_last_click varchar(14) not null ,
  last_page_url text not null 
);

drop table if exists zones;
create table zones (
  zone_id int(11) not null auto_increment,
  zone_country_id int(11) not null ,
  zone_code varchar(32) not null ,
  zone_name varchar(255) not null ,
  PRIMARY KEY (zone_id),
  KEY idx_zones_country_id (zone_country_id)
);

insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('1', '223', 'AL', 'Alabama');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('2', '223', 'AK', 'Alaska');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('3', '223', 'AS', 'American Samoa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('4', '223', 'AZ', 'Arizona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('5', '223', 'AR', 'Arkansas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('6', '223', 'AF', 'Armed Forces Africa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('7', '223', 'AA', 'Armed Forces Americas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('8', '223', 'AC', 'Armed Forces Canada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('9', '223', 'AE', 'Armed Forces Europe');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('10', '223', 'AM', 'Armed Forces Middle East');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('11', '223', 'AP', 'Armed Forces Pacific');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('12', '223', 'CA', 'California');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('13', '223', 'CO', 'Colorado');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('14', '223', 'CT', 'Connecticut');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('15', '223', 'DE', 'Delaware');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('16', '223', 'DC', 'District of Columbia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('17', '223', 'FM', 'Federated States Of Micronesia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('18', '223', 'FL', 'Florida');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('19', '223', 'GA', 'Georgia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('20', '223', 'GU', 'Guam');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('21', '223', 'HI', 'Hawaii');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('22', '223', 'ID', 'Idaho');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('23', '223', 'IL', 'Illinois');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('24', '223', 'IN', 'Indiana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('25', '223', 'IA', 'Iowa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('26', '223', 'KS', 'Kansas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('27', '223', 'KY', 'Kentucky');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('28', '223', 'LA', 'Louisiana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('29', '223', 'ME', 'Maine');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('30', '223', 'MH', 'Marshall Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('31', '223', 'MD', 'Maryland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('32', '223', 'MA', 'Massachusetts');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('33', '223', 'MI', 'Michigan');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('34', '223', 'MN', 'Minnesota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('35', '223', 'MS', 'Mississippi');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('36', '223', 'MO', 'Missouri');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('37', '223', 'MT', 'Montana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('38', '223', 'NE', 'Nebraska');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('39', '223', 'NV', 'Nevada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('40', '223', 'NH', 'New Hampshire');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('41', '223', 'NJ', 'New Jersey');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('42', '223', 'NM', 'New Mexico');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('43', '223', 'NY', 'New York');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('44', '223', 'NC', 'North Carolina');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('45', '223', 'ND', 'North Dakota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('46', '223', 'MP', 'Northern Mariana Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('47', '223', 'OH', 'Ohio');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('48', '223', 'OK', 'Oklahoma');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('49', '223', 'OR', 'Oregon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('50', '223', 'PW', 'Palau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('51', '223', 'PA', 'Pennsylvania');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('52', '223', 'PR', 'Puerto Rico');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('53', '223', 'RI', 'Rhode Island');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('54', '223', 'SC', 'South Carolina');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('55', '223', 'SD', 'South Dakota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('56', '223', 'TN', 'Tennessee');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('57', '223', 'TX', 'Texas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('58', '223', 'UT', 'Utah');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('59', '223', 'VT', 'Vermont');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('60', '223', 'VI', 'Virgin Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('61', '223', 'VA', 'Virginia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('62', '223', 'WA', 'Washington');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('63', '223', 'WV', 'West Virginia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('64', '223', 'WI', 'Wisconsin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('65', '223', 'WY', 'Wyoming');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('66', '38', 'AB', 'Alberta');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('67', '38', 'BC', 'British Columbia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('68', '38', 'MB', 'Manitoba');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('69', '38', 'NF', 'Newfoundland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('70', '38', 'NB', 'New Brunswick');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('71', '38', 'NS', 'Nova Scotia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('72', '38', 'NT', 'Northwest Territories');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('73', '38', 'NU', 'Nunavut');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('74', '38', 'ON', 'Ontario');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('75', '38', 'PE', 'Prince Edward Island');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('76', '38', 'QC', 'Quebec');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('77', '38', 'SK', 'Saskatchewan');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('78', '38', 'YT', 'Yukon Territory');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('79', '81', 'NDS', 'Niedersachsen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('80', '81', 'BAW', 'Baden-Württemberg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('81', '81', 'BAY', 'Bayern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('82', '81', 'BER', 'Berlin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('83', '81', 'BRG', 'Brandenburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('84', '81', 'BRE', 'Bremen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('85', '81', 'HAM', 'Hamburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('86', '81', 'HES', 'Hessen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('87', '81', 'MEC', 'Mecklenburg-Vorpommern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('88', '81', 'NRW', 'Nordrhein-Westfalen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('89', '81', 'RHE', 'Rheinland-Pfalz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('90', '81', 'SAR', 'Saarland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('91', '81', 'SAS', 'Sachsen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('92', '81', 'SAC', 'Sachsen-Anhalt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('93', '81', 'SCN', 'Schleswig-Holstein');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('94', '81', 'THE', 'Thüringen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('95', '14', 'WI', 'Wien');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('96', '14', 'NO', 'Niederösterreich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('97', '14', 'OO', 'Oberösterreich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('98', '14', 'SB', 'Salzburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('99', '14', 'KN', 'Kärnten');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('100', '14', 'ST', 'Steiermark');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('101', '14', 'TI', 'Tirol');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('102', '14', 'BL', 'Burgenland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('103', '14', 'VB', 'Voralberg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('104', '204', 'AG', 'Aargau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('105', '204', 'AI', 'Appenzell Innerrhoden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('106', '204', 'AR', 'Appenzell Ausserrhoden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('107', '204', 'BE', 'Bern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('108', '204', 'BL', 'Basel-Landschaft');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('109', '204', 'BS', 'Basel-Stadt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('110', '204', 'FR', 'Freiburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('111', '204', 'GE', 'Genf');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('112', '204', 'GL', 'Glarus');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('113', '204', 'JU', 'Graubünden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('114', '204', 'JU', 'Jura');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('115', '204', 'LU', 'Luzern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('116', '204', 'NE', 'Neuenburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('117', '204', 'NW', 'Nidwalden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('118', '204', 'OW', 'Obwalden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('119', '204', 'SG', 'St. Gallen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('120', '204', 'SH', 'Schaffhausen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('121', '204', 'SO', 'Solothurn');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('122', '204', 'SZ', 'Schwyz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('123', '204', 'TG', 'Thurgau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('124', '204', 'TI', 'Tessin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('125', '204', 'UR', 'Uri');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('126', '204', 'VD', 'Waadt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('127', '204', 'VS', 'Wallis');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('128', '204', 'ZG', 'Zug');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('129', '204', 'ZH', 'Zürich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('130', '195', 'A Coruña', 'A Coruña');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('131', '195', 'Alava', 'Alava');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('132', '195', 'Albacete', 'Albacete');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('133', '195', 'Alicante', 'Alicante');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('134', '195', 'Almeria', 'Almeria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('135', '195', 'Asturias', 'Asturias');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('136', '195', 'Avila', 'Avila');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('137', '195', 'Badajoz', 'Badajoz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('138', '195', 'Baleares', 'Baleares');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('139', '195', 'Barcelona', 'Barcelona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('140', '195', 'Burgos', 'Burgos');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('141', '195', 'Caceres', 'Caceres');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('142', '195', 'Cadiz', 'Cadiz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('143', '195', 'Cantabria', 'Cantabria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('144', '195', 'Castellon', 'Castellon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('145', '195', 'Ceuta', 'Ceuta');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('146', '195', 'Ciudad Real', 'Ciudad Real');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('147', '195', 'Cordoba', 'Cordoba');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('148', '195', 'Cuenca', 'Cuenca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('149', '195', 'Girona', 'Girona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('150', '195', 'Granada', 'Granada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('151', '195', 'Guadalajara', 'Guadalajara');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('152', '195', 'Guipuzcoa', 'Guipuzcoa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('153', '195', 'Huelva', 'Huelva');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('154', '195', 'Huesca', 'Huesca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('155', '195', 'Jaen', 'Jaen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('156', '195', 'La Rioja', 'La Rioja');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('157', '195', 'Las Palmas', 'Las Palmas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('158', '195', 'Leon', 'Leon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('159', '195', 'Lleida', 'Lleida');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('160', '195', 'Lugo', 'Lugo');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('161', '195', 'Madrid', 'Madrid');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('162', '195', 'Malaga', 'Malaga');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('163', '195', 'Melilla', 'Melilla');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('164', '195', 'Murcia', 'Murcia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('165', '195', 'Navarra', 'Navarra');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('166', '195', 'Ourense', 'Ourense');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('167', '195', 'Palencia', 'Palencia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('168', '195', 'Pontevedra', 'Pontevedra');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('169', '195', 'Salamanca', 'Salamanca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('170', '195', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('171', '195', 'Segovia', 'Segovia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('172', '195', 'Sevilla', 'Sevilla');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('173', '195', 'Soria', 'Soria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('174', '195', 'Tarragona', 'Tarragona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('175', '195', 'Teruel', 'Teruel');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('176', '195', 'Toledo', 'Toledo');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('177', '195', 'Valencia', 'Valencia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('178', '195', 'Valladolid', 'Valladolid');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('179', '195', 'Vizcaya', 'Vizcaya');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('180', '195', 'Zamora', 'Zamora');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('181', '195', 'Zaragoza', 'Zaragoza');
drop table if exists zones_to_geo_zones;
create table zones_to_geo_zones (
  association_id int(11) not null auto_increment,
  zone_country_id int(11) not null ,
  zone_id int(11) ,
  geo_zone_id int(11) ,
  last_modified datetime ,
  date_added datetime not null ,
  PRIMARY KEY (association_id),
  KEY idx_zones_to_geo_zones_country_id (zone_country_id)
);

insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('1', '223', '18', '1', NULL, '2013-01-19 19:33:35');
