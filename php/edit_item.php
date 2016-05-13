<?php
/**
 * Created by PhpStorm.
 * User: Hai Phong
 * Date: 3/2/2016
 * Time: 5:06 PM
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

    //establish sql query to update user with the item_id and relevant details
    $sql_query = "update item
                  set 
				  item_id = '$_POST[item_id]',
                  item_category_id = '$_POST[item_category]', 
                  item_name= '$_POST[item_name]',
                  item_unit_of_measurement = '$_POST[item_unit_of_measurement]',
                  item_expiry_period = '$_POST[item_expiry_period]', 
                  item_cost = '$_POST[item_cost]', 
                  item_unit_price = '$_POST[item_unit_price]', 
                  item_power = '$_POST[item_power]',
                  item_power_unit = '$_POST[item_power_unit]', 
                  item_phase = '$_POST[item_phase]', 
                  item_voltage_low = '$_POST[item_voltage_low]',
                  item_voltage_high = '$_POST[item_voltage_high]',
				  item_frequency = '$_POST[item_frequency]',
				  item_diameter = '$_POST[item_diameter]',
				  item_capacity = '$_POST[item_capacity]',
				  item_area = '$_POST[item_area]',
				  item_description = '$_POST[item_description]',
				  item_VAT = '$_POST[item_vat]',
				  item_vendor = '$_POST[item_vendor]',
				  item_manufacturer = '$_POST[item_manufacturer]',
				  item_quantity = '$_POST[item_quantity]'
				  WHERE item_id = '$_POST[item_id]'";

//echo $sql_query;
	//run the query. if fail, echo the error message
    $query = mysqli_query($db,$sql_query) or die ("Error: Cannot edit item");

    //if success, echo the success message
    echo "successfully edit item = " . $_POST['item_id'];
    
    // ---------------- INSERT INTO NOTIFICATION TABLE --------------------
    //set the array for nofitication table - Lam edited 10 May 2015
    $notification_date_time = $creationDateTime;
    $notification_content = "User <b>".$login_session."</b> recently editted item no. <b>".$_POST[item_id]."</b>.";
    $action_type = "Edit";
    $module_category = "Inventory";
    $notification_link = "../html/edit_item.html?item_id=".$_POST[item_id];
    
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
                      module_category, notification_link)
                  VALUES (
                      '$notification_id','$notification_content',
                      '$notification_date_time',
                      '$action_type',
                      '$module_category', '$notification_link')";
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
    
    // redirect to inventory tab
header ('location:../html/inventory.html#item');
?>