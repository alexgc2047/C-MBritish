<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/

/* EXPORT Under development! */

$exportHead=array();
$exportHead[]='#';
$exportHead[]=TBL_HEADING_CATEGORIES_PRODUCTS;
foreach($fieldsArray as $key => $value){ if($value['visible'] && $value['exportable']) $exportHead[]=$value['theadText']; }

$del=$_POST['select-export-delimeter']=='tab' ? "\t" : $_POST['select-export-delimeter'];

$exportBody=array();

$counter=1;
while($products = tep_db_fetch_array($products_query)){

	$eb=array();
		
	$eb[]=($counter++)+(($currentPage-1)*$entriesPerPage); // adss the number under # column
	$eb[]=$products['products_name'];
		
	foreach($fieldsArray as $key => $value){
		if($value['visible'] && $value['exportable']){
	
			switch($key){
				case'products_date_available': $eb[]=substr($products[$key],0,-9); break;
				case'products_description': $eb[]=filter_text(htmlspecialchars_decode($products[$key])); break;
				case'products_sort_order': $eb[]=(tep_not_null($products[$key])?$products[$key]:'0'); break;
				case'products_status': $eb[]=$products[$key]?TBL_STATUS_ICON_IN_STOCK:TBL_STATUS_ICON_OUT_OF_STOCK; break;
				case'tax_class_title': foreach($tax_class_array as $tca){ if($tca['id']==$products['products_tax_class_id']){$eb[]=$tca['title'].' '.$tca['tax_rate'].'%'; break;} } break;
				case'manufacturers_name':
					foreach($manufacturers_array as $man){ if($man['id']==$products['manufacturers_id']){$eb[]=$man['name']; break;} }
				break;
				case'products_price_gross':
					//tep_get_tax_rate is a heavy function because it does mysql queries. So it must be changed somehow.
					$taxRate=tep_get_tax_rate($products['products_tax_class_id']);
					$eb[]=$currencies->display_price($products['products_price'], $taxRate);
				break;
				case'products_order_status':
					$eb[]='Pending: '.(isset($products_quantity_by_orders[$products['products_id']]['1'])?$products_quantity_by_orders[$products['products_id']]['1']:'0').' / Processing: '.(isset($products_quantity_by_orders[$products['products_id']]['2'])?$products_quantity_by_orders[$products['products_id']]['2']:'0').' / Delivered: '.(isset($products_quantity_by_orders[$products['products_id']]['3'])?$products_quantity_by_orders[$products['products_id']]['3']:'0');
				break;
				default: $eb[]=$products[$key];
			}

		}
	}
	
	$exportBody[]=implode($del,$eb);
} 

header("Content-Type: application/force-download\n");
header("Cache-Control: cache, must-revalidate");   
header("Pragma: public");
header("Content-Disposition: attachment; filename=tbl_export_" . date("Ymd") . ".".$_POST['select-export-type']);

if($_POST['select-export-type']=='json'){

	$exportJson=array('head'=>$exportHead,'body'=>$exportBody);
	print json_encode($exportJson);

}else print implode($del,$exportHead)."\r\n".implode("\r\n",$exportBody);

exit;

function filter_text($text) {$filter_array = array(",","\r","\n","\t");return str_replace($filter_array,"",$text);}
