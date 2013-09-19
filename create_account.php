<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2010 osCommerce

  Released under the GNU General Public License
*/

  require('includes/application_top.php');

// needs to be included earlier to set the success message in the messageStack
  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_CREATE_ACCOUNT);

  $process = false;
  if (isset($HTTP_POST_VARS['action']) && ($HTTP_POST_VARS['action'] == 'process') && isset($HTTP_POST_VARS['formid']) && ($HTTP_POST_VARS['formid'] == $sessiontoken)) {
    $process = true;

    if (ACCOUNT_GENDER == 'true') {
      if (isset($HTTP_POST_VARS['gender'])) {
        $gender = tep_db_prepare_input($HTTP_POST_VARS['gender']);
      } else {
        $gender = false;
      }
    }
    $firstname = tep_db_prepare_input($HTTP_POST_VARS['firstname']);
    $lastname = tep_db_prepare_input($HTTP_POST_VARS['lastname']);
    if (ACCOUNT_DOB == 'true') $dob = tep_db_prepare_input($HTTP_POST_VARS['dob']);
    $email_address = tep_db_prepare_input($HTTP_POST_VARS['email_address']);
    if (ACCOUNT_COMPANY == 'true') $company = tep_db_prepare_input($HTTP_POST_VARS['company']);
    $street_address = tep_db_prepare_input($HTTP_POST_VARS['street_address']);
    if (ACCOUNT_SUBURB == 'true') $suburb = tep_db_prepare_input($HTTP_POST_VARS['suburb']);
    $postcode = tep_db_prepare_input($HTTP_POST_VARS['postcode']);
    $city = tep_db_prepare_input($HTTP_POST_VARS['city']);
    if (ACCOUNT_STATE == 'true') {
      $state = tep_db_prepare_input($HTTP_POST_VARS['state']);
      if (isset($HTTP_POST_VARS['zone_id'])) {
        $zone_id = tep_db_prepare_input($HTTP_POST_VARS['zone_id']);
      } else {
        $zone_id = false;
      }
    }
    $country = tep_db_prepare_input($HTTP_POST_VARS['country']);
    $telephone = tep_db_prepare_input($HTTP_POST_VARS['telephone']);
    $fax = tep_db_prepare_input($HTTP_POST_VARS['fax']);
    if (isset($HTTP_POST_VARS['newsletter'])) {
      $newsletter = tep_db_prepare_input($HTTP_POST_VARS['newsletter']);
    } else {
      $newsletter = false;
    }
    $password = tep_db_prepare_input($HTTP_POST_VARS['password']);
    $confirmation = tep_db_prepare_input($HTTP_POST_VARS['confirmation']);

    $error = false;

    if (ACCOUNT_GENDER == 'true') {
      if ( ($gender != 'm') && ($gender != 'f') ) {
        $error = true;

        $messageStack->add('create_account', ENTRY_GENDER_ERROR);
      }
    }

    if (strlen($firstname) < ENTRY_FIRST_NAME_MIN_LENGTH) {
      $error = true;

      $messageStack->add('create_account', ENTRY_FIRST_NAME_ERROR);
    }

    if (strlen($lastname) < ENTRY_LAST_NAME_MIN_LENGTH) {
      $error = true;

      $messageStack->add('create_account', ENTRY_LAST_NAME_ERROR);
    }

    if (ACCOUNT_DOB == 'true') {
      if ((is_numeric(tep_date_raw($dob)) == false) || (@checkdate(substr(tep_date_raw($dob), 4, 2), substr(tep_date_raw($dob), 6, 2), substr(tep_date_raw($dob), 0, 4)) == false)) {
        $error = true;

        $messageStack->add('create_account', ENTRY_DATE_OF_BIRTH_ERROR);
      }
    }

    if (strlen($email_address) < ENTRY_EMAIL_ADDRESS_MIN_LENGTH) {
      $error = true;

      $messageStack->add('create_account', ENTRY_EMAIL_ADDRESS_ERROR);
    } elseif (tep_validate_email($email_address) == false) {
      $error = true;

      $messageStack->add('create_account', ENTRY_EMAIL_ADDRESS_CHECK_ERROR);
    } else {
      $check_email_query = tep_db_query("select count(*) as total from " . TABLE_CUSTOMERS . " where customers_email_address = '" . tep_db_input($email_address) . "'");
      $check_email = tep_db_fetch_array($check_email_query);
      if ($check_email['total'] > 0) {
        $error = true;

        $messageStack->add('create_account', ENTRY_EMAIL_ADDRESS_ERROR_EXISTS);
      }
    }

    if (strlen($street_address) < ENTRY_STREET_ADDRESS_MIN_LENGTH) {
      $error = true;

      $messageStack->add('create_account', ENTRY_STREET_ADDRESS_ERROR);
    }

    if (strlen($postcode) < ENTRY_POSTCODE_MIN_LENGTH) {
      $error = true;

      $messageStack->add('create_account', ENTRY_POST_CODE_ERROR);
    }

    if (strlen($city) < ENTRY_CITY_MIN_LENGTH) {
      $error = true;

      $messageStack->add('create_account', ENTRY_CITY_ERROR);
    }

    if (is_numeric($country) == false) {
      $error = true;

      $messageStack->add('create_account', ENTRY_COUNTRY_ERROR);
    }

    if (ACCOUNT_STATE == 'true') {
      $zone_id = 0;
      $check_query = tep_db_query("select count(*) as total from " . TABLE_ZONES . " where zone_country_id = '" . (int)$country . "'");
      $check = tep_db_fetch_array($check_query);
      $entry_state_has_zones = ($check['total'] > 0);
      if ($entry_state_has_zones == true) {
        $zone_query = tep_db_query("select distinct zone_id from " . TABLE_ZONES . " where zone_country_id = '" . (int)$country . "' and (zone_name = '" . tep_db_input($state) . "' or zone_code = '" . tep_db_input($state) . "')");
        if (tep_db_num_rows($zone_query) == 1) {
          $zone = tep_db_fetch_array($zone_query);
          $zone_id = $zone['zone_id'];
        } else {
          $error = true;

          $messageStack->add('create_account', ENTRY_STATE_ERROR_SELECT);
        }
      } else {
        if (strlen($state) < ENTRY_STATE_MIN_LENGTH) {
          $error = true;

          $messageStack->add('create_account', ENTRY_STATE_ERROR);
        }
      }
    }

    if (strlen($telephone) < ENTRY_TELEPHONE_MIN_LENGTH) {
      $error = true;

      $messageStack->add('create_account', ENTRY_TELEPHONE_NUMBER_ERROR);
    }


    if (strlen($password) < ENTRY_PASSWORD_MIN_LENGTH) {
      $error = true;

      $messageStack->add('create_account', ENTRY_PASSWORD_ERROR);
    } elseif ($password != $confirmation) {
      $error = true;

      $messageStack->add('create_account', ENTRY_PASSWORD_ERROR_NOT_MATCHING);
    }

    if ($error == false) {
      $sql_data_array = array('customers_firstname' => $firstname,
                              'customers_lastname' => $lastname,
                              'customers_email_address' => $email_address,
                              'customers_telephone' => $telephone,
                              'customers_fax' => $fax,
                              'customers_newsletter' => $newsletter,
                              'customers_password' => tep_encrypt_password($password));

      if (ACCOUNT_GENDER == 'true') $sql_data_array['customers_gender'] = $gender;
      if (ACCOUNT_DOB == 'true') $sql_data_array['customers_dob'] = tep_date_raw($dob);

      tep_db_perform(TABLE_CUSTOMERS, $sql_data_array);

      $customer_id = tep_db_insert_id();

      $sql_data_array = array('customers_id' => $customer_id,
                              'entry_firstname' => $firstname,
                              'entry_lastname' => $lastname,
                              'entry_street_address' => $street_address,
                              'entry_postcode' => $postcode,
                              'entry_city' => $city,
                              'entry_country_id' => $country);

      if (ACCOUNT_GENDER == 'true') $sql_data_array['entry_gender'] = $gender;
      if (ACCOUNT_COMPANY == 'true') $sql_data_array['entry_company'] = $company;
      if (ACCOUNT_SUBURB == 'true') $sql_data_array['entry_suburb'] = $suburb;
      if (ACCOUNT_STATE == 'true') {
        if ($zone_id > 0) {
          $sql_data_array['entry_zone_id'] = $zone_id;
          $sql_data_array['entry_state'] = '';
        } else {
          $sql_data_array['entry_zone_id'] = '0';
          $sql_data_array['entry_state'] = $state;
        }
      }

      tep_db_perform(TABLE_ADDRESS_BOOK, $sql_data_array);

      $address_id = tep_db_insert_id();

      tep_db_query("update " . TABLE_CUSTOMERS . " set customers_default_address_id = '" . (int)$address_id . "' where customers_id = '" . (int)$customer_id . "'");

      tep_db_query("insert into " . TABLE_CUSTOMERS_INFO . " (customers_info_id, customers_info_number_of_logons, customers_info_date_account_created) values ('" . (int)$customer_id . "', '0', now())");

      if (SESSION_RECREATE == 'True') {
        tep_session_recreate();
      }

      $customer_first_name = $firstname;
      $customer_default_address_id = $address_id;
      $customer_country_id = $country;
      $customer_zone_id = $zone_id;
      tep_session_register('customer_id');
      tep_session_register('customer_first_name');
      tep_session_register('customer_default_address_id');
      tep_session_register('customer_country_id');
      tep_session_register('customer_zone_id');

// reset session token
      $sessiontoken = md5(tep_rand() . tep_rand() . tep_rand() . tep_rand());

// restore cart contents
      $cart->restore_contents();

// build the message content
      $name = $firstname . ' ' . $lastname;

      if (ACCOUNT_GENDER == 'true') {
         if ($gender == 'm') {
           $email_text = sprintf(EMAIL_GREET_MR, $lastname);
         } else {
           $email_text = sprintf(EMAIL_GREET_MS, $lastname);
         }
      } else {
        $email_text = sprintf(EMAIL_GREET_NONE, $firstname);
      }

      $email_text .= EMAIL_WELCOME . EMAIL_TEXT . EMAIL_CONTACT . EMAIL_WARNING;
      tep_mail($name, $email_address, EMAIL_SUBJECT, $email_text, STORE_OWNER, STORE_OWNER_EMAIL_ADDRESS);

      tep_redirect(tep_href_link(FILENAME_CREATE_ACCOUNT_SUCCESS, '', 'SSL'));
    }
  }

  $breadcrumb->add(NAVBAR_TITLE, tep_href_link(FILENAME_CREATE_ACCOUNT, '', 'SSL'));

  require(DIR_WS_INCLUDES . 'template_top.php');
  require('includes/form_check.js.php');
