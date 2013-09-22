<?php
  require('includes/application_top.php');

  $db_error = false;
  $id = '';
  $stored_config_query = '';

  $config_query = tep_db_query("select configuration_group_id from " . TABLE_CONFIGURATION_GROUP . " where configuration_group_title = 'Article Manager' limit 1");

  if (tep_db_num_rows($config_query) > 0)
  {
     $config = tep_db_fetch_array($config_query);
     $id = $config['configuration_group_id'];

     //save current configuration settings for later restore
     $stored_config_query = tep_db_query("select * from configuration where configuration_group_id = " . $id);

     $config_sql_array = array(array("DELETE FROM configuration_group WHERE configuration_group_id = " . $id),
                               array("DELETE FROM configuration WHERE configuration_group_id = " . $id));

     foreach ($config_sql_array as $sql_array) {
       foreach ($sql_array as $value) {
         if (tep_db_query($value) == false) {
           $db_error = true;
         }
       }
     }
     echo 'Article Manager has been removed form the database.<br><br>';
  }
  else
  {
    echo 'Article Manager is not installed.<br><br>';
    //Get a unique ID
    $id = 456;
    for (;;)
    {
      $cfg_query = tep_db_query("select 1 from " . TABLE_CONFIGURATION_GROUP . " where configuration_group_id = " . $id);
      if (tep_db_num_rows($cfg_query) > 0)
         $id++;
      else
         break;
    }
  }

