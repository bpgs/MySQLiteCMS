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

The main improvement is that you now can include News-Pages and Simple-News-Pages into other pages.

* New: \cms\templates\default-3menus-news.tpl
* Changed:\cms\templates\default.tpl
* Changed:\cms\data\content.sqlite
* Changed:\cms\templates\admin\subtemplates\edit.inc.tpl

The main improvement is that you now can include News-Pages and Simple-News-Pages into other pages.

## Changes 20.06.2019

Version 3.1.0

The main improvement is the improvement of the Non-WYSIWYG-Editor

* New: \static\js\admin.js; from 2.0.4 but with some changes
* Changed: \static\css\style_admin.css; CSS Code for the Editor-Buttons
* Changed: \cms\templates\admin\main.tpl; include admin.js
* Changed: \cms\templates\admin\subtemplates\edit.inc.tpl; reaction for the Buttons
* Changed: \cms\lang\german.admin.lang.php; corrections of misspelled items

## Changes 21.06.2019

Version 3.2.0

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

Version 3.3.0

New:

* \cms\templates\subtemplates\bootstrap-carousel.inc.tpl

Changed:

* \cms\includes\classes\Gallery.class.php
* \cms\templates\default-3menus-news.tpl - missing jQuery added
* \cms\includes\functions.inc.php - Handling of the Bootstrap Carousel included
* \cms\data\content.sqlite - Demo Page of the Bootstrap Carousel included

The main improvement is the Bootstrap Carousel

## Changes 28.06.2019

Version 3.4.0

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

The main improvement is categories in news pages.

## Changes 01.07.2019

Version 3.5.0

* \cms\data\content.sqlite - some examples to demonstrate the new `[baseurl]`
* \cms\includes\functions.inc.php - some useless comments removed, `[baseurl]` included
* \cms\templates\admin\subtemplates\edit.inc.tpl - improved editor for sidebar content and teaser content
* \cms\templates\subtemplates\gallery.inc.tpl - better gallery with view title and subtitle

The main improvements are the special tag `[baseurl]` and the improved editor for sidebar content and teaser content

## Changes 02.07.2019

Version 3.5.1

New:

* favicon.ico
* all files in the \static\img\favicon directory

Changed:

* \static\img\favicon.png
* \cms\templates\default.tpl
* \cms\templates\default-3menus-news.tpl
* \cms\templates\default-category.tpl
* \cms\templates\default-headline-3menus-news.tpl

All changes serve the favicon representation.

## Changes 04.07.2019

Version 3.6.0

New:

* \static\files\example-01.csv - example file for csv-import
* \static\js\csv.js - JavaScript for filtering and sorting of csv-imported tables

Changed:

* \github\cms\data\content.sqlite - example for csv import added
* \github\cms\includes\functions.inc.php - spezial tag for csv-import added
* \github\cms\templates\admin\subtemplates\admin_menu.inc.tpl - minor correction of HTML-Code output

The main improvement is the csv import via special tag:


    [csv2table:dateiname|delimiter|id|filter|firstRowHeader|sortable|responsiv|tableclass]

## Changes 09.07.2019

Version 3.6.1

* \github\cms\data\content.sqlite - Some descriptions added
* \cms\includes\edit.inc.php - you can edit now the page views
* \cms\templates\admin\subtemplates\edit.inc.tpl - you can edit now the page views
* \cms\templates\default-3menus-news.tpl

The main improvement is that you can edit now the page views.

## Changes 11.07.2019

Version 3.6.2

* \github\cms\data\content.sqlite
* \cms\includes\content.inc.php - show special tags in Global Content Blogs
* \cms\includes\gcb.inc.php - show special tags in Global Content Blogs

The main improvement is that you can see now the content of special tags in Global Content Blogs.

You can use the following special tags:

