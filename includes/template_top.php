<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2012 osCommerce

  Released under the GNU General Public License
*/

  $oscTemplate->buildBlocks();

  if (!$oscTemplate->hasBlocks('boxes_column_left')) {
    $oscTemplate->setGridContentWidth($oscTemplate->getGridContentWidth() + $oscTemplate->getGridColumnWidth());
  }

  if (!$oscTemplate->hasBlocks('boxes_column_right')) {
    $oscTemplate->setGridContentWidth($oscTemplate->getGridContentWidth() + $oscTemplate->getGridColumnWidth());
  }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" <?php echo HTML_PARAMS; ?>>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>" />
<title><?php echo tep_output_string_protected($oscTemplate->getTitle()); ?></title>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>" />
<link rel="stylesheet" type="text/css" href="ext/jquery/ui/redmond/jquery-ui-1.8.22.css" />
<script type="text/javascript" src="ext/jquery/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="ext/jquery/ui/jquery-ui-1.8.22.min.js"></script>

<script type="text/javascript">
// fix jQuery 1.8.0 and jQuery UI 1.8.22 bug with dialog buttons; http://bugs.jqueryui.com/ticket/8484
if ( $.attrFn ) { $.attrFn.text = true; }
</script>

<?php
  if (tep_not_null(JQUERY_DATEPICKER_I18N_CODE)) {
?>
<script type="text/javascript" src="ext/jquery/ui/i18n/jquery.ui.datepicker-<?php echo JQUERY_DATEPICKER_I18N_CODE; ?>.js"></script>
<script type="text/javascript">
$.datepicker.setDefaults($.datepicker.regional['<?php echo JQUERY_DATEPICKER_I18N_CODE; ?>']);
</script>
<?php
  }
?>

<script type="text/javascript" src="ext/jquery/bxGallery/jquery.bxGallery.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="ext/jquery/fancybox/jquery.fancybox-1.3.4.css" />
<script type="text/javascript" src="ext/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="ext/960gs/<?php echo ((stripos(HTML_PARAMS, 'dir="rtl"') !== false) ? 'rtl_' : ''); ?>960_24_col.css" />
<link rel="stylesheet" type="text/css" href="stylesheet.css" />
<?php echo $oscTemplate->getBlocks('header_tags'); ?>
<script type="text/javascript">
function setEqualHeight(columns)
{
var tallestcolumn = 0;
columns.each(
function()
{
currentHeight = $(this).height();
if(currentHeight > tallestcolumn)
{
tallestcolumn = currentHeight;
}
}
);
columns.height(tallestcolumn);
}
$(document).ready(function() {
setEqualHeight($("#containerColumn > div"));
});


</script>

<script type="text/javascript">
$(function() {
var button = $('#loginButton');
var box = $('#loginBox');
var form = $('#loginForm');
button.removeAttr('href');
button.mouseup(function(login) {box.toggle();
button.toggleClass('active');});
form.mouseup(function() { return false;});
$(this).mouseup(function(login) {if(!($(login.target).parent('#loginButton').length > 0)) {button.removeClass('active');
box.hide();}});});
</script>

<!-- BOF Product Cycle Slideshow -->
<script type="text/javascript" src="ext/jquery/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="ext/jquery/jquery.easing.1.3.js"></script>
<script type="text/javascript">

function onPCS1Before() { 
	$('#PCS1Output').animate({ 
        opacity: 0.0
    }, 1000 );
} 
function onPCS1After() { 
    $('#PCS1Output').html($(this).attr("title"));
	$('#PCS1Output').animate({ 
        opacity: 1.0
    }, 500 );
}

$(document).ready(function(){
    // Inizialize ProductsCycleSlideshow
	$('#PCS1').cycle({ 
		fx:     '<?php echo PCS_FX?>',<?php echo PCS_EASING != 'None' ? "\n		easing: '".PCS_EASING."',\n" : ''?>
		sync:   <?php echo PCS_SYNC == 'true' ? '1' : '0' ?>,
		speed:  <?php echo PCS_SPEED?>,
		timeout: <?php echo PCS_TIMEOUT?>,
		pause:    <?php echo PCS_PAUSE == 'true' ? '1' : '0' ?>,
		random:  <?php echo PCS_RANDOM == 'true' ? '1' : '0' ?>,
//		pager:  '#PCS1Pager', //comment out this line to remove the numbered boxes under the title
	    before:  onPCS1Before, 
	    after:   onPCS1After
	});

});
</script>

<!-- EOF Product Cycle Slideshow -->

</head>
<body>

<div id="bodyWrapper" class="container_<?php echo $oscTemplate->getGridContainerWidth(); ?>">

<?php require(DIR_WS_INCLUDES . 'header.php'); ?>
<div id="containerColumn">
<div id="bodyContent" class="grid_<?php echo $oscTemplate->getGridContentWidth(); ?> <?php echo ($oscTemplate->hasBlocks('boxes_column_left') ? 'push_' . $oscTemplate->getGridColumnWidth() : ''); ?>">
