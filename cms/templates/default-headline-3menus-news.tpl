<!DOCTYPE html>
<!-- Template-Datei default-3-menus.tpl mit Menu 2 rechts und Menu 3 in Fusszeile -->
<!-- page_title eingefügt -->
<!-- News eingefügt -->

<html lang="<?php echo $lang['lang']; ?>" dir="<?php echo $lang['dir']; ?>">
<head>
    <meta charset="<?php echo $lang['charset']; ?>"/>
    <title><?php if ($page_title): ?><?php echo $page_title; ?><?php else: ?><?php if ($title): ?><?php echo $title; ?> - <?php endif; ?><?php echo $settings['website_title']; ?><?php endif; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php if ($description) echo $description; else echo $settings['default_description']; ?>">
    <meta name="keywords" content="<?php if ($keywords) echo $keywords; else echo $settings['default_keywords']; ?>">
    <meta name="generator" content="MySQLiteCMS <?php echo $settings['version']; ?>">
    <link href="<?php echo BOOTSTRAP_CSS; ?>" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Patua+One' rel='stylesheet' type='text/css'>
    <link href="<?php echo STATIC_URL; ?>css/style.css" rel="stylesheet">
    <link rel="shortcut icon" href="<?php echo STATIC_URL; ?>img/favicon/favicon-16x16.png">
    <link rel="apple-touch-icon" sizes="57x57" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo STATIC_URL; ?>img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="<?php echo STATIC_URL; ?>img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo STATIC_URL; ?>img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="<?php echo STATIC_URL; ?>img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo STATIC_URL; ?>img/favicon/favicon-16x16.png">
    <link rel="manifest" href="<?php echo STATIC_URL; ?>img/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<?php echo STATIC_URL; ?>img/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">	
</head>

<body<?php if ($admin): ?> class="admin"<?php endif; ?>>
<?php if ($admin) include(BASE_PATH . 'cms/templates/admin/subtemplates/admin_menu.inc.tpl'); ?>

<div class="container">

    <header class="header">
        <div class="row">
            <div class="col-md-4 logo-wrapper">
                <h1 id="logo"><a href="<?php echo BASE_URL; ?>"><?php echo $settings['website_title']; ?></a></h1>
            </div>
            <a id="menu-toggle-handle" href="#" class="visible-xs"><span class="icon-bar"></span>
                <span class="icon-bar"></span><span class="icon-bar"></span></a>
            <nav id="nav" class="col-md-8">
                <?php if ($menu_1 && isset($menus[$menu_1])): ?>
                    <ul class="nav nav-pills">
                        <?php foreach ($menus[$menu_1] as $item): ?>
                            <li<?php if (!empty($item['section']) && $item['section'] == $section[0]): ?> class="active"<?php endif; ?>>
                            <a href="<?php echo $item['link']; ?>"
                               title="<?php echo $item['title']; ?>"<?php if ($item['accesskey'] != ''): ?> accesskey="<?php echo $item['accesskey']; ?>"<?php endif; ?>><?php echo $item['name']; ?></a>
                            </li><?php endforeach; ?>
                    </ul>
                <?php endif; ?>
            </nav>
        </div>
    </header>

    <?php if ($sidebar_1): ?>
        <?php echo $sidebar_1; ?>
    <?php endif; ?>

    <?php if ($breadcrumbs): ?>
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb): ?>
                <li><a href="<?php echo BASE_URL . $breadcrumb['page']; ?>"><?php echo $breadcrumb['title']; ?></a></li>
            <?php endforeach; ?>
            <li class="active"><?php echo $title; ?></li>
        </ul>
    <?php endif; ?>

    <?php if (empty($sidebar_1) && empty($breadcrumbs)): ?>
        <hr class="topsep hidden-xs">
    <?php endif; ?>

    <div class="body-content">

        <div class="row<?php if (isset($tv['nocolumns'])): ?> main-content<?php endif; ?>">

            <?php if (empty($tv['nocolumns'])): ?>
            <div class="col-md-9 main-content">
            <?php endif; ?>
			<?php if($page_title): ?>
				<h1><?php echo $page_title; ?></h1>
			<?php endif; ?>
                <?php if (empty($hide_content)) echo $content; ?>
                <?php if (isset($subtemplate)) include(BASE_PATH . 'cms/templates/subtemplates/' . $subtemplate); ?>

            </div><!-- Ende class="col-md-9 main-content" -->

            <?php if ($sidebar_2): ?>
                <div class="col-md-3 sidebar">
                    <?php echo $sidebar_2; ?>
                </div><!-- Ende class="col-md-3 sidebar" -->
            <?php endif; ?>
            <?php if ($menu_2 && isset($menus[$menu_2])): ?>
            <div class="col-md-3 sidebar">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Weiter führende Links</h3>
				</div><!-- Ende class="panel-heading" -->
				<div class="panel-body">
					<ul class="list-unstyled">			
                    <?php foreach ($menus[$menu_2] as $item): ?>
                        <li<?php if (!empty($item['section']) && $item['section'] == $section[0]): ?> class="active"<?php endif; ?>>
                        <a href="<?php echo $item['link']; ?>"
                               title="<?php echo $item['title']; ?>"<?php if ($item['accesskey'] != ''): ?> accesskey="<?php echo $item['accesskey']; ?>"<?php endif; ?>><?php echo $item['name']; ?></a>
                        </li><?php endforeach; ?>
					</ul>
				</div><!-- Ende class="panel-body" -->
			</div><!-- Ende class="panel panel-default" -->		
			</div><!-- Ende class="col-md-3 sidebar" -->			
            <?php endif; ?>
			<!-- News-Bereich -->
			<?php if(isset($include_news)): ?>
            <div class="col-md-3 sidebar">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Aktuelles</h3>
				</div><!-- Ende class="panel-heading" -->
				<div class="panel-body">			
			<div id="newsrechts">
			<?php foreach($include_news as $include_news_item): ?>
				<p class="time"><?php echo $lang['include_news_time'][$include_news_item['id']]; ?></p>
				<h3><?php if($include_news_item['link']): ?><a href="<?php echo $include_news_item['link']; ?>"><?php echo $include_news_item['title']; ?></a><?php else: ?><?php echo $include_news_item['title']; ?><?php endif; ?></h3>
				<?php if($include_news_item['teaser']) : ?><p><?php echo $include_news_item['teaser']; ?><?php if($include_news_item['link']): ?> <a href="<?php echo $include_news_item['link']; ?>"><?php echo $include_news_item['linkname']; ?></a><?php endif; ?></p><?php endif; ?>
			<?php endforeach; ?>
			</div><!-- Ende newsrechts -->
				</div><!-- Ende class="panel-body" -->
			</div><!-- Ende class="panel panel-default" -->		
			</div><!-- Ende class="col-md-3 sidebar" -->			
			<?php endif; ?>
            <div class="col-md-3 sidebar">
			<div class="panel panel-default">
