<?php
    include('../config.php');
    
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
    
    $rowCount = count($_POST["customer"]);
    for($i=0;$i<$rowCount;$i++) {
        
        mysqli_query($db,"Update customer set customer_status='Deleted' where customer_id='" . $_POST["customer"][$i] . "'");
        
        // ---------------- INSERT INTO NOTIFICATION TABLE --------------------
    
        //set the array for nofitication table - Lam edited 10 May 2015
        $notification_date_time = $creation_date_time;
        $notification_content = "User <b>".$login_session."</b> recently deleted customer no. <b>".$_POST["customer"][$i]."</b>.";
        $action_type = "Delete";
        $module_category = "Sale";
        
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
                          module_category)
                      VALUES (
                          '$notification_id','$notification_content',
                          '$notification_date_time',
                          '$action_type',
                          '$module_category')";
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
        
    }
    
    header("Location:../html/sale.html#customer");
?>