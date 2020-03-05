<?php
    $username = $_POST['username'];	 
    $pwlama = $_POST['pwlama'];
    $pwbaru = $_POST['pwbaru'];
    $konfpwbaru = $_POST['konfpwbaru'];    

    include('../koneksi.php');
    $check = mysqli_query($koneksi, "SELECT * from user where username='$username' and password='$pwlama'");
    if(mysqli_num_rows($check)>0){
        if($pwbaru == $konfpwbaru){
            $result = mysqli_query($koneksi, "UPDATE user set password='$pwbaru' WHERE username='$username'");
            if(mysqli_num_rows($data) == 0)
            {
                header('location:edit_password.php?p=2');
            }
            else
            {
                die('Unable to update record: ' .mysql_error());
            }
        }else{
            header("location:edit_password.php?p=1");
        }
    }else{
        header("location:edit_password.php?p=0");
    }
?>