* `[image:imagefile.jpg|classname]` - includes an image file, this is already part of phpSQLiteCMS from ilosuna, can be added via the non-wysiwyg-toolbar of the editor
* `[thumbnail:#number|classname]` - includes an thumbnail image file, this is already part of phpSQLiteCMS from ilosuna, can be added via the non-wysiwyg-toolbar of the editor
* `[gallery:galleryname]` - includes a whole imagegallery, this is already part of phpSQLiteCMS from ilosuna, can be added via the non-wysiwyg-toolbar of the editor
* `[[websitetolink|linktext]]` -  - includes a link , this is already part of phpSQLiteCMS from ilosuna, can be added via the non-wysiwyg-toolbar of the editor
* `[bootstrapgallery:galleryname]` - includes a whole imagegallery as a **bootstrap slider**, this is **new in MySQLiteCMS**, can **not** be added via the non-wysiwyg-toolbar of the editor, just type it in.
* `[csv:csvfile.csv]` - includes the content of a csvfile as a table, this is **new in MySQLiteCMS**, can **not** be added via the non-wysiwyg-toolbar of the editor, just type it in.
* `[baseurl]` - includes the base url of a cms installation, useful if you use a subdirectory, this is **new in MySQLiteCMS**, can **not** be added via the non-wysiwyg-toolbar of the editor, just type it in.

## Changes 19.07.2019

Version 3.6.3

* \cms\data\content.sqlite
* \cms\includes\functions.inc.php

Avoid PHP 7.2 Notice: __autoload() is deprecated, use spl_autoload_register() instead

## Changes 20.07.2019

Version 3.6.4

* \cms\data\content.sqlite
* \cms\templates\admin\subtemplates\settings_advanced.inc.tpl 
 
Avoid PHP 7.2 Notice: The each() function is deprecated

## Changes 22.07.2019

Version 3.6.5

* \cms\data\content.sqlite
* \cms\includes\classes\News.class.php

Enable special tags in news teaser

## Changes 31.10.2021

Version 3.7.0

To show Update date in News:

* \cms\includes\classes\content.inc.php
* \cms\includes\classes\News.class.php
* \cms\templates\classes\subtemplates\news.inc.tpl

Usage of Tiny MCE, Version 4.3.8

* \cms\config\definitions.conf.php modified
* \static\js\tinymce-4.3.8-min.js is New
* all in \static\js\plugins is New
* all in Dateien in \static\js\skins is New
* all in Dateien in \static\js\themes is New

## Changes 02.11.2021

Version 3.7.1

More comments in

* edit.inc.tpl
* modal_insert_gallery.tpl
* modal_insert_image.tpl
* modal_insert_raw_image.tpl
* modal_insert_thumbnail.tpl

Textcolor and Spellcheck enabled

* wysiwyg_init.js 

## Changes 18./19.11.2021

Version 3.7.2

`get_magic_quotes_gpc` and `each` are DEPRECATED in PHP 7.4/7.2 and can not be used in PHP 8.0

* cms\includes\functions.inc.php
* cms\includes\settings.inc.php
* index.php

## Changes 25.11.2021

Version 3.7.3

* cms\includes\functions.inc.php - function stripslashes_deep completely deactivated

## Changes 24.03.2022

Version 3.8.0

Improved NON-WYSIWYG-Editor with help for the special tags `bootstrapgallery` and `csv2table`

* cms\data\content.sqlite - better menu structure, changed version number
* cms\templates\admin\main.tpl - avoid indexing of the login page
* cms\templates\admin\subtemplates\edit.inc.tpl- changed to improve the NON-WYSIWYG-Editor
* cms\templates\admin\subtemplates\modal_insert_bootstrap_carousel.tpl - new to improve the NON-WYSIWYG-Editor
* cms\templates\admin\subtemplates\modal_insert_csv2table.tpl - new to improve the NON-WYSIWYG-Editor
* cms\config\definitions.conf.php - `FILE_DIR` added
* cms\includes\modal.inc.php - adoptions für bootstrap_carousel and csv2table

## Changes 29.03.2022

Version 3.8.1

* cms\data\content.sqlite - changed version number
* cms\lang\english.admin.lang.php - some translations added
* cms\lang\german.admin.lang.php - some translations added
* cms\templates\admin\subtemplates\modal_insert_csv2table.tpl - better multilanguage support
* cms\templates\admin\subtemplates\modal_insert_bootstrap_carousel.tpl - better multilanguage support
* cms\templates\admin\subtemplates\edit.inc.tpl - better multilanguage support
* cms\templates\admin\subtemplates\pages.inc.tpl - better multilanguage support, page typ and template in page overview added
* cms\includes\pages.inc.php - page typ and template in page overview added

See it working on <https://mein-wunschname.lima-city.at/>