# MySQLiteCMS
A SQLite leightweight CMS

## Basis

The basis of this CMS is [https://github.com/ilosuna/phpsqlitecms](https://github.com/ilosuna/phpsqlitecms).

Another source is [https://github.com/emanuel4you/phpsqlitecms](https://github.com/emanuel4you/phpsqlitecms). This is a fork of the first mentioned repository.

## Improvements / Changes / Adaptations

My goal is to combine the best of both versions and eliminate existing issues. 

That concerns for example:

* Submenus; These are already included in emanuel4you, but do not work properly.
* Backups of the Database; This are already included in emanuel4you, but do not work properly.
* Inserting news pages - done
* Adapting the Editor in Non-WYSIWYG Mode -done

## Changes 19.06.2019

* New: \cms\templates\default-3menus-news.tpl
* Changed:\cms\templates\default.tpl
* Changed:\cms\data\content.sqlite
* Changed:\cms\templates\admin\subtemplates\edit.inc.tpl

The main improvement is that you now can include News-Pages and Simple-News-Pages into other pages.

## Changes 20.06.2019

* New: \static\js\admin.js; from 2.0.4 but with some changes
* Changed: \static\css\style_admin.css; CSS Code for the Editor-Buttons
* Changed: \cms\templates\admin\main.tpl; include admin.js
* Changed: \cms\templates\admin\subtemplates\edit.inc.tpl; reaction for the Buttons

The main improvement is the improvement of the Non-WYSIWYG-Editor

## Changes 20.06.2019

* \cms\lang\german.admin.lang.php; corrections of misspelled items

## Changes 21.06.2019

New items for backup and submenu:

* \cms\lang\bulgarian.admin.lang.php
* \cms\lang\chinese_zh-CN.admin.lang.php
* \cms\lang\english.admin.lang.php
* \cms\lang\german.admin.lang.php; correction of misspelled items
* \cms\lang\polish.admin.lang.php
* \cms\lang\russian.admin.lang.php
* \cms\lang\spanish.admin.lang.php
* \cms\lang\ukrainian.admin.lang.php

Different changes:

* \config\definitions.conf.php; newer version for jquery, jqueryui, bootstrap and tinymce
* \cms\index.php; backup item added
* \cms\config\sql\mysql.initial.sql; submenu items
* \cms\config\sql\postgresql.initial.sql; submenu items
* \cms\data\content.sqlite; submenu column in table phpsqlitecms_menus added
* \cms\includes\backup.inc.php; new backup function
* \cms\includes\functions.admin.inc.php; improved security with password token
* \cms\includes\functions.inc.php; access to submenu items
* \cms\includes\menus.inc.php; access to submenu items 
* \cms\includes\users.inc.php; improved security with password token
* \cms\templates\admin\subtemplates\admin_index.inc.tpl; backup item added
* \cms\templates\admin\subtemplates\admin_menu.inc.tpl; backup item added
* \cms\templates\admin\subtemplates\backup.inc.tpl; new for database backup
* \cms\templates\admin\subtemplates\menus_edit.inc.tpl; submenu handlung added
* \cms\templates\admin\subtemplates\menus_edit_item.inc.tpl; submenu handlung added
* \cms\templates\admin\subtemplates\users.inc.tpl; improved security with password token
* \cms\templates\admin\subtemplates\users_delete.inc.tpl; improved security with password token
* \cms\templates\admin\subtemplates\users_edit.inc.tpl; improved security with password token
* \cms\templates\admin\subtemplates\users_new.inc.tpl; improved security with password token
 
The main improvements are the database backup and the submenus.

## Changes 23.06.2019

New:

* \cms\templates\subtemplates\bootstrap-carousel.inc.tpl

Changed:

* \cms\includes\classes\Gallery.class.php
* \cms\templates\default-3menus-news.tpl - missing jQuery added
* \cms\includes\functions.inc.php - Handling of the Bootstrap Carousel included
* \cms\data\content.sqlite - Demo Page of the Bootstrap Carousel included

The main improvement is the Bootstrap Carousel

## Changes 28.06.2019

New:

* .htaccess in some subdirectories - for security reasons
* \cms\templates\default-category.tpl - demonstration of news categories
* \cms\templates\default-headline-3menus-news.tpl - demonstration of headline
* \static\img\pdf.png - missing icon added
* \static\img\rss.png - missing icon added

Changed:

* \cms\data\content.sqlite - more demonstration and testpages
* \cms\includes\edit.inc.php - headline 
* \cms\includes\functions.inc.php - collection of  news categories
* \cms\templates\default.tpl - no submenu hover (JavaScript)
* \cms\templates\default-3menus-news.tpl - no submenu hover (JavaScript)
* \cms\templates\admin\subtemplates\edit.inc.tpl - category and headline added
* \cms\templates\subtemplates\news.inc.tpl - category added
* \cms\templates\subtemplates\overview.inc.tpl - some comments added

The main improvement is categories in news pages

## Changes 01.07.2019

* \cms\data\content.sqlite - some examples to demonstrate the new `[baseurl]`
* \cms\includes\functions.inc.php - some useless comments removed, `[baseurl]` included
* \cms\templates\admin\subtemplates\edit.inc.tpl - improved editor for sidebar content and teaser content
* \cms\templates\subtemplates\gallery.inc.tpl - better gallery with view title and subtitle

The main improvements are the special tag `[baseurl]` and the improved editor for sidebar content and teaser content