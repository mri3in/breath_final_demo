<?php
/**
 * Created by PhpStorm.
 * User: Hai Phong
 * Date: 4/13/2016
 * Time: 1:05 AM
 */

    //Connect to database via $db
    include ('../config.php');

    // ---------- Get user name ----------
    session_start();// Starting Session
    // Storing Session
    $user_check=$_SESSION['login_user'];
    // SQL Query To Fetch Complete Information Of User
    $ses_sql=mysqli_query($db,"select user_name, user_id from user where user_name='$user_check'");
    $row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
    $login_session =$row["user_name"];
    $user_id =$row["user_id"];
    //------------------------------------
    
    //declare timezone and current date, time
    date_default_timezone_set("Asia/Ho_Chi_Minh");
    $creationDateTime = date("Y-m-d H:i:s");
        
    //Get the last record in storage_location table to define the new storage_location_id
    $sql_last_record_id = "SELECT storage_location_id from storage_location ORDER BY storage_location_id DESC LIMIT 1";
    $result_last_record_id = mysqli_query($db, $sql_last_record_id);
    
    //get the last record id and increase it by one. then assign that value to the new customer ID
    $row_last_record_id = mysqli_fetch_assoc($result_last_record_id);
    $storage_location_id = $row_last_record_id["storage_location_id"] + 1;
    
    //Create new customer with info from the URL POST method
    mysqli_query($db, "INSERT INTO storage_location
    (storage_location_id, storage_location_shelf, 
     storage_location_row, storage_location_column, 
     storage_location_condition, storage_location_warehouse_id, storage_location_create_datetime)
    VALUES 
    ('$storage_location_id','$_POST[storage_location_shelf]',
     '$_POST[storage_location_row]','$_POST[storage_location_column]',
     '$_POST[storage_condition]','$_POST[warehouse_id]', '$creationDateTime')");
    
    // ---------------- INSERT INTO NOTIFICATION TABLE --------------------

    //set the array for nofitication table - Lam edited 10 May 2015
    $notification_date_time = $creationDateTime;
    $notification_content = "User <b>".$login_session."</b> created a new storage location no. <b>".$storage_location_id."</b>.";
    $action_type = "Create";
    $module_category = "Inventory";
    $notification_link = "../html/edit_storage_location.html?storage_location_id=".$storage_location_id;
    
    //Get the last record in order table to define the new order_id
    $sql_get_the_last_notification_id = "SELECT notification_id from notification ORDER BY notification_id DESC LIMIT 1";
    $result_get_the_last_notification_id = mysqli_query($db, $sql_get_the_last_notification_id);
    
    //get the last record id and increase it by one. then assign that value to the new order ID
    $row_last_notification_id = mysqli_fetch_assoc($result_get_the_last_notification_id);
    $notification_id = $row_last_notification_id["notification_id"] + 1;
    
    //establish sql query to create order with the order_id and relevant details
    $sql_query_notification = "INSERT INTO notification(
                      notification_id, notification_content,
                      notification_date,
                      action_type,
                      module_category,notification_link)
                  VALUES (
                      '$notification_id','$notification_content',
                      '$notification_date_time',
                      '$action_type',
                      '$module_category','$notification_link')";
    echo $sql_query_notification;
    //run the query. if fail, echo the error message
    $query_notification = mysqli_query($db,$sql_query_notification) or die ("Error");
    // --------------------------------------------------------------------
    
    // ---------------- INSERT INTO USER_NOTIFICATION TABLE --------------------
    
    //set the array for user_nofitication table - Lam edited 10 May 2015
    $user_notification_status = "Unread";
    $user_notification_user_id = $user_id;
    $user_notification_notification_id = $notification_id;
    
    //Get the last record in order table to define the new order_id
    $sql_get_the_last_user_notification_id = "SELECT user_notification_id from user_notification ORDER BY user_notification_id DESC LIMIT 1";
    $result_get_the_last_user_notification_id = mysqli_query($db, $sql_get_the_last_user_notification_id);
    
    //get the last record id and increase it by one. then assign that value to the new order ID
    $row_last_user_notification_id = mysqli_fetch_assoc($result_get_the_last_user_notification_id);
    $user_notification_id = $row_last_user_notification_id["user_notification_id"] + 1;
    
    //establish sql query to create order with the order_id and relevant details
    $sql_query_user_notification = "INSERT INTO user_notification(
                      user_notification_id, user_notification_status,
                      user_id,
                      notification_id)
                  VALUES (
                      '$user_notification_id','$user_notification_status',
                      '$user_notification_user_id',
                      '$user_notification_notification_id')";
    echo $sql_query_user_notification;
    //run the query. if fail, echo the error message
    $query_user_notification = mysqli_query($db,$sql_query_user_notification) or die ("Error");
// --------------------------------------------------------------------
    
    header("Location:../html/inventory.html#tab_storagelocation");

?>