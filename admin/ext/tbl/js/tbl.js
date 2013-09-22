/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/
$(function() {

var selectedFields=$('section#selectedFields');
var selectedFieldsWrapper=$('#selectedFields-inwrapper');

selectedFields.css({height:$(window).height() });
selectedFieldsWrapper.css({height:$(window).height() });

$(window).resize(function(){
	selectedFields.css({height:$(window).height() });
	selectedFieldsWrapper.css({height:$(window).height() });
});

//TOOLTIP
var tooltip=$('#tooltip'),tooltip_span=$('#tooltip span'),tooltip_div=$('#tooltip div');

         $('.koumpakia').hover(function(){

	 $_this=$(this);
	 tooltip_span.removeClass('right').addClass('up');
	 tooltip_div.text($_this.data('title'));
	 tooltip.css({top:$_this.position().top+$_this.outerHeight()+15,left:$_this.position().left}).stop().fadeIn('fast');
 
 },function(){
 
	   tooltip.hide();
 
 });
 
 
$('#panelToggle').hover(function(){

	$_this=$(this);
	tooltip_span.removeClass('up').addClass('right');
	tooltip_div.text($_this.data('title'));
	tooltip.css({top:$_this.position().top,left:$_this.offset().left-tooltip.outerWidth()-16}).stop().fadeIn('fast');
 
 },function(){
 
	tooltip.hide();
 
 });

//TOOLTIP					 


//reorder products only id products ordered field is visible
if(fields.products_sort_order){

	var fixHelper = function(e, ui) {
		ui.children().each(function() {
			$(this).width($(this).width());
		});
		return ui;
	};

	var fixHelperModified = function(e, tr) {
		var $originals = tr.children();
		var $helper = tr.clone();
		$helper.children().each(function(index)
		{
		  $(this).width($originals.eq(index).width())
		});
		return $helper;
	};
	
		$("#tbl tbody").not('.folder').sortable({
			containment: "#tbl",
			helper: fixHelperModified,
			//create: function( event, ui ) {console.log('fff');},
			update: function(event,ui){
				var idsArray=[];
				idsArray =$("#tbl tbody").sortable( "toArray");				
				window.location.href='ext/tbl/tbl_reorder.php?'+config.cPathString+'&page='+config.page+'&entriesPerPage='+config.entriesPerPage+'&idsArray='+idsArray;		
			}
			
		}).disableSelection();

}



	var state=0;

	$('#panelToggle').click(function(){

		tooltip.hide();

		if(!state){

			 selectedFields.animate({width:190},function(){ state=1; });
		 
		 }else selectedFields.animate({width:0},function(){ state=0; });

	});

	$("#topPanelToggle").click(function(){
	
		tooltip.hide();
		$('#panel').slideToggle('500', function() {
   		 // Animation complete.
  		});

	
	
	});

  
	$('table#tbl tbody td:not(:first-child)').not('.nojedit, .datepick, .description, .products_status').editable( config.ajax_php_url, {
	"select" : true,
	"callback": function( sValue, y ) {
	
		if(sValue=='tblSessionTimeOut'){
		$( "#dialog-sessiontimeout" ).dialog('open');
	
		}
		
		if($(this).data('column')=='products_price' && fields.products_price_gross){
			//update gross price if gross id present
			var rid=this.parentNode.getAttribute('id').substr(4);
			$ppg=$('#products_price_gross_'+rid);
			$ppg.text('$'+updateGross(sValue,$ppg.data('tax-rate')));
			$ppg.data('price-net',sValue);
		
		}
		
	

	},
	"submitdata": function ( value, settings ){

			return {
				"row_id": this.parentNode.getAttribute('id').substr(4),
				"column": $(this).data('column')//attr('title')
			};

	},
	"height": "25px",
		
	onedit:function(){
	

	
	}
		
	});
			


$('#massCheckbox').click(function(){

	var thisen=$(this);
	if(thisen.is(":checked")){
	
	$('#tbl tbody tr').not('.folder').addClass('tr_selected').find('.checkboxMassActions').prop('checked', true); 
	
		if($('.checkboxMassActions').filter(':checked').length > 0){

			if(fields.products_price) $('#discountbutton').show();
			if(fields.products_status) $('#statusbutton').show();

			$('#deletebutton').show();

		}else{
		
			thisen.prop('checked',false);
		
		}
	
	}else{ $('#tbl tbody tr').removeClass('tr_selected').find('.checkboxMassActions').prop('checked', false);
	
	$('#discountbutton').hide();
	$('#deletebutton').hide();
	$('#statusbutton').hide();
	
	}


});

	$('.checkboxMassActions').click(function(){

		var thisen=$(this);
		if(thisen.is(":checked")){

			thisen.closest('tr').addClass('tr_selected');
	
			if( $('.checkboxMassActions').filter(':not(:checked)').length === 0){
			  $('#massCheckbox').prop('checked', true);
			}
		}else{

			thisen.closest('tr').removeClass('tr_selected');	
			$('#massCheckbox').prop('checked', false);

		}

		if(fields.products_price) {if($('.checkboxMassActions').is(':checked')) $('#discountbutton').show(); else $('#discountbutton').hide();}
		if(fields.products_status) {if($('.checkboxMassActions').is(':checked')) $('#statusbutton').show(); else $('#statusbutton').hide();}

		if($('.checkboxMassActions').is(':checked')) $('#deletebutton').show(); else $('#deletebutton').hide();

	});
	
	
	$('#statusbutton').click(function(){ $( "#dialog-massProductsStatusChange" ).dialog('open'); });
	
	$('#discountbutton').click(function(){ $('#dialog-massPricesEdit').dialog('open'); });

	$('#exportbutton').click(function(){ $('#dialog-export').dialog('open'); });	
	
	$('#deletebutton').click(function(){
		
			//$( "#dialog-massProductsDelete" ).dialog('open');
			var arr=['f','d'];
			
			var arr={};
			$('#tbl tr.tr_selected').each(function (a) {
			 
			 	 arr[this.id.substr(4)]=$(this).data('category');
			 
			}).get();//.join();
			
			
			$( "#dialog-massProductsDelete" ).data('productsIdsArray', arr).dialog( "open" );
		
		
	});
		
	$('#printbutton').click(function(){
	    window.print();
	});

	//make columns buttons sortable
	$( "#format" ).sortable({
	
		items:'.wr',
	
		placeholder: "ui-state-highlight",
	
		update: function(event, ui) { 
	
				$.ajax({
				    type: 'GET',
				    data: 'value='+$("#format").sortable( "toArray")+'&action=sortfields',
				    url: 'ext/tbl/tbl_ajax_session.php',
				    success: function(msg){
					//if(msg=='ok') window.location.reload();
				    }
				});

		}
	 
	}).disableSelection();



	$( ".datepicker" ).datepicker({ dateFormat: 'yy-mm-dd',

		onSelect: function(dateText, inst) {

			$.ajax({
			    type: 'POST',
			    data: 'value='+dateText+'&row_id='+$(this).attr('id').substr(11)+'&column=products_date_available',
			    url: config.ajax_php_url,
			    success: function(msg){

			    }
			});

		}

	});

		
	$("#lfor").focus(function () {
		var k=$(this).val();
		if(k==tbl_searching)  $(this).val('');
	});
	
	 $("#lfor").focusout(function () {
		var j=$(this).val();
		if(j=='')  $(this).val(tbl_searching);
	});	
	

	$( "a.goback" ).button();
	$( ".radiostatus" ).buttonset();
	$( "#radio-show-alerts" ).buttonset();
	$( "#radio-enable-sorting" ).buttonset();
	

// DIALOG METHODS
	$( ".descriptionbutton" ).click(function(){
		$( "#dialog-form" ).data('productId', $(this).attr('id').substr(8)).data('productName', $(this).attr('title')).data('clanguage',config.language_name).dialog( "open" );
	});
	$("#uidw").button().click(function(){ $( "#dialog-unique-id-wrapper" ).dialog( "open" );});
	$("#uidwo").button().click(function(){
		$( "#dialog-error-unique-id-wrapper-not-found" ).dialog('close');		
		$( "#dialog-unique-id-wrapper" ).dialog( "open" ); 
	});
	$( ".attributesbutton" ).click(function(){
		$( "#dialog-attributes" ).data('productId', $(this).attr('id').substr(19)).data('productName', $(this).attr('title')).dialog( "open" );
	});
	$( "#trigger_settings_dialog" ).click(function(){
		$( "#dialog-settings" ).dialog( "open" );
	});
	$( "#trigger_settings_sort_fields_dialog" ).button().click(function(){
		$( "#dialog-settings-sort-fields" ).dialog( "open" );
	});
// DIALOG METHODS

	$('#trigger_error_dialog').button().click(function(){

		$( "#dialog-error" ).dialog('open');

	});

	$('#dialog-attributes').on('click','.delete_attribute_button',function(){

		var par=$(this).parent().parent();

		var hid=par.find('.hidden_products_attributes_id').val();
		var pid=par.find('.hidden_products_id').val();
		var opt_name=par.find('.attributes_selectMenus_options option:selected').text();
		var val_name=par.find('.attributes_selectMenus_values option:selected').text();
		var val_price=par.find('.value_price').val();
		var pref=par.find('.price_prefix').val();
	
		var msg='Are you sure you want to delete the attribute:<br /><br />';
	
		msg+='<center>'+opt_name+' --- '+val_name+' --- '+val_price+' --- '+pref+'</center>';
	
		$('#dialog-confirm-message').html(msg);
	
		$( "#dialog-confirm" ).data('extraData', pid+'_@_'+hid+'_@_delete_attribute').dialog( "open" );
	
	

	});

	$('.radiostockajax').click(function(){

		var statusIdArray=this.id.split('_'), $_this=$(this), srcArray=$_this.children().attr('src').split('/'),stockVal= (srcArray[srcArray.length-1]=='icn_alert_error.png') ? '1' : '0';

		$.ajax({
		    type: 'POST',
		    data: 'value='+stockVal+'&row_id='+statusIdArray[1]+'&column=products_status',
		    url: config.ajax_php_url,
		    success: function(msg){
		    
		    		if(msg=='tblSessionTimeOut'){
					$( "#dialog-sessiontimeout" ).dialog('open');
					return false;
				}
		
			if(config.displayAlertMessages){
				    
				if(msg=='1' || msg=='0' ){
			
			
					$( "#dialog-success-message" ).html(translate.status_successfully_changed);
					$( "#dialog-success" ).dialog('open');		
				}else{
					$( "#dialog-error-message" ).html(msg);
					$( "#dialog-error" ).dialog('open');
				}
				
			}
		
			if(msg=='1' || msg=='0' ){
					srcArray[srcArray.length-1]= (srcArray[srcArray.length-1]=='icn_alert_error.png') ? 'icn_alert_success.png' : 'icn_alert_error.png';
				
					if(stockVal=='1') $_this.data('stock','0'); else $_this.data('stock','1');
				
					$_this.children().attr('src',srcArray.join('/'));
			}		
				
		
		    }
		});
	
		return false;


	});




});
