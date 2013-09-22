<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/
chdir('../../');
require('includes/application_top.php');

$val=$_GET['value'];
$value_post = (isset($val) ? $val : '');

$action = (isset($_GET['action']) ? $_GET['action'] : '');

if (tep_not_null($action)) {
	switch ($action){
		case 'sortfields':
		
			$_SESSION['sorted_fields_array']=$value_post;
			echo 'ok';
		break;
		case 'display_alerts';
		
			$_SESSION['show_alert_messages']=$value_post;
			echo 'ok';
		break;
		case 'enable_sorting';
		
			$_SESSION['enable_sorting']=$value_post;
			echo 'ok';
			
		break;
		
	}
}
?>
