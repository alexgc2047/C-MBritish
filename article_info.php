<?php
/*
  $Id: article_info.php, v1.0 2003/12/04 12:00:00 ra Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce
  Portions Copyright 2009 http://www.oscommerce-solution.com

  Released under the GNU General Public License
*/

  require('includes/application_top.php');

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_ARTICLE_INFO);

  $article_check_query = tep_db_query("SELECT COUNT(*) as total from " . TABLE_ARTICLES . " a, " . TABLE_ARTICLES_DESCRIPTION . " ad where a.articles_status = '1' and a.articles_id = '" . (int)$_GET['articles_id'] . "' and ad.articles_id = a.articles_id and ad.language_id = '" . (int)$languages_id . "'");
  $article_check = tep_db_fetch_array($article_check_query);
  require(DIR_WS_INCLUDES . 'template_top.php');

?>
<script language="javascript"><!--
function popupWindow(url) {
 window.open(url,'popupWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=600,height=600,screenX=150,screenY=150,top=150,left=150')
}
//--></script>
<table border="0" width="100%" cellspacing="3" cellpadding="3">
  <tr>
<?php
  if ($article_check['total'] < 1) {
?>
      <tr>
        <td class="pageHeading" ><?php echo HEADING_ARTICLE_NOT_FOUND; ?></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td class="main" ><?php echo TEXT_ARTICLE_NOT_FOUND; ?></td>
      </tr>
<?php
  } else {
    $article_info_query = tep_db_query("select a.articles_id, a.articles_date_added, a.articles_date_available, a.authors_id, ad.articles_name, ad.articles_description, ad.articles_image, ad.articles_url, au.authors_name, au.authors_image from " . TABLE_ARTICLES . " a left join " . TABLE_AUTHORS . " au using(authors_id), " . TABLE_ARTICLES_DESCRIPTION . " ad where a.articles_status = '1' and a.articles_id = '" . (int)$_GET['articles_id'] . "' and ad.articles_id = a.articles_id and ad.language_id = '" . (int)$languages_id . "'");
    $article_info = tep_db_fetch_array($article_info_query);

    tep_db_query("update " . TABLE_ARTICLES_DESCRIPTION . " set articles_viewed = articles_viewed+1 where articles_id = '" . (int)$_GET['articles_id'] . "' and language_id = '" . (int)$languages_id . "'");

    $articles_name = $article_info['articles_name'];
    $articles_author_id = $article_info['authors_id'];
    $articles_author = $article_info['authors_name'];

?>
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top"><h1><?php echo $articles_name; ?></h1></td>
             <td align="right" valign="top"><h1>
             <?php
             if (tep_not_null($articles_author) && DISPLAY_AUTHOR_ARTICLE_LISTING == 'true') {
                $authorsImage = DIR_WS_IMAGES . 'article_manager_uploads/' . $article_info['authors_image'];
                if (file_exists($authorsImage) && is_file($authorsImage)) {
                    echo '<a href="' . tep_href_link(FILENAME_ARTICLES,'authors_id=' . $articles_author_id) . '">' . tep_image($authorsImage, HEADING_TITLE, HEADING_IMAGE_WIDTH, HEADING_IMAGE_HEIGHT) . '</a>';
                } else {
                    echo TEXT_BY . '<a href="' . tep_href_link(FILENAME_ARTICLES,'authors_id=' . $articles_author_id) . '">' . $articles_author . '</a>';
                }
             }
             ?>
             </h1></td>
          </tr>
        </table></td>
      </tr>
      <?php if (tep_not_null($article_info['articles_image']) && file_exists(DIR_WS_IMAGES . 'article_manager_uploads/'.$article_info['articles_image'])) { ?>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td class="main"><?php echo tep_image(DIR_WS_IMAGES . 'article_manager_uploads/'.$article_info['articles_image'], $article_info['articles_name'], ARTICLES_IMAGE_WIDTH, ARTICLES_IMAGE_HEIGHT); ?></td>
      </tr>
      <?php } ?>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td class="main">
          <p><?php echo stripslashes($article_info['articles_description']); ?></p>
        </td>
      </tr>
<?php
    if (tep_not_null($article_info['articles_url'])) {
?>
      <tr>
        <td class="main"><?php echo sprintf(TEXT_MORE_INFORMATION, "http://" . urlencode($article_info['articles_url']) ); ?></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
    }
if (DISPLAY_DATE_ADDED_ARTICLE_LISTING == 'true') {
    if ($article_info['articles_date_available'] > date('Y-m-d H:i:s')) {
?>
      <tr>
        <td align="left" class="smallText"><?php echo sprintf(TEXT_DATE_AVAILABLE, tep_date_long($article_info['articles_date_available'])); ?></td>
      </tr>
<?php
    } else {
?>
      <tr>
        <td align="left" class="smallText"><?php echo sprintf(TEXT_DATE_ADDED, tep_date_long($article_info['articles_date_added'])); ?></td>
      </tr>
<?php
    }
}
?>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
  if (ENABLE_ARTICLE_REVIEWS == 'true') {
    $reviews_query = tep_db_query("SELECT COUNT(*) as count from " . TABLE_ARTICLE_REVIEWS . " where articles_id = '" . (int)$_GET['articles_id'] . "' and approved = '1'");
    $reviews = tep_db_fetch_array($reviews_query);
?>
      <tr>
        <td class="main"><?php echo TEXT_CURRENT_REVIEWS . ' ' . $reviews['count']; ?></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td><table border="0" width="100%" cellspacing="1" cellpadding="2">
          <tr>
            <td><table border="0" width="100%" cellspacing="0" cellpadding="2">
              <tr>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
<?php
    if ($reviews['count'] <= 0) {
?>
                <td class="main"><?php echo '<a href="' . tep_href_link(FILENAME_ARTICLE_REVIEWS_WRITE, tep_get_all_get_params()) . '">' . tep_image_button('button_write_review.gif', IMAGE_BUTTON_WRITE_REVIEW) . '</a>'; ?></td>
                <td align="right"><script language="javascript"><!--
                 document.write('<?php echo '<a href="javascript:popupWindow(\\\'' . tep_href_link('article_popup_print.php', 'aID=' .  (int)$_GET['articles_id'] . '&language_id=' . (int)$languages_id) . '\\\')">' . tep_image_button('button_print_article.gif', IMAGE_PRINT_ARTICLE) . '</a>'; ?>');
                 //--></script>
                </td>
<?php
    } else {
?>
                <td class="main"><?php echo '<a href="' . tep_href_link(FILENAME_ARTICLE_REVIEWS_WRITE, tep_get_all_get_params()) . '">' . tep_image_button('button_write_review.gif', IMAGE_BUTTON_WRITE_REVIEW) . '</a> '; ?>
                <td class="center"><?php echo '<a href="' . tep_href_link(FILENAME_ARTICLE_REVIEWS, tep_get_all_get_params()) . '">' . tep_image_button('button_reviews.gif', IMAGE_BUTTON_REVIEW) . '</a> '; ?></td>
                <td align="right"><script language="javascript"><!--
                 document.write('<?php echo '<a href="javascript:popupWindow(\\\'' . tep_href_link('article_popup_print.php', 'aID=' .  (int)$_GET['articles_id'] . '&language_id=' . (int)$languages_id) . '\\\')">' . tep_image_button('button_print_article.gif', IMAGE_PRINT_ARTICLE) . '</a>'; ?>');
                 //--></script>
                </td>
<?php
    }
  } else {
?>
                <td align="right"><script language="javascript"><!--
                 document.write('<?php echo '<a href="javascript:popupWindow(\\\'' . tep_href_link('article_popup_print.php', 'aID=' .  (int)$_GET['articles_id'] . '&language_id=' . (int)$languages_id) . '\\\')">' . tep_image_button('button_print_article.gif', IMAGE_PRINT_ARTICLE) . '</a>'; ?>');
                 //--></script>
                </td>
<?php
  }

?>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>

<!-- tell_a_friend //-->
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
          <tr>
            <td>
<?php
  if (ENABLE_TELL_A_FRIEND_ARTICLE == 'true') {
    if (isset($_GET['articles_id'])) {
      $info_box_contents = array();
      $info_box_contents[] = array('text' => BOX_TEXT_TELL_A_FRIEND);

      new infoBoxHeading($info_box_contents, true, true);

      $info_box_contents = array();
      $info_box_contents[] = array('form' => tep_draw_form('tell_a_friend', tep_href_link(FILENAME_TELL_A_FRIEND, '', 'NONSSL', false), 'get'),
                                   'align' => 'left',
                                   'text' => TEXT_TELL_A_FRIEND . '&nbsp;' . tep_draw_input_field('to_email_address', '', 'size="10" maxlength="30" style="width: ' . (BOX_WIDTH-30) . 'px"') . '&nbsp;' . tep_image_submit('button_tell_a_friend.gif', BOX_HEADING_TELL_A_FRIEND) . tep_draw_hidden_field('articles_id', $_GET['articles_id']) . tep_hide_session_id() );

      new infoBox($info_box_contents);
    }
  }
?>
            </td>
          </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<!-- tell_a_friend_eof //-->
      <tr>
        <td>
<?php
//added for cross-sell
   if ( (USE_CACHE == 'true') && !SID) {
     include(DIR_WS_MODULES . FILENAME_ARTICLES_XSELL);
   } else {
     include(DIR_WS_MODULES . FILENAME_ARTICLES_XSELL);
    }
   }
?>
        </td>
      </tr>
    </table></td>
<?php
  require(DIR_WS_INCLUDES . 'template_bottom.php');
  require(DIR_WS_INCLUDES . 'application_bottom.php');
?>
