<?php
/**
 * Created by PhpStorm.
 * User: Hai Phong
 * Date: 4/4/2016
 * Time: 11:27 PM
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
    
    //get the street + city and concatenate them to make the warehouse address
    $warehouse_location = $_POST["warehouse_location_street"].";".$_POST["warehouse_location_city"].";".$_POST["warehouse_location_country"];
    
    //get the item category and the first element of array
    $warehouse_item_category_array = $_POST["warehouse_item_category"];
    $warehouse_item_category = $warehouse_item_category_array[0];
    
    //get all the elements of array and concatenate them
    for ($i = 1; $i < count($warehouse_item_category_array); $i++){
        $warehouse_item_category =  $warehouse_item_category . ";" . $warehouse_item_category_array[$i];
    }
    
    //Get the last record in warehouse table to define the new warehouse_id
    $sql_last_record_id = "SELECT warehouse_id from warehouse ORDER BY warehouse_id DESC LIMIT 1";
    $result_last_record_id = mysqli_query($db, $sql_last_record_id);
    
    //get the last record id and increase it by one. then assign that value to the new customer ID
    $row_last_record_id = mysqli_fetch_assoc($result_last_record_id);
    $warehouse_id = $row_last_record_id["warehouse_id"] + 1;
    
    //Create new customer with info from the URL POST method
    mysqli_query($db, "INSERT INTO warehouse
    (warehouse_id, warehouse_location, 
     warehouse_capacity, warehouse_name, 
     warehouse_supervisor_id, warehouse_item_category, warehouse_create_datetime) 
	VALUES 
	('$warehouse_id','$warehouse_location',
	 '$_POST[warehouse_capacity]','$_POST[warehouse_name]',
	 '$_POST[staff_id]','$warehouse_item_category', '$creationDateTime')");
    
    // ---------------- INSERT INTO NOTIFICATION TABLE --------------------
    
        //set the array for nofitication table - Lam edited 10 May 2015
        $notification_date_time = $creationDateTime;
        $notification_content = "User <b>".$login_session."</b> created a new warehouse no. <b>".$warehouse_id."</b>.";
        $action_type = "Create";
        $module_category = "Inventory";
        $notification_link = "../html/edit_warehouse.html?warehouse_id=".$warehouse_id;
        
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
    
    header("Location:../html/inventory.html#tab_warehouse");
?>