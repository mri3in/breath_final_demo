<?php
   // Define server_name, user_id and password as a parameter   
   define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'root');
   define('DB_PASSWORD', '');
   
   // Define Database
   define('DB_DATABASE', 'breath');
   
   // Establishing Connection
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
   
	// Check connection
	if (!$db) {
    die("Connection failed: " . mysqli_connect_error());
	}

    define('DOMAIN_NAME', 'http://breath.dev');
    define('IMG_LOCATION', DOMAIN_NAME.'/images/')
?>