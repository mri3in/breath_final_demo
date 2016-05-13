<?php
/**
 * Created by PhpStorm.
 * User: Hai Phong
 * Date: 3/2/2016
 * Time: 5:06 PM
 */

    //Connect to database via $db
    include ('../config.php');
    
    //declare timezone and current date, time
    date_default_timezone_set("Asia/Ho_Chi_Minh");
    $creationDateTime = date("Y-m-d H:i:s");
    
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

    $customer_create_date_time = $creationDateTime;

    //get the street + city and concatenate them to make the shipping & billing address
    $customer_shipping_address = $_POST["customer_shipping_address_street"].";".$_POST["customer_shipping_address_city"].";".$_POST["customer_shipping_address_country"];
    $customer_billing_address = $_POST["customer_billing_address_street"].";".$_POST["customer_billing_address_city"].";".$_POST["customer_billing_address_country"];

    //Get customer_id and customer tax code in the customer table
    $sql_select_customer = "SELECT customer_id, customer_tax_code from customer";
    $result_select_customer = mysqli_query($db, $sql_select_customer);

    //Get the last record in customer table to define the new customer_id
    $sql_get_the_last_record_id = "SELECT customer_id from customer ORDER BY customer_id DESC LIMIT 1";
    $result_get_the_last_record_id = mysqli_query($db, $sql_get_the_last_record_id);

    //Set up found and success_added parameter
    $found_customer = 0;
    $success_added = 0;

    //Find out if the tax code is existing in the current database or not
    while($row_select_customer = mysqli_fetch_assoc($result_select_customer)) {
        //echo $row_select_customer["customer_id"] . "<br>";
        if ($_POST['customer_tax_code'] == $row_select_customer["customer_tax_code"]) {
    //    if ($row_select_customer["customer_tax_code"] == "11234282228") {
            $found_customer = 1;
            echo "Existing customer is found at customer ID = " . $row_select_customer["customer_id"];
            break;
        }
    }

    //If found no existing tax code, then create a new customer record
    if ($found_customer == 0) {

        //get the last record id and increase it by one. then assign that value to the new customer ID
        $row_last_record_id = mysqli_fetch_assoc($result_get_the_last_record_id);
        $customer_id = $row_last_record_id["customer_id"] + 1;

        //Create new customer with info from the URL POST method
        mysqli_query($db, "INSERT INTO customer (customer_id, customer_name, customer_long_name, customer_billing_address, customer_shipping_address, customer_tax_code, customer_credit_limit, customer_payment_term, customer_phone_number, staff_id, customer_contact_person_name,  customer_contact_person_phone_number, customer_contact_person_email, customer_status, customer_create_datetime) VALUES ('$customer_id','$_POST[customer_name]','$_POST[customer_long_name]','$customer_billing_address','$customer_shipping_address','$_POST[customer_tax_code]','$_POST[customer_credit_limit]','$_POST[customer_payment_term]','$_POST[customer_phone_number]', '$_POST[staff_id]',
'$_POST[customer_contact_person_name]','$_POST[customer_contact_person_phone_number]','$_POST[customer_contact_person_email]','$_POST[customer_status]','$customer_create_date_time')");

        //Check if the creation is successful
        //Get the newest last customer_id
        $sql_get_the_last_record_id_updated = "SELECT customer_id from customer ORDER BY customer_id DESC LIMIT 1";
        $result_get_the_last_record_id_updated = mysqli_query($db, $sql_get_the_last_record_id_updated);
        $row_last_record_id_updated = mysqli_fetch_assoc($result_get_the_last_record_id_updated);

        //Check if the last customer_id is equal to the newly added customer_id
        if ($row_last_record_id_updated["customer_id"] == $customer_id) {
            //echo the success message
            echo "Successfully saved new customer. Customer ID is " . $customer_id;
            $success_added = 1;
        }
        else
        {
            echo "Failed to create new customer.";
        }
    }

    if ($success_added == 1){
        echo "<script type='text/javascript'> alert (\"Successfully added customer ID = " . $customer_id . "\")</script>";
    }
    else
    {
        echo "<script type='text/javascript'> alert (\"Failed to add customer\")</script>";
    }
    
// ---------------- INSERT INTO NOTIFICATION TABLE --------------------

    //set the array for nofitication table - Lam edited 10 May 2015
    $notification_date_time = $creationDateTime;
    $notification_content = "User <b>".$login_session."</b> created a new customer no. <b>".$customer_id."</b>.";
    $action_type = "Create";
    $module_category = "Sale";
    $notification_link = "../html/edit_customer.html?customer_id=".$customer_id;
    
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
    
    // redirect to customer tab
    header("Location:../html/sale.html#customer");
?>