<?php
/**
 * Created by PhpStorm.
 * User: Hai Phong
 * Date: 5/14/2016
 * Time: 3:34 AM
 */

$searchAuthority = $_GET['search'];

//Get item_id item table
$sql_select_role = "SELECT role_name, pages from authority WHERE role_name = '$searchAuthority'";
$result_select_role = mysqli_query($db, $sql_select_role);

$result = "";

if (mysqli_num_rows($result_select_role) == 1) {
    $row_result = mysqli_fetch_assoc($result_select_role);
    $result = $row_result['pages'];
}

echo $result;