?>
<div class="breadcrumb"><?php echo '&nbsp;&nbsp;' . $breadcrumb->trail('&raquo;'); ?></div>
<h1 class="headingcreateaccount"><?php echo HEADING_TITLE; ?></h1>
<div class="messagestack">
<?php
  if ($messageStack->size('create_account') > 0) {
    echo $messageStack->output('create_account');
  }
?>
</div>

<?php echo tep_draw_form('create_account', tep_href_link(FILENAME_CREATE_ACCOUNT, '', 'SSL'), 'post', 'onsubmit="return check_form(create_account);"', true) . tep_draw_hidden_field('action', 'process'); ?>

<div id="createaccountContainer" class="contentContainer">
	<div>
		<p class="main"><?php echo sprintf(TEXT_ORIGIN_LOGIN, tep_href_link(FILENAME_LOGIN, tep_get_all_get_params(), 'SSL')); ?></p>
<br />
		<span class="inputRequirement"><?php echo FORM_REQUIRED_INFORMATION; ?></span>
		<h2><?php echo CATEGORY_PERSONAL; ?></h2><hr>
	</div>

<div class="contentText">
    <div style="overflow:hidden;">

<?php
  if (ACCOUNT_GENDER == 'true') {
?>

     
        <div class="fieldKey"><?php echo ENTRY_GENDER; ?></div>
        <div class="fieldValue"><?php echo tep_draw_radio_field('gender', 'm') . '&nbsp;&nbsp;' . MALE . '&nbsp;&nbsp;' . tep_draw_radio_field('gender', 'f') . '&nbsp;&nbsp;' . FEMALE . '&nbsp;' . (tep_not_null(ENTRY_GENDER_TEXT) ? '<span class="inputRequirement">' . ENTRY_GENDER_TEXT . '</span>': ''); ?></div>
      

<?php
  }
