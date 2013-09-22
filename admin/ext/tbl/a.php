<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/
chdir('../../');
require('includes/application_top.php');

$current_category_id=$_POST['cid'];


$products_query = tep_db_query("select p.products_id, pd.products_name, pd.products_description, p.products_model, p.products_quantity, p.products_image, p.products_price, p.products_weight, p.products_date_added, p.products_last_modified, p.products_date_available, p.products_status from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c where p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' and p.products_id = p2c.products_id and p2c.categories_id = '" . (int)$current_category_id . "' order by pd.products_name");


?>

<select name="cPath_products" onchange="this.form.submit();" style="display: block; ">
<option>g</option>
<?php while ($products = tep_db_fetch_array($products_query)) { ?>

<option><?php echo $products['products_name']; ?></option>

<?php } ?>

</select>
