/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/
$(function() {
	
//DIALOGS

// View/Edit Description Dialog

$( "#dialog-form" ).dialog({
	autoOpen: false,
	height: 650,
	width: 600,
	modal: true,
	buttons: [

		{
		    id: "btn-submit-changes",
		    text: btn.submit_changes,
		    click: function(){
		                	
		    	var description_data= config.productsDescriptionEditor=='tinymce' ? escape(tinyMCE.get('description_editor').getContent()) : escape(CKEDITOR.instances['description_editor'].getData());
		    
			$.ajax({
			    type: 'POST',
			    data: 'value='+description_data+'&row_id='+$( "#dialog-form" ).data('productId')+'&column=products_description',
			    url: 'ext/tbl/tbl_ajax.php',
			    success: function(msg){
				if(msg=='ok')	$( "#dialog-submit-changes-success" ).dialog( "open" );	else alert(msg); 
			    }
			});
		    }
	
		},
	
		{
		    id: "btn-preview",
		    text: btn.preview,
		    click: function(){
		    
		    var cwidth=$("#dialog-form").width();
		    var cHeight=$("#dialog-form").height();

		    $( "#dialog-form" ).dialog( "option", "width", cwidth*2 );
		    
		    $('#iframias').attr('src',config.product_info_path+$( "#dialog-form" ).data('productId')+'&language='+config.language_code);
		    $('#iframias').css('height',cHeight+'px');
		    
		    $('#dialog-form_product_info_page').css({display:'inline-block'});
		    
		    $('#dialog-form_edit_description').css({width:'50%'});
		    
		    $('#btn-preview').button("disable");
		    $("#btn-preview-changes").show().button("enable");
		    
		    $("#btn-reload").show().button("enable");
		    
		     //if(!$("#dialog-preview").dialog("isOpen")) $( "#dialog-preview" ).dialog( "open" );
		    }
		},
	
		{
		    id: "btn-preview-changes",
		    text: btn.preview_changes,
		    click: function(){
			var previewId=$('#previewid').val();
			
			if($("#iframias").contents().find('#'+previewId).length){
					  	
		    		var description_data= config.productsDescriptionEditor=='tinymce' ? tinyMCE.get('description_editor').getContent() : CKEDITOR.instances['description_editor'].getData();

				$("#iframias").contents().find('#'+previewId).html(description_data);
			
			}else{				
				$( "#dialog-error-unique-id-wrapper-not-found" ).data('wrapperUID', $('#previewid').val()).dialog( "open" );
			}

		    }
		},
		

		{
		    id: "btn-reload",
		    text: btn.reload,
		    click: function(){$('#iframias').attr("src", $('#iframias').attr("src"));}
		},
		{
		    id: "btn-close",
		    text: btn.close,
		    click: function(){
		       $( this ).dialog( "close" );
		       if($("#dialog-preview").dialog("isOpen")) $("#dialog-preview").dialog("close");
		    }
		}
        
   	],

	open: function(event, ui) {
		$("#btn-reload").hide().button("disable");
		$("#btn-preview-changes").hide().button("disable");
		$('#dialog-form-product-name').html($( "#dialog-form" ).data('productName'));
		$('#dialog-form-product-language').html($( "#dialog-form" ).data('clanguage'));

		$.post("ext/tbl/tbl_actions.php", { item: 'description', product_id:$( "#dialog-form" ).data('productId')  },function(resp){
					
			if(resp=='tblSessionTimeOut'){
			
				$( "#dialog-sessiontimeout" ).dialog('open');
	
			}

			$('#description_editor').val(resp);
			
			switch(config.productsDescriptionEditor){
			
			case'ckeditor':
			
				CKEDITOR.replace( 'description_editor',{
			 	
			 		language: 'en',
					toolbar : [{ name: 'document', items : [ 'Source','-','DocProps','Preview','Print','-','Templates' ] },
					{ name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
					{ name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','SpellChecker', 'Scayt' ] },
					{ name: 'links', items : [ 'Link','Unlink','Anchor' ] },'/',
					{ name: 'forms', items : [ 'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField' ] },
					{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
					{ name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
					{ name: 'insert', items : [ 'Image', 'Table','HorizontalRule','Smiley','SpecialChar','PageBreak' ] },
					{ name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
					{ name: 'colors', items : [ 'TextColor','BGColor' ] },
					{ name: 'tools', items : [ 'Maximize', 'ShowBlocks','-','About' ] }]
				});
			
			break;
			default:
			
				tinymce.init({
				    mode : "textareas",
				    force_br_newlines : false,
				    force_p_newlines : false,
				    forced_root_block : '',
				    selector: "#description_editor",
				    plugins: [
					"advlist autolink lists link image charmap print preview anchor",
					"searchreplace visualblocks code fullscreen",
					"insertdatetime media table contextmenu paste"
				    ],
				    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
				});
			
			} 
		
		});
	},
			
	close: function(){
	
		$("#dialog-form").dialog( "option", "width", 600 );
		$('#iframias').attr('src','');
		    
		$('#dialog-form_product_info_page').css({display:'none'});
		    
		$('#dialog-form_edit_description').css({width:'99%'});
		    
		$('#btn-preview').button("enable");
		$("#btn-preview-changes").hide().button("disable");
		    
		$("#btn-reload").hide().button("disable");
		    
		switch(config.productsDescriptionEditor){
		
			case'ckeditor':

				var editor = CKEDITOR.instances['description_editor'];				
				if(editor){ editor.destroy(true); }

			break;
			default:
		
				tinymce.execCommand('mceRemoveControl',true,'description_editor');
			
		}
		
	}
});	
// View/Edit Description Dialog



	

// Preview Dialog		
$( "#dialog-preview" ).dialog({
	autoOpen: false,
	height: 650,
	width: 750,
	modal: false,
	position:'right',
	buttons: [
	{
	    id: "btn-reload",
            text: btn.reload,
            click: function(){$('#iframia').attr("src", $('#iframia').attr("src"));}
	},
	{
	    id: "btn-preview-close",
            text: btn.close,
            click: function(){$( this ).dialog( "close" );}
	}],
	open: function(event, ui) {
		//$("#btn-preview-changes").button("enable");
		//$("#btn-preview").button("disable");
		//console.log(config.product_info_path+$( "#dialog-form" ).data('productId')+'&language='+config.language_code);
		$('#iframia').attr('src',config.product_info_path+$( "#dialog-form" ).data('productId')+'&language='+config.language_code);
		},
	close: function(){
		$("#btn-preview").button("enable");
		$("#btn-preview-changes").button("disable");
	}
});
// Preview Dialog	

// Unique Id Wrapper Dialog		
$( "#dialog-unique-id-wrapper" ).dialog({
	autoOpen: false,
	height: 550,
	width: 800,
	modal: true,
	buttons: [{

	    id: "btn-unique-id-wrapper-close",
            text: btn.close,
            click: function(){$( this ).dialog( "close" );}
		
	}],
	open: function(event, ui) {
		overlayBackGroundNormal = $('.ui-widget-overlay').css('background');
		$('.ui-widget-overlay').css('background', '#050');	
	}, beforeClose: function(){
		$('.ui-widget-overlay').css('background', 'black');
	}
});	
// Unique Id Wrapper Dialog
 
// Error Unique Id Wrapper Not Found Dialog
$( "#dialog-error-unique-id-wrapper-not-found" ).dialog({
	autoOpen: false,
	height: 350,
	width: 500,
	modal: true,
	buttons: [{
	    id: "btn-error-unique-id-wrapper-not-found-close",
            text: btn.close,
            click: function(){$( this ).dialog( "close" );}
	}],
	open: function(event, ui) {

		$('#uidwe').html($( "#dialog-error-unique-id-wrapper-not-found" ).data('wrapperUID'));
		overlayBackGroundNormal = $('.ui-widget-overlay').css('background');
		$('.ui-widget-overlay').css('background', '#500');
	
	}, beforeClose: function(){
			$('.ui-widget-overlay').css('background', overlayBackGroundNormal);
	}
});
// Error Unique Id Wrapper Not Found Dialog

// Submit Changes Success Dialog
$( "#dialog-submit-changes-success" ).dialog({
	autoOpen: false,
	height: 200,
	width: 350,
	modal: true,
	buttons:[ {
	    id: "btn-submit-changes-close",
            text: btn.close,
            click: function(){$( this ).dialog( "close" );}
	}],
	open: function(event, ui) {
		  overlayBackGroundNormal = $('.ui-widget-overlay').css('background');
		  $('.ui-widget-overlay').css('background', '#0a0');	
	}, beforeClose: function(){
			$('.ui-widget-overlay').css('background', overlayBackGroundNormal);
	}
});
// Submit Changes Success Dialog		




var attrs_counter=1;
// View/Edit Attributes Dialog
$( "#dialog-attributes" ).dialog({
	autoOpen: false,
	height: 650,
	width: 800,
	modal: true,
	buttons: [
		{
	    id: "btn-attributes-submit-changes",
            text: btn.add_new_attribute,
            click: function(){
		
		
		$.post("ext/tbl/tbl_actions.php", { item: 'attributes-add-new', product_id:attrs_counter  },function(resp){



			if(resp=='tblSessionTimeOut'){
			$( "#dialog-sessiontimeout" ).dialog('open');
			return false;			
			}


$('#attributes-table').append(resp);

//$('.delete_attribute_button').button();

attrs_counter++;

		});
		
            }
	
	},
	{
	    id: "btn-attributes-submit-changes",
            text: btn.submit_changes,
            click: function(){
            
            	var attr_obj=[],attr_obj_new=[];
            	var pref_new='+',pref_new='+';
           	
            	$('#attributes-table tr').not(':first').each(function(i,e){
            	
            	var temp_arr=[],temp_arr_new=[];           	
            	
            	if($(this).find('.hidden_products_attributes_id').length>0){
            	

            	pref=$(this).find('.price_prefix').val();

		temp_arr.push($(this).find('.hidden_products_attributes_id').val());
		temp_arr.push($(this).find('.attributes_selectMenus_options option:selected').val());
		temp_arr.push($(this).find('.attributes_selectMenus_values option:selected').val());
		temp_arr.push($(this).find('.value_price').val());
		if(pref=='+') temp_arr.push('sin'); else if(pref=='-') temp_arr.push('plus'); else temp_arr.push(pref);

            	attr_obj[i]=temp_arr.join(';');
            	
            	}else{

            	pref_new=$(this).find('.price_prefix_new').val();
   	
            	temp_arr_new.push($(this).find('.attributes_selectMenus_options_new option:selected').val());
            	temp_arr_new.push($(this).find('.attributes_selectMenus_values_new option:selected').val());
            	temp_arr_new.push($(this).find('.value_price_new').val());
            	
		if(pref_new=='+') temp_arr_new.push('sin'); else if(pref_new=='-') temp_arr_new.push('plus'); else temp_arr_new.push(pref_new);

            	attr_obj_new.push(temp_arr_new.join(';'));
	
            	
            	}
            	});
                     
                    // console.log(attr_obj);
                   //  console.log(attr_obj_new);
                        
		$.ajax({
		    type: 'POST',
		    data: 'value='+attr_obj.join('_@_')+'&value1='+attr_obj_new.join('_@_')+'&row_id='+$( "#dialog-attributes" ).data('productId')+'&column=products_attributes',
		    url: 'ext/tbl/tbl_ajax.php',
		    success: function(msg){
			
				if(msg=='ok_reload'){
				
				//reload
				$.post("ext/tbl/tbl_actions.php", { item: 'attributes', product_id:$( "#dialog-attributes" ).data('productId')  },function(resp){
					
					$('#dialog-attributes-options').html(resp);
					
					$( "#dialog-success-message" ).html(translate.dialog_attributes_successfully_submited_attributes_changes);
					$( "#dialog-success" ).dialog('open');
					

				});
		
				
					$( "#dialog-success-message" ).html(msg.substr(2));
					$( "#dialog-success" ).dialog('open');
						
				}else if(msg=='ok'){
				
					$( "#dialog-success-message" ).html(translate.dialog_attributes_successfully_submited_attributes_changes);
					$( "#dialog-success" ).dialog('open');
					
				}else{
					$( "#dialog-error-message" ).html(translate.dialog_attributes_there_was_an_error);
					$( "#dialog-error" ).dialog('open');
				}
			
			//if(msg=='ok')	$( "#dialog-submit-changes-success" ).dialog( "open" );	else alert(msg); 
		    }
		});
		
            }
	
	},
        
        {
            id: "btn-attributes-close",
            text: btn.close,
            click: function(){
               $( this ).dialog( "close" );
	       if($("#dialog-preview").dialog("isOpen")) $("#dialog-preview").dialog("close");
            }
        }
        
   	],

	open: function(event, ui) {
			

		$('#dialog-attributes-product-name').html($( "#dialog-attributes" ).data('productName'));

		$.post("ext/tbl/tbl_actions.php", { item: 'attributes', product_id:$( "#dialog-attributes" ).data('productId')  },function(resp){
					
			//console.log(resp);		
			if(resp=='tblSessionTimeOut'){
			$( "#dialog-sessiontimeout" ).dialog('open');
			return false;			
			}
			
//delete_attribute_button
					
			$('#dialog-attributes-options').html(resp);
//$('.delete_attribute_button').button();			
$('.goback').button();

		});
	},
			
	close: function(){
		//destroy editor
		//var editor = CKEDITOR.instances['description_editor'];				
		//if(editor){ editor.destroy(true); }
	}
});	
//MASS PRICES EDIT DIALOG
		$( "#dialog-massPricesEdit" ).dialog({
			autoOpen: false,
			height: 200,
			width: 500,
			//modal: true,
			buttons: [
				{
				    id: "btn-dialog-confirm-apply",
				    text: btn.apply,
				    click: function(){
					
					massEditPrices();
					
		    			}
				},
				{
				    id: "btn-dialog-confirm-cancel",
				    text: btn.cancel,
				    click: function(){
					$( this ).dialog( "close" );
		    			}
				}
				],
			 open: function(){
					overlayBackgroundNormal = $('.ui-widget-overlay').css('background');
					$('.ui-widget-overlay').css('background', '#080');
				},
			beforeClose: function(){$('.ui-widget-overlay').css('background', overlayBackgroundNormal);},
			close: function(){$('#dialog-success-message').html('');}
	
		});
//MASS PRICES EDIT DIALOG
//MASS PRICES EDIT DIALOG
		$( "#dialog-export" ).dialog({
			autoOpen: false,
			height: 250,
			width: 500,
			modal: true,
			buttons: [
				{
				    id: "btn-dialog-confirm-apply",
				    text: btn.export,
				    click: function(){
					
					exportData();
					
		    			}
				},
				{
				    id: "btn-dialog-confirm-close",
				    text: btn.close,
				    click: function(){
					$( this ).dialog( "close" );
		    			}
				}
				],
			 open: function(){
					overlayBackgroundNormal = $('.ui-widget-overlay').css('background');
					$('.ui-widget-overlay').css('background', '#080');
				},
			beforeClose: function(){$('.ui-widget-overlay').css('background', overlayBackgroundNormal);},
			close: function(){$('#dialog-success-message').html('');}
	
		});
//MASS PRICES EDIT DIALOG
//MASS DELETE DIALOG
		$( "#dialog-massProductsDelete" ).dialog({
			autoOpen: false,
			height: 300,
			width: 500,
			modal: true,
			buttons: [
				{
				    id: "btn-dialog-confirm-yes",
				    text: btn.yes,
				    click: function(){
					
					
					deleteProducts($( "#dialog-massProductsDelete" ).data('productsIdsArray'));
					//$( this ).dialog( "close" );
					
					
		    			}
				},
				{
				    id: "btn-dialog-confirm-no",
				    text: btn.no,
				    click: function(){
					$( this ).dialog( "close" );
		    			}
				}
				],
			 open: function(){
					overlayBackgroundNormal = $('.ui-widget-overlay').css('background');
					$('.ui-widget-overlay').css('background', '#080');
				},
			beforeClose: function(){$('.ui-widget-overlay').css('background', overlayBackgroundNormal);},
			close: function(){$('#dialog-success-message').html('');}
	
		});
//MASS DELETE DIALOG	


//MASS STATUS CHANGE DIALOG
		$( "#dialog-massProductsStatusChange" ).dialog({
			autoOpen: false,
			height: 200,
			width: 500,
			modal: true,
			buttons: [
				{
				    id: "btn-dialog-confirm-apply",
				    text: btn.apply,
				    click: function(){
					
					massEditProductsStatuses();
					
		    			}
				},
				{
				    id: "btn-dialog-confirm-cancel",
				    text: btn.cancel,
				    click: function(){
					$( this ).dialog( "close" );
		    			}
				}
				],
			 open: function(){
					overlayBackgroundNormal = $('.ui-widget-overlay').css('background');
					$('.ui-widget-overlay').css('background', '#080');
				},
			beforeClose: function(){$('.ui-widget-overlay').css('background', overlayBackgroundNormal);},
			close: function(){$('#dialog-success-message').html('');}
	
		});
//MASS STATUS CHANGE DIALOG



//MASS STATUS SESSION TIMEOUT DIALOG
		$( "#dialog-sessiontimeout" ).dialog({
			autoOpen: false,
			height: 200,
			width: 500,
			modal: true,
			closeOnEscape: false,
			buttons: [
				{
				    id: "btn-dialog-confirm-login",
				    text: btn.login,
				    click: function(){
					
					window.location='login.php';
					
		    			}
				}
				],
			open: function(event, ui){
			
					$(".ui-dialog-titlebar-close").hide();
			 
					overlayBackgroundNormal = $('.ui-widget-overlay').css('background');
					$('.ui-widget-overlay').css('background', '#F8FF7D');
				},
			beforeClose: function(){$('.ui-widget-overlay').css('background', overlayBackgroundNormal);},
			close: function(){$('#dialog-success-message').html('');}
	
		});
//MASS STATUS SESSION TIMEOUT DIALOG

//CONFIRM DIALOG
		$( "#dialog-confirm" ).dialog({
			autoOpen: false,
			height: 300,
			width: 500,
			modal: true,
			buttons: [
				{
				    id: "btn-dialog-confirm-yes",
				    text: btn.yes,
				    click: function(){
					
					
					afterConfirm($( "#dialog-confirm" ).data('extraData'));
					//$( this ).dialog( "close" );
					
					
		    			}
				},
				{
				    id: "btn-dialog-confirm-no",
				    text: btn.no,
				    click: function(){
					$( this ).dialog( "close" );
		    			}
				}
				],
			 open: function(){
					overlayBackgroundNormal = $('.ui-widget-overlay').css('background');
					$('.ui-widget-overlay').css('background', '#080');
				},
			beforeClose: function(){$('.ui-widget-overlay').css('background', overlayBackgroundNormal);},
			close: function(){$('#dialog-success-message').html('');}
	
		});
//CONFIRM DIALOG		
		
		
		
		$( "#dialog-success" ).dialog({
			autoOpen: false,
			height: 300,
			width: 500,
			modal: true,
			buttons: [
				{
				    id: "btn-dialog-success-close",
				    text: btn.close,
				    click: function(){
					$( this ).dialog( "close" );
		    			}
				}
				],
			 open: function(){
					overlayBackgroundNormal = $('.ui-widget-overlay').css('background');
					$('.ui-widget-overlay').css('background', '#080');
				},
			beforeClose: function(){$('.ui-widget-overlay').css('background', overlayBackgroundNormal);},
			close: function(){$('#dialog-success-message').html('');}
	
		});
		
		
		
		
		
		
		
		
		
		
		
			$( "#dialog-error" ).dialog({
			autoOpen: false,
			height: 200,
			width: 400,
			modal: true,
			buttons: {"Close": function(){$( this ).dialog( "close" );},},
			 open: function(){
					overlayBackgroundNormal = $('.ui-widget-overlay').css('background');
					$('.ui-widget-overlay').css('background', '#800');
				},
				beforeClose: function(){$('.ui-widget-overlay').css('background', overlayBackgroundNormal);}
		});



// Settings Dialog

$( "#dialog-settings" ).dialog({
	autoOpen: false,
	height: 450,
	width: 600,
	modal: true,
	buttons: [
	/*{
	    id: "btn-settings-submit-changes",
            text: btn.submit_changes,
            click: function(){
		$.ajax({
		    type: 'POST',
		    data: 'value='+CKEDITOR.instances['description_editor'].getData()+'&row_id='+$( "#dialog-form" ).data('productId')+'&column=products_description',
		    url: 'ext/tbl/tbl_ajax.php',
		    success: function(msg){
			if(msg=='ok')	$( "#dialog-submit-changes-success" ).dialog( "open" );	else alert(msg); 
		    }
		});
            }
	
	},   */    
        {
            id: "btn-settings-close",
            text: btn.close,
            click: function(){
               $( this ).dialog( "close" );
	       if($("#dialog-preview").dialog("isOpen")) $("#dialog-preview").dialog("close");
            }
        }
        
   	],

	open: function(event, ui) {
			
		//$("#btn-preview-changes").button("disable");
		//$('#dialog-form-product-name').html($( "#dialog-form" ).data('productName'));
		//$('#dialog-form-product-language').html($( "#dialog-form" ).data('clanguage'));


	},
			
	close: function(){

	}
});	
// Settings Dialog



});
