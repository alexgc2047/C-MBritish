<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/

$defaults=array(

	'entriesPerPage'=>'5', // enter a number to display max entries per page (make sure the number you entered exists in $perPageArray )
	'tableSorting'=>1, // make table columns sortable or not (Note that sortable value on $fieldsArray must be true) This is applicable when we have more than one products listing
	'orderBy'=>'pd.products_name',
	'ascDesc'=>'ASC',
	'colorEachTableRowDifferently'=>true, // apply a different background color to each table row
	
	'displayByStatus'=>2, // 0 displays products that are out of stock, 1 displays products that are in of stock, 2 display all products in stock and out of stock
	'displayByStatusSelection'=>true, // in stock, out of stock, both, selection
	
	'displayAlertMessages'=>1, // 0 does not display alert dialogs after certain actions, 1 displays alert dialogs after certain actions
	'displayFieldsPanel'=>true, // displays or not the right panel (selection of fields)

	'displayLanguageSelection'=>true,
	'displayGoBackButton'=>true,
	'displaySettingsButton'=>true,
	'displayGoToDefaultAdministrationPanel'=>true,
	'displayOrderBySelection'=>true,
	'displayAscDescSelection'=>true,
	'displayBottomInformation'=>true, // at least buy me a beer => https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7XDU2DWB33TJU

	'countProducts'=>false,
	'countSubcategories'=>false,
	'displayCountProducts'=>true, // displays or not the ability to choose to display how many products - subcategories are under the category

	'paginationPosition'=>'bottom', // top or bottom // anything else will not display it
	
	'productsDescriptionEditor'=>'tinymce', // or ckeditor // used when editing product's description

	'inTableSearchPosition'=>array('visible'=>true,'x'=>'right','y'=>'top'), // x can take only left or right and y top or bottom

	/* PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER

	In order to be able to preview the product description before applying any changes you need to set up a unique id that is wrapped on the products description code which can be found in the catalog's product_info.php page.

	You can change it to whatever you like but make sure you have also edit catalog's product_info.php and change: 

	<?php echo stripslashes($product_info['products_description']); ?> 
	
	to <?php echo '<span id="XXX">'.stripslashes($product_info['products_description']).'</span>'; ?>
	
	or <span id="XXX"><?php echo stripslashes($product_info['products_description']); ?></span>

	Where XXX is the value of the key productDescriptionUniqueIdWrapper which is by default 'tbl'.
	*/

	'productDescriptionUniqueIdWrapper'=>'tbl'

);

/*

Per page entries

	$defaults['entriesPerPage'] must be a number that is included bellow

*/
$perPageArray=array('5','10','15','20','30','50','70','90',TBL_TEXT_ALL);


/* Search on specific field

	{id}: the name of the field
	{text}: the text to display on the select menu

*/
$searchOnFieldArray=array(

array('id'=>'pd.products_name','text'=>TBL_TEXT_SEARCH_IN_PRODUCTS_NAME),
array('id'=>'p.products_model','text'=>TBL_TEXT_SEARCH_IN_PRODUCTS_MODEL)

);

/* Order by specific field

	key: the name of the field
	value: the text to display on the select menu

*/
$orderByArray=array('pd.products_name'=>TBL_TEXT_ORDER_BY_PRODUCT_NAME,
'p.products_last_modified'=>TBL_TEXT_ORDER_BY_LAST_MODIFIED,
'p.products_date_added'=>TBL_TEXT_ORDER_BY_DATE_ADDED);

/* Order by asc desc

	key: the name of the field
	value: the text to display on the select menu

*/
$ascDescArray=array('ASC'=>TBL_TEXT_ASC,'DESC'=>TBL_TEXT_DESC);

