<?php
if(file_exists(dirname(__FILE__).'/install.php')){
	header("location:install.php");exit;
}
require(dirname(__FILE__)."/download/index.php");
?>