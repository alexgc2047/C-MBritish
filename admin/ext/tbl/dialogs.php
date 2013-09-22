<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

*/



//$lang_arr=$languages_array;
//foreach($lang_arr  as $i => $info){
//  if($info['text'] == $languages_selected_name){ array_splice($lang_arr, $i, 1); break; }
//}
?>

<div id="dialog-form" class="dialog" style="text-align:center" title="<?php echo TBL_DIALOG_TITLE_PRODUCT_DESCRIPTION; ?>">
	
	<div id="dialog-form_edit_description">
		<div style="margin:20px 0;"><div style="float:left;"><?php echo TBL_DIALOGS_PHP_PRODUCT; ?></div>&nbsp;&nbsp;<div id="dialog-form-product-name" style="float:left;color:#800;"></div></div>
		<div style="margin:20px 0;"><div style="float:left;"><?php echo TBL_DIALOGS_PHP_EDITING_PRODUCT_IN; ?><span id="dialog-form-product-language" style="font-weight:bold;"></span><?php echo TBL_DIALOGS_PHP_LANGUAGE; ?></div>&nbsp;&nbsp;
		</div>

		<form name="editDescriptionForm" action="#" method="post">
			<textarea id="description_editor" rows="5" cols="50" name="description_editor" class="text ui-widget-content ui-corner-all"></textarea>
		</form>

		<input type="hidden" id="previewid" value="<?php echo isset($defaults['productDescriptionUniqueIdWrapper']) && $defaults['productDescriptionUniqueIdWrapper']!='' ? $defaults['productDescriptionUniqueIdWrapper'] : 'tbl';  ?>" />
	</div>
	
	<div id="dialog-form_product_info_page" style="display:none;vertical-align:top;width:49%;border-left:dashed lightGray 1px;">
		<iframe id="iframias" class="iframia"></iframe>
	</div>
	
</div>




<div class="dialog" id="dialog-preview" title="<?php echo TBL_DIALOG_TITLE_PRODUCT_PREVIEW; ?>">
<iframe id="iframia"></iframe>
</div>

<div class="dialog" id="dialog-products" title="<?php echo TBL_DIALOG_TITLE_PRODUCTS; ?>Products"></div>


<div class="dialog" id="dialog-unique-id-wrapper" title="<?php echo TBL_DIALOG_TITLE_WARNING_INFORMATION; ?>">


	<div style="color:#400;text-align:center;margin:15px auto;font-weight:bold;font-size:15px;"><?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_USE_THIS_ONLY; ?></div>

	<p style="margin:20px auto;"><?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_IN_ORDER; ?></p>

	<h1><?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_INSTRUCTIONS; ?></h1>
	<hr />
	<?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_OPEN_EDIT; ?>
	<div style="margin:10px auto;font-size:14px;color:#333">

		<pre style="color:#a00">&lt;?php echo stripslashes($product_info['products_description']); ?&gt;</pre>
		<?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_TO; ?>
		<pre style="color:#060">&lt;?php echo '&lt;span id="tbl"&gt;'.stripslashes($product_info['products_description']).'&lt;/span&gt;'; ?&gt;</pre>
		<?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_OR; ?>
		<pre style="color:#060">&lt;span id="tbl"&gt;&lt;?php echo stripslashes($product_info['products_description']); ?&gt;&lt;/span&gt;</pre>
		<div style="margin:20px auto;"></div>
		<?php  echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_WHERE; ?> "<strong>tbl</strong>" <?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_WHERE_IS; ?>

	</div>

	<div style="margin:20px auto;font-size:14px;color:#333">
		<p><?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_SAVE; ?></p>
		<p><?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_NOW; ?></p>
		<p><?php echo TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_SPAN; ?></p>

	</div>
	
	Cool!!!

</div>

