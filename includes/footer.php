<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2010 osCommerce

  Released under the GNU General Public License
*/

  require(DIR_WS_INCLUDES . 'counter.php');
?>
<div id="footerContainer">
<div class="footer">
	
	<div class="footLinks">
		<?php echo 
		'<div class="headingFooterLinks">' . FOOTER_TITLE_HEADING_LINKS . '</div>' .
			'<ul>' .
				'<li><a href="' . tep_href_link(FILENAME_DEFAULT) .'">' . FOOTER_TITLE_HOME . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_FEATURED_PRODUCTS) .'">' . FOOTER_TITLE_PRODUCTS_FEATURED . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_ADVANCED_SEARCH) .'">' . FOOTER_TITLE_ADVANCED_SEARCH . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_PRODUCTS_NEW) .'">' . FOOTER_TITLE_NEW_PRODUCTS . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_SPECIALS) .'">' . FOOTER_TITLE_PRODUCTS_SPECIALS . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_REVIEWS) .'">' . FOOTER_TITLE_PRODUCTS_REVIEWS . '</a></li>' .
				
				
				
			'</ul>';
		?>
	</div>
	<div class="footInformation">
		<?php echo 
		'<div class="headingFooterInformation">' . FOOTER_TITLE_HEADING_INFORMATION . '</div>' .
			'<ul>' .
				
				'<li><a href="' . tep_href_link(FILENAME_CONTACT_US) .'">' . FOOTER_TITLE_CONTACT_US . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_PRIVACY) .'">' . FOOTER_TITLE_PRIVACY_NOTICE . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_CONDITIONS) .'">' . FOOTER_TITLE_CONDITIONS_OF_USE . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_SHIPPING) .'">' . FOOTER_TITLE_SHIPPING_AND_RETURNS . '</a></li>' .
				
			'</ul>';
		?>
	</div>
	<div class="footMyaccount">
		<?php echo 
		'<div class="headingFooterMyaccount">' . FOOTER_TITLE_HEADING_MYACCOUNT . '</div>' .
			'<ul>' .
				'<li><a href="' . tep_href_link(FILENAME_ACCOUNT, '', 'SSL') .'">' . FOOTER_TITLE_MYACCOUNT . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_SHOPPING_CART) .'">' . FOOTER_TITLE_CART_CONTENTS . '</a></li>' .
				'<li><a href="' . tep_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL') .'">' . FOOTER_TITLE_CHECKOUT . '</a></li>' .
			'</ul>';
		?>
		
	</div>
	
	
</div>

	<div class="foot2">
		<?php echo FOOTER_TEXT_BODY; ?>
	</div>
<?php
  if ($banner = tep_banner_exists('dynamic', '210x80')) {
?>

<div class="bannerfooter">
	<?php echo tep_display_banner('static', $banner); ?>
</div>

<?php
 }

?>
</div>
<script type="text/javascript">
$('.productListTable tr:nth-child(even)').addClass('alt');
</script>
