<?php
/*
  $Id: slideshow.php,v 1.0 2011/03/12 14:00 parorrey Exp $

  Author: Ali Qureshi - PI Media
  http://www.parorrey.com

  Copyright (c) 2011 PI Media

  Released under the GNU General Public License
*/

// Returns slideshow
// TABLES: slideshow
  function tep_get_slideshow($output='ul', $width, $height) {
	  
 $slides_query = tep_db_query("select slideshow_name, slideshow_url, slideshow_description, slideshow_image FROM " . TABLE_SLIDESHOW . " order by slideshow_id");
 
	$slides_array = array();
	 $slides_ul = '';
    
      while ($slide_values = tep_db_fetch_array($slides_query)) {
		//  print_r($slides_values);
        $slides_array[] = array('slide_name' => $slide_values['slideshow_name'],
                                   'slide_url' => $slide_values['slideshow_url'],
								   'slide_description' => $slide_values['slideshow_description'],
								   'slide_image' => $slide_values['slideshow_image']);
     
	if($slide_values['slideshow_url']) $slides_ul .=  '<a href="' . $slide_values['slideshow_url']. '" target="_blank">' . tep_image(DIR_WS_IMAGES . $slide_values['slideshow_image'], $slide_values['slideshow_name'], $width, $height) . '</a>'."\n";  
	 else $slides_ul .=  '' . tep_image(DIR_WS_IMAGES . $slide_values['slideshow_image'], $slide_values['slideshow_name'], $width, $height) . ''."\n";  
	 
	
	  }
	  
   $slides_ul .= '';
   
       if($output=='array') return $slides_array;	
	else return $slides_ul;	
		    
  }

////
   $slideshow = tep_get_slideshow('','960','316');
      
	 
?>
<link href="nivo-slider.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="themes/default/default.css" type="text/css" media="screen" />
	<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
	<script type="text/javascript">
	 
		$(window).load(function() {
        $('#slider').css({visibility: 'visible'}).nivoSlider({
		effect: 'random'});
    });
	</script>
<div class="theme-default" style="border:1px solid #f1f1f1; padding:3px; margin-bottom:10px; border-radius:5px">	
		<div id="slider" style="visibility:hidden;">
			<?php echo  $slideshow;?>
		</div>
</div>