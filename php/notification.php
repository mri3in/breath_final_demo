<?php 

    if(isset($_GET['id']) && !empty($_GET['id']))
    {
        $id = $_GET['id'];
        include('../config.php');

                $update_query = "UPDATE user_notification SET user_notification_status = 'Read' WHERE user_notification_id = '".$id."'";
        
        $update_notification = mysqli_query($db,$update_query) or die ("Error");
        
    }
?>