<?php
// Die Datei modal.inc.php wird durch index.php includiert
// Die Verarbeitung der der speziellen Tags erfolgt in der Datei cms\includes\functions.inc.php
// Der eigentliche Editor wird durch cms\templates\admin\subtemplates\edit.inc.tpl gebaut.
// Es gibt Anpassungen für bootstrap_carousel und csv2table
// es wird per case zwischen
// insert_gallery
// insert_thumbnail
// insert_image
// insert_csv2table (neu)
// insert_raw_image
// insert_bootstrap_carousel (neu)
// unterschieden. Dabei ruft
// insert_gallery: modal_insert_gallery.tpl
// insert_thumbnail: modal_insert_thumbnail.tpl
// insert_image: modal_insert_image.tpl
// insert_csv2table: modal_insert_csv2table.tpl
// insert_raw_image: modal_insert_raw_image.tpl
// insert_bootstrap_carousel: modal_insert_bootstrap_carousel.tpl
if(!defined('IN_INDEX')) exit;

if(isset($_SESSION[$settings['session_prefix'].'user_id']) && isset($_REQUEST['action']))
 {
  switch($_REQUEST['action'])
   {
    case 'insert_gallery':
     $dbr = Database::$content->query("SELECT DISTINCT gallery FROM ".Database::$db_settings['photo_table']." ORDER BY gallery ASC");
     while($data = $dbr->fetch())
      {
       $galleries[] = htmlspecialchars($data['gallery']);
      }
     if(isset($galleries))
      {
       $template->assign('galleries', $galleries);
      }
     
     $template_file = 'subtemplates/modal_insert_gallery.tpl';
     break;

    case 'insert_thumbnail':
     $dbr = Database::$content->query("SELECT id, title, gallery FROM ".Database::$db_settings['photo_table']." ORDER BY gallery ASC, sequence ASC");
     $i=0;
     while($data = $dbr->fetch())
      {
       $thumbnails[$i]['id'] = $data['id'];
       $thumbnails[$i]['gallery'] = htmlspecialchars($data['gallery']);
       $thumbnails[$i]['title'] = htmlspecialchars($data['title']);
       ++$i;
      }
     if(isset($thumbnails))
      {
       $template->assign('thumbnails', $thumbnails);
      }
     
     $template_file = 'subtemplates/modal_insert_thumbnail.tpl';
     break;
     
    case 'insert_image':
     $fp=opendir(BASE_PATH.MEDIA_DIR);
     while($file = readdir($fp))
      {
       if(preg_match('/\.jpg$/i', $file) || preg_match('/\.jpeg$/i', $file) || preg_match('/\.png$/i', $file))
        {
         $images[] = $file;
        }
      }
     closedir($fp);

     if(isset($images))
      {
       natcasesort($images);
       $template->assign('images', $images);
      }   
     $template_file = 'subtemplates/modal_insert_image.tpl';
     break;

	// Neu für csv2table  	 
    case 'insert_csv2table':
     $fp=opendir(BASE_PATH.FILE_DIR);
     while($file = readdir($fp))
      {
       if(preg_match('/\.csv$/i', $file) || preg_match('/\.txt$/i', $file))
        {
         $images[] = $file;
        }
      }
     closedir($fp);

     if(isset($images))
      {
       natcasesort($images);
       $template->assign('images', $images);
      }   
     $template_file = 'subtemplates/modal_insert_csv2table.tpl';
     break;
    
    case 'insert_raw_image':
     $fp=opendir(BASE_PATH.MEDIA_DIR);
     while($file = readdir($fp))
      {
       if(preg_match('/\.jpg$/i', $file) || preg_match('/\.jpeg$/i', $file) || preg_match('/\.png$/i', $file))
        {
         $images[] = $file;
        }
      }
     closedir($fp);

     if(isset($images))
      {
       natcasesort($images);
       $template->assign('images', $images);
      }   
     $template_file = 'subtemplates/modal_insert_raw_image.tpl';

     break;
	// Neu für bootstrap_carousel  	 
	 case 'insert_bootstrap_carousel':
     $dbr = Database::$content->query("SELECT DISTINCT gallery FROM ".Database::$db_settings['photo_table']." ORDER BY gallery ASC");
     while($data = $dbr->fetch())
      {
       $galleries[] = htmlspecialchars($data['gallery']);
      }
     if(isset($galleries))
      {
       $template->assign('galleries', $galleries);
      }
     
     $template_file = 'subtemplates/modal_insert_bootstrap_carousel.tpl';
     break;
	
	// Neu für amp_gallery  
    case 'insert_amp_gallery':
     $dbr = Database::$content->query("SELECT DISTINCT gallery FROM ".Database::$db_settings['photo_table']." ORDER BY gallery ASC");
     while($data = $dbr->fetch())
      {
       $galleries[] = htmlspecialchars($data['gallery']);
      }
     if(isset($galleries))
      {
       $template->assign('galleries', $galleries);
      }
     
     $template_file = 'subtemplates/modal_insert_amp_gallery.tpl';
     break;
	 
   }
 }
?>
