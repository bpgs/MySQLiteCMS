<?php

define('JQUERY', '//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js');
define('JQUERY_UI', '//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js');
define('JQUERY_UI_CSS', '//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.min.css');
// Die folgende Definition wird nicht benutzt
define('JQUERY_UI_HANDLER', STATIC_URL.'js/jquery_ui_handler.js');

define('BOOTSTRAP', '//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js');
define('BOOTSTRAP_CSS', '//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css');

define('WYSIWYG_EDITOR', BASE_URL . '/static/js/tinymce-4.3.8-min.js');
// define('WYSIWYG_EDITOR', '//cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js');
// define('WYSIWYG_EDITOR', '//cdn.tinymce.com/4.5/tinymce.min.js');
define('WYSIWYG_EDITOR_INIT', BASE_URL . 'static/js/wysiwyg_init.js');

define('VALID_URL_CHARACTERS', '/^[a-zA-Z0-9._\-\/]+$/');
define('MEDIA_DIR', 'static/media/');
// Neu
define('FILE_DIR', 'static/files/');
define('IMAGE_IDENTIFIER', 'photo');
define('CATEGORY_IDENTIFIER', 'category:');
define('AMPERSAND_REPLACEMENT', ':AMP:');
define('SMILIES_DIR', 'static/media/smilies/');
?>
