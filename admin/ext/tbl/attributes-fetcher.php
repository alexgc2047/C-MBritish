<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/

chdir('../../');
require('includes/application_top.php');

$item_post = (isset($_POST['item']) ? $_POST['item'] : '');
$product_id_post = (isset($_POST['product_id']) ? $_POST['product_id'] : '');
switch ($item_post) {
	case 'description': //product description
		 if(tep_not_null($product_id_post)){

			$products_query = tep_db_query("select pd.products_description from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' and p.products_id = '".(int)$product_id_post."' LIMIT 1");  
			$product_description = tep_db_fetch_array($products_query);
			echo $product_description['products_description'];
		}
	break;
	
}
?>
