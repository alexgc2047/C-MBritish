<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2007 osCommerce

  Released under the GNU General Public License
*/

// look in your $PATH_LOCALE/locale directory for available locales
// or type locale -a on the server.
// Examples:
// on RedHat try 'en_US'
// on FreeBSD try 'en_US.ISO_8859-1'
// on Windows try 'en', or 'English'
if (strtolower(substr(PHP_OS, 0, 3)) === 'win') {
  @setlocale(LC_TIME, 'fra');
}else{
  @setlocale(LC_TIME, 'fr_FR.ISO_8859-1');
}

define('DATE_FORMAT_SHORT', '%d/%m/%Y');  // this is used for strftime()
define('DATE_FORMAT_LONG', '%A %d %B %Y'); // this is used for strftime()
define('DATE_FORMAT', 'd/m/Y'); // this is used for date()
define('DATE_TIME_FORMAT', DATE_FORMAT_SHORT . ' %H:%M:%S');
define('JQUERY_DATEPICKER_I18N_CODE', 'fr'); // leave empty for en_US; see http://jqueryui.com/demos/datepicker/#localization
define('JQUERY_DATEPICKER_FORMAT', 'dd/mm/yy'); // see http://docs.jquery.com/UI/Datepicker/formatDate

////
// Return date in raw format
// $date should be in format mm/dd/yyyy
// raw date is in format YYYYMMDD, or DDMMYYYY
function tep_date_raw($date, $reverse = false) {
  if ($reverse) {
    return substr($date, 0, 2) . substr($date, 3, 2) . substr($date, 6, 4);
  } else {
    return substr($date, 6, 4) . substr($date, 3, 2) . substr($date, 0, 2);
  }
}

// if USE_DEFAULT_LANGUAGE_CURRENCY is true, use the following currency, instead of the applications default currency (used when changing language)
define('LANGUAGE_CURRENCY', 'EUR');

// Global entries for the <html> tag
define('HTML_PARAMS', 'dir="ltr" lang="fr"');

// charset for web pages and emails
define('CHARSET', 'utf-8');

// page title
define('TITLE', STORE_NAME);

// header text in includes/header.php
define('HEADER_TITLE_CREATE_ACCOUNT', 'Créer un compte');
define('HEADER_TITLE_MY_ACCOUNT', 'Mon compte');
define('HEADER_TITLE_CART_CONTENTS', 'Voir panier');
define('HEADER_TITLE_CHECKOUT', 'Commander');
define('HEADER_TITLE_TOP', 'Accueil');
define('HEADER_TITLE_CATALOG', 'Catalogue');
define('HEADER_TITLE_LOGOFF', 'Déconnexion');
define('HEADER_TITLE_LOGIN', 'Connexion');
define('HEADER_TITLE_LANGUAGE_HEADER', 'Langue:');
define('HEADER_TITLE_CURRENCY_HEADER', 'Monnaie:');
define('HEADER_TITLE_HOME', 'Principal');
define('HEADER_TITLE_PRODUCTS_NEW', 'Nouve Produ');
define('HEADER_TITLE_PRODUCTS_SPECIALS', 'Promotions');
define('HEADER_TITLE_PRODUCTS_REVIEWS', 'Revue');
define('HEADER_TITLE_CONTACT_US', 'Contactez-nous');
define('HEADER_TITLE_SEARCH_BOX_TITLE', 'Rechercher');
define('HEADER_TITLE_ADVANCED_SEARCH', 'Recherche avancée');


// footer text in includes/footer.php
define('FOOTER_TEXT_REQUESTS_SINCE', 'requêtes depuis le');

// text for gender
define('MALE', 'Homme');
define('FEMALE', 'Femme');
define('MALE_ADDRESS', 'M.');
define('FEMALE_ADDRESS', 'Mme.');

// text for date of birth example
define('DOB_FORMAT_STRING', 'jj/mm/aaaa');

// checkout procedure text
define('CHECKOUT_BAR_DELIVERY', 'Information livraison');
define('CHECKOUT_BAR_PAYMENT', 'Information paiement');
define('CHECKOUT_BAR_CONFIRMATION', 'Confirmation');
define('CHECKOUT_BAR_FINISHED', 'Fini !');

// pull down default text
define('PULL_DOWN_DEFAULT', 'Choisissez');
define('TYPE_BELOW', 'Tapez ci-dessous');

// javascript messages
define('JS_ERROR', 'Des erreurs sont survenues durant le traitement de votre formulaire.\n\nVeuillez effectuer les corrections suivantes :\n\n');

