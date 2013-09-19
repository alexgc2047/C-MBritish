<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2010 osCommerce

  Released under the GNU General Public License
*/

  require('includes/application_top.php');

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_CONTACT_US);

  if (isset($HTTP_GET_VARS['action']) && ($HTTP_GET_VARS['action'] == 'send') && isset($HTTP_POST_VARS['formid']) && ($HTTP_POST_VARS['formid'] == $sessiontoken)) {
    $error = false;

    $name = tep_db_prepare_input($HTTP_POST_VARS['name']);
    $email_address = tep_db_prepare_input($HTTP_POST_VARS['email']);
    $enquiry = tep_db_prepare_input($HTTP_POST_VARS['enquiry']);

    if (!tep_validate_email($email_address)) {
      $error = true;

      $messageStack->add('contact', ENTRY_EMAIL_ADDRESS_CHECK_ERROR);
    }

    $actionRecorder = new actionRecorder('ar_contact_us', (tep_session_is_registered('customer_id') ? $customer_id : null), $name);
    if (!$actionRecorder->canPerform()) {
      $error = true;

      $actionRecorder->record(false);

      $messageStack->add('contact', sprintf(ERROR_ACTION_RECORDER, (defined('MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES') ? (int)MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES : 15)));
    }

    if ($error == false) {
      tep_mail(STORE_OWNER, STORE_OWNER_EMAIL_ADDRESS, EMAIL_SUBJECT, $enquiry, $name, $email_address);

      $actionRecorder->record();

      tep_redirect(tep_href_link(FILENAME_CONTACT_US, 'action=success'));
    }
  }

  $breadcrumb->add(NAVBAR_TITLE, tep_href_link(FILENAME_CONTACT_US));

  require(DIR_WS_INCLUDES . 'template_top.php');
?>
<div class="breadcrumb"><?php echo '&nbsp;&nbsp;' . $breadcrumb->trail('&raquo;'); ?></div>

<h1 class="headingcontactus"><?php echo HEADING_TITLE; ?></h1>
<div class="messagestack">
<?php
  if ($messageStack->size('contact') > 0) {
    echo $messageStack->output('contact');
  }

?>
</div>
<?php
  if (isset($HTTP_GET_VARS['action']) && ($HTTP_GET_VARS['action'] == 'success')) {
?>


<div id="contactUsSuccess" class="contentContainer">
	<div class="contentText">
		<?php echo TEXT_SUCCESS; ?>
	</div>

	<div style="float: right;">
		<?php echo tep_draw_button(IMAGE_BUTTON_CONTINUE, 'triangle-1-e', tep_href_link(FILENAME_DEFAULT)); ?>
	</div>
</div>

<?php
  } else {
?>

<?php echo tep_draw_form('contact_us', tep_href_link(FILENAME_CONTACT_US, 'action=send'), 'post', '', true); ?>

<div class="contentContainer" id="contactUsContainer">
	<div class="contentText">
		<div id="contactUsForm">
			<div>
				<div class="fieldKey"><?php echo ENTRY_NAME; ?></div>
				<div class="fieldValue"><?php echo tep_draw_input_field('name', 'Enter your name', 'onblur="if(this.value==\'\')this.value=\'Enter your name\'"' . 'onfocus="if(this.value==\'Enter your name\')this.value=\'\'"' . 'style="color:#000;"'); ?></div>
			</div>
			<div>
				<div class="fieldKey"><?php echo ENTRY_EMAIL; ?></div>
				<div class="fieldValue"><?php echo tep_draw_input_field('email', 'Enter your email', 'onblur="if(this.value==\'\')this.value=\'Enter your email\'"' . 'onfocus="if(this.value==\'Enter your email\')this.value=\'\'"' . 'style="color:#000;"'); ?></div>
			</div>
			<div>
				<div class="fieldKey"><?php echo ENTRY_ENQUIRY; ?></div>
				<div style="float:left;" class="fieldValue; "><?php echo tep_draw_textarea_field('enquiry', 'soft', 50, 15,'Enter your enquiry', 'onblur="if(this.value==\'\')this.value=\'Enter your enquiry\'"' . 'onfocus="if(this.value==\'Enter your enquiry\')this.value=\'\'"' . 'style="color:#000;"'); ?></div>
			</div>
		</div>
	</div>
<br />
	<div class="buttonSet" >
		<span class="buttonAction"><?php echo tep_draw_button(IMAGE_BUTTON_CONTINUE, 'triangle-1-e', null, 'primary'); ?></span>
	</div>
</div>

</form>

<?php
  }

  require(DIR_WS_INCLUDES . 'template_bottom.php');
  require(DIR_WS_INCLUDES . 'application_bottom.php');
?>
