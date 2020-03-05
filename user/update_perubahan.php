<?php
    $tanggal = $_POST['txttanggal'];
    $nama_pengusul = $_POST['txtnamapengusul'];
    $kode = $_POST['txtkode'];
    $judul = $_POST['txtjudul'];
    $keterangan = $_POST['keterangan'];
    $dID = $_POST['dID'];
    $kategori = $_POST['kategori'];
    $username = $_POST['username'];	    
    $terbit = $_POST['txtterbit'];
    $revisi = $_POST['txtrevisi'];
    $id = $_POST['id'];
    // echo $id." ".$kode." ".$judul." ".$keterangan." ".$dID." ".$kategori;

    include('../koneksi.php');
    $sql = "UPDATE usulan_perubahan SET tanggal='$tanggal',nama_pengusul='$nama_pengusul' ,kode='$kode', judul='$judul', keterangan='$keterangan', id_kategori='$kategori', id_dokumen='$dID', username='$username', terbit='$terbit', revisi='$revisi' WHERE id='$id'";
	$data = mysqli_query($koneksi, $sql);

	if (mysqli_num_rows($data) == 0)
	{
        header('location: index.php');        
	}
	else
	{
		die('Unable to insert data:' .mysql_error());
	}
?>