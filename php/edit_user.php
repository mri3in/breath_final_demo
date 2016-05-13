<?php
//Connect to database via $db
include '../config.php';

//get the param in URL of user_id
$edit_user_id = $_POST['user_id'];

//Update user with info from the URL POST method
mysqli_query($db, "UPDATE user SET
    user_name = '$_POST[user_name]',
    user_password = '$_POST[user_password]',
    staff_id = '$_POST[staff_id]',
	role_id='$_POST[role_id]',
    WHERE warehouse_id = '$edit_user_id'");

//header("Location:../html/user.html");