<?php
include("../config.php");
// Starting Session
session_start();
// Storing Session
$user_check=$_SESSION['login_user'];
// SQL Query To Fetch Complete Information Of User
$ses_sql=mysqli_query($db,"select user_name, user_id from user where user_name='$user_check'");
$row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
$login_session =$row["user_name"];
$user_id =$row["user_id"];
if(!isset($login_session)){
mysqli_close($db); // Closing Connection
header('Location: ../index.php'); // Redirecting To Home Page
}
?>