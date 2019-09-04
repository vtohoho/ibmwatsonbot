<?php
echo 'Hello, world!!<br>';

$get_dir = __FILE__;
echo $get_dir . "<br />";
$get_dir_path =  dirname($get_dir);
 
echo $get_dir_path;