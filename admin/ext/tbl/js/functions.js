/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/

$(document).ready(function(){
	$('#search').keyup(function(){
		searchTable($(this).val());
	});
});

function searchTable(inputVal)
{
	var table = $('#tbl');
	table.find('tr').each(function(index, row){

		var allCells = $(row).find('td');
		if(allCells.length > 0){
			var found = false;
			allCells.each(function(index, td){
				var regExp = new RegExp(inputVal, 'i');
				if(regExp.test($(td).text())){
					found = true;
					return false;
				}
			});
			if(found == true)$(row).show();else $(row).hide();
		}
	});
}


clearSearchQuery = function(queryString){window.location.href=queryString;}

jumpToPage = function(queryString,val){window.location.href=queryString+val.value;}

function massDeleteProducts(){}

function massEditProductsStatuses(){

var obj_ds={};
var arr=[];
$('.checkboxMassActions:checked').each(function(index){

arr.push(this.value); 

});

	var cTo=$('#dialog-massProductsStatusChange-select').val();

	$.ajax({
	    type: 'POST',
	    data: 'pids='+arr+'&item=changeProductsStatus&changeTo='+cTo,
	    url: 'ext/tbl/tbl_actions.php',
	    success: function(msg){
		
		if(config.displayAlertMessages){
			    
			if(msg=='1' || msg=='0' ){
			
			
				$( "#dialog-success-message" ).html(translate.status_successfully_changed);
				$( "#dialog-success" ).dialog('open');		
			}else{
				$( "#dialog-error-message" ).html(msg);
				$( "#dialog-error" ).dialog('open');
			}
				
		}
		
		if(msg=='1'){

		
			for(i=0,n=arr.length;i<n;i++){
			
				var srcArray=$('#products_status_'+arr[i]).find('img').attr('src').split('/');
				
				srcArray[srcArray.length-1]= (cTo=='1') ? 'icn_alert_success.png' : 'icn_alert_error.png';
				
				$('#products_status_'+arr[i]).find('img').attr('src',srcArray.join('/'));
			
			}
		
				
		}		
				
		
	    }
	});


}


function exportData(){

	$('#exportForm').submit();

}

function massEditPrices(){

	var obj_ds={};
	var arr=[];
	$('.checkboxMassActions:checked').each(function(index){

		var tv=this.value;

		arr.push(tv); 
		obj_ds[tv]=parseFloat($('#products_price_'+tv).text());

	});

	var amount= parseFloat($('#discount-field').val());

	if(arr.length<=0){

		$( "#dialog-error-message" ).html(translate.dialog_mass_edit_prices_no_products_selected);
		$( "#dialog-error" ).dialog('open');
		return false;

	}

	if(!amount){

		$( "#dialog-error-message" ).html(translate.dialog_mass_edit_prices_invalid_amount_entered);
		$( "#dialog-error" ).dialog('open');
		return false;

	}

	var sd= $('#select-discount').val();

	var timi;
	for(var i in obj_ds){

		switch(sd){

			case '-%': timi =(obj_ds[i]-(obj_ds[i]*amount/100)).toFixed( 4 ); break;
			case '+%': timi =(obj_ds[i]+(obj_ds[i]*amount/100)).toFixed( 4 ); break;
			case '-': timi =(obj_ds[i]-amount).toFixed( 4 ); break;
			case '+': timi =(obj_ds[i]+amount).toFixed( 4 ); break;

		}

		//$('#products_price_'+i).text(timi);
		obj_ds[i]=timi;

	}
	$.ajax({
		type: 'POST',
		data: 'value='+JSON.stringify(obj_ds)+'&column=products_prices',
		url: config.ajax_php_url,
		dataType: 'json',
		success: function(msg){

			if(msg=='1'){
	
				//update all values and gross if pressent
				for(var i in obj_ds){
	
					$('#products_price_'+i).text(obj_ds[i]);
	
				}
	
				if(fields.products_price_gross){
	
					for(var i in obj_ds){
	
						$ppg=$('#products_price_gross_'+i);
						$ppg.text('$'+updateGross(obj_ds[i],$ppg.data('tax-rate')));
						$ppg.data('price-net',obj_ds[i]);
	
					}
	
				}
	
				if(config.displayAlertMessages==1){
					$( "#dialog-success-message" ).html(translate.dialog_mass_edit_prices_successfully_altered_prices);
					$( "#dialog-success" ).dialog('open');
				}
	
			}else{

				$( "#dialog-error-message" ).html(translate.dialog_mass_edit_prices_something_went_wrong);
				$( "#dialog-error" ).dialog('open');

			}

		}
	});

}

