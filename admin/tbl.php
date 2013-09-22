<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/

require 'includes/application_top.php';

//Alternative Administration System Configuration File
require 'ext/tbl/config.php';

//pagination class
include 'ext/tbl/classes/pagination.php';

$languages = tep_get_languages();
$languages_array = array();
$languages_selected = DEFAULT_LANGUAGE;
for ($i = 0, $n = sizeof($languages); $i < $n; $i++){
	$languages_array[] = array('id' => $languages[$i]['code'],'text' => $languages[$i]['name']);
	if ($languages[$i]['directory'] == $language){
		$languages_selected = $languages[$i]['code'];
		$languages_selected_name = $languages[$i]['name'];
	}
}

if(isset($_POST['radio'])){
	if($_POST['radio']=='1' || $_POST['radio']=='0' || $_POST['radio']=='2'){
		$show_products_by_status=$_POST['radio'];
		$_SESSION['show_products_by_status']=$show_products_by_status;
	}else $show_products_by_status = (isset($_SESSION['show_products_by_status']) ? $_SESSION['show_products_by_status'] : $defaults['displayByStatus']);
}else $show_products_by_status = (isset($_SESSION['show_products_by_status']) ? $_SESSION['show_products_by_status'] : $defaults['displayByStatus']);

if(isset($_POST['entriesPerPage'])){
	if(in_array($_POST['entriesPerPage'],$perPageArray)){
		$entriesPerPage=$_POST['entriesPerPage'];
		$_SESSION['entriesPerPage']=$entriesPerPage;
	}else $entriesPerPage = (isset($_SESSION['entriesPerPage']) ? $_SESSION['entriesPerPage'] : $defaults['entriesPerPage']);
}else $entriesPerPage = (isset($_SESSION['entriesPerPage']) ? $_SESSION['entriesPerPage'] : $defaults['entriesPerPage']);

if(isset($_POST['radio-show-alerts'])){
	if($_POST['radio-show-alerts']=='1' || $_POST['radio-show-alerts']=='0'){
		$show_alert_messages=$_POST['radio-show-alerts'];
		$_SESSION['show_alert_messages']=$show_alert_messages;
	}else $show_alert_messages = (isset($_SESSION['show_alert_messages']) ? $_SESSION['show_alert_messages'] : $defaults['displayAlertMessages']);
}else $show_alert_messages = (isset($_SESSION['show_alert_messages']) ? $_SESSION['show_alert_messages'] : $defaults['displayAlertMessages']);

if(isset($_POST['orderBy'])){
	$orderBy=$_POST['orderBy'];
	$_SESSION['orderBy']=$orderBy;
}else $orderBy = (isset($_SESSION['orderBy']) ? $_SESSION['orderBy'] : $defaults['orderBy']);

if(isset($_POST['ascDesc'])){
	$ascDesc=$_POST['ascDesc'];
	$_SESSION['ascDesc']=$ascDesc;
}else $ascDesc = (isset($_SESSION['ascDesc']) ? $_SESSION['ascDesc'] : $defaults['ascDesc']);

$counts=array('count_products','count_subcategories');

if(isset($_POST['check'])){

	if(isset($_POST['columncheck'])){

		foreach($_POST['columncheck'] as $john){

			$fieldsArray[$john]['visible']= (isset($fieldsArray[$john]['visible'])) ? true : false;
			$columns_bool[$john]= (isset($fieldsArray[$john]['visible']) ) ? true : false;
		
		}

	}

	//store to session so to know which fields are
	$_SESSION['tbl_fields']=$columns_bool;

}else{

	if(isset($_SESSION['tbl_fields'])){

		foreach($_SESSION['tbl_fields'] as $key => $val) $fieldsArray[$key]['visible']=$val;

	}

}

if(isset($_POST['ccheck'])){
	if(isset($_POST['countcheck'])){

		foreach($_POST['countcheck'] as $arxwn){

			if(in_array($arxwn,$counts,true)){
				switch($arxwn){
					case 'count_products': $bool_count_products=true; break;
					case 'count_subcategories': $bool_count_subcategories=true; break;
				}
			}else{
				switch($arxwn){
					case 'count_products': $bool_count_products=false; break;
					case 'count_subcategories': $bool_count_subcategories=false; break;
				}
			}

		}
		//store to sessions
		$_SESSION['count_products']=$bool_count_products;
		$_SESSION['count_subcategories']=$bool_count_subcategories;

	}else{

		//We need bool variables for later using
		$bool_count_products= false;
		$bool_count_subcategories= false;
		$_SESSION['count_products']=false;
		$_SESSION['count_subcategories']=false;

	}

}else{

	$bool_count_products= isset($_SESSION['count_products']) ? $_SESSION['count_products'] : $defaults['countProducts'] ;
	$bool_count_subcategories= isset($_SESSION['count_subcategories']) ? $_SESSION['count_subcategories'] :  $defaults['countSubcategories'] ;

}
//unset($_SESSION['sorted_fields_array']);
if(isset($_SESSION['sorted_fields_array'])){

	$jexp=explode(',',$_SESSION['sorted_fields_array']);

	$tempFieldsArray=array();
	
	foreach($jexp as $sfa){	$tempFieldsArray[$sfa]= $fieldsArray[$sfa];  }
	
	$fieldsArray=$tempFieldsArray;

}

//QUERIES

//FIND CATEGORIES ################################################################################
$categories_count=0;
$rows=0;

if(isset($_GET['search']) && tep_not_null($_GET['search']) ){

	$search = tep_db_prepare_input($_GET['search']);
	$catQuery='';
	$catLike=" AND cd.categories_name like '%" . tep_db_input($search) . "%'";

}else{

      $catQuery=" AND c.parent_id = '" . (int)$current_category_id . "'";
      $catLike='';
      
}