<!--Platz fuer die Werbung -->
 			</div><!-- Ende class="panel panel-default" -->		
			</div><!-- Ende class="col-md-3 sidebar" -->			
			<!-- Ende News-Bereich -->			
            <?php if (empty($tv['nocolumns'])): ?>
        </div><!-- Ende class="unklar" -->
        <?php endif; ?>

    </div><!-- Ende class="body-content" -->

    <?php if ($sidebar_3): ?>
        <?php echo $sidebar_3; ?>
    <?php endif; ?>

    <hr class="closure">

    <footer class="row footer">
        <div class="col-lg-12">

            <?php if ($gcb_1 && isset($gcb[$gcb_1])): ?>
                <?php echo $gcb[$gcb_1]; ?>
            <?php else: ?>
            <?php if ($menu_3 && isset($menus[$menu_3])): ?>
                <ul class="nav nav-pills">
                    <?php foreach ($menus[$menu_3] as $item): ?>
                        <li>
                        <a href="<?php echo $item['link']; ?>"
                           title="<?php echo $item['title']; ?>"<?php if ($item['accesskey'] != ''): ?> accesskey="<?php echo $item['accesskey']; ?>"<?php endif; ?>><?php echo $item['name']; ?></a>
                        </li><?php endforeach; ?>
                </ul>
            <?php endif; ?>
			
                <p>&copy; <?php echo date("Y"); ?> <?php echo $settings['author']; ?><?php if ($type != 'news' && $type != 'search' && $type != 'notes'): ?>
                        <?php echo $lang['page_last_modified']; ?><?php endif; ?>
						Powered by <a href="https://github.com/bpgs/MySQLiteCMS">MySQLiteCMS</a></p>
            <?php endif; ?>
        </div>
    </footer>

</div>

<script src="<?php echo JQUERY; ?>"></script>
<script src="<?php echo BOOTSTRAP; ?>"></script>
<script src="<?php echo STATIC_URL; ?>js/main.js"></script>
<!--	
<script>
    $('#nav li.dropdown').hover(function() {
        $('#nav ul.dropdown-menu').first().stop(true, true).delay(50).slideDown();
    }, function() {
        $('#nav ul.dropdown-menu').first().stop(true, true).delay(250).fadeOut();
    });
</script>
-->	
<?php if ($admin): ?>
    <script src="<?php echo STATIC_URL; ?>js/admin_frontend.js"></script>
<?php endif; ?>
<?php if (isset($contains_thumbnails)): ?>
    <script src="<?php echo STATIC_URL; ?>js/mylightbox.js" type="text/javascript"></script>
<?php endif; ?>
</body>
</html>