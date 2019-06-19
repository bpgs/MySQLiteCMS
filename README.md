# MySQLiteCMS
A SQLite leightweight CMS

## Basis

The basis of this CMS is [https://github.com/ilosuna/phpsqlitecms](https://github.com/ilosuna/phpsqlitecms).

Another source is [https://github.com/emanuel4you/phpsqlitecms](https://github.com/emanuel4you/phpsqlitecms). This is a fork of the first mentioned repositoriy.

## Improvements / Changes / Adaptations

My goal is to combine the best of both versions and eliminate existing issues. 

That concerns for example:

* Submenus; These are already included in emanuel4you, but do not work properly.
* Backups of the Database; This are already included in emanuel4you, but do not work properly.
* Inserting news pages
* Adapting the Editor in Non-WYSIWYG Mode

## Changes

* New: \cms\templates\default-3menus-news.tpl
* Changed:\cms\templates\default.tpl
* Changed:\cms\data\content.sqlite
* Changed:\cms\templates\admin\subtemplates\edit.inc.tpl

The main improvement is that you now can include News-Pages and Simple-News-Pages into other pages.
