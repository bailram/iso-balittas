<?php 
echo date("Y-m-d");
$date = date("Y-m-d");
include('../koneksi.php');
$data = mysqli_query($koneksi, "INSERT INTO usulan_perubahan VALUES(NULL,'$date','Dhimas','kode','judul','keterangan','1','1',0,'username','terbit','revisi')");
if (mysqli_num_rows($data) == 0)
	{
        echo "data berhasil ditambahkan";
	}
	else
	{
		die('Unable to insert data:' .mysql_error());
	}
?>