<div class="dialog" id="dialog-error-unique-id-wrapper-not-found" title="<?php echo TBL_DIALOG_TITLE_ERROR; ?>">
	<div><?php echo TBL_DIALOGS_PHP_ERROR_UNIQUE_ID_WRAPPER_I_COULD_NOT; ?>&nbsp;<span id="uidwe" style="color:#400;margin:15px auto;font-weight:bold;font-size:15px;"></span></div>
	<br /><br />
	<button id="uidwo"><?php echo TBL_DIALOGS_PHP_ERROR_UNIQUE_ID_WRAPPER_CLICK_HERE_TO_FIND_MORE; ?></button>
</div>

<div class="dialog" id="dialog-submit-changes-success" title="<?php echo TBL_DIALOG_TITLE_SUCCESS; ?>">
	<div><?php echo TBL_DIALOGS_PHP_SUCCESS_SUBMITED_SUCCESSFULLY; ?></div>
</div>

<div class="dialog" id="dialog-attributes" title="<?php echo TBL_DIALOG_TITLE_PRODUCT_ATTRIBUTES; ?>">
	<div id="dialog-attributes-product-name" style="color:#880000;text-align:center;margin-bottom:20px;border-bottom:1px solid #aaa;"></div>
	<div id="dialog-attributes-options"></div>
</div>

<div class="dialog" id="dialog-success" title="<?php echo TBL_DIALOG_TITLE_SUCCESS; ?>!!!">
	<div id="dialog-success-message" style="margin:10px 0;"></div>
</div>

<div class="dialog" id="dialog-error" title="<?php echo TBL_DIALOG_TITLE_ERROR; ?>">
	<div id="dialog-error-message" style="margin:10px 0;"></div>
</div>

<div class="dialog" id="dialog-confirm" title="<?php echo TBL_DIALOG_TITLE_CONFIRM_ACTION; ?>">
	<div id="dialog-confirm-message" style="margin:10px 0;"></div>
</div>

<div class="dialog" id="dialog-massPricesEdit" title="<?php echo TBL_DIALOG_TITLE_MULTIPLE_PRODUCTS_PRICE_EDIT; ?>">
	<div id="dialog-massPricesEdit-message" style="margin:10px 0;text-align:center">

		<input type="text" name="search" id="discount-field" class="lfora" placeholder="Amount" style="display:inline-block;">
		<select id="select-discount" style="display:inline-block;" ><option value="-%">-%</option><option value="+%">+%</option><option value="-">-</option><option value="+">+</option></select>

	</div>
</div>

<div class="dialog" id="dialog-export" title="<?php echo TBL_DIALOG_TITLE_EXPORT; ?>">
	<div id="dialog-export-message" style="margin:10px 0;text-align:center">
		
		<div style="margin:10px auto;"><?php echo TBL_DIALOG_EXPORT_MESSAGE; ?></div>
		
		<form name="exportForm" id="exportForm" action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">
			<select id="select-export-type" name="select-export-type">
				<option value="csv"><?php echo TBL_DIALOG_EXPORT_TYPE_CSV; ?></option>
				<option value="json"><?php echo TBL_DIALOG_EXPORT_TYPE_JSON; ?></option>
				<option value="txt"><?php echo TBL_DIALOG_EXPORT_TYPE_TEXT; ?></option>
				<option value="xls"><?php echo TBL_DIALOG_EXPORT_TYPE_EXCEL; ?></option>
			</select>
			<select id="select-export-delimeter" name="select-export-delimeter">
				<option value=","><?php echo TBL_DIALOG_EXPORT_DEL_COMMA; ?></option>
				<option value=";"><?php echo TBL_DIALOG_EXPORT_DEL_SEMI_COLON; ?></option>
				<option value="~"><?php echo TBL_DIALOG_EXPORT_DEL_TILDE; ?></option>
				<option value="*"><?php echo TBL_DIALOG_EXPORT_DEL_SPLAT; ?></option>
				<option value="tab"><?php echo TBL_DIALOG_EXPORT_DEL_TAB; ?></option>
			</select>
		</form>
		
		<div style="margin:10px auto;color:#800;font-size:12px;"><?php echo TBL_DIALOG_EXPORT_MESSAGE_JSON_NOTE; ?></div>

	</div>
