<?php
$kode = $_POST['txtkode'];
$judul = $_POST['txtjudul'];
// $klausul = $_POST['txtklausul'];
$lokasi_file = $_FILES['file']['tmp_name'];
$nama_file = $_FILES['file']['name'];
$folder = "../files/$nama_file";

//echo $nama_file;

if(move_uploaded_file($lokasi_file, $folder)){
	include('../koneksi.php');
	$data = mysqli_query($koneksi, "INSERT INTO pedoman_mutu VALUES(NULL,'$kode','$judul','$nama_file')");

	if (mysqli_num_rows($data) == 0)
	{
		header('location:pedoman_mutu.php');
	}
	else
	{
		die('Unable to insert data:' .mysql_error());
	}
}else{
	echo "gagal aplod";
}
?>