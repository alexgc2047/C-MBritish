<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2010 osCommerce

  Released under the GNU General Public License
*/

  if ($messageStack->size('header') > 0) {
    echo '<div class="grid_24">' . $messageStack->output('header') . '</div>';
  }
?>

<div id="header" class="grid_24">
	<div class="searchWrapper">
		<div class="search">
			<ul>
  <?php
		echo tep_draw_form('quick_find', tep_href_link(FILENAME_ADVANCED_SEARCH_RESULT, '', 'NONSSL', false), 'get');
		echo '<li>' . tep_draw_input_field('keywords', 'Search', 'onblur="if(this.value==\'\')this.value=\'Search\'"' . 'onfocus="if(this.value==\'Search\')this.value=\'\'"' . 'size="25" maxlength="30"') . '&nbsp;' . tep_draw_hidden_field('search_in_description', '1') . tep_hide_session_id() . '</li>';
		echo '<li class="searchButton">' . tep_image_submit('button_quick_find.png', HEADER_TITLE_SEARCH_BOX_TITLE) . '</li>';
		echo '<li><a href="' . tep_href_link(FILENAME_ADVANCED_SEARCH) . '">' . HEADER_TITLE_ADVANCED_SEARCH . '</a></li>';
		echo '</form>';
		
  ?>		</ul>
		</div>
	</div>
	<div class="storeLogo grid_6 alpha">
		<?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image(DIR_WS_IMAGES . 'store_logo.png', STORE_NAME) . '</a>'; ?>
	</div>
	<div class="headerLink grid_18 omega">
	
		<?php
			echo 
				'<ul>' .
					'<li class="cartContents">' . tep_image(DIR_WS_IMAGES . 'basket-empty.png', 'cart contents') . '<a href="' . tep_href_link(FILENAME_SHOPPING_CART) . '">' . HEADER_TITLE_CART_CONTENTS . ($cart->count_contents() > 0 ? ' (' . $cart->count_contents() . ')' : '') . '</a></li>' . 
					'<li><span class="arrowBullet">' . tep_image(DIR_WS_IMAGES . 'arrow.png', 'checkout') . '</span><a href="' . tep_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL') . '">' . HEADER_TITLE_CHECKOUT . '</a></li>' .
					'<li><span class="arrowBullet">' . tep_image(DIR_WS_IMAGES . 'arrow.png', 'checkout') . '</span><a href="' . tep_href_link(FILENAME_ACCOUNT, '', 'SSL') . '">' . HEADER_TITLE_MY_ACCOUNT . '</a></li>' .
				'</ul>';
		?>
	</div>
</div>
<div class="grid_24 languageAndCurrency">
	<span class="textLanguageHeader">
		<?php echo HEADER_TITLE_LANGUAGE_HEADER ?>
	</span>
	<span class="languageHeader">
<?php
	if (!isset($lng) || (isset($lng) && !is_object($lng))) {
	include(DIR_WS_CLASSES . 'language.php');
	$lng = new language;
	}
	$languages_string = '';
	reset($lng->catalog_languages);
	while (list($key, $value) = each($lng->catalog_languages)) {
	$languages_string .='<a href="' . tep_href_link(basename($PHP_SELF), tep_get_all_get_params(array('language', 'currency')) . 'language=' . $key, $request_type) . '">' . tep_image(DIR_WS_LANGUAGES . $value['directory'] . '/images/' . $value['image'], $value['name']) . '</a>&nbsp;&nbsp;';
	}
	echo $languages_string;
?>		
	</span>
	<span class="textCurrencyHeader">
		<?php echo HEADER_TITLE_CURRENCY_HEADER ?>
	</span>
	<span class="currencyHeader">
<?php
    echo tep_draw_form('currencies', tep_href_link(basename($PHP_SELF), '', $request_type, false), 'get');
    reset($currencies->currencies);
    $currencies_array = array();
    while (list($key, $value) = each($currencies->currencies)) {
      $currencies_array[] = array('id' => $key, 'text' => $value['title']);
    }
    $hidden_get_variables = '';
    reset($HTTP_GET_VARS);
    while (list($key, $value) = each($HTTP_GET_VARS)) {
      if ( ($key != 'currency') && ($key != tep_session_name()) && ($key != 'x') && ($key != 'y') ) {
        $hidden_get_variables .= tep_draw_hidden_field($key, $value);
      }
    }
    echo tep_draw_pull_down_menu('currency', $currencies_array, $currency, 'onChange="this.form.submit();" class="jamp"') . $hidden_get_variables . tep_hide_session_id();
    echo '</form>';
?>
	</span>
</div>
<div class="customerHeaderLogin grid_24">
	<?php echo tep_customer_login(); ?>
</div>
<div class="navigationHeader grid_24">
<?php
	echo
	'<ul>' .
		'<li>' . tep_image(DIR_WS_IMAGES . 'home16x16.png', 'home') . '</li>' .
		'<li class="selected"><a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . HEADER_TITLE_HOME . '</a></li>' .
		'<li><a href="' . tep_href_link(FILENAME_PRODUCTS_NEW) . '">' . HEADER_TITLE_PRODUCTS_NEW . '</a></li>' .
		'<li><a href="' . tep_href_link(FILENAME_SPECIALS) . '">' . HEADER_TITLE_PRODUCTS_SPECIALS . '</a></li>' .
		'<li><a href="' . tep_href_link(FILENAME_REVIEWS) . '">' . HEADER_TITLE_PRODUCTS_REVIEWS . '</a></li>' .
		'<li><a href="' . tep_href_link(FILENAME_CONTACT_US) . '">' . HEADER_TITLE_CONTACT_US . '</a></li>' .
	'</ul>';
?>
</div>
<div class="grid_24 ui-widget infoBoxContainer">
	<div class="breadcrumb"><?php echo '&nbsp;&nbsp;' . $breadcrumb->trail(' &raquo; '); ?></div>
</div>

<?php
	if (isset($HTTP_GET_VARS['error_message']) && tep_not_null($HTTP_GET_VARS['error_message'])) {
?>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
	<tr class="headerError">
		<td class="headerError"><?php echo htmlspecialchars(stripslashes(urldecode($HTTP_GET_VARS['error_message']))); ?></td>
	</tr>
</table>
<?php
  }

  if (isset($HTTP_GET_VARS['info_message']) && tep_not_null($HTTP_GET_VARS['info_message'])) {
?>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
	<tr class="headerInfo">
		<td class="headerInfo"><?php echo htmlspecialchars(stripslashes(urldecode($HTTP_GET_VARS['info_message']))); ?></td>
	</tr>
</table>
<?php
  }
?>
<link rel="shortcut icon" href="includes/favicon.ico">