?>

      
        <div class="fieldKey"><?php echo ENTRY_FIRST_NAME; ?></div>
        <div class="fieldValue"><?php echo tep_draw_input_field('firstname', 'Your first name', 'onblur="if(this.value==\'\')this.value=\'Your first name\'"' . 'onfocus="if(this.value==\'Your first name\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_FIRST_NAME_TEXT) ? '<span class="inputRequirement">' . ENTRY_FIRST_NAME_TEXT . '</span>': ''); ?></div>
      
     
        <div class="fieldKey"><?php echo ENTRY_LAST_NAME; ?></div>
        <div class="fieldValue"><?php echo tep_draw_input_field('lastname', 'Your last name', 'onblur="if(this.value==\'\')this.value=\'Your last name\'"' . 'onfocus="if(this.value==\'Your last name\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_LAST_NAME_TEXT) ? '<span class="inputRequirement">' . ENTRY_LAST_NAME_TEXT . '</span>': ''); ?></div>
    

<?php
  if (ACCOUNT_DOB == 'true') {
?>

      
        <div class="fieldKey"><?php echo ENTRY_DATE_OF_BIRTH; ?></div>
        <div class="fieldValue"><?php echo tep_draw_input_field('dob', 'Your Birthday', 'onblur="if(this.value==\'\')this.value=\'Your Birthday\'"' . 'onfocus="if(this.value==\'Your Birthday\')this.value=\'\'"' . 'style="color:#000;" id="dob"') . '&nbsp;' . (tep_not_null(ENTRY_DATE_OF_BIRTH_TEXT) ? '<span class="inputRequirement">' . ENTRY_DATE_OF_BIRTH_TEXT . '</span>': ''); ?><script type="text/javascript">jQuery(document).ready(function () {$('#dob').datepicker({dateFormat: '<?php echo JQUERY_DATEPICKER_FORMAT; ?>', changeMonth: true, changeYear: true, yearRange: '-100:+0'});});</script></div>
    

<?php
  }
?>

     
        <div class="fieldKey"><?php echo ENTRY_EMAIL_ADDRESS; ?></div>
        <div class="fieldValue"><?php echo tep_draw_input_field('email_address', 'Your email', 'onblur="if(this.value==\'\')this.value=\'Your email\'"' . 'onfocus="if(this.value==\'Your email\')this.value=\'\'"' . 'style="color:#000;"' ) . '&nbsp;' . (tep_not_null(ENTRY_EMAIL_ADDRESS_TEXT) ? '<span class="inputRequirement">' . ENTRY_EMAIL_ADDRESS_TEXT . '</span>': ''); ?></div>
		
    </div>
</div>

<div id="border-bottom"></div><br />
<?php
  if (ACCOUNT_COMPANY == 'true') {
?>

	<h2 style="clear:both;"><?php echo CATEGORY_COMPANY; ?></h2><hr>

	<div class="contentText">
		<div style="overflow:hidden;">
			
			<div class="fieldKey"><?php echo ENTRY_COMPANY; ?></div>
			<div class="fieldValue"><?php echo tep_draw_input_field('company' ,'Your company name', 'onblur="if(this.value==\'\')this.value=\'Your company name\'"' . 'onfocus="if(this.value==\'Your company name\')this.value=\'\'"' . 'style="color:#000;"' ) . '&nbsp;' . (tep_not_null(ENTRY_COMPANY_TEXT) ? '<span class="inputRequirement">' . ENTRY_COMPANY_TEXT . '</span>': ''); ?></div>
     
		</div>
	</div>
<div id="border-bottom"></div><br />
<?php
  }
?>

	<h2 style="clear:both;"><?php echo CATEGORY_ADDRESS; ?></h2><hr>

	<div class="contentText">
		<div style="overflow:hidden;">
      
			<div class="fieldKey"><?php echo ENTRY_STREET_ADDRESS; ?></div>
			<div class="fieldValue"><?php echo tep_draw_input_field('street_address', 'Your street address', 'onblur="if(this.value==\'\')this.value=\'Your street address\'"' . 'onfocus="if(this.value==\'Your street address\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_STREET_ADDRESS_TEXT) ? '<span class="inputRequirement">' . ENTRY_STREET_ADDRESS_TEXT . '</span>': ''); ?></div>
     

<?php
  if (ACCOUNT_SUBURB == 'true') {
?>


			<div class="fieldKey"><?php echo ENTRY_SUBURB; ?></div>
			<div class="fieldValue"><?php echo tep_draw_input_field('suburb', 'Your suburb', 'onblur="if(this.value==\'\')this.value=\'Your suburb\'"' . 'onfocus="if(this.value==\'Your suburb\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_SUBURB_TEXT) ? '<span class="inputRequirement">' . ENTRY_SUBURB_TEXT . '</span>': ''); ?></div>
   

<?php
  }
?>

     
			<div class="fieldKey"><?php echo ENTRY_POST_CODE; ?></div>
			<div class="fieldValue"><?php echo tep_draw_input_field('postcode', 'Your postcode', 'onblur="if(this.value==\'\')this.value=\'Your postcode\'"' . 'onfocus="if(this.value==\'Your postcode\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_POST_CODE_TEXT) ? '<span class="inputRequirement">' . ENTRY_POST_CODE_TEXT . '</span>': ''); ?></div>
     
     
			<div class="fieldKey"><?php echo ENTRY_CITY; ?></div>
			<div class="fieldValue"><?php echo tep_draw_input_field('city', 'Your city', 'onblur="if(this.value==\'\')this.value=\'Your city\'"' . 'onfocus="if(this.value==\'Your city\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_CITY_TEXT) ? '<span class="inputRequirement">' . ENTRY_CITY_TEXT . '</span>': ''); ?></div>
      

<?php
  if (ACCOUNT_STATE == 'true') {
?>

     
			<div class="fieldKey"><?php echo ENTRY_STATE; ?></div>
			<div class="fieldValue">
<?php
    if ($process == true) {
      if ($entry_state_has_zones == true) {
        $zones_array = array();
        $zones_query = tep_db_query("select zone_name from " . TABLE_ZONES . " where zone_country_id = '" . (int)$country . "' order by zone_name");
        while ($zones_values = tep_db_fetch_array($zones_query)) {
          $zones_array[] = array('id' => $zones_values['zone_name'], 'text' => $zones_values['zone_name']);
        }
        echo tep_draw_pull_down_menu('state', $zones_array);
      } else {
        echo tep_draw_input_field('state', 'Your state', 'onblur="if(this.value==\'\')this.value=\'Your state\'"' . 'onfocus="if(this.value==\'Your state\')this.value=\'\'"' . 'style="color:#000;"');
      }
    } else {
      echo tep_draw_input_field('state', 'Your state', 'onblur="if(this.value==\'\')this.value=\'Your state\'"' . 'onfocus="if(this.value==\'Your state\')this.value=\'\'"' . 'style="color:#000;"');
    }

    if (tep_not_null(ENTRY_STATE_TEXT)) echo '&nbsp;<span class="inputRequirement">' . ENTRY_STATE_TEXT . '</span>';
?>
			</div>
    

<?php
  }
?>

     
			<div class="fieldKey"><?php echo ENTRY_COUNTRY; ?></div>
			<div class="fieldValue"><?php echo tep_get_country_list('country') . '&nbsp;' . (tep_not_null(ENTRY_COUNTRY_TEXT) ? '<span class="inputRequirement">' . ENTRY_COUNTRY_TEXT . '</span>': ''); ?></div>
    
    </div>
</div>
<div id="border-bottom"></div><br />
	<h2 style="clear:both"><?php echo CATEGORY_CONTACT; ?></h2><hr>

	<div class="contentText">
		<div style="overflow:hidden;">
		
			<div class="fieldKey"><?php echo ENTRY_TELEPHONE_NUMBER; ?></div>
			<div class="fieldValue"><?php echo tep_draw_input_field('telephone', 'Your telephone number', 'onblur="if(this.value==\'\')this.value=\'Your telephone number\'"' . 'onfocus="if(this.value==\'Your telephone number\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_TELEPHONE_NUMBER_TEXT) ? '<span class="inputRequirement">' . ENTRY_TELEPHONE_NUMBER_TEXT . '</span>': ''); ?></div>
     
      
			<div class="fieldKey"><?php echo ENTRY_FAX_NUMBER; ?></div>
			<div class="fieldValue"><?php echo tep_draw_input_field('fax', 'Your fax number', 'onblur="if(this.value==\'\')this.value=\'Your fax number\'"' . 'onfocus="if(this.value==\'Your fax number\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_FAX_NUMBER_TEXT) ? '<span class="inputRequirement">' . ENTRY_FAX_NUMBER_TEXT . '</span>': ''); ?></div>
   
    
			<div class="fieldKey"><?php echo ENTRY_NEWSLETTER; ?></div>
			<div class="fieldValue"><?php echo tep_draw_checkbox_field('newsletter', '1') . '&nbsp;' . (tep_not_null(ENTRY_NEWSLETTER_TEXT) ? '<span class="inputRequirement">' . ENTRY_NEWSLETTER_TEXT . '</span>': ''); ?></div>
    
		</div>
	</div>
<div id="border-bottom"></div><br />
	<h2 style="clear:both"><?php echo CATEGORY_PASSWORD; ?></h2><hr>

	<div class="contentText">
		<div style="overflow:hidden;">
     
			<div class="fieldKey"><?php echo ENTRY_PASSWORD; ?></div>
			<div class="fieldValue"><?php echo tep_draw_password_field('password', 'Your password', 'onblur="if(this.value==\'\')this.value=\'Your password\'"' . 'onfocus="if(this.value==\'Your password\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_PASSWORD_TEXT) ? '<span class="inputRequirement">' . ENTRY_PASSWORD_TEXT . '</span>': ''); ?></div>
    
     
			<div class="fieldKey"><?php echo ENTRY_PASSWORD_CONFIRMATION; ?></div>
			<div class="fieldValue"><?php echo tep_draw_password_field('confirmation', 'Your password', 'onblur="if(this.value==\'\')this.value=\'Your password\'"' . 'onfocus="if(this.value==\'Your password\')this.value=\'\'"' . 'style="color:#000;"') . '&nbsp;' . (tep_not_null(ENTRY_PASSWORD_CONFIRMATION_TEXT) ? '<span class="inputRequirement">' . ENTRY_PASSWORD_CONFIRMATION_TEXT . '</span>': ''); ?></div>
  
		</div>
	</div>
<div id="border-bottom"></div><br />
	<div class="buttonSet">
		<span class="buttonAction"><?php echo tep_draw_button(IMAGE_BUTTON_CONTINUE, 'person', null, 'primary'); ?></span>
	</div>
</div>

</form>

<?php
  require(DIR_WS_INCLUDES . 'template_bottom.php');
  require(DIR_WS_INCLUDES . 'application_bottom.php');
?>