define('JS_REVIEW_TEXT', '* Le \'commentaire\' que vous avez entré doit avoir au moins ' . REVIEW_TEXT_MIN_LENGTH . ' caractères.\n');
define('JS_REVIEW_RATING', '* Vous devez mettre une appréciation pour cet article.\n');

define('JS_ERROR_NO_PAYMENT_MODULE_SELECTED', '* Veuillez choisir une Mode de paiement pour votre commande.\n');

define('JS_ERROR_SUBMITTED', 'Ce formulaire a été déjà soumis. Veuillez appuyer sur Ok et attendez jusqu\'à ce que le traitement soit fini.');

define('ERROR_NO_PAYMENT_MODULE_SELECTED', 'Veuillez choisir une Mode de paiement pour votre commande.');

define('CATEGORY_COMPANY', 'Détails sociétés');
define('CATEGORY_PERSONAL', 'Vos détails personnels');
define('CATEGORY_ADDRESS', 'Votre adresse');
define('CATEGORY_CONTACT', 'Votre adresse');
define('CATEGORY_OPTIONS', 'Options');
define('CATEGORY_PASSWORD', 'Votre mot de passe');

define('ENTRY_COMPANY', 'Nom de la société :');
define('ENTRY_COMPANY_TEXT', '');
define('ENTRY_GENDER', 'Genre :');
define('ENTRY_GENDER_ERROR', 'Veuillez choisir votre genre.');
define('ENTRY_GENDER_TEXT', '*');
define('ENTRY_FIRST_NAME', 'Prénom :');
define('ENTRY_FIRST_NAME_ERROR', 'Votre prénom doit contenir un minimum de ' . ENTRY_FIRST_NAME_MIN_LENGTH . ' caractères.');
define('ENTRY_FIRST_NAME_TEXT', '*');
define('ENTRY_LAST_NAME', 'Nom :');
define('ENTRY_LAST_NAME_ERROR', 'Votre nom doit contenir un minimum de ' . ENTRY_LAST_NAME_MIN_LENGTH . ' caractères.');
define('ENTRY_LAST_NAME_TEXT', '*');
define('ENTRY_DATE_OF_BIRTH', 'Date de naissance :');
define('ENTRY_DATE_OF_BIRTH_ERROR', 'Votre date de naissance doit avoir ce format : JJ/MM/AAAA (ex. 18/02/1961)');
define('ENTRY_DATE_OF_BIRTH_TEXT', '* (ex. 18/02/1961)');
define('ENTRY_EMAIL_ADDRESS', 'Adresse email:');
define('ENTRY_EMAIL_ADDRESS_ERROR', 'Votre adresse email doit contenir un minimum de ' . ENTRY_EMAIL_ADDRESS_MIN_LENGTH . ' caractères.');
define('ENTRY_EMAIL_ADDRESS_CHECK_ERROR', 'Votre adresse email ne semble pas être valide - veuillez effectuer toutes les corrections nécessaires.');
define('ENTRY_EMAIL_ADDRESS_ERROR_EXISTS', 'Votre adresse email est déjà enregistrée sur notre site - Veuillez vous connecter avec cette adresse email ou créez un compte avec une adresse différente.');
define('ENTRY_EMAIL_ADDRESS_TEXT', '*');
define('ENTRY_STREET_ADDRESS', 'Adresse :');
define('ENTRY_STREET_ADDRESS_ERROR', 'Votre adresse doit contenir un minimum de ' . ENTRY_STREET_ADDRESS_MIN_LENGTH . ' caractères.');
define('ENTRY_STREET_ADDRESS_TEXT', '*');
define('ENTRY_SUBURB', 'Complément d\'adresse :');
define('ENTRY_SUBURB_TEXT', '');
define('ENTRY_POST_CODE', 'Code postal :');
define('ENTRY_POST_CODE_ERROR', 'Votre code postal doit contenir un minimum de ' . ENTRY_POSTCODE_MIN_LENGTH . ' caractères.');
define('ENTRY_POST_CODE_TEXT', '*');
define('ENTRY_CITY', 'Ville: ');
define('ENTRY_CITY_ERROR', 'Votre ville doit contenir un minimum de ' . ENTRY_CITY_MIN_LENGTH . ' caractères.');
define('ENTRY_CITY_TEXT', '*');
define('ENTRY_STATE', 'Etat/Département :');
define('ENTRY_STATE_ERROR', 'Votre état doit contenir un minimum de ' . ENTRY_STATE_MIN_LENGTH . ' caractères.');
define('ENTRY_STATE_ERROR_SELECT', 'Veuillez choisir un état à partir de la liste déroulante.');
define('ENTRY_STATE_TEXT', '*');
define('ENTRY_COUNTRY', 'Pays :');
define('ENTRY_COUNTRY_ERROR', 'Veuillez choisir un pays à partir de la liste déroulante.');
define('ENTRY_COUNTRY_TEXT', '*');
define('ENTRY_TELEPHONE_NUMBER', 'Numéro de téléphone :');
define('ENTRY_TELEPHONE_NUMBER_ERROR', 'Votre numéro de téléphone doit contenir un minimum de ' . ENTRY_TELEPHONE_MIN_LENGTH . ' caractères.');
define('ENTRY_TELEPHONE_NUMBER_TEXT', '*');
define('ENTRY_FAX_NUMBER', 'Numéro de fax :');
define('ENTRY_FAX_NUMBER_TEXT', '');
define('ENTRY_NEWSLETTER', 'Bulletin d\'information :');
define('ENTRY_NEWSLETTER_TEXT', '');
define('ENTRY_NEWSLETTER_YES', 'S\'abonner');
define('ENTRY_NEWSLETTER_NO', 'Ne pas s\'abonner');
define('ENTRY_PASSWORD', 'Mot de passe :');
define('ENTRY_PASSWORD_ERROR', 'Votre mot de passe doit contenir un minimum de ' . ENTRY_PASSWORD_MIN_LENGTH . ' caractères.');
define('ENTRY_PASSWORD_ERROR_NOT_MATCHING', 'Le mot de passe de confirmation doit être identique à votre mot de passe.');
define('ENTRY_PASSWORD_TEXT', '*');
define('ENTRY_PASSWORD_CONFIRMATION', 'Mot de passe de confirmation :');
define('ENTRY_PASSWORD_CONFIRMATION_TEXT', '*');
define('ENTRY_PASSWORD_CURRENT', 'Mot de passe actuel :');
define('ENTRY_PASSWORD_CURRENT_TEXT', '*');
define('ENTRY_PASSWORD_CURRENT_ERROR', 'Votre mot de passe doit contenir un minimum de ' . ENTRY_PASSWORD_MIN_LENGTH . ' caractères.');
define('ENTRY_PASSWORD_NEW', 'Nouveau mot de passe :');
define('ENTRY_PASSWORD_NEW_TEXT', '*');
define('ENTRY_PASSWORD_NEW_ERROR', 'Votre nouveau mot de passe doit contenir un minimum de ' . ENTRY_PASSWORD_MIN_LENGTH . ' caractères.');
define('ENTRY_PASSWORD_NEW_ERROR_NOT_MATCHING', 'Le mot de passe de confirmation doit être identique à votre nouveau mot de passe.');
define('PASSWORD_HIDDEN', '--CACHE--');