/***************************** INSTALL BELOW ***********************************/

  echo 'Attempting to install Article Manager database changes.<br>';
     // create configuration group
     $group_query = "INSERT INTO configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) VALUES ($id, 'Article Manager', 'Article Manager site wide options', '20' , '1')";

     if (tep_db_query($group_query) == false) {
       $db_error = true;
     }

     $configuration_group_id = tep_db_insert_id();

     // create configuration variables
     $am_sql_array = array(
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Article Image Width', 'ARTICLES_IMAGE_WIDTH', '100', 'Set the width of the image displayed in an article.', $configuration_group_id, 5, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Article Image Height', 'ARTICLES_IMAGE_HEIGHT', '100', 'Set the height of the image displayed in an article.', $configuration_group_id, 6, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Authors List Style', 'MAX_DISPLAY_AUTHORS_IN_A_LIST', '1', 'Used in Authors box. When the number of authors exceeds this number, a drop-down list will be displayed instead of the default list', $configuration_group_id, 9, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Authors Select Box Size', 'MAX_AUTHORS_LIST', '1', 'Used in Authors box. When this value is 1 the classic drop-down list will be used for the authors box. Otherwise, a list-box with the specified number of rows will be displayed.', $configuration_group_id, 10, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Maximum New Articles Per Page', 'MAX_NEW_ARTICLES_PER_PAGE', '10', 'The maximum number of New Articles to display per page<br>(New Articles page)', $configuration_group_id, 15, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Maximum Article Abstract Length', 'MAX_ARTICLE_ABSTRACT_LENGTH', '300', 'Sets the maximum length of the Article Abstract to be displayed<br><br>(No. of characters)', $configuration_group_id, 20, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Maximum Articles Per Page', 'MAX_ARTICLES_PER_PAGE', '10', 'The maximum number of Articles to display per page<br>(All Articles and Topic/Author pages)', $configuration_group_id, 25, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Maximum Display Upcoming Articles', 'MAX_DISPLAY_UPCOMING_ARTICLES', '5', 'Maximum number of articles to display in the Upcoming Articles module', $configuration_group_id, 30, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Minimum Number Cross-Sell Products', 'MIN_DISPLAY_ARTICLES_XSELL', '1', 'Minimum number of products to display in the articles Cross-Sell listing.', $configuration_group_id, 35, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Maximum Number Cross-Sell Products', 'MAX_DISPLAY_ARTICLES_XSELL', '6', 'Maximum number of products to display in the articles Cross-Sell listing.', $configuration_group_id, 40, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Maximum Length of Author Name', 'MAX_DISPLAY_AUTHOR_NAME_LEN', '20', 'The maximum length of the author\'s name for display in the Author box', $configuration_group_id, 45, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Number of Days Display New Articles', 'NEW_ARTICLES_DAYS_DISPLAY', '30', 'The number of days to display New Articles?', $configuration_group_id, 50, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Author in Article Listing', 'DISPLAY_AUTHOR_ARTICLE_LISTING', 'true', 'Display the Author in the Article Listing?', $configuration_group_id, 55, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Topic in Article Listing', 'DISPLAY_TOPIC_ARTICLE_LISTING', 'true', 'Display the Topic in the Article Listing?', $configuration_group_id, 60, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Abstract in Article Listing', 'DISPLAY_ABSTRACT_ARTICLE_LISTING', 'true', 'Display the Abstract in the Article Listing?', $configuration_group_id, 65, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Date Added in Article Listing', 'DISPLAY_DATE_ADDED_ARTICLE_LISTING', 'true', 'Display the Date Added in the Article Listing?', $configuration_group_id, 70, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Topic/Author Filter', 'ARTICLE_LIST_FILTER', 'true', 'Do you want to display the Topic/Author Filter?', $configuration_group_id, 75, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Authors', 'AUTHOR_BOX_DISPLAY', 'true', 'Display the Author box in the destination column', $configuration_group_id, 80, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles', 'ARTICLE_BOX_DISPLAY', 'true', 'Display the Articles box in the destination column', $configuration_group_id, 85, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - All Articles Section</font>', 'ARTICLE_BOX_DISPLAY_ALL_ARTICLES_SECTION', 'true', 'Display an All Articles section in the articles box', $configuration_group_id, 90, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - All Articles Sort Order</font>', 'ARTICLE_BOX_DISPLAY_ALL_ARTICLES_SECTION_SORT_ORDER', '2', 'Determines the where the All Articles section will be displayed in the infobox.', $configuration_group_id, 95, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - All Articles Links?</font>', 'ARTICLE_BOX_DISPLAY_All_ARTICLES_LINKS', 'true', 'Display links to individual articles. Requires the Display Box Articles - All Articles Section option to be true. ', $configuration_group_id, 100, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - All Articles Links Limit</font>', 'ARTICLE_BOX_DISPLAY_ALL_ARTICLES_LINKS_LIMIT', '', 'Maximum number of article links to display in the articles infobox. Leave blank for no limit.', $configuration_group_id, 101, now(), now(), NULL, NULL)"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - All Blog Section', 'ARTICLE_BOX_DISPLAY_ALL_BLOG_SECTION', 'true', 'Display an All Blog Articles section in the articles box', $configuration_group_id, 105, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - All Blog Sort Order', 'ARTICLE_BOX_DISPLAY_ALL_BLOG_SECTION_SORT_ORDER', '1', 'Determines the where the All Blog Articles section will be displayed in the infobox.', $configuration_group_id, 106, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - All Blog Links?', 'ARTICLE_BOX_DISPLAY_All_BLOG_LINKS', 'true', 'Display links to individual articles. Requires the Display Box Articles - All Blog Articles Section option to be true. ', $configuration_group_id, 107, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - All Blog Links Limit', 'ARTICLE_BOX_DISPLAY_ALL_BLOG_LINKS_LIMIT', '', 'Maximum number of blog article links to display in the articles infobox. Leave blank for no limit.', $configuration_group_id, 108, now(), now(), NULL, NULL)"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - All Topics Section</font>', 'ARTICLE_BOX_DISPLAY_TOPICS_SECTION', 'true', 'Display an All Topics section in the articles box', $configuration_group_id, 110, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - All Topics Sort Order</font>', 'ARTICLE_BOX_DISPLAY_TOPICS_SECTION_SORT_ORDER', '3', 'Determines the where the All Topics section will be displayed in the infobox.', $configuration_group_id, 111, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - All Topics Links?</font>', 'ARTICLE_BOX_DISPLAY_TOPICS_LINKS', 'true', 'Display links to individual topics. Requires the Display Box Articles - All Topics Section option to be true. ', $configuration_group_id, 112, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - All Topics Links Limit</font>', 'ARTICLE_BOX_DISPLAY_TOPICS_LINKS_LIMIT', '', 'Maximum number of topics links to display in the articles infobox. Leave blank for no limit.', $configuration_group_id, 113, now(), now(), NULL, NULL)"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - New Articles Section', 'ARTICLE_BOX_DISPLAY_NEW_ARTICLES_SECTION', 'true', 'Display a New Articles section in the articles box', $configuration_group_id, 120, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - New Articles Sort Order', 'ARTICLE_BOX_DISPLAY_NEW_ARTICLES_SECTION_SORT_ORDER', '4', 'Determines the where the New Articles section will be displayed in the infobox.', $configuration_group_id, 125, now(), now(), NULL, NULL)"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - New Articles Links?', 'ARTICLE_BOX_DISPLAY_NEW_ARTICLES_LINKS', 'true', 'Display links to individual articles. Requires the Display Box Articles - New Articles Section option to be true. ', $configuration_group_id, 130, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - New Articles Links Limit', 'ARTICLE_BOX_DISPLAY_NEW_ARTICLES_LINKS_LIMIT', '', 'Maximum number of new article links to display in the articles infobox. Leave blank for no limit.', $configuration_group_id, 132, now(), now(), NULL, NULL)"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - RSS Feed Section</font>', 'ARTICLE_BOX_DISPLAY_RSS_FEED_SECTION', 'true', 'Display an RSS Feed section in the articles box', $configuration_group_id, 135, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - RSS Feed Sort Order</font>', 'ARTICLE_BOX_DISPLAY_RSS_FEED_SECTION_SORT_ORDER', '5', 'Determines the where the RSS Feed section will be displayed in the infobox.', $configuration_group_id, 140, now(), now(), NULL, NULL)"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - Search Articles Section', 'ARTICLE_BOX_DISPLAY_SEARCH_ARTICLES_SECTION', 'true', 'Display a Search Box in the articles box', $configuration_group_id, 142, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - Search Articles Sort Order', 'ARTICLE_BOX_DISPLAY_SEARCH_ARTICLES_SECTION_SORT_ORDER', '8', 'Determines the where the Search Box will be displayed in the infobox.', $configuration_group_id, 143, now(), now(), NULL, NULL)"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - Submit Article Section</font>', 'ARTICLE_BOX_DISPLAY_SUBMIT_ARTICLE_SECTION', 'true', 'Display a Submit Article section in the articles box', $configuration_group_id, 149, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - Submit Article Sort Order</font>', 'ARTICLE_BOX_DISPLAY_SUBMIT_ARTICLE_SECTION_SORT_ORDER', '6', 'Determines the where the Submit Article section will be displayed in the infobox.', $configuration_group_id, 150, now(), now(), NULL, NULL)"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - Upcoming Articles Section', 'ARTICLE_BOX_DISPLAY_UPCOMING_SECTION', 'true', 'Display an Upcoming Articles section in the articles box', $configuration_group_id, 155, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Display Box Articles - Upcoming Articles Sort Order', 'ARTICLE_BOX_DISPLAY_UPCOMING_SECTION_SORT_ORDER', '7', 'Determines the where the Upcoming Articles section will be displayed in the infobox.', $configuration_group_id, 160, now(), now(), NULL, NULL)"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - Separate Articles</font>', 'SEPARATE_ARTICLES', 'false', 'Separate each article in the article infobox with a line.', $configuration_group_id, 162, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - Separate Blog Articles</font>', 'SEPARATE_BLOG_ARTICLES', 'false', 'Separate each blog article in the article infobox with a line.', $configuration_group_id, 163, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - Separate New Articles</font>', 'SEPARATE_NEW_ARTICLES', 'false', 'Separate each new article in the article infobox with a line.', $configuration_group_id, 164, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, '<font color=steelblue>Display Box Articles - Separate Topics</font>', 'SEPARATE_TOPICS', 'false', 'Separate each topic in the article infobox with a line.', $configuration_group_id, 165, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),

                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) VALUES (NULL, 'Number of articles to display in the RSS Feed.', 'NEWS_RSS_ARTICLE', '10', 'If you want all of your articles to display in the RSS type in something like 2000.  The default is 10', $configuration_group_id, 166, now())"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) VALUES (NULL, 'Number of characters to display in each RSS article.', 'NEWS_RSS_CHARACTERS', '250', 'If you keep this at 250 it will hide a little bit of each of article from your viewers. They will have to come to your store to finish.  The default is 250', $configuration_group_id, 170, now())"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Enable Article Reviews', 'ENABLE_ARTICLE_REVIEWS', 'true', 'Enable registered users to review articles?', $configuration_group_id, 175, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Enable an HTML Editor', 'ARTICLE_ENABLE_HTML_EDITOR', 'No Editor', 'Use an HTML editor, if selected. !!! Warning !!! The selected editor must be installed for it to work!!!)', $configuration_group_id, 180, now(), now(), NULL, 'tep_cfg_select_option(array(\'CKEditor\', \'FCKEditor\', \'TinyMCE\', \'No Editor\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Enable Tell a Friend About Article', 'ENABLE_TELL_A_FRIEND_ARTICLE', 'true', 'Enable Tell a Friend option in the Article Information page?', $configuration_group_id, 185, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Enable Version Checker', 'ARTICLE_ENABLE_VERSION_CHECKER', 'false', 'Enables the version checking code to automatically check if an update is available.', $configuration_group_id, 190, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Location of Prev/Next Navigation Bar', 'ARTICLE_PREV_NEXT_BAR_LOCATION', 'bottom', 'Sets the location of the Previous/Next Navigation Bar<br><br>(top; bottom; both)', $configuration_group_id, 195, now(), now(), NULL, 'tep_cfg_select_option(array(\'top\', \'bottom\', \'both\'),')"),
                          array("INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES (NULL, 'Show Article Counts', 'SHOW_ARTICLE_COUNTS', 'true', 'Count recursively how many articles are in each topic.', $configuration_group_id, 215, now(), now(), NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),')"));

      if (! $db_error)
      {
         foreach ($am_sql_array as $sql_array) {
           foreach ($sql_array as $value) {
             //echo $value . '<br>';
             if (tep_db_query($value) == false) {
               $db_error = true;
             }
           }
         }
      }

      if (! $db_error && tep_not_null($stored_config_query))
      {
         while ($stored_config = tep_db_fetch_array($stored_config_query))
         {
            $sql_data_array = array('configuration_value ' => $stored_config['configuration_value']);
            if (false == tep_db_perform(TABLE_CONFIGURATION, $sql_data_array, 'update', "configuration_key = '" . $stored_config['configuration_key'] . "'"))
              $db_error = true;
         }
      }


     if (! $db_error)
        echo 'Article Manager database changes have been installed.';
     else
        echo 'An error occurred - database may contain errors. Try running this script again. If the same failure occurs, the database will have to be manually edited.';

     echo '<br><br><a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE) . '</a>';


?>