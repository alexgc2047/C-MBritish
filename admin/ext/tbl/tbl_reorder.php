<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/
chdir('../../');
require('includes/application_top.php');

$cPath = (isset($_GET['cPath']) ? $_GET['cPath'] : '');
$page = (isset($_GET['page']) ? $_GET['page'] : '');
$entriesPerPage = (isset($_GET['entriesPerPage']) ? $_GET['entriesPerPage'] : '');
$idsArray = (isset($_GET['idsArray']) ? $_GET['idsArray'] : '');

	if(tep_not_null($cPath) && tep_not_null($page) && tep_not_null($idsArray) && tep_not_null($entriesPerPage) ){

		$exp=explode(',',$idsArray);
		
		$pids=array();
		$cids=array();
		
		foreach($exp as $key => $e ){
		
			$john=explode('_',$e);
			if($john[0]=='pid') $pids[]=$john[1]; else $cids[]=$john[1];
		
		}

		$res= ((int)$page * (int)$entriesPerPage)-(int)$entriesPerPage;

		/*
			Uncomment bellow commands to enable sorting products if you have a field products_sort_order in products folder
			Check this addon: http://addons.oscommerce.com/info/8311
		*/
		//for products		
		foreach($pids as $key => $pid){
			tep_db_query("UPDATE products SET products_sort_order='".($key+1+$res)."' WHERE products_id=".$pid." ");
		}
		
		//for categories
		foreach($cids as $key => $cid){
			tep_db_query("UPDATE categories SET sort_order='".($key+1)."' WHERE categories_id=".$cid." ");
		}
		
	}

	header('Location: ../../tbl.php?cPath='.$cPath.'&page='.$page.'&entriesPerPage='.$entriesPerPage);

?>