define('FORM_REQUIRED_INFORMATION', '* Information requise');

// constants for use in tep_prev_next_display function
define('TEXT_RESULT_PAGE', 'Pages de résultat :');
define('TEXT_DISPLAY_NUMBER_OF_PRODUCTS', 'Afficher <strong>%d</strong> à <strong>%d</strong> (sur <strong>%d</strong> produits)');
define('TEXT_DISPLAY_NUMBER_OF_ORDERS', 'Afficher <strong>%d</strong> à <strong>%d</strong> (sur <strong>%d</strong> orders)');
define('TEXT_DISPLAY_NUMBER_OF_REVIEWS', 'Afficher <strong>%d</strong> à <strong>%d</strong> (sur <strong>%d</strong> avis)');
define('TEXT_DISPLAY_NUMBER_OF_PRODUCTS_NEW', 'Afficher <strong>%d</strong> à <strong>%d</strong> (sur <strong>%d</strong> nouveaux produits)');
define('TEXT_DISPLAY_NUMBER_OF_SPECIALS', 'Afficher <strong>%d</strong> à <strong>%d</strong> (sur <strong>%d</strong> promotions)');

define('PREVNEXT_TITLE_FIRST_PAGE', 'Première page');
define('PREVNEXT_TITLE_PREVIOUS_PAGE', 'Page précédente');
define('PREVNEXT_TITLE_NEXT_PAGE', 'Page suivante');
define('PREVNEXT_TITLE_LAST_PAGE', 'Dernière page');
define('PREVNEXT_TITLE_PAGE_NO', 'Page %d');
define('PREVNEXT_TITLE_PREV_SET_OF_NO_PAGE', 'les %d pages précédentes');
define('PREVNEXT_TITLE_NEXT_SET_OF_NO_PAGE', 'les %d pages suivantes');
define('PREVNEXT_BUTTON_FIRST', '&lt;&lt;PREMIERE');
define('PREVNEXT_BUTTON_PREV', '[&lt;&lt;&nbsp;Préc]');
define('PREVNEXT_BUTTON_NEXT', '[Suiv&nbsp;&gt;&gt;]');
define('PREVNEXT_BUTTON_LAST', 'DERNIERE&gt;&gt;');

