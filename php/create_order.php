<?php
/**
 * Created by PhpStorm.
 * User: Hai Phong
 * Date: 3/18/2016
 * Time: 4:27 PM
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

//set the variables because some variables are set by default
//$user_id = "1";
$order_create_date_time = $creationDateTime;
$order_close_date_time = "";
$order_status = $_POST['order_status'];
$order_note = $_POST['order_note'];
$order_total = $_POST['total_order'];
$tax = $_POST['tax'];
$net_total_price = $_POST['net_total_price'];
$customer_id = $_POST['customer_id'];
$order_shipping_address = $_POST["customer_shipping_address_street"].";".$_POST["customer_shipping_address_city"].";".$_POST["customer_shipping_address_country"];
// set the reference for order
if (isset($_POST['order_reference'])) {
    $order_reference = $_POST['order_reference'];
}else
    $order_reference =0;

//set the array
$order_line_create_date_time = $creationDateTime;
$order_line_item_id = $_POST['item_id'];
$order_line_item_quantity = $_POST['order_line_item_quantity'];
$item_vendor = $_POST['item_vendor'];
$order_line_delivery_date = $_POST['order_line_delivery_date'];
$order_line_selling_price = $_POST['order_line_selling_price'];
$order_line_net_selling_price = $_POST['order_line_net_selling_price'];

//Get the last record in order table to define the new order_id
$sql_get_the_last_record_id = "SELECT order_id from customer_order ORDER BY order_id DESC LIMIT 1";
$result_get_the_last_record_id = mysqli_query($db, $sql_get_the_last_record_id);

//get the last record id and increase it by one. then assign that value to the new order ID
$row_last_record_id = mysqli_fetch_assoc($result_get_the_last_record_id);
$order_id = $row_last_record_id["order_id"] + 1;

//establish sql query to create order with the order_id and relevant details
$sql_query = "INSERT INTO customer_order(
                  order_id, user_id,
                  order_create_date,
                  order_close_date,
                  order_status, order_note,
                  customer_id, order_total, order_reference, order_tax, order_net_total, order_shipping_address)
              VALUES (
                  '$order_id','$user_id',
                  '$order_create_date_time',
                  '$order_close_date_time',
                  '$order_status','$order_note',
                  '$customer_id','$order_total','$order_reference', '$tax', '$net_total_price', '$order_shipping_address')";
echo $sql_query;

//run the query. if fail, echo the error message
$query = mysqli_query($db,$sql_query) or die ("Error: Cannot create order");

if (isset($_POST['order_reference'])) {
    mysqli_query($db,"UPDATE quotation SET quotation_status = 'Converted' WHERE quotation_id = '$_POST[order_reference]'");
    
    // ---------------- INSERT INTO NOTIFICATION TABLE --------------------
    //set the array for nofitication table - Lam edited 10 May 2015
    $notification_date_time_convert = $creationDateTime;
    $notification_content_convert = "Quotation no. <b>".$_POST['order_reference']."</b> is converted into a new order no. <b>".$order_id."</b> by user <b>".$login_session."</b>.";
    $action_type_convert = "Convert";
    $module_category_convert = "Sale";
    $notification_link_convert = "../html/edit_order.html?order_id=".$order_id;
    
    //Get the last record in order table to define the new order_id
    $sql_get_the_last_notification_id_convert = "SELECT notification_id from notification ORDER BY notification_id DESC LIMIT 1";
    $result_get_the_last_notification_id_convert = mysqli_query($db, $sql_get_the_last_notification_id_convert);
    
    //get the last record id and increase it by one. then assign that value to the new order ID
    $row_last_notification_id_convert = mysqli_fetch_assoc($result_get_the_last_notification_id_convert);
    $notification_id_convert = $row_last_notification_id_convert["notification_id"] + 1;
    
    //establish sql query to create order with the order_id and relevant details
    $sql_query_notification_convert = "INSERT INTO notification(
                      notification_id, notification_content,
                      notification_date,
                      action_type,
                      module_category,notification_link)
                  VALUES (
                      '$notification_id_convert','$notification_content_convert',
                      '$notification_date_time_convert',
                      '$action_type_convert',
                      '$module_category_convert','$notification_link_convert')";
    echo $sql_query_notification_convert;
    //run the query. if fail, echo the error message
    $query_notification_convert = mysqli_query($db,$sql_query_notification_convert) or die ("Error");
    // --------------------------------------------------------------------
    
    // ---------------- INSERT INTO USER_NOTIFICATION TABLE --------------------
    
    //set the array for user_nofitication table - Lam edited 10 May 2015
    $user_notification_status_convert = "Unread";
    $user_notification_user_id_convert = $user_id;
    $user_notification_notification_id_convert = $notification_id_convert;
    
    //Get the last record in order table to define the new order_id
    $sql_get_the_last_user_notification_id_convert = "SELECT user_notification_id from user_notification ORDER BY user_notification_id DESC LIMIT 1";
    $result_get_the_last_user_notification_id_convert = mysqli_query($db, $sql_get_the_last_user_notification_id_convert);
    
    //get the last record id and increase it by one. then assign that value to the new order ID
    $row_last_user_notification_id_convert = mysqli_fetch_assoc($result_get_the_last_user_notification_id_convert);
    $user_notification_id_convert = $row_last_user_notification_id_convert["user_notification_id"] + 1;
    
    //establish sql query to create order with the order_id and relevant details
    $sql_query_user_notification_convert = "INSERT INTO user_notification(
                      user_notification_id, user_notification_status,
                      user_id,
                      notification_id)
                  VALUES (
                      '$user_notification_id_convert','$user_notification_status_convert',
                      '$user_notification_user_id_convert',
                      '$user_notification_notification_id_convert')";
    echo $sql_query_user_notification_convert;
    //run the query. if fail, echo the error message
    $query_user_notification_convert = mysqli_query($db,$sql_query_user_notification_convert) or die ("Error");
// --------------------------------------------------------------------
}

//if success, echo the success message
echo "successfully create order id = " . $order_id;

for ($i = 0; $i < count($order_line_item_id); $i++) {

    //Get the last record in order_line table to define the new order_line_id
    $sql_get_the_last_record_order_line_id = "SELECT order_line_id from order_line ORDER BY order_line_id DESC LIMIT 1";
    $result_get_the_last_record_order_line_id = mysqli_query($db, $sql_get_the_last_record_order_line_id);

    //get the last record id and increase it by one. then assign that value to the new order line ID
    $row_last_record_order_line_id = mysqli_fetch_assoc($result_get_the_last_record_order_line_id);
    $order_line_id = $row_last_record_order_line_id["order_line_id"] + 1;

    //establish sql query to create order line with the order_line_id and relevant details
    $sql_query_order_line = "
      INSERT INTO order_line(
        order_line_id, order_id,
        order_line_create_date,
        order_line_item_id, order_line_item_quantity,
        order_line_deliver_date,
        order_line_selling_price, order_line_net_selling_price)
        VALUES (
        '$order_line_id','$order_id',
        '$order_line_create_date_time',
        '$order_line_item_id[$i]','$order_line_item_quantity[$i]',
        '$order_line_delivery_date[$i]',
        '$order_line_selling_price[$i]','$order_line_net_selling_price[$i]')";

    //run the query. if fail, echo the error message
    $query_order_line = mysqli_query($db, $sql_query_order_line) or die ("Error: Cannot create order_line");
}

// ---------------- INSERT INTO NOTIFICATION TABLE --------------------

    //set the array for nofitication table - Lam edited 10 May 2015
    $notification_date_time_create = $creationDateTime;
    $notification_content_create = "User <b>".$login_session."</b> created a new order no. <b>".$order_id."</b>.";
    $action_type_create = "Create";
    $module_category_create = "Sale";
    $notification_link_create = "../html/edit_order.html?order_id=".$order_id;
    
    //Get the last record in order table to define the new order_id
    $sql_get_the_last_notification_id_create = "SELECT notification_id from notification ORDER BY notification_id DESC LIMIT 1";
    $result_get_the_last_notification_id_create = mysqli_query($db, $sql_get_the_last_notification_id_create);
    
    //get the last record id and increase it by one. then assign that value to the new order ID
    $row_last_notification_id_create = mysqli_fetch_assoc($result_get_the_last_notification_id_create);
    $notification_id_create = $row_last_notification_id_create["notification_id"] + 1;
    
    //establish sql query to create order with the order_id and relevant details
    $sql_query_notification_create = "INSERT INTO notification(
                      notification_id, notification_content,
                      notification_date,
                      action_type,
                      module_category,notification_link)
                  VALUES (
                      '$notification_id_create','$notification_content_create',
                      '$notification_date_time_create',
                      '$action_type_create',
                      '$module_category_create','$notification_link_create')";
    echo $sql_query_notification_create;
    //run the query. if fail, echo the error message
    $query_notification_create = mysqli_query($db,$sql_query_notification_create) or die ("Error");
    // --------------------------------------------------------------------
    
    // ---------------- INSERT INTO USER_NOTIFICATION TABLE --------------------
    
    //set the array for user_nofitication table - Lam edited 10 May 2015
    $user_notification_status_create = "Unread";
    $user_notification_user_id_create = $user_id;
    $user_notification_notification_id_create = $notification_id_create;
    
    //Get the last record in order table to define the new order_id
    $sql_get_the_last_user_notification_id_create = "SELECT user_notification_id from user_notification ORDER BY user_notification_id DESC LIMIT 1";
    $result_get_the_last_user_notification_id_create = mysqli_query($db, $sql_get_the_last_user_notification_id_create);
    
    //get the last record id and increase it by one. then assign that value to the new order ID
    $row_last_user_notification_id_create = mysqli_fetch_assoc($result_get_the_last_user_notification_id_create);
    $user_notification_id_create = $row_last_user_notification_id_create["user_notification_id"] + 1;
    
    //establish sql query to create order with the order_id and relevant details
    $sql_query_user_notification_create = "INSERT INTO user_notification(
                      user_notification_id, user_notification_status,
                      user_id,
                      notification_id)
                  VALUES (
                      '$user_notification_id_create','$user_notification_status_create',
                      '$user_notification_user_id_create',
                      '$user_notification_notification_id_create')";
    echo $sql_query_user_notification_create;
    //run the query. if fail, echo the error message
    $query_user_notification_create = mysqli_query($db,$sql_query_user_notification_create) or die ("Error");
    // --------------------------------------------------------------------

    //if success, echo the success message
    //echo "successfully create order id = " . $order_line_id[$key];
    header("Location:../html/sale.html#order");
?>