</div>

<div class="dialog" id="dialog-massProductsDelete" title="<?php echo TBL_DIALOG_TITLE_DELETE_SELECTED_PRODUCTS; ?>">
<div id="dialog-massProductsDelete-message" style="margin:10px 0;">

<?php echo TBL_DIALOGS_PHP_MASS_DELETE_ARE_YOU_SURE; ?>

<div style="margin:20px;color:#800"><?php echo TBL_DIALOGS_PHP_MASS_DELETE_WARNING;?></div>

</div>
</div>

<div class="dialog" id="dialog-massProductsStatusChange" title="<?php echo TBL_DIALOG_TITLE_MULTIPLE_PRODUCTS_STATUS_CHANGE; ?>">
	<div id="dialog-massProductsStatusChange-message" style="margin:10px 0;text-align:center;">
		<select id="dialog-massProductsStatusChange-select">
			<option value="1"><?php echo TBL_DIALOGS_PHP_MASS_PRODUCT_STATUS_CHANGE_SET_IN_STOCK; ?></option>
			<option value="0"><?php echo TBL_DIALOGS_PHP_MASS_PRODUCT_STATUS_CHANGE_SET_OUT_OF_STOCK; ?></option>
		</select>
	</div>
</div>

<div class="dialog" id="dialog-sessiontimeout" title="<?php echo TBL_DIALOG_TITLE_SESSION_TIMEOUT; ?>">
	<div id="dialog-sessiontimeout-message" style="margin:10px 0;text-align:center;">
		<?php echo TBL_DIALOGS_PHP_SESSION_TIMEOUT; ?>
	</div>
</div>

<div class="dialog" id="dialog-settings" title="<?php echo TBL_DIALOG_TITLE_SETTINGS; ?>">

	<table>

	<tr>
	<td><?php echo TBL_SETTINGS_DISPLAY_ALERTS_MESSAGE; ?></td>
	<td>

		<div id="radio-show-alerts" style="float:right;">
			<?php

			if($show_alert_messages){
				$alerts_checked='checked="checked"';
				$blerts_checked='';
			}else{
				$alerts_checked='';
				$blerts_checked='checked="checked"';
			}

			?>
			<input type="radio" id="radio-show-alerts1" name="radio-show-alerts" value="1" onClick="tbl_ajax_session(1,'display_alerts');" <?php echo $alerts_checked; ?> /><label for="radio-show-alerts1"><?php echo TBL_SETTINGS_TRUE; ?></label>
			<input type="radio" id="radio-show-alerts0" name="radio-show-alerts" value="0" onClick="tbl_ajax_session(0,'display_alerts');" <?php echo $blerts_checked; ?> /><label for="radio-show-alerts0"><?php echo TBL_SETTINGS_FALSE; ?></label>
			
		</div>

	</td>
	</tr>

	<tr>
	<td><?php echo TBL_SETTINGS_ENABLE_COLUMN_SORTING; ?></td><td>


		<div id="radio-enable-sorting" style="float:right;">
			
			<?php

			if(isset($_SESSION['enable_sorting']) && $_SESSION['enable_sorting']){
				$asorting_checked='checked="checked"';
				$bsorting_checked='';
			}else{
				$asorting_checked='';
				$bsorting_checked='checked="checked"';
			}

			?>
			<input type="radio" id="radio-enable-sorting1" name="radio-enable-sorting" value="1" onClick="tbl_ajax_session(1,'enable_sorting');" <?php echo $asorting_checked; ?> /><label for="radio-enable-sorting1"><?php echo TBL_SETTINGS_TRUE; ?></label>
			<input type="radio" id="radio-enable-sorting0" name="radio-enable-sorting" value="0" onClick="tbl_ajax_session(0,'enable_sorting');" <?php echo $bsorting_checked; ?> /><label for="radio-enable-sorting0"><?php echo TBL_SETTINGS_FALSE; ?></label>
			
		</div>


	</td>

	</tr>


	</table>

</div>
