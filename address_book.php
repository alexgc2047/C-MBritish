<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2010 osCommerce

  Released under the GNU General Public License
*/

  require('includes/application_top.php');

  if (!tep_session_is_registered('customer_id')) {
    $navigation->set_snapshot();
    tep_redirect(tep_href_link(FILENAME_LOGIN, '', 'SSL'));
  }

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_ADDRESS_BOOK);

  $breadcrumb->add(NAVBAR_TITLE_1, tep_href_link(FILENAME_ACCOUNT, '', 'SSL'));
  $breadcrumb->add(NAVBAR_TITLE_2, tep_href_link(FILENAME_ADDRESS_BOOK, '', 'SSL'));

  require(DIR_WS_INCLUDES . 'template_top.php');
?>

<div class="breadcrumb"><?php echo '&nbsp;&nbsp;' . $breadcrumb->trail('&raquo;'); ?></div>
<h1 class="headingaddressbook"><?php echo HEADING_TITLE; ?></h1>
<div class="messagestack">
<?php
  if ($messageStack->size('addressbook') > 0) {
    echo $messageStack->output('addressbook');
  }
?>
</div>
<div class="contentContainer">
	<h2><?php echo PRIMARY_ADDRESS_TITLE; ?></h2><hr>

	<div class="contentText">
		<div class="ui-widget infoBoxContainer" style="float: left; padding-right:5px;">
			<div class="headerCheckoutAddress infoBoxHeading"><?php echo PRIMARY_ADDRESS_TITLE; ?></div>

			<div class="contentCheckoutAddress infoBoxContents" style="padding: 5px;">
				<?php echo tep_address_label($customer_id, $customer_default_address_id, true, ' ', '<br />'); ?>
			</div>
		</div>

		<?php echo PRIMARY_ADDRESS_DESCRIPTION; ?>
	</div>

	<div style="clear: both;"></div>
<div id="border-bottom"></div><br />
	<h2><?php echo ADDRESS_BOOK_TITLE; ?></h2><hr>

	<div class="contentText">

<?php
  $addresses_query = tep_db_query("select address_book_id, entry_firstname as firstname, entry_lastname as lastname, entry_company as company, entry_street_address as street_address, entry_suburb as suburb, entry_city as city, entry_postcode as postcode, entry_state as state, entry_zone_id as zone_id, entry_country_id as country_id from " . TABLE_ADDRESS_BOOK . " where customers_id = '" . (int)$customer_id . "' order by firstname, lastname");
  while ($addresses = tep_db_fetch_array($addresses_query)) {
    $format_id = tep_get_address_format_id($addresses['country_id']);
?>

		<div>
			<span style="float: right;"><?php echo tep_draw_button(SMALL_IMAGE_BUTTON_EDIT, 'document', tep_href_link(FILENAME_ADDRESS_BOOK_PROCESS, 'edit=' . $addresses['address_book_id'], 'SSL')) . ' ' . tep_draw_button(SMALL_IMAGE_BUTTON_DELETE, 'trash', tep_href_link(FILENAME_ADDRESS_BOOK_PROCESS, 'delete=' . $addresses['address_book_id'], 'SSL')); ?></span>
			<p><strong><?php echo tep_output_string_protected($addresses['firstname'] . ' ' . $addresses['lastname']); ?></strong><?php if ($addresses['address_book_id'] == $customer_default_address_id) echo '&nbsp;<small><i>' . PRIMARY_ADDRESS . '</i></small>'; ?></p>
			<p style="padding-left: 20px;"><?php echo tep_address_format($format_id, $addresses, true, ' ', '<br />'); ?></p>
		
		</div>

<?php
  }
?>
	<p class="smallText"><?php echo sprintf(TEXT_MAXIMUM_ENTRIES, MAX_ADDRESS_BOOK_ENTRIES); ?></p>
	</div>
<div id="border-bottom"></div><br />
	<div class="buttonSet">

<?php
  if (tep_count_customer_address_book_entries() < MAX_ADDRESS_BOOK_ENTRIES) {
?>

		<span class="buttonAction"><?php echo tep_draw_button(IMAGE_BUTTON_ADD_ADDRESS, 'home', tep_href_link(FILENAME_ADDRESS_BOOK_PROCESS, '', 'SSL'), 'primary'); ?></span>

<?php
  }
?>

		<?php echo tep_draw_button(IMAGE_BUTTON_BACK, 'triangle-1-w', tep_href_link(FILENAME_ACCOUNT, '', 'SSL')); ?>
	</div>


</div>

<?php
  require(DIR_WS_INCLUDES . 'template_bottom.php');
  require(DIR_WS_INCLUDES . 'application_bottom.php');
?>