/*

WHERE THE MAGIC BEGINS

You can add more rows if are present on products table

'products_image'=>array('visible'=>false,'sortable'=>false,'cellEditable'=>false,'theadText'=>TBL_HEADING_PRODUCTS_IMAGE),

	{visible}: set true to display always
	{lockVisibility}: when true user cannot change status visibility set by {visible} (Visibility status can be changed on the fly by the right hidden Panel)
	{sortable}: makes the table column sortable {apply only to alphanumeric values such as Price , weight. On image does not work }
	{cellEditable}: means that when you click on a table cell it adds an input so you can change the value, just like the price and weight.
	{exportable}: whether the field will be exported to csv, json e.t.c.
	{theadText}: its the table field name (translations are located inside languages folder in tbl.php)

Tips:

	Set {visible}:true and {lockVisibility}:true to always display field (user cannot hide the field)

	Set {visible}:false and {lockVisibility}:true to always not display field (user cannot display the field)

	Set {visible}:false and {lockVisibility}:false to let user decide if want to display the field, which is not visible by default

	Set {visible}:true and {lockVisibility}:false to let user decide if want to display the field, which is visible by default

*/
$fieldsArray=array(

	'products_image'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>false,'cellEditable'=>false,'exportable'=>false,'theadText'=>TBL_HEADING_PRODUCTS_IMAGE),
	'products_model'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>true,'cellEditable'=>true,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_MODEL),
	'products_quantity'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>true,'cellEditable'=>true,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_QUANTITY),
	'products_price'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>true,'cellEditable'=>true,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_PRICE),
	
	//products_order_status is a custom implementation. There is no products_price_gross field ion products table
	'products_price_gross'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>true,'cellEditable'=>false,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_PRICE_GROSS),
	
	'tax_class_title'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>false,'cellEditable'=>false,'exportable'=>true,'theadText'=>TBL_HEADING_TAX_CLASS_TITLE),
	'products_weight'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>true,'cellEditable'=>true,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_WEIGHT),
	'products_status'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>false,'cellEditable'=>false,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_STATUS),
	'products_date_available'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>false,'cellEditable'=>false,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_DATE_AVAILABLE),
	'products_description'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>false,'cellEditable'=>false,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_DESCRIPTION),
	
	'manufacturers_name'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>false,'cellEditable'=>false,'exportable'=>true,'theadText'=>TBL_HEADING_MANUFACTURERS_NAME),
	'attributes'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>false,'cellEditable'=>false,'exportable'=>false,'theadText'=>TBL_HEADING_ATTRIBUTES),

	'products_ordered'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>true,'cellEditable'=>false,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_ORDERED),
	//products_order_status is a custom implementation.
	'products_order_status'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>true,'cellEditable'=>false,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_ORDER_STATUS),
	
	/*
		Uncomment bellow command to enable sorting products if you have a field products_sort_order in products folder
		Check this addon: http://addons.oscommerce.com/info/8311
	*/
	//'products_sort_order'=>array('visible'=>false,'lockVisibility'=>false,'sortable'=>true,'cellEditable'=>true,'exportable'=>true,'theadText'=>TBL_HEADING_PRODUCTS_SORT_ORDER)
	

);


/*

When we have fields from other tables than products we must add them as extra fields
which means we have to write the query SELECT {the field we want to display} FROM {table} WHERE {where case}

*/
$_EXTRA_FIELDS=array(

	'manufacturers_name'=>array(
		'SELECT'=>array(false=>'',true=>', m.manufacturers_name, m.manufacturers_id'),
		'FROM'=>array(false=>'',true=>TABLE_MANUFACTURERS.' m, '),
		'WHERE'=>array(false=>'',true=>'m.manufacturers_id=p.manufacturers_id AND ')
	),

	'tax_class'=>array(
		'SELECT'=>array(false=>'',true=>', tc.tax_class_title, p.products_tax_class_id'),
		'FROM'=>array(false=>'',true=>TABLE_TAX_CLASS.' tc, '),
		'WHERE'=>array(false=>'',true=>'p.products_tax_class_id=tc.tax_class_id AND ')
	)

);

/*

Apply a css style or a class to the table cell (td)

For example on products_image the image has a standart width and height so its better to set it directly on the cell

*/

$_table_td_rules=array(

	'products_name'=>array('style'=>'cursor:pointer;','class'=>'centerAlign'),
	'products_image'=>array('style'=>'width:'.SMALL_IMAGE_WIDTH.'px;height:'.SMALL_IMAGE_HEIGHT.'px;','class'=>''),
	'products_model'=>array('style'=>'','class'=>''),
	'products_quantity'=>array('style'=>'','class'=>''),
	'products_price'=>array('style'=>'','class'=>''),
	'products_price_gross'=>array('style'=>'','class'=>''),
	'products_weight'=>array('style'=>'','class'=>''),
	'products_status'=>array('style'=>'','class'=>''),
	'products_date_available'=>array('style'=>'','class'=>''),
	'products_description'=>array('style'=>'','class'=>''),
	'products_ordered'=>array('style'=>'','class'=>''),
	'manufacturers_name'=>array('style'=>'','class'=>''),
	'tax_class_title'=>array('style'=>'','class'=>''),
	'attributes'=>array('style'=>'','class'=>'')

);


?>
