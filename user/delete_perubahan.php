<?php
$id = $_GET['delID'];

include('../koneksi.php');

$data = mysqli_query($koneksi, "DELETE FROM usulan_perubahan WHERE id=$id");

if(mysqli_num_rows($data) == 0)
{
	header('location:index.php');
}
else
{
	die('Could not delete record:' .mysql_error());
}
?>