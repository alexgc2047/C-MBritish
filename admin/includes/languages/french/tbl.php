<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.2
  Released on: 03/05/2013
  Created By John Barounis
  www.jbaron.gr

*/

	define('TBL_TITLE','Alternative Administration System: Categories/Products');
	define('TBL_VERSION','0.1');
	
    	define('TBL_LINK_TITLE', 'Alternative Administration System');  
 	
    	define('TBL_HEADING_TITLE_BACK_TO_PARENT', 'Go Back');
	define('TBL_HEADING_TITLE_SEARCH', 'Search');
	define('TBL_HEADING_CATEGORIES_PRODUCTS', 'Categories/Products');
	define('TBL_HEADING_PRODUCTS_MODEL', 'Model');
	define('TBL_HEADING_PRODUCTS_QUANTITY', 'Quantity');
	define('TBL_HEADING_PRODUCTS_PRICE', 'Price (Net)');

	define('TBL_HEADING_PRODUCTS_PRICE_GROSS', 'Price (Gross)');
	
	define('TBL_HEADING_PRODUCTS_WEIGHT', 'Weight');
	define('TBL_HEADING_PRODUCTS_STATUS', 'Status');
	define('TBL_HEADING_PRODUCTS_DATE_AVAILABLE', 'Available Date');
	define('TBL_HEADING_PRODUCTS_DESCRIPTION', 'Description');
	define('TBL_HEADING_PRODUCTS_ORDERED', 'Ordered');
	define('TBL_HEADING_MANUFACTURERS_NAME', 'Manufacturer');
	define('TBL_HEADING_TAX_RATE', 'Tax Rate');
	define('TBL_HEADING_PRODUCTS_IMAGE', 'Image');
	define('TBL_HEADING_TAX_CLASS_TITLE', 'Tax Class / Rate');
	define('TBL_HEADING_ATTRIBUTES', 'Attributes');
	define('TBL_HEADING_PRODUCTS_SORT_ORDER', 'Sort Order');
	
	define('TBL_HEADING_TITLE_BACK_TO_DEFAULT_ADMIN', 'Back To Default Administration Panel');
	define('TBL_HEADING_TITLE_DISPLAY_SETTINGS', 'Settings');
	
	define('TBL_HEADING_PRODUCTS_COUNT', ' Product/s');
	define('TBL_HEADING_SUBCATEGORIES_COUNT', ' Subcategory/s');
	define('TBL_HEADING_PRODUCTS_ORDER_STATUS', 'Products Quantity Order Status');
	
	
	define('TBL_ERROR_EMPTY_VALUE', 'Error: empty value is unaccepted. Old value still in use.');
	define('TBL_ERROR_NONUMERIC_VALUE', 'Error: value must be numeric. Old value still in use.');
	define('TBL_ERROR_STATUS_VALUE_LENGTH_MUST_BE_ONE', 'Error: status value length must be 1. Old value still in use.');
	define('TBL_ERROR_STATUS_VALUE_MUST_BE_0_OR_1', 'Error: status value must be 0 or 1. Old value still in use.');
	
	define('TBL_ACTIVE_PRODUCTS', 'In Stock  Products');
	define('TBL_ALL_PRODUCTS', 'Both');
	define('TBL_INACTIVE_PRODUCTS', 'Out of Stock Products');

	define('TBL_SHOWING_PRODUCTS', 'Showing:');
	
	define('TBL_VIEW_EDIT_DESCRIPTION', 'View/edit');
	
	define('TBL_VIEW_EDIT_ATTRIBUTES', 'View/edit');
	
	define('TBL_COUNT_PRODUCTS', 'Count Products');
	define('TBL_COUNT_SUBCATEGORIES', 'Count Subcategories');

	define('TBL_AJAX_TAX_CLASS_CHANGE_SUCCESS','Successfully changed Tax Class!');
	define('TBL_AJAX_MANUFACTURER_CHANGE_SUCCESS','Successfully changed Manufacturer!');
	define('TBL_AJAX_DATE_AVAILABLE_CHANGE_SUCCESS','Successfully changed Date Available!');



	define('TBL_TEXT_ORDER_BY_PRODUCT_NAME','order by Product name');
	define('TBL_TEXT_ORDER_BY_LAST_MODIFIED','order by Last modified');
	define('TBL_TEXT_ORDER_BY_DATE_ADDED','order by Date added');

	define('TBL_TEXT_ASC','Asc');
	define('TBL_TEXT_DESC','Desc');

	define('TBL_APPLY','Apply');
	
	define('TBL_TEXT_FIELDS','Fields:');
	
	
	define('TBL_TEXT_ALL','All');
	define('TBL_TEXT_SEARCH_IN_PRODUCTS_NAME','in product\'s name');
	define('TBL_TEXT_SEARCH_IN_PRODUCTS_MODEL','in product\'s model');	
	
	
	

	/*TOOLTIP*/
	define('TBL_BUTTON_TOOLTIP_SEARCH','Search');
	define('TBL_BUTTON_TOOLTIP_CHANGE_PRODUCTS_STATUS','Change Status of selected Products!');
	define('TBL_BUTTON_TOOLTIP_DELETE_PRODUCTS','Delete Products!');
	define('TBL_BUTTON_TOOLTIP_DISCOUNT','Discount - Edit Products\' prices!');
	define('TBL_BUTTON_TOOLTIP_PRINT','Print page');
	define('TBL_BUTTON_TOOLTIP_EXPORT','Export Products');
	define('TBL_BUTTON_TOOLTIP_FIELDS','Fields');
	/*TOOLTIP*/


	/*PAGINATION*/
	define('TBL_PAGINATION_MAX_PRODUCTS','Max products : ');
	define('TBL_PAGINATION_DISPLAYING',' displaying ');
	define('TBL_PAGINATION_FROM',' from ');
	define('TBL_PAGINATION_PRODUCTS',' products');	
	define('TBL_PAGINATION_FIRST','«« First');
	define('TBL_PAGINATION_LAST','Last »»');
	define('TBL_PAGINATION_NEXT','Next »');
	define('TBL_PAGINATION_PREVIOUS','« Prev');
	define('TBL_PAGINATION_JUMP','...');
	define('TBL_PAGINATION_JUMP_TO_PAGE','jump to page');
	/*PAGINATION*/
	

	define('TBL_HEADING_OPT_NAME','Option Name');
	
	define('TBL_HEADING_OPT_VALUE','Option Value');
	define('TBL_HEADING_OPT_PRICE','Option Price');
	define('TBL_HEADING_OPT_PRICE_PREFIX','Option Prefix');
	define('TBL_HEADING_OPT_ACTION','Action');	
	
	
	define('TBL_OPT_ACTION_DELETE','Delete');
	
	define('TBL_ACTION_STATUS_SUCCESSFULLY_CHANGED','Status successfully changed');
	define('TBL_ACTION_STATUS_NOT_CHANGED','Something went wrong. Status not changed!');

	//dialog titles
	define('TBL_DIALOG_TITLE_PRODUCT_DESCRIPTION','Editing/Viewing Product Description');
	define('TBL_DIALOG_TITLE_PRODUCT_PREVIEW','Product Preview');
	define('TBL_DIALOG_TITLE_PRODUCTS','Products');
	define('TBL_DIALOG_TITLE_WARNING_INFORMATION','Warning/Information');
	define('TBL_DIALOG_TITLE_ERROR','Error');
	define('TBL_DIALOG_TITLE_SUCCESS','Success');
	define('TBL_DIALOG_TITLE_PRODUCT_ATTRIBUTES','Product Attributes');
	define('TBL_DIALOG_TITLE_CONFIRM_ACTION','Confirm Action');
	define('TBL_DIALOG_TITLE_MULTIPLE_PRODUCTS_PRICE_EDIT','Multiple Products Prices Edit:');
	define('TBL_DIALOG_TITLE_DELETE_SELECTED_PRODUCTS','Delete selected Products?');
	define('TBL_DIALOG_TITLE_MULTIPLE_PRODUCTS_STATUS_CHANGE','Multiple Products Status Change');
	define('TBL_DIALOG_TITLE_SESSION_TIMEOUT','Session Timeout');
	define('TBL_DIALOG_TITLE_SETTINGS','Settings');
	define('TBL_DIALOG_TITLE_EXPORT','Export Products');

