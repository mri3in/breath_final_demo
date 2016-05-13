<?php
//Connect to database via $db
include('../config.php');

//Get the last record in football_shoes table to define the new user id
$sql_last_record_id = "SELECT user_id from user ORDER BY user_id DESC LIMIT 1";
$result_last_record_id = mysqli_query($db, $sql_last_record_id);

//get the last record id and increase it by one. then assign that value to the new customer ID
$row_last_record_id = mysqli_fetch_assoc($result_last_record_id);
$user_id = $row_last_record_id["user_id"] + 1;

//Insert new user to db
$result = "INSERT INTO user(user_id,user_name, user_password, staff_id, role_id) 
		VALUES ('$user_id','$_POST[user_name]','$_POST[user_password]','$_POST[staff_id]','$_POST[role_id]')";
$result_query = mysqli_query ($db, $result);
//echo $result;
header ('location:../html/user.html');