function deleteProducts(productsIds){


	var tmpText=$('#dialog-massProductsDelete-message').html();
	$('#dialog-massProductsDelete-message').html('<h2 style="margin:20px auto;text-align:center;">'+translate.dialog_delete_products_deleting+'</h2><div style="width:230px;margin:auto;"><img src="ext/tbl/images/ajax-loader.gif" alt="loading" ></div>');

	$.ajax({
		type: 'POST',
		data:  { item: 'deleteProducts', pids: productsIds  },
		url: "ext/tbl/tbl_actions.php",
		success: function(msg){

			$('#dialog-massProductsDelete').dialog('close');
			if(msg){

				$( "#dialog-success-message" ).html(translate.dialog_delete_products_successfully_deleted);
				$( "#dialog-success" ).dialog('open');
	
				//for(var i in productsIds ){
	
				$('#tbl tr.tr_selected').remove();
	
				//}
	
			}else{

			    	$( "#dialog-error-message" ).html(translate.dialog_delete_products_something_went_wrong);
				$( "#dialog-error" ).dialog('open');
			    	
			}

			$('#dialog-massProductsDelete-message').html(tmpText);

		}
	    
	});		

}

function afterConfirm(data){

var dt=data.split('_@_');

	$.ajax({
	    type: 'POST',
	    data: 'value='+dt[1]+'&row_id='+dt[0]+'&column='+dt[2],
	    url: config.ajax_php_url,
	    success: function(msg){

				//
			    
				if(msg=='reload_attributes'){
				
				
					$.post("ext/tbl/tbl_actions.php", { item: 'attributes', product_id:dt[0]  },function(resp){
					
					$('#dialog-attributes-options').html(resp);
					
					$('#dialog-confirm').dialog('close');
					if(config.displayAlertMessages==1){
						$( "#dialog-success-message" ).html(translate.dialog_attributes_successfully_deleted_attribute);
						$( "#dialog-success" ).dialog('open');
					}

					});
				
					
				
					
				}else{
					$('#dialog-confirm').dialog('close');

					if(config.displayAlertMessages==1){
					$( "#dialog-error-message" ).html(translate.dialog_attributes_something_went_wrong);
					$( "#dialog-error" ).dialog('open');
					}
				}

		
		
	    }
	});





}

function selectMenuChange(vall,column){

	var j=$('#'+vall.id+' option:selected');
	var pid=vall.id.substr(5);
	var val=j.val();


	if(column=='products_tax_class_id'){

	var tval=val.split('_');

	val=tval[0];
	var taxRate=tval[1];

	}


	$.ajax({
	    type: 'POST',
	    data: 'value='+val+'&row_id='+pid+'&column='+column,
	    url: config.ajax_php_url,
	    success: function(msg){

		if(column=='products_tax_class_id' && fields.products_price_gross && msg.substr(0,2)=='1_' ){
			//update gross value
			$ppg=$('#products_price_gross_'+pid);
			$ppg.text('$'+updateGross($ppg.data('price-net'),taxRate));
			$ppg.data('tax-rate',taxRate);
			
		}

		if(config.displayAlertMessages){
			    
			if(msg.substr(0,2)=='1_'){
				$( "#dialog-success-message" ).html(msg.substr(2));
				$( "#dialog-success" ).dialog('open');
					
			}else{
				$( "#dialog-error-message" ).html(msg);
				$( "#dialog-error" ).dialog('open');
			}

		}

	    }
	});

}

function tbl_ajax_session(valaoritis,action){

	$.ajax({
	    type: 'GET',
	    data: 'value='+valaoritis+'&action='+action,
	    url: 'ext/tbl/tbl_ajax_session.php',
	    success: function(msg){

		//if(<?php echo $show_alert_messages; ?>){
			    
				if(msg=='ok'){
$('#dialog-success-message').html(translate.dialog_session_timeout_in_order+'<br /><br /><center><input class="reload-webpage-button" type="button" value="Reload Now" onClick="window.location.reload()" /></center>');
					$( ".reload-webpage-button" ).button()
					$( "#dialog-success" ).dialog('open');		
				}else{
					$( "#dialog-error-message" ).html(translate.dialog_session_timeout_something_went_wrong);
					$( "#dialog-error" ).dialog('open');
				}

		//}

	    }
	});

}

function delete_attribute(val){
$val=val;

//$( "#dialog-confirm" ).dialog( "open" );

}




function doRound(x, places) {
  return Math.round(x * Math.pow(10, places)) / Math.pow(10, places);
}


function updateGross(grossValue,taxRate) {

  if (taxRate > 0) {
    grossValue = grossValue * ((taxRate / 100) + 1);
  }

 return doRound(grossValue, 2);
}


