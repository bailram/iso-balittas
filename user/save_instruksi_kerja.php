<?php
$kode = $_POST['txtkode'];
$judul = $_POST['txtjudul'];
$id_pk = $_POST['id_pk'];
$lokasi_file = $_FILES['file']['tmp_name'];
$nama_file = $_FILES['file']['name'];
$folder = "../files/$nama_file";

if(move_uploaded_file($lokasi_file, $folder)){

		include('../koneksi.php');
		$data = mysqli_query($koneksi, "INSERT INTO instruksi_kerja VALUES(NULL,'$kode','$judul','$nama_file','$id_pk')");

		if (mysqli_num_rows($data) == 0)
		{
			header('location:instruksi_kerja.php');
		}
		else
		{
			die('Unable to insert data:' .mysql_error());
		}
}
else{
	echo "file gagal upload";
}

?>