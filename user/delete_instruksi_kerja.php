<?php
$id = $_GET['delID'];

include('../koneksi.php');

// $sql = "DELETE FROM instruksi_kerja WHERE id=$id";
// $data = mysqli_query($koneksi, "DELETE FROM instruksi_kerja WHERE id=$id");
$result = mysqli_query($koneksi, "SELECT * from instruksi_kerja WHERE id=$id");

foreach ($result as $r) {
	if(unlink("../files/".$r['file'])){
		$data = mysqli_query($koneksi, "DELETE FROM instruksi_kerja WHERE id=$id");
		if(mysqli_num_rows($data) == 0)
		{
			// header('location:instruksi_kerja.php');
			$hasil = mysqli_query($koneksi, "SELECT * from history where id_kategori=3 AND id_dokumen=$id");
			if(mysqli_num_rows($hasil) == 0){
				header('location:instruksi_kerja.php');
			}else{
				foreach($hasil as $h){
					if(unlink("../files/history/".$h['file'])){
						$idH=$h['id'];
						$hasil_hapus = mysqli_query($koneksi, "DELETE FROM history WHERE id=$idH");
						if(mysqli_num_rows($hasil_hapus) == 0){
							header('location:instruksi_kerja.php');
						}else{
							die('Could not delete record:' .mysql_error());
						}
					}else{
						echo "gagal hapus file history";
					}
				}
			}
		}
		else
		{
			die('Could not delete record:' .mysql_error());
		}
	}
}

?>