//Setings Dialog
	define('TBL_SETTINGS_DIALOG_TITLE','Settings');
	define('TBL_SETTINGS_TRUE','True');
	define('TBL_SETTINGS_FALSE','False');
	define('TBL_SETTINGS_SORT_FIELDS_MESSAGE','Sort field - colums as you desire:');
	define('TBL_SETTINGS_SORT_FIELDS','Sort Fields - Columns');
	define('TBL_SETTINGS_DISPLAY_ALERTS_MESSAGE','Display success &amp; error messages:&nbsp;');
	define('TBL_SETTINGS_ENABLE_COLUMN_SORTING','Enable column sorting:');
//Setings Dialog


//Export Dialog
	define('TBL_DIALOG_EXPORT_MESSAGE','Please select type and delimeter to export:');
	define('TBL_DIALOG_EXPORT_MESSAGE_JSON_NOTE','Delimeter does not used when type is Json');
	define('TBL_DIALOG_EXPORT_TYPE_CSV','CSV');
	define('TBL_DIALOG_EXPORT_TYPE_JSON','JSON');
	define('TBL_DIALOG_EXPORT_TYPE_TEXT','TEXT');
	define('TBL_DIALOG_EXPORT_TYPE_EXCEL','EXCEL');
	define('TBL_DIALOG_EXPORT_DEL_COMMA',', Comma');
	define('TBL_DIALOG_EXPORT_DEL_SEMI_COLON','; Semi-colon');
	define('TBL_DIALOG_EXPORT_DEL_TILDE','~ Tilde');
	define('TBL_DIALOG_EXPORT_DEL_SPLAT','* Splat');
	define('TBL_DIALOG_EXPORT_DEL_TAB',' \t Tab');
