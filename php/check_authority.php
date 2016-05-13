<?php
/**
 * Created by PhpStorm.
 * User: Hai Phong
 * Date: 5/4/2016
 * Time: 12:01 AM
 */

$sql_select_authority = "SELECT role_name, pages from authority JOIN user ON user.user_role_name = authority.role_name WHERE user_name = '$login_session'";
$result_select_authority = mysqli_query($db, $sql_select_authority);

while ($row_authority = mysqli_fetch_assoc($result_select_authority)) {
    $accessible_page = explode("|",$row_authority['pages']);
}
$current_page = substr(strrchr($_SERVER['PHP_SELF'], "/"), 1);
$access_right = false;

for ($i = 0; $i < count($accessible_page); $i++){
    if ($accessible_page[$i] ==  $current_page){
        $access_right = true;
    }
}

if ($access_right == false && strpos($_SERVER['PHP_SELF'], "#") === false)
    header("Location:./403.html");
else if ($access_right == false && strpos($_SERVER['PHP_SELF'], "#") !== false)
    header("Location:./403-no-tag.html");
