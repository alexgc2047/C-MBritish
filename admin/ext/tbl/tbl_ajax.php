<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/

chdir('../../');
require('includes/application_top.php');

if (file_exists(DIR_WS_LANGUAGES . $language . '/tbl.php')) {
include(DIR_WS_LANGUAGES . $language . '/tbl.php');
}

if(isset($sessionTimeout)){
echo 'tblSessionTimeOut';
die;
}

//$val=trim($_POST['value']);
$val=$_POST['value'];

$value_post = (isset($val) ? $val : '');
$product_id_post = (isset($_POST['row_id']) ? $_POST['row_id'] : '');
$column_post = (isset($_POST['column']) ? $_POST['column'] : '');

if (tep_not_null($column_post)) {
	switch ($column_post) {
		case 'products_name': //product name
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
					$sql_data_array = array('products_name' => tep_db_prepare_input($value_post));
					if(tep_db_perform(TABLE_PRODUCTS_DESCRIPTION, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "' and language_id = '" . (int)$languages_id . "'")) echo stripslashes($value_post);
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		case 'products_description': //product description
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
					$sql_data_array = array('products_description' => tep_db_prepare_input($value_post));
					if(tep_db_perform(TABLE_PRODUCTS_DESCRIPTION, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "' and language_id = '" . (int)$languages_id . "'")) echo 'ok';
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		case 'products_model': //product model
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
					$sql_data_array = array('products_model' => tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
            				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo stripslashes($value_post);
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		case 'products_quantity': //product quantity
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
					if(is_numeric($value_post)){
						$sql_data_array = array('products_quantity' => (int)tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
		    				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo stripslashes($value_post);
					}else echo TBL_ERROR_NONUMERIC_VALUE;
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		case 'products_price': //product price
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
					if(is_numeric($value_post)){
						$sql_data_array = array('products_price' => (float)tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
		    				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo stripslashes($value_post);
					}else echo TBL_ERROR_NONUMERIC_VALUE;
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		case 'products_prices': //product price
		 
			 if(tep_not_null($value_post)){
		
				$values=json_decode(stripslashes($value_post));
	
				foreach($values as $key => $val){
	
					$sql_data_array = array('products_price' => (float)tep_db_prepare_input($val),'products_last_modified' => 'now()');
    					tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$key . "'");
    				
    				}
				echo '1';
			}else echo TBL_ERROR_EMPTY_VALUE;
			
		break;
		case 'products_weight': //product weight
			 if(tep_not_null($product_id_post)){
				 if (tep_not_null($value_post)){
					if(is_numeric($value_post)){
						$sql_data_array = array('products_weight' => (float)tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
		    				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo stripslashes($value_post);
					}else echo TBL_ERROR_NONUMERIC_VALUE;
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		case 'products_status': //product status
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
				 	if(strlen($value_post)==1){//check the length
						if($value_post==0 || $value_post==1){
							$sql_data_array = array('products_status' => (int)tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
			    				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo $value_post;
						}else echo TBL_ERROR_STATUS_VALUE_MUST_BE_0_OR_1;
					}else echo TBL_ERROR_STATUS_VALUE_LENGTH_MUST_BE_ONE;	
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		/*
			Uncomment bellow command to enable sorting products if you have a field products_sort_order in products folder
			Check this addon: http://addons.oscommerce.com/info/8311
		*/
		/**/	
		case 'products_sort_order':
			
			
			if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
							$sql_data_array = array('products_sort_order' => (int)tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
			    				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo $value_post;
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
			
			
		break;
		/**/
		case 'products_tax_class_id':
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
							$sql_data_array = array('products_tax_class_id' => (int)tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
			    				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo '1_'.TBL_AJAX_TAX_CLASS_CHANGE_SUCCESS;
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		case 'manufacturers_id':
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
							$sql_data_array = array('manufacturers_id' => (int)tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
			    				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo '1_'.TBL_AJAX_MANUFACTURER_CHANGE_SUCCESS;
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;
		case 'products_date_available':
			 if(tep_not_null($product_id_post)){
				 if(tep_not_null($value_post)){
							$sql_data_array = array('products_date_available' => tep_db_prepare_input($value_post),'products_last_modified' => 'now()');
			    				if(tep_db_perform(TABLE_PRODUCTS, $sql_data_array, 'update', "products_id = '" . (int)$product_id_post . "'")) echo '1_'.TBL_AJAX_DATE_AVAILABLE_CHANGE_SUCCESS;
				}else echo TBL_ERROR_EMPTY_VALUE;
			}
		break;		
		case 'products_attributes':
			 if(tep_not_null($product_id_post)){
			 	$responce='ok';
				 if(tep_not_null($value_post)){
				 
					$exp=explode('_@_',$value_post);					
					
					foreach($exp as $va){
												
						$vals=explode(';',$va);
					
						if($vals[4]=='sin') $prefix='+'; elseif($vals[4]=='plus') $prefix='-'; else $prefix=$vals[4]; 
					
						tep_db_query("UPDATE " . TABLE_PRODUCTS_ATTRIBUTES . " SET options_id='".$vals[1]."' , options_values_id='".$vals[2]."', options_values_price='".$vals[3]."', price_prefix='".$prefix."' WHERE products_attributes_id='".(int)$vals[0]."' AND products_id = '".(int)$product_id_post."'");

					}
					$responce.='';

				}
				$vpost = (isset($_POST['value1']) ? $_POST['value1'] : '');
					 if(tep_not_null($vpost)){
					 
						 $exp=explode('_@_',$vpost);
						 foreach($exp as $va){

						 	$vals=explode(';',$va);
						 
							if($vals[3]=='sin') $prefix='+'; elseif($vals[3]=='plus') $prefix='-'; else $prefix=$vals[3];
					
							tep_db_query("INSERT INTO " . TABLE_PRODUCTS_ATTRIBUTES . " (products_id, options_id, options_values_id,options_values_price,price_prefix) VALUES ('".(int)$product_id_post."','".$vals[0]."','".$vals[1]."','".$vals[2]."','".$prefix."')");
						 
						 
						 }
						 $responce.='_reload';
					 
					 }
					 
				echo $responce;
				
			}
		break;
		case'delete_attribute':
		
			if(tep_not_null($value_post)){
			  
			 	if(tep_db_query("DELETE FROM " . TABLE_PRODUCTS_ATTRIBUTES . " WHERE products_attributes_id='".(int)$value_post."'")) echo 'reload_attributes'; else echo 'error';
			 
			}
		
		break;
		default:
		
			echo stripslashes($value_post);
		
	}
}
?>
