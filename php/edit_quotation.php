<?php
/**
 * Created by PhpStorm.
 * User: Dang Lam
 * Date: 3/20/2016
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
$quotation_id = $_POST['quotation_id'];
//$user_id = "1";
$quotation_create_date_time = $creationDateTime;
$quotation_close_date_time = "";

if (isset($_POST['convert_quotation'])){
    $quotation_status = "Converted";
}
else{
    $quotation_status = $_POST['quotation_status'];
}

$quotation_note = $_POST['quotation_note'];
$quotation_total = $_POST['total_quotation'];
$tax = $_POST['tax'];
$net_total_price = $_POST['net_total_price'];
//$quotation_reference = $_POST['quotation_reference'];
$customer_id = $_POST['customer_id'];
$quotation_net_total = $_POST['net_total_price'];
$quotation_shipping_address = $_POST["customer_shipping_address_street"].";".$_POST["customer_shipping_address_city"].";".$_POST["customer_shipping_address_country"];
//set the array
$quotation_line_id = $_POST['quotation_line_id'];
$quotation_line_create_date_time = $creationDateTime;
$quotation_line_item_id = $_POST['item_id'];
$quotation_line_item_quantity = $_POST['quotation_line_item_quantity'];
$item_vendor = $_POST['item_vendor'];
//$quotation_line_delivery_date = $_POST['quotation_line_delivery_date'];
$quotation_line_estimate_selling_price = $_POST['quotation_line_estimate_price'];
$quotation_line_estimate_net_selling_price = $_POST['quotation_line_estimate_net_price'];

//establish sql query to update user with the customer_id and relevant details
$sql_query = "UPDATE quotation
              SET
              user_id= '$user_id',
              quotation_create_date= '$quotation_create_date_time',
              quotation_close_date= '$quotation_close_date_time',
              quotation_status= '$quotation_status',
              quotation_note= '$quotation_note',
              customer_id= '$customer_id',
              quotation_total= '$quotation_total',
              quotation_net_total = '$quotation_net_total',
              quotation_tax = '$tax',
              quotation_shipping_address = '$quotation_shipping_address'
              WHERE quotation_id = '$quotation_id'";
//quotation_reference= '$quotation_reference'
//run the query. if fail, echo the error message
$query = mysqli_query($db,$sql_query) or die ("Error: Cannot edit quotation");
echo $sql_query;
//if success, echo the success message
echo "successfully edit quotation id = " . $_POST['quotation_id'];

for( $i = 0; $i < count($quotation_line_item_id); $i++) {
    
    if ($quotation_line_id[$i] != ""){

    //establish sql query to update user with the customer_id and relevant details
    $sql_query_quotation_line = "
          UPDATE quotation_line
          SET
          quotation_line_create_date='$quotation_line_create_date_time',
          quotation_line_item_id='$quotation_line_item_id[$i]',
          quotation_line_item_quantity='$quotation_line_item_quantity[$i]',
          quotation_line_estimate_price='$quotation_line_estimate_selling_price[$i]',
          quotation_line_estimate_net_price='$quotation_line_estimate_net_selling_price[$i]'
          WHERE quotation_line_id = '$quotation_line_id[$i]'";
    
    }
    else {
        //Get the last record in quotation_line table to define the new quotation_line_id
        $sql_get_the_last_record_quotation_line_id = "SELECT quotation_line_id from quotation_line ORDER BY quotation_line_id DESC LIMIT 1";
        $result_get_the_last_record_quotation_line_id = mysqli_query($db, $sql_get_the_last_record_quotation_line_id);

        //get the last record id and increase it by one. then assign that value to the new quotation line ID
        $row_last_record_quotation_line_id = mysqli_fetch_assoc($result_get_the_last_record_quotation_line_id);
        $quotation_line_id_new = $row_last_record_quotation_line_id["quotation_line_id"] + 1;
    
        //establish sql query to create quotation line with the quotation_line_id and relevant details
        $sql_query_quotation_line = "
          INSERT INTO quotation_line(
            quotation_line_id, quotation_id,
            quotation_line_create_date,
            quotation_line_item_id, quotation_line_item_quantity,
            quotation_line_estimate_price, quotation_line_estimate_net_price)
            VALUES (
            '$quotation_line_id_new','$quotation_id',
            '$quotation_line_create_date_time',
            '$quotation_line_item_id[$i]','$quotation_line_item_quantity[$i]',
            '$quotation_line_estimate_selling_price[$i]','$quotation_line_estimate_net_selling_price[$i]')";
    }
    echo $sql_query_quotation_line."<br><br>";
    //run the query. if fail, echo the error message
    $query_quotation_line = mysqli_query($db,$sql_query_quotation_line) or die ("Error: Cannot edit quotation_line");

}

// ---------------- INSERT INTO NOTIFICATION TABLE --------------------
    //set the array for nofitication table - Lam edited 10 May 2015
    $notification_date_time = $creationDateTime;
    $notification_content = "User <b>".$login_session."</b> recently editted quotation no. <b>".$quotation_id."</b>.";
    $action_type = "Edit";
    $module_category = "Sale";
    $notification_link = "../html/edit_quotation.html?quotation_id=".$quotation_id;
    
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


if (isset($_POST['convert_quotation']))
{
    header("Location:../html/create_order.html?quotation_id=$quotation_id");
}
else {
    // redirect to sale.html
    header("Location:../html/sale.html#quotation");
}
?>