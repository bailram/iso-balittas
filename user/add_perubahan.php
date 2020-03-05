<?php
    $tanggal = $_POST['txttanggal'];
    $nama_pengusul = $_POST['txtnamapengusul'];
    $kode = $_POST['txtkode'];
    $judul = $_POST['txtjudul'];
    $keterangan = $_POST['keterangan'];
    $dID = $_POST['dID'];
    $kategori = $_POST['kategori']; 
    $username = $_POST['username'];	   
    // $terbit = $_POST['txtterbit'];
    // $revisi = $_POST['txtrevisi'];
    // echo $kode." ".$judul." ".$keterangan." ".$dID." ".$kategori;

    include('../koneksi.php');
    // $data = mysqli_query($koneksi, "INSERT INTO usulan_perubahan VALUES(NULL,'$kode','$judul','$keterangan','$kategori','$dID',0,'$username')");
    // $data = mysqli_query($koneksi, "INSERT INTO usulan_perubahan VALUES(NULL,'$tanggal','$nama_pengusul','$kode','$judul','$keterangan','$kategori','$dID',0,'$username','$terbit','$revisi')");
    $data = mysqli_query($koneksi, "INSERT INTO usulan_perubahan VALUES(NULL,'$tanggal','$nama_pengusul','$kode','$judul','$keterangan','$kategori','$dID',0,'$username')");

	if (mysqli_num_rows($data) == 0)
	{
        header('location: index.php');        
	}
	else
	{
		die('Unable to insert data:' .mysql_error());
	}
?>