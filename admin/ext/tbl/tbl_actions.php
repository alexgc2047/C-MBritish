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


$item_post = (isset($_POST['item']) ? $_POST['item'] : '');
$product_id_post = (isset($_POST['product_id']) ? $_POST['product_id'] : '');

switch ($item_post) {

case 'deleteProducts':

$pids = (isset($_POST['pids']) ? $_POST['pids'] : '');

	if(tep_not_null($pids)){

		$pidakia=array();

		foreach($pids as $key => $pid){
		
			$pidakia[]=$key;

			tep_db_query("delete from " . TABLE_PRODUCTS_TO_CATEGORIES . " where products_id = '" . (int)$key . "' and categories_id = '" . (int)$pid . "'");
		
			$product_categories_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS_TO_CATEGORIES . " where products_id = '" . (int)$key . "'");
			$product_categories = tep_db_fetch_array($product_categories_query);

			if ($product_categories['total'] == '0') { tep_remove_product($key); }

		}

		if (USE_CACHE == 'true') {
		  tep_reset_cache_block('categories');
		  tep_reset_cache_block('also_purchased');
		}


		echo '1';

	}


break;


case 'changeProductsStatus':

	$pids = (isset($_POST['pids']) ? $_POST['pids'] : '');
	$changeTo = (isset($_POST['changeTo']) ? $_POST['changeTo'] : '');

	if(tep_not_null($pids) && tep_not_null($changeTo)){

		echo (tep_db_query("update " . TABLE_PRODUCTS . " set products_status=".$changeTo." where products_id IN (".$pids.") ")) ? '1' : '0';

	}else echo '0';


break;


case 'description': //product description
	 if(tep_not_null($product_id_post)){

		$products_query = tep_db_query("select pd.products_description from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' and p.products_id = '".(int)$product_id_post."' LIMIT 1");  
		$product_description = tep_db_fetch_array($products_query);
		echo $product_description['products_description'];
	}
break;

case 'attributes':

	if(tep_not_null($product_id_post)){
	 
	   $attributes = "select pa.* from " . TABLE_PRODUCTS_ATTRIBUTES . " pa left join " . TABLE_PRODUCTS_DESCRIPTION . " pd on pa.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' WHERE pa.products_id=".$product_id_post." order by pd.products_name";

	?>
	  
	  <table width="100%" id="attributes-table">
	   <tr>
		   <th class="dataTableHeadingContent">&nbsp;<?php echo TBL_HEADING_OPT_NAME; ?>&nbsp;</th>
		   <th class="dataTableHeadingContent">&nbsp;<?php echo TBL_HEADING_OPT_VALUE; ?>&nbsp;</th>
		   <th class="dataTableHeadingContent" align="right">&nbsp;<?php echo TBL_HEADING_OPT_PRICE; ?>&nbsp;</th>
		   <th class="dataTableHeadingContent" align="center">&nbsp;<?php echo TBL_HEADING_OPT_PRICE_PREFIX; ?>&nbsp;</th>
		   <th class="dataTableHeadingContent" align="center">&nbsp;<?php echo TBL_HEADING_OPT_ACTION; ?>&nbsp;</th>
	   </tr>
	   
	  <?php 
	 $attributes = tep_db_query($attributes);
	  while ($attributes_values = tep_db_fetch_array($attributes)){

	    $options_name = tep_options_name($attributes_values['options_id']);
	    $values_name = tep_values_name($attributes_values['options_values_id']);

	?> 
		<tr>

			<td align="center">
			<input type="hidden" class="hidden_products_attributes_id" value="<?php echo $attributes_values['products_attributes_id']; ?>" />
			<input type="hidden" class="hidden_products_id" value="<?php echo $product_id_post; ?>" />
			<select class="attributes_selectMenus_options" name="options_id">           
			<?php
			      $options = tep_db_query("select * from " . TABLE_PRODUCTS_OPTIONS . " where language_id = '" . $languages_id . "' order by products_options_name");
			      while($options_values = tep_db_fetch_array($options)) {
				     		
				  echo "\n" . '<option name="' . $options_values['products_options_name'] . '" value="' . $options_values['products_options_id'] . '" '.($attributes_values['options_id'] == $options_values['products_options_id'] ? 'selected="selected"' : '').'>' . $options_values['products_options_name'] . '</option>';

			      } 
			?>
			</select>
			</td><td  align="center">
				<select class="attributes_selectMenus_values" name="values_id">
				<?php 
				      $values = tep_db_query("select * from " . TABLE_PRODUCTS_OPTIONS_VALUES . " where language_id ='" . $languages_id . "' order by products_options_values_name");
				      while($values_values = tep_db_fetch_array($values)) {
	
					echo "\n" . '<option name="' . $values_values['products_options_values_name'] . '" '.($attributes_values['options_values_id'] == $values_values['products_options_values_id'] ? 'selected="selected"' : '').' value="' . $values_values['products_options_values_id'] . '">' . $values_values['products_options_values_name'] . '</option>';
				      }
				?>
			</td>

			<td align="center" class="smallText">&nbsp;<input type="text" name="value_price" class="value_price lfor" value="<?php echo $attributes_values['options_values_price']; ?>" size="6">&nbsp;</td>
			<td align="center" class="smallText">&nbsp;<input type="text" name="price_prefix" class="price_prefix lfor" style="text-align:center;" value="<?php echo $attributes_values['price_prefix']; ?>" size="2">&nbsp;</td>
			<td align="center" class="smallText">&nbsp;<button class="delete_attribute_button attributesbutton" id="attributes_item_delete_<?php echo $attributes_values['products_attributes_id']; ?>" class="goback"><?php echo TBL_OPT_ACTION_DELETE; ?></button>&nbsp;</td>

		</tr>

	<?php } ?>
	 
	</table>

	 <?php
	 
	 }


break;

case 'attributes-add-new':

	if(tep_not_null($product_id_post)){ ?>
		<tr style="background:#F5D2CB;">
			<td align="center">
				<select class="attributes_selectMenus_options_new" id="attributes_selectMenus_options_<?php echo $product_id_post; ?>" name="options_id">           
				<?php
				      $options = tep_db_query("select * from " . TABLE_PRODUCTS_OPTIONS . " where language_id = '" . $languages_id . "' order by products_options_name");
				      while($options_values = tep_db_fetch_array($options)) echo "\n" . '<option name="' . $options_values['products_options_name'] . '" value="' . $options_values['products_options_id'] . '">' . $options_values['products_options_name'] . '</option>';
				?>
				</select>
			</td><td align="center">
				<select class="attributes_selectMenus_values_new" id="attributes_selectMenus_values_<?php echo $product_id_post; ?>" name="values_id">
				<?php 
				      $values = tep_db_query("select * from " . TABLE_PRODUCTS_OPTIONS_VALUES . " where language_id ='" . $languages_id . "' order by products_options_values_name");
				      while($values_values = tep_db_fetch_array($values))echo "\n" . '<option name="' . $values_values['products_options_values_name'] . '" value="' . $values_values['products_options_values_id'] . '">' . $values_values['products_options_values_name'] . '</option>';
				?>
				</select>
			</td>
			<td align="center" class="smallText">&nbsp;<input type="text" name="value_price" class="value_price_new lfor" value="0" size="6">&nbsp;</td>
			<td align="center" class="smallText">&nbsp;<input type="text" name="price_prefix" class="price_prefix_new lfor" style="text-align:center;" value="+" size="2">&nbsp;</td>
		</tr>

	<?php
	}
break;
	
}

?>