define('IMAGE_BUTTON_ADD_ADDRESS', 'Ajouter adresse');
define('IMAGE_BUTTON_ADDRESS_BOOK', 'Carnet d\'adresses');
define('IMAGE_BUTTON_BACK', 'Retour');
define('IMAGE_BUTTON_BUY_NOW', 'Acheter maintenant');
define('IMAGE_BUTTON_CHANGE_ADDRESS', 'Changez l\'adresse');
define('IMAGE_BUTTON_CHECKOUT', 'Commander');
define('IMAGE_BUTTON_CONFIRM_ORDER', 'Confirmer la commande');
define('IMAGE_BUTTON_CONTINUE', 'Continuer');
define('IMAGE_BUTTON_CONTINUE_SHOPPING', 'Continuer vos achats');
define('IMAGE_BUTTON_DELETE', 'Supprimer');
define('IMAGE_BUTTON_EDIT_ACCOUNT', 'Modifiez le compte');
define('IMAGE_BUTTON_HISTORY', 'Historique des commandes');
define('IMAGE_BUTTON_LOGIN', 'Connexion');
define('IMAGE_BUTTON_IN_CART', 'Ajouter au panier');
define('IMAGE_BUTTON_NOTIFICATIONS', 'Alertes produits');
define('IMAGE_BUTTON_QUICK_FIND', 'Recherche rapide');
define('IMAGE_BUTTON_REMOVE_NOTIFICATIONS', 'Supprimer les alertes');
define('IMAGE_BUTTON_REVIEWS', 'Avis des clients');
define('IMAGE_BUTTON_SEARCH', 'Rechercher');
define('IMAGE_BUTTON_SHIPPING_OPTIONS', 'Options de livraison');
define('IMAGE_BUTTON_TELL_A_FRIEND', 'Envoyer à un ami');
define('IMAGE_BUTTON_UPDATE', 'Mise à jour');
define('IMAGE_BUTTON_UPDATE_CART', 'Mise à jour panier');
define('IMAGE_BUTTON_WRITE_REVIEW', 'Donnez votre avis');

define('SMALL_IMAGE_BUTTON_DELETE', 'Supprimer');
define('SMALL_IMAGE_BUTTON_EDIT', 'Modifier');
define('SMALL_IMAGE_BUTTON_VIEW', 'Afficher');

define('ICON_ARROW_RIGHT', 'plus');
define('ICON_CART', 'Dans le panier');
define('ICON_ERROR', 'Erreur');
define('ICON_SUCCESS', 'Réussi');
define('ICON_WARNING', 'Attention');

define('TEXT_GREETING_PERSONAL', 'Bienvenue <span class="greetUser">%s!</span> Voudriez vous voir quels <a href="%s"><u>nouveaux produits</u></a> sont disponibles à la vente ?');
define('TEXT_GREETING_PERSONAL_RELOGON', '<small>Si vous n\'êtes pas %s, merci de vous <a href="%s"><u>reconnecter </u></a> avec votre compte.</small>');
define('TEXT_GREETING_GUEST', '<span class="greetUser">Bienvenue!</span> Si vous possédez un compte vous pouvez <a href="%s"><u>vous connecter</u></a>, sinon veuillez <a href="%s"><u>créer un compte</u></a>');
define('TEXT_GREETING_PERSONAL_CUSTOMER', 'Bienvenue à nouveau, <span class="greetUserheader">%s!</span>&nbsp;<span class="arrowBulletLogin">' . tep_image(DIR_WS_IMAGES . 'arrow.png', 'logoff') . '</span><a href="%s">Déconnexion</a>');
define('TEXT_GREETING_GUEST_CUSTOMER', '<span class="arrowBulletLogin">' . tep_image(DIR_WS_IMAGES . 'arrow.png', 'login') . '</span><a href="%s">Connexion</a>&nbsp;&nbsp;&nbsp;<span class="arrowBulletLogin">' . tep_image(DIR_WS_IMAGES . 'arrow.png', 'create an account') . '</span><a href="%s">Créer Un Compte</a>');

