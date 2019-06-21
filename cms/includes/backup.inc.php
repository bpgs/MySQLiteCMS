<?php
if(!defined('IN_INDEX') || empty($_SESSION[$settings['session_prefix'].'user_id'])) exit;
$directory='cms/data';
if(isset($_SESSION[$settings['session_prefix'].'user_type']) && $_SESSION[$settings['session_prefix'].'user_type']==1)
 {
  $template->assign('directory', $directory);

  if(isset($_REQUEST['action'])) $action = $_REQUEST['action'];
  if(empty($action)) $action = 'main';
  
   if(isset($_REQUEST['delete']))
  {
  if(isset($_REQUEST['confirmed'])&&(substr($_REQUEST['delete'],0,8)=='content_'))
  {
     @chmod(BASE_PATH.$directory.'/'.$_REQUEST['delete'], 0755);
     if(!@unlink(BASE_PATH.$directory.'/'.$_REQUEST['delete'])) $errors[] = Localization::$lang['delete_file_error'];
     header('Location: '.BASE_URL.ADMIN_DIR.'index.php?mode=backup');
     exit;
     }
  }

  switch($action)
   {
    case 'main':
     $fp=opendir(BASE_PATH.$directory.'/');
     while($file = readdir($fp))
      {
       if(is_file(BASE_PATH.$directory.'/'.$file)&&(substr($file,0,8)=='content_'))
        {
         $file_array[] = $file;
        }
      }
     closedir($fp);

     if(isset($file_array))
      {
       natcasesort($file_array);

       $i=0;
       foreach($file_array as $file)
        {
         $files[$i]['filename'] = htmlspecialchars($file);
         $files[$i]['size'] = number_format(filesize(BASE_PATH.$directory.'/'.$file)/1000,1,".",".");
         $files[$i]['last_modified'] = strftime(Localization::$lang['time_format'], filectime(BASE_PATH.$directory.'/'.$file));
         system("echo '".$files[$i]['last_modified']."' > /tmp/debug.txt");
         ++$i;
        }
       if(isset($files))
        {
         $template->assign('files', $files);
        }
      }
     $template->assign('subtitle', Localization::$lang['backup']);
     $template->assign('subtemplate', 'backup.inc.tpl');
    break;
    case 'new':
    $file=BASE_PATH.$directory.'/content.sqlite';
    $newfile=BASE_PATH.$directory.'/content_'.date("mdY_Gis").'.sqlite';
    copy($file, $newfile);
    header('Location: '.BASE_URL.ADMIN_DIR.'index.php?mode=backup');
    
   }
 }
