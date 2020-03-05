<?php
$un = $_POST['txtusername'];
$pw = $_POST['txtpassword'];
$fn = $_POST['txtfirstname'];
$ln = $_POST['hak_akses'];
// $email = $_POST['txtemail'];

include('../koneksi.php');

// $sql = "INSERT INTO users VALUES(NULL,'$un','$pw','$fn','$ln')";

$data = mysqli_query($koneksi, "INSERT INTO user VALUES(NULL,'$un','$pw','$fn','$ln')");

if (mysqli_num_rows($data) == 0)
{
	header('location:users.php');
}
else
{
	die('Unable to insert data:' .mysql_error());
}

?>