//Export Dialog


	/*DIALOG BUTTONS*/
	define('TBL_DIALOG_BUTTON_PREVIEW_CHANGES','Preview Changes');
	define('TBL_DIALOG_BUTTON_SUBMIT_CHANGES','Submit Changes');
	define('TBL_DIALOG_BUTTON_PREVIEW','Preview');
	define('TBL_DIALOG_BUTTON_CLOSE','Close');
	define('TBL_DIALOG_BUTTON_RELOAD','Reload Preview');
	define('TBL_DIALOG_BUTTON_ADD_NEW_ATTRIBUTE','Add new Attribute');
	define('TBL_DIALOG_BUTTON_YES','Yes');
	define('TBL_DIALOG_BUTTON_NO','No');
	define('TBL_DIALOG_BUTTON_APPLY','Apply');
	define('TBL_DIALOG_BUTTON_EXPORT','Export');
	define('TBL_DIALOG_BUTTON_CANCEL','Cancel');
	define('TBL_DIALOG_BUTTON_LOGIN','Login');
	/*DIALOG BUTTONS*/


	define('TBL_DIALOG_SETTINGS_SOMETHING_WENT_WRONG','Something went wrong!<br />Please contact webmaster in order to solve this.');

	define('TBL_DIALOG_SETTINGS_YOU_MUST_RELOAD_THE_WEB_PAGE','In order for changes to apply you need to reload the web page');
	define('TBL_DIALOG_SETTINGS_RELOAD_NOW','Reload Now');

	define('TBL_DIALOG_ATTRIBUTES_SUCCESSFULLY_SUBMITED_ATTRIBUTES_CHANGES','Successfully submited attributes changes');
	define('TBL_DIALOG_ATTRIBUTES_THERE_WAS_AN_ERROR','There was an error during submiting attributes changes');

	define('TBL_DIALOG_MASS_EDIT_PRICES_NO_PRODUCTS_SELECTED','No products selected!');
	define('TBL_DIALOG_MASS_EDIT_PRICES_INVALID_AMOUNT_ENTERED','You have not enter a valid amount!');
	
	define('TBL_DIALOG_MASS_EDIT_PRICES_SUCCESSFULLY_ALTERED_PRICES','Successfully altered prices for selected Products!');
	define('TBL_DIALOG_MASS_EDIT_PRICES_SOMETHING_WENT_WRONG','Something went wrong. Please try again!');

	define('TBL_DIALOG_DELETE_PRODUCTS_DELETING','Deleting, please wait!');
	define('TBL_DIALOG_DELETE_PRODUCTS_SUCCESSFULLY_DELETED','Selected Products Deleted successfully');
	define('TBL_DIALOG_DELETE_PRODUCTS_SOMETHING_WENT_WRONG','Something went wrong. Please try again!');

	define('TBL_DIALOG_ATTRIBUTES_SUCCESSFULLY_DELETED_ATTRIBUTE','Successfully deleted selected attribute');
	define('TBL_DIALOG_ATTRIBUTES_SOMETHING_WENT_WRONG','Something went wrong. Please try again!');

	define('TBL_DIALOG_SESSION_TIMEOUT_IN_ORDER', 'In order for changes to apply you need to reload the web page');
	define('TBL_DIALOG_SESSION_TIMEOUT_SOMETHING_WENT_WRONG_CONTACT', 'Something went wrong!<br />Please contact webmaster in order to solve this.');

	define('TBL_STATUS_ICON_SET_IN_STOCK', 'Set Product In Stock');
	define('TBL_STATUS_ICON_SET_OUT_OF_STOCK', 'Set Product Out Of Stock');

	define('TBL_STATUS_ICON_IN_STOCK', 'In Stock');
	define('TBL_STATUS_ICON_OUT_OF_STOCK', 'Out Of Stock');

