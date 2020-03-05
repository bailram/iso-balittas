<?php
$id = $_GET['delID'];

include('../koneksi.php');

$sql = "DELETE FROM tblUsers WHERE id=$id";
$data = mysqli_query($koneksi, "DELETE FROM user WHERE id=$id");

if(mysqli_num_rows($data) == 0)
{
	header('location:users.php');
}
else
{
	die('Could not delete record:' .mysql_error());
}
?>