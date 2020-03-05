<?php
$kode = $_POST['txtkode'];
$judul = $_POST['txtjudul'];
$klausul = $_POST['txtklausul'];
// $file = $_POST['txtfile'];
$pedoman = $_POST['pedoman_mutu'];
$lokasi_file = $_FILES['file']['tmp_name'];
$nama_file = $_FILES['file']['name'];
$folder = "../files/$nama_file";

// 	include('../koneksi.php');
// echo $nama_file;

if(move_uploaded_file($lokasi_file, $folder)){
	include('../koneksi.php');

	$data = mysqli_query($koneksi, "INSERT INTO prosedur_kerja VALUES(NULL,'$kode','$judul','$klausul','$nama_file','$pedoman')");

	if (mysqli_num_rows($data) == 0)
	{
		header('location:prosedur_kerja.php');
	}
	else
	{
		die('Unable to insert data:' .mysql_error());
	}
}else{
	echo "Gagal Upload";
}
?>