/*ext/tbl/dialogs.php*/
	define('TBL_DIALOGS_PHP_PRODUCT', 'Product: ');
	define('TBL_DIALOGS_PHP_EDITING_PRODUCT_IN', 'Editing product in ');
	define('TBL_DIALOGS_PHP_LANGUAGE', ' language');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER', 'Product Description Unique Id Wrapper:&nbsp;');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_USE_THIS_ONLY', 'Use this only if you want to have the abillity to preview product description before applying any changes');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_IN_ORDER', 'In order to be able to preview the product description before applying changes, you need to set up a unique id that is wrapped on the product description code which can be found in the catalog\'s product_info.php page.');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_INSTRUCTIONS', 'Instructions');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_OPEN_EDIT', 'Open - edit product_info.php and change:');

	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_TO', 'to');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_OR', 'or');	

	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_WHERE', 'where');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_WHERE_IS', ' is a unique id, feel free to change.');

	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_SAVE', 'Save product_info.php');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_NOW', 'Now every product_info.php page has a unique span id.');
	define('TBL_DIALOGS_PHP_PRODUCT_DESCRIPTION_UNIQUE_ID_WRAPPER_SPAN', 'SPAN tag does not apply any styling, so no changes will be done to your theme.');

	define('TBL_DIALOGS_PHP_ERROR_UNIQUE_ID_WRAPPER_I_COULD_NOT','I could not find a unique id with the name:');
	define('TBL_DIALOGS_PHP_ERROR_UNIQUE_ID_WRAPPER_CLICK_HERE_TO_FIND_MORE','Click Here to find out about this awesome feature!');

	define('TBL_DIALOGS_PHP_SUCCESS_SUBMITED_SUCCESSFULLY','Changes Submited Successfully');

	define('TBL_DIALOGS_PHP_MASS_DELETE_ARE_YOU_SURE','Are you sure you want to delete selected products?');
	define('TBL_DIALOGS_PHP_MASS_DELETE_WARNING','Warning: after deletion product/s cannot be recovered!');

	define('TBL_DIALOGS_PHP_MASS_PRODUCT_STATUS_CHANGE_SET_IN_STOCK','Set selected products In Stock');
	define('TBL_DIALOGS_PHP_MASS_PRODUCT_STATUS_CHANGE_SET_OUT_OF_STOCK','Set selected products Out of Stock');

	define('TBL_DIALOGS_PHP_SESSION_TIMEOUT','Session timeout! Please login again!');

/*ext/tbl/dialogs.php*/
	
?>
