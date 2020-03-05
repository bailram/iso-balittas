<?php
$autoid = $_POST['hid'];
$un = $_POST['txtusername'];
$pw = $_POST['txtpassword'];
$fn = $_POST['txtfirstname'];
$ln = $_POST['hak_akses'];
// $email = $_POST['txtemail'];

include('../koneksi.php');

// $sql = "UPDATE user SET username='$un', password='$pw', nama='$fn', id_hak_akses='$ln' WHERE id='$autoid'";

$data = mysqli_query($koneksi, "UPDATE user SET username='$un', password='$pw', nama='$fn', id_hak_akses='$ln' WHERE id='$autoid'");

if(mysqli_num_rows($data) == 0)
{
	header('location:users.php');
}
else
{
	die('Unable to update record: ' .mysql_error());
}
?>