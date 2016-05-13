<?php
    /**
     * Created by Hoang Anh
     * Date: 10/05/2016
     */

    //Connect to database via $db
    include '../config.php';

    //Set up found and success_added parameter
    $role = $_POST["role_name"];
    $page = $_POST["pages"];
    $page_string = $page[0];

    //Get item_id item table
    $sql_select_role = "SELECT role_name from authority WHERE role_name = '$role'";
    $result_select_role = mysqli_query($db, $sql_select_role);

    for ($i = 1; $i < count($page); $i++) {
        $page_string .= "|".$page[$i];
    //    echo $page[$i];
    }

    if (mysqli_num_rows($result_select_role) == 1) {
        //Create new customer with info from the URL POST method
        $result = "UPDATE authority SET
                    pages = '$page_string'
                    WHERE role_name = '$role'";
        $result_query = mysqli_query($db, $result);
        echo $result;
    }
    else
    {
        //Create new customer with info from the URL POST method
        $result = " INSERT INTO authority (role_name, pages)
        VALUES ('$role','$page_string')";
        $result_query = mysqli_query($db, $result);
        echo $result;
    }
    header("Location:../html/authority.html");
?>