$categories_query = tep_db_query("select c.categories_id, cd.categories_name, c.categories_image, c.parent_id, c.sort_order, c.date_added, c.last_modified from " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where c.categories_id = cd.categories_id and cd.language_id = '" . (int)$languages_id . "' ".$catQuery.''.$catLike." order by c.sort_order, cd.categories_name");

//FIND PRODUCTS ################################################################################

//manufacturers
if($fieldsArray['manufacturers_name']['visible']){

	//store in SESSION manufacturers results in order to avoid continuously call db query
	if(!isset($_SESSION['cache_manufacturers_array'])){

			$manufacturers_query=mysql_query("SELECT manufacturers_id, manufacturers_name FROM manufacturers");
			if(mysql_num_rows($manufacturers_query)>0){

				while($manufacturers_row=mysql_fetch_array($manufacturers_query)) $manufacturers_array[]=array('id'=>$manufacturers_row['manufacturers_id'],'name'=>$manufacturers_row['manufacturers_name']);
				$_SESSION['cache_manufacturers_array']=$manufacturers_array;
					
			}

	}else $manufacturers_array=$_SESSION['cache_manufacturers_array'];

}
//manufacturers

//tax class
if($fieldsArray['tax_class_title']['visible']){

	//store in SESSION tax classes results in order to avoid continuously call db query
	if(!isset($_SESSION['cache_tax_class_array'])){
	
		$tax_class_query=mysql_query("SELECT tc.tax_class_id, tc.tax_class_title, tr.tax_rate FROM tax_class tc, tax_rates tr WHERE tc.tax_class_id=tr.tax_class_id");
		if(mysql_num_rows($tax_class_query)>0){

			while($tax_class_row=mysql_fetch_array($tax_class_query)) $tax_class_array[]=array('id'=>$tax_class_row['tax_class_id'],'title'=>$tax_class_row['tax_class_title'],'tax_rate'=>tep_display_tax_value($tax_class_row['tax_rate']));
			$_SESSION['cache_tax_class_array']=$tax_class_array;
		
		}
		
	}else $tax_class_array=$_SESSION['cache_tax_class_array'];

}
//tax class

if(isset($_GET['search'])  && tep_not_null($_GET['search'])){

	$searchOnField= isset($_GET['searchOnField']) ? $_GET['searchOnField'] : 'pd.products_name';

	$searchSql=' AND '.$searchOnField." like '%" . tep_db_input($search) . "%'";
	$tblCategories='';
	$tblCategoriesWhere='';

	$tblCategories=', ' . TABLE_PRODUCTS_TO_CATEGORIES . ' p2c';
	$tblCategoriesWhere=' AND p.products_id = p2c.products_id ';

}else{

	$searchSql='';
	$tblCategories=', ' . TABLE_PRODUCTS_TO_CATEGORIES . ' p2c';
	$tblCategoriesWhere=' AND p.products_id = p2c.products_id and p2c.categories_id = '. (int)$current_category_id;

}
    
$orderBySql=isset($_GET['orderBy']) ? $_GET['orderBy'] : $orderBy;
$ascDescSql=isset($_GET['ascDesc']) ? $_GET['ascDesc'] : $ascDesc;

$cPathString=isset($_GET['cPath']) ? 'cPath='.$_GET['cPath'] : 'cPath=0';
    
if(isset($_GET['search']) && tep_not_null($_GET['search']) ){ $cPathString='';

    $cPathString.='search='.$_GET['search'];
    if(isset($_GET['searchOnField'])) $cPathString.='&amp;searchOnField='.$_GET['searchOnField'];
    if(isset($_GET['ascDesc'])) $cPathString.='&amp;ascDesc='.$_GET['ascDesc'];
    if(isset($_GET['orderBy'])) $cPathString.='&amp;orderBy='.$_GET['orderBy'];
    
}
    
$currentPage=isset($_GET['page']) ? intval($_GET['page']) : 1;
    
if(intval($currentPage) < 1 ) { header('Location: tbl.php?'.$cPathString.'&page=1' ); die; }
    
$limitLeft=$entriesPerPage*($currentPage-1);   
$limitation= ($entriesPerPage!='All') ? " LIMIT ".$limitLeft." , ".$entriesPerPage." " : '';
    
$selectQuery=array();   
foreach($_EXTRA_FIELDS as $key => $extra_field){

	$selectQuery[]=$extra_field['SELECT'][$fieldsArray[$key]['visible']];
	$fromQuery[]=$extra_field['FROM'][$fieldsArray[$key]['visible']];
	$whereQuery[]=$extra_field['WHERE'][$fieldsArray[$key]['visible']];

}
    
$products_query = tep_db_query('SELECT SQL_CALC_FOUND_ROWS p2c.categories_id, p.*, pd.* '.implode(' ', $selectQuery).' 
    FROM  '.implode(' ', $fromQuery).' ' . TABLE_PRODUCTS . ' p, ' . TABLE_PRODUCTS_DESCRIPTION . ' pd'.$tblCategories.' 
    WHERE '.implode(' ', $whereQuery).' '.($show_products_by_status==2 ? '' : "p.products_status='".(int)$show_products_by_status."' AND").' p.products_id = pd.products_id and pd.language_id = ' . (int)$languages_id . $tblCategoriesWhere.' '.$searchSql.' 
    ORDER BY '.$orderBySql.' '.$ascDescSql.'  '.$limitation.'  '); 

$totalRowsArray=tep_db_fetch_array(tep_db_query("SELECT FOUND_ROWS();"));

$totalRows=$totalRowsArray['FOUND_ROWS()'];

$entriesPerPageCalc =($entriesPerPage!='All') ? $entriesPerPage : $totalRows;

$pagination = new Pagination(
	array(
		'drawSelect'=>false,
		'entriesPerPage'=>$entriesPerPageCalc,
		'currentPage'=> $currentPage,
		'queryString'=>$cPathString,
		'totalRows'=>$totalRows,
		'firstString'=>TBL_PAGINATION_FIRST,
		'lastString'=>TBL_PAGINATION_LAST,
		'nextString'=>TBL_PAGINATION_NEXT,
		'prevString'=>TBL_PAGINATION_PREVIOUS,
		'jumpString'=>TBL_PAGINATION_JUMP,
		'jumpToPageString'=>TBL_PAGINATION_JUMP_TO_PAGE

	)
);
	
$totalPages=$pagination->totalPages($totalRows);
$entries=tep_db_num_rows($products_query);

if($currentPage>$totalPages && $totalPages!=0 ) { header('Location: tbl.php?'.$cPathString.'&page='.(  $totalPages-1 <= 0 ? 1 : $totalPages-1 ) ); die; }
	
if(isset($_GET['search']) && !tep_not_null($_GET['search']) ) { header('Location: '.(isset($_SESSION['preSearcUrl']) ? $_SESSION['preSearcUrl'] : 'tbl.php?'.$cPathString )); die; }
			
//in order to remember where to return after pressing the x on search
if(!isset($_GET['search'])) $_SESSION['preSearcUrl']= tep_href_link(FILENAME_TBL, $cPathString.'&page='.$currentPage);

//currencies is need when displaying gross so display it then
if($fieldsArray['products_price_gross']['visible']){

	require DIR_WS_CLASSES.'currencies.php';
	$currencies = new currencies();

}

if($fieldsArray['products_order_status']['visible']){

	$os_query = tep_db_query("SELECT os.orders_status_name,os.orders_status_id FROM " . TABLE_ORDERS_STATUS . " os WHERE language_id= '" . (int)$languages_id . "' ORDER BY os.orders_status_id ASC");

	$orders_status_array=array();
	while($osr=tep_db_fetch_array($os_query)) $orders_status_array[$osr['orders_status_id']]=$osr['orders_status_name'];
	
	$pq_query = tep_db_query("SELECT op.products_id,o.orders_status, SUM(op.products_quantity) FROM " . TABLE_ORDERS . " o 
	LEFT JOIN ".TABLE_ORDERS_PRODUCTS." op  ON o.orders_id=op.orders_id
	GROUP BY op.products_id,o.orders_status ");
	
	//WHERE o.orders_status=3 
	$products_quantity_by_orders=array();
	while($pqr=tep_db_fetch_array($pq_query)) $products_quantity_by_orders[$pqr['products_id']][$pqr['orders_status']]=$pqr['SUM(op.products_quantity)'];
	
}

$cPath_back = '';
if (sizeof($cPath_array) > 0){
	for ($i=0, $n=sizeof($cPath_array); $i<$n; $i++) $cPath_back .= $cPath_array[$i];
}

if($defaults['displayGoBackButton']){

	//Get the Parent Id, used from Go Back To Parent Button
	$parent_categories_query = tep_db_query("select parent_id from " . TABLE_CATEGORIES . " where categories_id = '" . (int)$cPath_back . "'");
	$parent_categories = tep_db_fetch_array($parent_categories_query);
	$parent_id = $parent_categories['parent_id'];
	
}

//check to see if we have export action
if(isset($_POST['select-export-type']) & tep_not_null($_POST['select-export-type']) && isset($_POST['select-export-delimeter']) & tep_not_null($_POST['select-export-delimeter']) ) include 'ext/tbl/export.php';


//disable sorting if we displaying one or less entries
if($entries>1) $enableSorting = (isset($_SESSION['enable_sorting']) ? $_SESSION['enable_sorting'] : $defaults['tableSorting']); else $enableSorting=false;

if($enableSorting){
	$tt=array();
	$cnt=2;
	
	$tt[]=' 0: {sorter: false}';
		
	foreach($fieldsArray as $key => $value){

		if($value['visible']){$cnt++; if($value['sortable']==false) $tt[] =' '.$cnt.': {sorter: false}';}
	
	}

	$sorting=implode(',',$tt);

}

?>
<!DOCTYPE html>
<html <?php echo HTML_PARAMS; ?>>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>">
<title><?php echo TBL_TITLE; ?></title>

<link rel="stylesheet" href="ext/tbl/css/tbl.css">
<link rel="stylesheet" href="ext/tbl/css/smoothness/jquery-ui-1.10.0.custom.css">
<link rel="stylesheet" href="ext/tbl/css/print.css" type="text/css" media="print">

<script type="text/javascript" src="ext/tbl/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="ext/tbl/js/jquery-ui-1.10.0.custom.min.js"></script>

<?php switch($defaults['productsDescriptionEditor']){
case'ckeditor':?>
<script type="text/javascript" src="ext/tbl/editors/ckeditor/ckeditor.js"></script>
<?php break; default:?>
<script type="text/javascript" src="ext/tbl/editors/tinymce/js/tinymce/jquery.tinymce.min.js"></script>
<script type="text/javascript" src="ext/tbl/editors/tinymce/js/tinymce/tinymce.min.js"></script>
<?php } ?>

<script type="text/javascript" src="ext/tbl/js/jquery.jeditable.js"></script>
<script type="text/javascript" src="ext/tbl/js/jquery.tablesorter.js"></script>

<?php if($enableSorting){ ?>
<script type="text/javascript">$(function(){ $("table#tbl").tablesorter({debug: false, headers: { <?php echo $sorting; ?> } }); });</script>
<?php } ?>

<script type="text/javascript">
//Dialog button names
var btn={
preview_changes:'<?php echo TBL_DIALOG_BUTTON_PREVIEW_CHANGES; ?>',
submit_changes:'<?php echo TBL_DIALOG_BUTTON_SUBMIT_CHANGES; ?>',
preview:'<?php echo TBL_DIALOG_BUTTON_PREVIEW; ?>',
close:'<?php echo TBL_DIALOG_BUTTON_CLOSE; ?>',
reload:'<?php echo TBL_DIALOG_BUTTON_RELOAD; ?>',
add_new_attribute:'<?php echo TBL_DIALOG_BUTTON_ADD_NEW_ATTRIBUTE; ?>',
yes:'<?php echo TBL_DIALOG_BUTTON_YES; ?>',
no:'<?php echo TBL_DIALOG_BUTTON_NO ?>',
apply:'<?php echo TBL_DIALOG_BUTTON_APPLY; ?>',
export:'<?php echo TBL_DIALOG_BUTTON_EXPORT; ?>',
cancel:'<?php echo TBL_DIALOG_BUTTON_CANCEL; ?>',
login:'<?php echo TBL_DIALOG_BUTTON_LOGIN; ?>'
};

var translate={
status_successfully_changed:'<?php echo TBL_ACTION_STATUS_SUCCESSFULLY_CHANGED; ?>',
status_not_changed:'<?php echo TBL_ACTION_STATUS_NOT_CHANGED; ?>',
dialog_settings_sort_mustReloadWebPage:'<?php echo TBL_DIALOG_SETTINGS_YOU_MUST_RELOAD_THE_WEB_PAGE; ?>',
dialog_settings_sort_reloadNow:'<?php echo TBL_DIALOG_SETTINGS_RELOAD_NOW; ?>',
dialog_settings_somethingWentWrong:'<?php echo TBL_DIALOG_SETTINGS_SOMETHING_WENT_WRONG; ?>',
dialog_attributes_successfully_submited_attributes_changes:'<?php echo TBL_DIALOG_ATTRIBUTES_SUCCESSFULLY_SUBMITED_ATTRIBUTES_CHANGES; ?>',
dialog_attributes_there_was_an_error:'<?php echo TBL_DIALOG_ATTRIBUTES_THERE_WAS_AN_ERROR; ?>',
dialog_mass_edit_prices_no_products_selected:'<?php echo TBL_DIALOG_MASS_EDIT_PRICES_NO_PRODUCTS_SELECTED; ?>',
dialog_mass_edit_prices_invalid_amount_entered:'<?php echo TBL_DIALOG_MASS_EDIT_PRICES_INVALID_AMOUNT_ENTERED; ?>',
dialog_mass_edit_prices_successfully_altered_prices:'<?php echo TBL_DIALOG_MASS_EDIT_PRICES_SUCCESSFULLY_ALTERED_PRICES; ?>',
dialog_mass_edit_prices_something_went_wrong:'<?php echo TBL_DIALOG_MASS_EDIT_PRICES_SOMETHING_WENT_WRONG; ?>',
dialog_delete_products_deleting:'<?php echo TBL_DIALOG_DELETE_PRODUCTS_DELETING; ?>',
dialog_delete_products_successfully_deleted:'<?php echo TBL_DIALOG_DELETE_PRODUCTS_SUCCESSFULLY_DELETED; ?>',
dialog_delete_products_something_went_wrong:'<?php echo TBL_DIALOG_DELETE_PRODUCTS_SOMETHING_WENT_WRONG; ?>',
dialog_attributes_successfully_deleted_attribute:'<?php echo TBL_DIALOG_ATTRIBUTES_SUCCESSFULLY_DELETED_ATTRIBUTE; ?>',
dialog_attributes_something_went_wrong:'<?php echo TBL_DIALOG_ATTRIBUTES_SOMETHING_WENT_WRONG; ?>',
dialog_session_timeout_in_order:'<?php echo TBL_DIALOG_SESSION_TIMEOUT_IN_ORDER; ?>',
dialog_session_timeout_something_went_wrong:'<?php echo TBL_DIALOG_SESSION_TIMEOUT_SOMETHING_WENT_WRONG_CONTACT; ?>'
};

var fields={
products_price:<?php echo $fieldsArray['products_price']['visible'] ? 1 : 0; ?>,
products_price_gross:<?php echo $fieldsArray['products_price_gross']['visible'] ? 1 : 0; ?>,
products_status:<?php echo $fieldsArray['products_status']['visible'] ? 1 : 0; ?>,
products_sort_order:<?php echo $fieldsArray['products_sort_order']['visible'] && !isset($_GET['search']) ? 1 : 0; ?>
};

var config={
//Used by iframe when previewing editing product description
product_info_path:'<?php echo HTTP_CATALOG_SERVER.DIR_WS_CATALOG; ?>product_info.php?products_id=',
ajax_php_url:'ext/tbl/<?php echo FILENAME_TBL_AJAX; ?>',
sorting:'<?php echo $sorting; ?>',
language_name:'<?php echo $languages_selected_name; ?>',
language_code:'<?php echo $languages_selected; ?>',
displayAlertMessages:<?php echo $show_alert_messages; ?>,
cPathString:'<?php echo $cPathString; ?>',
page:'<?php echo $currentPage; ?>',
entriesPerPage:'<?php echo $entriesPerPage; ?>',
productsDescriptionEditor:'<?php echo $defaults["productsDescriptionEditor"]; ?>'
};
</script>

<script type="text/javascript" src="ext/tbl/js/tbl.js"></script>
<script type="text/javascript" src="ext/tbl/js/functions.js"></script>
<script type="text/javascript" src="ext/tbl/js/dialogs.js"></script>

</head>
<body>

<div id="panel" style="<?php echo $search=='' ? 'display:none;' : ''; ?>">
	<div style="overflow:hidden;text-align:center">
		<?php echo tep_draw_form('search', FILENAME_TBL, '', 'get');
		echo tep_draw_input_field('search','','id="lfora" class="lfora0" placeholder="Search" style="display:inline-block;vertical-align:top;" required="required"'); ?>
		<?php if(isset($_GET['search'])){ ?><input style="display:inline-block;vertical-align:top;cursor:pointer;font-size:18px;height:36px;margin:0;border-left:0;color:#800;margin-left: -6px;" class="lfor" onclick="clearSearchQuery('<?php echo isset($_SESSION['preSearcUrl']) ? $_SESSION['preSearcUrl'] : tep_href_link(FILENAME_TBL, ''); ?>')" type="button" value="x" /><?php } ?>
		<?php echo tep_draw_pull_down_menu('searchOnField', $searchOnFieldArray, $selectedValue, ' style="display:inline-block;vertical-align:top;" onchange="this.form.submit();"'); ?>
	
		<select style="display:inline-block;vertical-align:top;" name="orderBy" onchange="submit();">
		<?php foreach($orderByArray as $key => $value) echo '<option '.(isset($_GET['orderBy']) && $_GET['orderBy']==$key ? 'selected="selected"' : '' ).' value="'.$key.'">'.$value.'</option>'; ?>
		</select>
		<select style="display:inline-block;vertical-align:top;" name="ascDesc" onchange="submit();">
		<?php foreach($ascDescArray as $key => $value) echo '<option '.(isset($_GET['ascDesc']) && $_GET['ascDesc']==$key ? 'selected="selected"' : '' ).' value="'.$key.'">'.$value.'</option>'; ?>
		</select>
		</form>

	</div>
</div>

<div id="koumpakia-wrapper">

	<div id="topPanelToggle" class="koumpakia" data-title="<?php echo TBL_BUTTON_TOOLTIP_SEARCH; ?>" ><?php echo tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_027_search.png',''); ?></div>
	<div id="printbutton" class="koumpakia"  data-title="<?php echo TBL_BUTTON_TOOLTIP_PRINT; ?>" ><?php echo tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_015_print.png','' ); ?></div>
	<div id="exportbutton" class="koumpakia"  data-title="<?php echo TBL_BUTTON_TOOLTIP_EXPORT; ?>" ><?php echo tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_359_file_export.png','' ); ?></div>
	<div id="discountbutton" class="koumpakia"  data-title="<?php echo TBL_BUTTON_TOOLTIP_DISCOUNT; ?>"  style="display:none;" ><?php echo tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_313_ax','' ); ?></div>
	<div id="deletebutton" class="koumpakia"  data-title="<?php echo TBL_BUTTON_TOOLTIP_DELETE_PRODUCTS; ?>"  style="display:none;" ><?php echo tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_192_circle_remove.png','','','','' ); ?></div>
	<div id="statusbutton" class="koumpakia"  data-title="<?php echo TBL_BUTTON_TOOLTIP_CHANGE_PRODUCTS_STATUS; ?>"  style="display:none;" ><?php echo tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_012_heart.png', '','','','height="24"' ); ?></div>

	<?php if($defaults['displayGoBackButton']){

		if (!empty($cPath_back) ) { ?>
		<div style="padding:8px 5px;" class="koumpakia"  data-title="<?php echo TBL_HEADING_TITLE_BACK_TO_PARENT; ?>" >
		<a href="<?php echo tep_href_link(FILENAME_TBL, 'cPath='.$parent_id); ?>"><?php  echo tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_221_unshare.png', '');?></a>
		</div>
		<?php } 
	} ?>

	<?php if($defaults['displaySettingsButton']){ ?>
	<div class="koumpakia"  data-title="<?php echo TBL_HEADING_TITLE_DISPLAY_SETTINGS; ?>" >
	<a id="trigger_settings_dialog" href="#"><?php echo tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_280_settings.png', ''); ?></a>
	</div>
	<?php } ?>

	<?php if($defaults['displayGoToDefaultAdministrationPanel']){ ?>
	<div class="koumpakia"   data-title="<?php echo TBL_HEADING_TITLE_BACK_TO_DEFAULT_ADMIN; ?>" >
	<?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT, '') . '">' . tep_image(DIR_WS_ADMIN . 'ext/tbl/images/glyphicons_020_home.png', '','','','width="24"') . '</a>';?>
	</div>
	<?php } ?>

</div>

<section id="tbl-wrapper">

<?php if($defaults['paginationPosition']=='top') { ?>
	<div id="pagination">

		<?php echo $pagination->draw(); ?>

		<div class="pagination-form-wrapper">
			<form name="itemsPerRowSelection-form" action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">	
				<span style="padding-top:10px;"><?php echo TBL_PAGINATION_MAX_PRODUCTS; ?></span>
				<select style="text-align:center;font-size:13px;padding:0;height:auto;" name="entriesPerPage" onchange="submit();">
					<?php foreach($perPageArray as $ppa) echo '<option '.($ppa==$entriesPerPage ? 'selected="selected"' : '').' value="'.$ppa.'">'.$ppa.'</option>'; ?>
				</select><?php if($entries>0){ ?><span style="padding-top:10px;"><?php echo TBL_PAGINATION_DISPLAYING; ?><span style="font-weight:bold"><?php echo $entries; ?></span><?php echo TBL_PAGINATION_FROM; ?><span style="font-weight:bold"><?php echo $totalRows; ?></span><?php echo TBL_PAGINATION_PRODUCTS; ?></span><?php } ?>
			</form>			
		</div>

	</div>
<?php } ?>

<?php if($defaults['inTableSearchPosition']['visible'] && $defaults['inTableSearchPosition']['y']=='top'){ ?><div class="inTableSearch-wrapper inTableSearch-wrapper-<?php echo isset($defaults['inTableSearchPosition']['x']) ? $defaults['inTableSearchPosition']['x'] : 'right'; ?>"><input type="text" id="search" placeholder="In Table Search" class="inTableSearch inTableSearch-top" /></div><?php } ?>

<table id="tbl" class="tablesorter">
<thead>
	<tr>
		<th class="checkboxen"><input type="checkbox" name="massCheckbox" id="massCheckbox"></th>
		<th class="diesi">#</th>
		<th><?php echo TBL_HEADING_CATEGORIES_PRODUCTS; ?></th>
		<?php foreach($fieldsArray as $key => $value){ if($value['visible'] ) echo'<th>'.$value['theadText'].'</th>'; } ?>
	</tr>
</thead><tbody>
<?php //FIND CATEGORIES
  
    if($bool_count_products || $bool_count_subcategories) $anwkatwteleia=' : ';
    if($bool_count_products && $bool_count_subcategories) $comma=' , ';

    while ($categories = tep_db_fetch_array($categories_query)){
    
	    //The next two lines slow execution down if count_products=true or/and count_subcategories=true. By default they are set to false. 
	    $bcp = $bool_count_products ? tep_products_in_category_count($categories['categories_id']).'<span class="cat_products_count" id="catid_'.$categories['categories_id'].'">'.TBL_HEADING_PRODUCTS_COUNT.'</span>' : '';
	    $bcs = $bool_count_subcategories ? tep_childs_in_category_count($categories['categories_id']).TBL_HEADING_SUBCATEGORIES_COUNT : ''; 
    ?>
	<tr class="folder gradeX" id="cat_<?php echo $categories['categories_id']; ?>">
		<td class="nojedit centerAlign checkboxen" ><input type="checkbox" id="category_<?php echo $categories['categories_id']; ?>" disabled="disabled"></td>
		<td class="nojedit centerAlign" style="padding:0px;"><?php echo '<a href="' . tep_href_link(FILENAME_TBL,'cPath='.$categories['categories_id']) . '">' . tep_image(DIR_WS_ICONS . 'folder.gif', ICON_FOLDER) . '</a>'; ?></td>
		<td class="nojedit centerAlign"><?php echo '&nbsp;<b>' . $categories['categories_name'] . '</b>'.$anwkatwteleia.$bcp.$comma.$bcs;?> </td>
		
		<?php foreach($fieldsArray as $key => $value){
				
			if($value['visible']){
			
				echo $key=='products_sort_order' ? '<td title='.$key.' class="centerAlign nojedit">'.$categories['sort_order'].'</td>' : '<td class="nojedit centerAlign">&nbsp;</td>';
			
			}
							
		}
		?>
	</tr>
<?php } ?>

<?php //FIND PRODUCTS

$counter=1;
while ($products = tep_db_fetch_array($products_query)) { ?>

	<tr class="<?php echo ($counter & 1) && $defaults['colorEachTableRowDifferently'] ? 'odd' : 'even'; ?>" id="pid_<?php echo (int)$products['products_id']; ?>"  data-category="<?php echo $products['categories_id']; ?>">
		<td class="nojedit checkboxen centerAlign"><input type="checkbox" name="massCheckbox" id="checkboxMassActions_<?php echo $products['products_id']; ?>" class="checkboxMassActions" value="<?php echo $products['products_id']; ?>"></td>
		
		<td class="nojedit centerAlign" style="padding:5px;"><?php echo ($counter++)+(($currentPage-1)*$entriesPerPage); ?></td>
		
		<td data-column="products_name" style="<?php echo $_table_td_rules['products_name']['style']; ?>" class="<?php echo $_table_td_rules['products_name']['class']; ?>"><?php echo $products['products_name']; ?></td>
		<?php foreach($fieldsArray as $key => $value){
			if($value['visible'] ){
			
				switch($key){
				
					case'products_date_available': 

						echo'<td style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'" data-column="'.$key.'" ><input type="text" style="text-align:center;cursor:pointer;" id="datepicker_'.(int)$products['products_id'].'" class="datepicker lfor" value="'.substr($products[$key],0,-9).'" /></td>';

					break;
					case 'products_description': 
					
						echo'<td style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'" data-column="'.$key.'" ><button id="trigger_'.(int)$products['products_id'].'" title="'.$products['products_name'].'" class="descriptionbutton">'.TBL_VIEW_EDIT_DESCRIPTION.'</button></td>';
					
					break;
					case 'products_ordered':

						echo'<td  style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'"  data-column="'.$key.'" >'.$products[$key].'</td>';
					break;
					case 'products_sort_order':
						
						echo'<td  style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'"  data-column="'.$key.'" >'.(tep_not_null($products[$key])?$products[$key]:'0').'</td>';
					break;
					case'products_status':
					
						if($products[$key]){
						
							$ficon='icn_alert_success.png';
							$statusTitle=TBL_STATUS_ICON_SET_OUT_OF_STOCK;
						}else{
							
							$ficon='icn_alert_error.png';
							$statusTitle=TBL_STATUS_ICON_SET_IN_STOCK;
							
						}
						
						echo '<td  style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'"  id="products_status_'.(int)$products['products_id'].'" ><a class="radiostockajax" id="status_'.$products['products_id'].'" href="#" >'.tep_image(DIR_WS_ADMIN . 'ext/tbl/images/'.$ficon, $statusTitle).'</a></td>';
						
					break;
					case'attributes':
					
						echo'<td style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'" ><button id="attributes_trigger_'.(int)$products['products_id'].'" title="'.$products['products_name'].'" class="attributesbutton">'.TBL_VIEW_EDIT_ATTRIBUTES.'</button></td>';
				
					break;
					case'tax_class_title': ?>
						<td style="<?php echo $_table_td_rules[$key]['style']; ?>" class="<?php echo $value['cellEditable']?'':'nojedit'; ?>" >
						<select class="selectMenus" id="tcts_<?php echo (int)$products['products_id']; ?>" name="tax_class_title_select_<?php echo (int)$products['products_id']; ?>" onchange="selectMenuChange(this,'products_tax_class_id')" style=""><?php foreach($tax_class_array as $tca)	echo '<option value="'.$tca['id'].'_'.$tca['tax_rate'].'" '.($tca['id']==$products['products_tax_class_id'] ? 'selected="selected"' : '').' >'.$tca['title'].' '.$tca['tax_rate'].'%</option>'; ?>
						</select></td>
						<?php
					break;
					case'manufacturers_name': ?>
						<td style="<?php echo $_table_td_rules[$key]['style']; ?>" class="<?php echo $value['cellEditable']?'':'nojedit'; ?>" >
						<select class="selectMenus" id="manu_<?php echo (int)$products['products_id']; ?>" name="manufacturers_select_<?php echo (int)$products['products_id']; ?>" onchange="selectMenuChange(this,'manufacturers_id')" ><?php foreach($manufacturers_array as $man) echo '<option value="'.$man['id'].'" '.($man['id']==$products['manufacturers_id'] ? 'selected="selected"' : '').' >'.$man['name'].'</option>'; ?>
						</select></td>
					<?php
					break;
					case'products_image':
				
						echo'<td style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'" >'.tep_info_image($products[$key], $products['products_name'], SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT).'</td>';
					 
					break;
					case'products_price_gross':
						//tep_get_tax_rate is a heavy function because it does mysql queries. So it must be changed somehow.
						$taxRate=tep_get_tax_rate($products['products_tax_class_id']);
						echo'<td data-price-net="'.$products['products_price'].'" data-tax-rate="'.$taxRate.'" data-column="'.$key.'" id="'.$key.'_'.$products['products_id'].'" style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'" >'.$currencies->display_price($products['products_price'], $taxRate).'</td>';
					
					break;
					case'products_order_status':

						echo'<td id="'.$key.'_'.$products['products_id'].'" style="'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'" >';
						$numItems = count($orders_status_array); 
						foreach($orders_status_array as $key => $osa) echo $osa.': '.(isset($products_quantity_by_orders[$products['products_id']][$key])?$products_quantity_by_orders[$products['products_id']][$key]:'0').($key<$numItems? ' / ': '');
						echo '</td>';
					
					break;
					default:
				
						echo'<td data-column="'.$key.'" id="'.$key.'_'.$products['products_id'].'" style="cursor:pointer;'.$_table_td_rules[$key]['style'].'" class="'.($value['cellEditable']?'':'nojedit').' '.$_table_td_rules[$key]['class'].'" >'.$products[$key].'</td>';
				
				}

			}
		}?>
	</tr>
   <?php } ?>
   
   </tbody>
</table>

<?php if($defaults['inTableSearchPosition']['visible'] && $defaults['inTableSearchPosition']['y']=='bottom'){ ?><div class="inTableSearch-wrapper inTableSearch-wrapper-<?php echo isset($defaults['inTableSearchPosition']['x']) ? $defaults['inTableSearchPosition']['x'] : 'right'; ?>"><input type="text" id="search" placeholder="In Table Search" class="inTableSearch inTableSearch-top" /></div><?php } ?>

<?php if($defaults['paginationPosition']=='bottom'){ ?>
	<div id="pagination">

		<?php echo $pagination->draw(); ?>

		<div class="pagination-form-wrapper">
			<form name="itemsPerRowSelection-form" action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">	
				<span style="padding-top:10px;"><?php echo TBL_PAGINATION_MAX_PRODUCTS; ?></span>
				<select style="text-align:center;font-size:13px;padding:0;height:auto;" name="entriesPerPage" onchange="submit();">
					<?php foreach($perPageArray as $ppa) echo '<option '.($ppa==$entriesPerPage ? 'selected="selected"' : '').' value="'.$ppa.'">'.$ppa.'</option>'; ?>
				</select><?php if($entries>0){ ?><span style="padding-top:10px;"><?php echo TBL_PAGINATION_DISPLAYING; ?><span style="font-weight:bold"><?php echo $entries; ?></span><?php echo TBL_PAGINATION_FROM; ?><span style="font-weight:bold"><?php echo $totalRows; ?></span><?php echo TBL_PAGINATION_PRODUCTS; ?></span><?php } ?>
			</form>			
		</div>

	</div>
<?php } ?>

<?php if($defaults['displayCountProducts']){ ?>
<table class="displayCountProducts" id="tbl-count">
	<tr> 
		<td class="centerAlign">
		 	<div id="radiocount" class="radiocount">
			 	<form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">
					<?php if($bool_count_products) $checked1='checked="checked"'; else $checked1=''; ?>  	
				  	<input type="checkbox" name="countcheck[]" value="count_products" <?php echo $checked1; ?> id="check_count_products" /><label for="check_count_products"><?php echo TBL_COUNT_PRODUCTS; ?></label>
				  	<?php if($bool_count_subcategories) $checked2='checked="checked"'; else $checked2=''; ?>
				  	<input type="checkbox" name="countcheck[]" value="count_subcategories" <?php echo $checked2; ?> id="check_count_subcategories" /><label for="check_count_subcategories"><?php echo TBL_COUNT_SUBCATEGORIES; ?></label>
					<input type="submit" style="color:#005;" class="applyButton" value="<?php echo TBL_APPLY; ?>"/>
					<input type="hidden" name="ccheck" value="1" />
				</form>
			</div>
		</td>
	</tr>
</table>
<?php } ?>
   

<?php if($defaults['displayBottomInformation']){ ?>
<div id="copywrite"><?php echo TBL_TITLE; ?>, Created by: <a href="http://www.linkedin.com/pub/john-barounis/31/430/617">John Barounis</a>, <a href="http://www.jbaron.gr/programming">jbaron.gr</a> version <?php echo TBL_VERSION; ?>, <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7XDU2DWB33TJU">Make a Donation!</a></div>
<?php } ?>

</section>

<?php if($defaults['displayFieldsPanel']){ ?>
<section id="selectedFields">
	<div id="panelToggle" data-title="<?php echo TBL_BUTTON_TOOLTIP_FIELDS; ?>" ><img title="" src="ext/tbl/images/glyphicons_113_justify.png" alt=""></div>
	<div id="selectedFields-inwrapper">

		<div style="text-align:center;color:#555;padding:5px;"><?php echo TBL_TEXT_FIELDS; ?></div>
		<form action="<?php echo $_SERVER['REQUEST_URI']; ?>" id="format-form" method="post">
			<ul id="format">
			<?php foreach($fieldsArray as $key => $value){

				$checked=$value['visible'] ? 'checked="checked"' : '';

				if($value['lockVisibility']) $checked.='disabled="disabled" '; ?>
		
				<li id="<?php echo $key; ?>" class="wr"><input type="checkbox" name="columncheck[]" value="<?php echo $key; ?>" <?php echo $checked; ?> id="check<?php echo $key; ?>" /><label for="check<?php echo $key; ?>"><?php echo $value['theadText']; ?></label></li>
			<?php } ?>
			</ul>
			<input type="submit" style="color:#005;" class="apply-button" value="<?php echo TBL_APPLY; ?>"/>
			<input type="hidden" name="check" value="1" />
			<input type="hidden" name="sortFields" value="0" />
		</form>
	</div>
</section>
<?php } ?>

<div style="margin:25px;">&nbsp;</div>
<section id="floatBottomBar">

	<?php if (sizeof($languages_array) > 1 && $defaults['displayLanguageSelection']) { ?>
		<div class="floatBottomBar-item">

		<?php echo tep_draw_form('adminlanguage1', FILENAME_TBL, 'cPath='.$cPath_back, 'get') . tep_draw_pull_down_menu('language', $languages_array, $languages_selected, 'onchange="this.form.submit();"') . tep_draw_hidden_field('cPath', $cPath_back). '</form>'; ?>

		</div>
	<?php } ?>

	<div class="floatBottomBar-item">
		<?php
		    echo tep_draw_form('goto', FILENAME_TBL, '', 'get');
		    echo tep_draw_pull_down_menu('cPath', tep_get_category_tree(), $cPath_back, 'onChange="this.form.submit();"');
		    echo '</form>';
		?>
	</div>
	
	<?php if($defaults['displayByStatusSelection']){ ?>
		<div id="radio" class="floatBottomBar-item">
			<form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">
				<select name="radio" onchange="submit();">
					<option value="1" <?php echo $show_products_by_status==1 ? 'selected="selected"' :''; ?> ><?php echo TBL_ACTIVE_PRODUCTS; ?></option>
					<option value="0" <?php echo $show_products_by_status==0 ? 'selected="selected"' :''; ?>><?php echo TBL_INACTIVE_PRODUCTS; ?></option>
					<option value="2" <?php echo $show_products_by_status==2 ? 'selected="selected"' :''; ?> ><?php echo TBL_ALL_PRODUCTS; ?></option>
				</select>
			</form>
		</div>
	<?php } ?>
	
	<?php if($defaults['displayOrderBySelection'] && !isset($_GET['search'])){ ?>
		<div class="floatBottomBar-item">
			<form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">
				<select name="orderBy" onchange="submit();">
					<?php foreach($orderByArray as $key => $value) echo '<option '.($orderBy==$key ? 'selected="selected"' : '' ).' value="'.$key.'">'.$value.'</option>'; ?>
				</select>
			</form>
		</div>
	<?php } ?>
	
	<?php if($defaults['displayAscDescSelection'] && !isset($_GET['search'])){ ?>
		<div class="floatBottomBar-item">
			<form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">
				<select name="ascDesc" onchange="submit();">
					<?php foreach($ascDescArray as $key => $value) echo '<option '.($ascDesc==$key ? 'selected="selected"' : '' ).' value="'.$key.'">'.$value.'</option>'; ?>
				</select>
			</form>
		</div>
	<?php } ?>
	
</section>

<div id="tooltip"><span class="arrow"></span><div></div></div>
				
<?php include 'ext/tbl/dialogs.php'; ?>

</body>
</html>
<?php require DIR_WS_INCLUDES . 'application_bottom.php'; ?>
