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
    $creation_date_time = date("Y-m-d H:i:s");
    
    //set the variables because some variables are set by default
    $order_id = $_POST['order_id'];
    //$user_id = "1";
    $order_create_date_time = $creation_date_time;
    $order_close_date_time = "";
    $order_status = $_POST['order_status'];
    $order_note = $_POST['order_note'];
    $order_total = $_POST['total_order'];
    $tax = $_POST['tax'];
    $net_total_price = $_POST['net_total_price'];
    // set the reference for order
    if (isset($_POST['order_reference'])) {
        $order_reference = $_POST['order_reference'];
    }else
        $order_reference =0;
    
    $customer_id = $_POST['customer_id'];
    $order_shipping_address = $_POST["customer_shipping_address_street"].";".$_POST["customer_shipping_address_city"].";".$_POST["customer_shipping_address_country"];
    //set the array
    $order_line_id = $_POST['order_line_id'];
    $order_line_create_date_time = $creation_date_time;
    $order_line_item_id = $_POST['item_id'];
    $order_line_item_quantity = $_POST['order_line_item_quantity'];
    $order_line_total_value = $_POST['order_line_total_value'];
    $item_vendor = $_POST['item_vendor'];
    $order_line_delivery_date = $_POST['order_line_delivery_date'];
    $order_line_selling_price = $_POST['order_line_selling_price'];
    $order_line_net_selling_price = $_POST['order_line_net_selling_price'];
    
    //establish sql query to update user with the customer_id and relevant details
    $sql_query = "UPDATE customer_order
                  SET
                  user_id= '$user_id',
                  order_create_date= '$order_create_date_time',
                  order_close_date= '$order_close_date_time',
                  order_status= '$order_status',
                  order_note= '$order_note',
                  customer_id= '$customer_id',
                  order_total= '$order_total',
                  order_shipping_address = '$order_shipping_address'
                  WHERE order_id = '$order_id'";
    echo $sql_query;
    //order_reference= '$order_reference'
    //run the query. if fail, echo the error message
    $query = mysqli_query($db,$sql_query) or die ("Error: Cannot edit order");
    
    //if success, echo the success message
    echo "successfully edit order id = " . $_POST['order_id']."<br>";
    
    
    // ---------------- INSERT INTO NOTIFICATION TABLE --------------------
        //set the array for nofitication table - Lam edited 10 May 2015
        $notification_date_time = $creation_date_time;
        $notification_content = "User <b>".$login_session."</b> recently editted order no. <b>".$order_id."</b>.";
        $action_type = "Edit";
        $module_category = "Sale";
        $notification_link = "../html/edit_order.html?order_id=".$order_id;
        
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
    
    
    for ($i = 0; $i < count($order_line_item_id); $i++) {
    
        if (!empty($order_line_id[$i])){
    
        //establish sql query to update user with the customer_id and relevant details
        $sql_query_order_line = "
              UPDATE order_line
              SET
              order_line_create_date='$order_line_create_date_time',
              order_line_item_id='$order_line_item_id[$i]',
              order_line_item_quantity='$order_line_item_quantity[$i]',
              order_line_deliver_date='$order_line_delivery_date[$i]',
              order_line_selling_price='$order_line_selling_price[$i]',
              order_line_net_selling_price='$order_line_net_selling_price[$i]'
              WHERE order_line_id = '$order_line_id[$i]'";
        }
        else {
            //Get the last record in order_line table to define the new order_line_id
        $sql_get_the_last_record_order_line_id = "SELECT order_line_id from order_line ORDER BY order_line_id DESC LIMIT 1";
        $result_get_the_last_record_order_line_id = mysqli_query($db, $sql_get_the_last_record_order_line_id);
    
        //get the last record id and increase it by one. then assign that value to the new order line ID
        $row_last_record_order_line_id = mysqli_fetch_assoc($result_get_the_last_record_order_line_id);
        $order_line_id = $row_last_record_order_line_id["order_line_id"] + 1;
        
        $sql_query_order_line = "
          INSERT INTO order_line(
            order_line_id, order_id, order_line_create_date,
            order_line_item_id, order_line_item_quantity,
            order_line_deliver_date,
            order_line_selling_price, order_line_net_selling_price)
            VALUES (
            '$order_line_id','$order_id','$order_line_create_date_time',
            '$order_line_item_id[$i]','$order_line_item_quantity[$i]',
            '$order_line_delivery_date[$i]',
            '$order_line_selling_price[$i]','$order_line_net_selling_price[$i]')";
        }
        echo $sql_query_order_line. "<br>";
        //run the query. if fail, echo the error message
        $query_order_line = mysqli_query($db,$sql_query_order_line) or die ("Error: Cannot edit order_line");
    
        //if success, echo the success message
        //echo "successfully edit order id = " . $order_line_id[$i];
        header("Location:../html/sale.html#order");
    }

?>