define('TEXT_SORT_PRODUCTS', 'Tri produits ');
define('TEXT_DESCENDINGLY', 'décroissant');
define('TEXT_ASCENDINGLY', 'croissant');
define('TEXT_BY', ' par ');

define('TEXT_REVIEW_BY', 'par %s');
define('TEXT_REVIEW_WORD_COUNT', '%s mots');
define('TEXT_REVIEW_RATING', 'Classement : %s [%s]');
define('TEXT_REVIEW_DATE_ADDED', 'Date d\'ajout : %s');
define('TEXT_NO_REVIEWS', 'Il n\'y a pour le moment aucune avis sur ce produit.');

define('TEXT_NO_NEW_PRODUCTS', 'Il n\'y a pour le moment aucun produits.');

define('TEXT_UNKNOWN_TAX_RATE', 'Taux de taxation inconnu');

define('TEXT_REQUIRED', '<span class="errorText">Requis</span>');

define('ERROR_TEP_MAIL', '<font face="Verdana, Arial" size="2" color="#ff0000"><strong><small>ERREUR:</small> Impossible d\'envoyer l\'email par le serveur SMTP spécifié. Vérifiez le fichier PHP.INI et corrigez le nom du serveur SMTP si nécessaire.</strong></font>');

define('TEXT_CCVAL_ERROR_INVALID_DATE', 'La date d\'expiration entrée pour cette carte de crédit n\'est pas valide. Veuillez vérifier la date et réessayez.');
define('TEXT_CCVAL_ERROR_INVALID_NUMBER', 'Le numémero entrée pour cette carte de crédit n\'est pas valide. Veuillez vérifier le numéro et réessayez.');
define('TEXT_CCVAL_ERROR_UNKNOWN_CARD', 'Le code à 4 chiffres que vous avez entré est : %s. Si ce code est correct, nous n\'acceptons pas ce type de carte crédit. S\'il est erroné veuillez réessayer.');

define('FOOTER_TEXT_BODY', 'Copyright &copy; ' . date('Y') . ' <a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . STORE_NAME . '</a><br />Propulsé par <a href="http://www.oscommerce.com" target="_blank">osCommerce</a><br /><font color="gray">Traduction : oscommerce-fr.info - <a href="http://www.oscommerce-fr.info" target="_blank">osCommerce France</a></font>');
/*** Begin Header Tags SEO ***/
define('BOX_HEADING_HEADERTAGS_TAGCLOUD', 'Recherches Populaires');
define('TEXT_SEE_MORE', 'Voir Plus');
/*** End Header Tags SEO ***/
/**** BEGIN ARTICLE MANAGER ****/
define('BOX_HEADING_ARTICLES', 'Articles');
define('BOX_ALL_ARTICLES', 'All Articles');
define('BOX_ALL_BLOG_ARTICLES', 'All Blog Articles');
define('BOX_ARTICLE_SUBMIT', 'Submit An Article');
define('BOX_ARTICLE_TOPICS', 'All Topics');
define('BOX_NEW_ARTICLES', 'New Articles');
define('TEXT_ARTICLE_SEARCH', 'Search Our Articles');
define('TEXT_ARTICLE_SEARCH_STRING', 'Enter Keywords Here');
define('TEXT_DISPLAY_NUMBER_OF_ARTICLES', 'Displaying <b>%d</b> to <b>%d</b> (of <b>%d</b> articles)');
define('TEXT_DISPLAY_NUMBER_OF_ARTICLES_NEW', 'Displaying <b>%d</b> to <b>%d</b> (of <b>%d</b> new articles)');
define('TEXT_ARTICLES', 'Below is a list of articles with the most recent ones listed first.');  
define('TABLE_HEADING_AUTHOR', 'Author');
define('TABLE_HEADING_ABSTRACT', 'Abstract');
define('TEXT_PXSELL_ARTICLES', 'Related Articles');
define('BOX_HEADING_AUTHORS', 'Articles by Author');
define('BOX_ARTICLES_BLOG_COMMENTS', 'Blog Comments');
define('NAVBAR_TITLE_DEFAULT', 'Articles');
define('BOX_RSS_ARTICLES', 'Articles RSS Feed');
define('BOX_UPCOMING_ARTICLES', 'Upcoming Articles');
/**** END ARTICLE MANAGER ****/

?>
