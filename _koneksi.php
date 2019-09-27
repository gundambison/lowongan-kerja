<?php
$server = "sql210.byetcluster.com";
$user = "epiz_24524368";
$pass = "7btmkdy0";
$mysql_db = "epiz_24524368_career";
mysql_connect($server, $user, $pass)or die("Error Connecting to MYSql Server:".mysql_error());  
mysql_select_db($mysql_db)or die("Error Selecting MYSql Database:".mysql_error());  
?>