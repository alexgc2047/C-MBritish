<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2010 osCommerce

  Released under the GNU General Public License
*/

  if ($messageStack->size('header') > 0) {
    echo '<div class="grid_24">' . $messageStack->output('header') . '</div><br />';
  }
?>


<div class="topHeaderContainer">
	<div class="callUs">
		<?php
			echo HEADER_TITLE_CALL_US;
				
		?>
	</div>
	<div class="custheaderlogin">
		<?php echo tep_customer_login(); ?>
	</div>

	
</div>
<div id="header">
	<div id="storeLogo"><?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image(DIR_WS_IMAGES . 'store_logo.png', STORE_NAME) . '</a>'; ?></div>

	<br />
	
	<div id="headerShortcuts">
	
		<?php
			echo 
				'<span class="headerIcon">' . tep_image(DIR_WS_IMAGES . 'basket-16x16.png', 'cart contents') . '<a href="' . tep_href_link(FILENAME_SHOPPING_CART) . '">' . HEADER_TITLE_CART_CONTENTS . ($cart->count_contents() > 0 ? ' (' . $cart->count_contents() . ')' : '') . '</a></span><br />' . 
				'<span class="headerIcon">' . tep_image(DIR_WS_IMAGES . 'coin-16x16.png', 'checkout') . '<a href="' . tep_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL') . '">' . HEADER_TITLE_CHECKOUT . '</a></span><br />' .
				'<span class="headerIcon">' . tep_image(DIR_WS_IMAGES . 'my-account-16x16.png', 'my account') . '<a href="' . tep_href_link(FILENAME_ACCOUNT, '', 'SSL') . '">' . HEADER_TITLE_MY_ACCOUNT . '</a></span><br />';
 
		?>
		
	</div>
<div class="verticalSeparator"></div>
<div class="toptopheader">
		<div class="text"><?php echo HEADER_TITLE_LANGUAGE_HEADER ?></div>
		<div class="languageheader">
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
?>		</div>
<br /><br />
		<div class="text1"><?php echo HEADER_TITLE_CURRENCY_HEADER ?></div>
		<div class="currencyheader">
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
		</div>
</div>

	
</div>


<div id="menuContainer">
	<div class="headermenu">
	<ul>
	<?php echo 
		'<li><span class="homeIcon">' .  tep_image(DIR_WS_IMAGES . 'arrow_right_1.png', HEADER_TITLE_HOME_ICON) . '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . HEADER_TITLE_HOME . '</a></span></li>' .
		'<li><span class="whatsNewIcon">' .  tep_image(DIR_WS_IMAGES . 'arrow_right_1.png', HEADER_TITLE_WHATSNEW_ICON) . '<a href="' . tep_href_link(FILENAME_PRODUCTS_NEW) . '">' . HEADER_TITLE_NEW_PRODUCTS . '</a></span></li>' . 
	    '<li><span class="specialsIcon">' .  tep_image(DIR_WS_IMAGES . 'arrow_right_1.png', HEADER_TITLE_SPECIALS_ICON) . '<a href="' . tep_href_link(FILENAME_SPECIALS) . '">' . HEADER_TITLE_PRODUCTS_SPECIALS . '</a></span></li>' .
		'<li><span class="reviewsIcon">' .  tep_image(DIR_WS_IMAGES . 'arrow_right_1.png', HEADER_TITLE_REVIEWS_ICON) . '<a href="' . tep_href_link(FILENAME_REVIEWS) . '">' . HEADER_TITLE_PRODUCTS_REVIEWS . '</a></span></li>' .
		'<li><span class="contactUsIcon">' .  tep_image(DIR_WS_IMAGES . 'arrow_right_1.png', HEADER_TITLE_CONTACTUS_ICON) . '<a href="' . tep_href_link(FILENAME_CONTACT_US) . '">' . HEADER_TITLE_CONTACT_US . '</a></span></li>';
		
	
	?>
	 </ul>
	   <div id="search">
  <?php
		echo tep_draw_form('quick_find', tep_href_link(FILENAME_ADVANCED_SEARCH_RESULT, '', 'NONSSL', false), 'get');
		echo '<div class="inputsearch">' . tep_draw_input_field('keywords', 'Search', 'onblur="if(this.value==\'\')this.value=\'Search\'"' . 'onfocus="if(this.value==\'Search\')this.value=\'\'"' . 'size="12" maxlength="30" style="width:190px; margin-right:0; color:#000; border:1px solid #fff;"') . '&nbsp;' . tep_draw_hidden_field('search_in_description', '1') . tep_hide_session_id() . '</div>';
		echo '<div class="buttonsearch" style="margin-top:-24px;">' . tep_image_submit('button_quick_find.png', HEADER_TITLE_SEARCH_BOX_TITLE) . '</div>';
		echo '<a href="' . tep_href_link(FILENAME_ADVANCED_SEARCH) . '">' . HEADER_TITLE_ADVANCED_SEARCH . '</a>';
		echo '</form>';
		
  ?>
		</div>
	</div>
	
	
</div>


<?php
  if (isset($HTTP_GET_VARS['error_message']) && tep_not_null($HTTP_GET_VARS['error_message'])) {
?>
<div>
	<div class="headerError">
		<div class="headerError"><?php echo htmlspecialchars(stripslashes(urldecode($HTTP_GET_VARS['error_message']))); ?></div>
	</div>
</div>
<?php
  }

  if (isset($HTTP_GET_VARS['info_message']) && tep_not_null($HTTP_GET_VARS['info_message'])) {
?>
<div>
	<div class="headerInfo">
		<div class="headerInfo"><?php echo htmlspecialchars(stripslashes(urldecode($HTTP_GET_VARS['info_message']))); ?></div>
	</div>
</div>
<?php
  }
?>
<div id="slideshowContainer">
	<div class="slideheader grid_24"><?php require (DIR_WS_INCLUDES . 'slideshow.php'); ?> </div>
<?php //echo '<div class="grid_7 embelish">' . tep_image(DIR_WS_IMAGES . 'embelish.png') . '</div>'; ?>
</div>
<link rel="shortcut icon" href="includes/favicon.ico">