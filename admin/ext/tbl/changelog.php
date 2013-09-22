<?php
/*

  Alternative Administration System: Categories/Products.
  Version: 0.1
  Created By John Barounis
  www.jbaron.gr

  Changes - Updates RoadMap:
  
  --- ~ 17 06 2011:
  	
  	First release: version: 0.1
  	
	  	First version ready.
	  	Table with products and categories, categories dropdown menu and search available 
		No editing available

  17 06 2011 ~ 22 01 2012:

  	New functionalities:

  		Ability to choose what column to display.
  		View edit product description,
  		display product preview window while editing description,
  		language select,
  		count products,
  		count subcategories,
  		choose what products to display from: in stock - out of stock - both,
  		dialogs,
  		basic editing,  	
  		improved Code,
  		session storage
  			
  22 01 2012 ~ 14 04 2012:
  
  	New functionalities:
  	
  		Manufacturer selection by select menu,
  		Tax class selection by select menu,
  		new dialogs:
	  		Success
	  		Error
	  		Settings
	  		Sort fields
	  		Attributes *
	  		
 14 04 2012 ~ 14 05 2012
 	
 	Improved code
 	Made buttons smaller (changed style options)		

 05 08 2012 ~ 05 08 2012
 	
 	Add sort ordering to buttons (jquery ui sortable)
 	
 05 08 2012 ~ 08 09 2012
 
 	Improved code
 	Added new version of jquery - ui
 	
 05 08 2012 ~ 16 11 2012
 
 	Improved code
 	Added new version of jquery (1.8.2 min)
 	
	RELEASED BETA VERSION 0.2 on http://forums.oscommerce.com/topic/388744-alternative-administrator-categoriesproducts-page-addon-jquery-ajax-edit/
 
 16 11 2012 ~ 24 12 2012
 
  	Improved code
  		changed available status with icons,
  		on click text is selected on jeditable form
 	Added new version of jquery dataTables (1.9.4 min)
 	
 24 12 2012 ~ 03 03 2013

	Addon renamed to: Alternative Administration System: Categories/Products.

	Improved code:
		html5
		removed dataTables in favor of simple html tables
		added new version of jquery 1.9.1 min

	New features added:
 
		Add extra custom fields easily (for developers: associative arrays)

			All fields custom or not, can be editable or not, visible by default or not , sortable or not e.t.c.
			You can also add fields from other mysql tables other than products (you must add the necessary query text (select , from , where) on the array $_EXTRA_FIELDS )

		Deletion of multiple products
		Multiple prices edit (redifned)
		Right side panel (sortable fields, choose what fields to display and sort - reorder them)
		Bottom panel (contains: categories list, languages, display in stock or not)
		Top panel (hidden by default, opens when you click on search icon)
		Server side pagination (includes max products per page)
		Advanced search (search on specific field, developers can add their own custom fields)
		Order products by different fields - custom fields
		Print categories and/or products (only the categories - products table, everything else is not displayed )
		Tooltips
		Product rows are now sortable
		Multiple product status change

		when login session timeout now it pops up a dialog prompting user to relogin
		fully translated

 03 03 2013 ~ release
 
	Improved code
	
	New features added:
 
		Export to csv,json,text,excel file
		Sort order
		Information about products orders

*/  ?>
