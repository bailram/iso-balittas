<?php

$tahun = date("Y"); 
echo $tahun;
// $file = $_POST['kode_pk'];
// $id_kategori = $_POST['id_kategori'];
// $id_dokumen = $_POST['id_dokumen'];

// if(move_uploaded_file($lokasi_file,$folder)){
// 	include('../koneksi.php');
// 	$data = mysqli_query($koneksi, "INSERT INTO history VALUES(NULL,'$tahun','$file','$id_kategori','$id_dokumen')");

// 	if (mysqli_num_rows($data) == 0)
// 	{
// 		header('location:history.php');
// 	}
// 	else
// 	{
// 		die('Unable to insert data:' .mysql_error());
// 	}	
// }else{
// 	echo "File gagal diupload";
// }
// $sql = "INSERT INTO users VALUES(NULL,'$un','$pw','$fn','$ln')";
?>