<?php
$autoid = $_POST['hid'];
$kd = $_POST['txtkode'];
$jdl = $_POST['txtjudul'];
$kls = $_POST['txtklausul'];
// $fl = $_POST['txtfile'];
$pd = $_POST['id_prosedur'];
if(isset($_POST['id_perubahan'])){
	$id_perubahan = $_POST['id_perubahan'];
}
// $email = $_POST['txtemail'];

//echo $_FILES['file']['name'];
include('../koneksi.php');

if($_FILES['file']['name'] == ""){
	$data = mysqli_query($koneksi, "UPDATE prosedur_kerja SET kode='$kd', judul='$jdl', klausul='$kls', id_pedoman_mutu='$pd' WHERE id='$autoid'");

	if(mysqli_num_rows($data) == 0)
	{		
		if(isset($_POST['id_perubahan'])){
			$sql = "UPDATE usulan_perubahan SET status = 1 WHERE id='$id_perubahan'";
			$result = mysqli_query($koneksi, $sql);

			if (mysqli_num_rows($result) == 0)
			{
				header('location:index.php');
			}
			else
			{
				die('Unable to insert data:' .mysql_error());
			}
		}else{
			header('location:prosedur_kerja.php');
		}
	}
	else
	{
		die('Unable to update record: ' .mysql_error());
	}
}else{
	$lokasi_file = $_FILES['file']['tmp_name'];
	$nama_file = $_FILES['file']['name'];
	$folder = "../files/$nama_file";	

	$result = mysqli_query($koneksi, "SELECT * FROM prosedur_kerja WHERE id = $autoid");

	foreach($result as $r){
		$history = mysqli_query($koneksi, "SELECT * from history WHERE id_dokumen='".$r['id']."' AND id_kategori='2'");
		$tahun = date("Y");
		if(mysqli_num_rows($history) == 0){ // jika history belum ada	
			$tmp_file = $r['file'];
			$source = "../files/$tmp_file";
			$destination = "../files/history/$tmp_file";
			$tmp_id = $r['id'];
			if(rename($source, $destination)){
				$send = mysqli_query($koneksi, "INSERT INTO history VALUES(NULL, '$tahun', '$tmp_file', '2', '$tmp_id')");
				if (mysqli_num_rows($send) == 0)
				{
			        if(move_uploaded_file($lokasi_file,$folder)){
					$data = mysqli_query($koneksi, "UPDATE prosedur_kerja SET kode='$kd', judul='$jdl', klausul='$kls', file='$nama_file', id_pedoman_mutu='$pd' WHERE id='$autoid'");

					if(mysqli_num_rows($data) == 0)
					{
						// header('location:prosedur_kerja.php');
						if(isset($_POST['id_perubahan'])){
							$sql = "UPDATE usulan_perubahan SET status = 1 WHERE id='$id_perubahan'";
							$result = mysqli_query($koneksi, $sql);
				
							if (mysqli_num_rows($result) == 0)
							{
								header('location:index.php');
							}
							else
							{
								die('Unable to insert data:' .mysql_error());
							}
						}else{
							header('location:prosedur_kerja.php');
						}
					}
					else
					{
						die('Unable to update record: ' .mysql_error());
					}		
					}else{
						echo "gagal upload file form mutu";
					}
				}
				else
				{
					die('Unable to insert data:' .mysql_error());
				}
				
			}else{
				echo "gagal pindah file";
			}
		}else{ // jika sudah ada
			foreach ($history as $hasil) {
				if($hasil['tahun']==date("Y")){
					if(unlink("../files/history/".$hasil['file'])){
						$tmp_file = $r['file'];
						$source = "../files/$tmp_file";
						$destination = "../files/history/$tmp_file";
						$tmp_id = $r['id'];
						$search_id_history = mysqli_query($koneksi, "SELECT * from history where id_kategori='2' and id_dokumen='$tmp_id'");
						if(mysqli_num_rows($search_id_history) == 0){
							echo "gagal menemukan history";
						}else{
							foreach ($search_id_history as $data_history) {
								if(rename($source, $destination)){
								$send = mysqli_query($koneksi, "UPDATE history SET file='$tmp_file' WHERE id='".$data_history['id']."'");
								if (mysqli_num_rows($send) == 0)
								{
							        if(move_uploaded_file($lokasi_file,$folder)){
										$data = mysqli_query($koneksi, "UPDATE prosedur_kerja SET kode='$kd', judul='$jdl', klausul='$kls', file='$nama_file', id_pedoman_mutu='$pd' WHERE id='$autoid'");

										if(mysqli_num_rows($data) == 0)
										{
											// header('location:prosedur_kerja.php');
											if(isset($_POST['id_perubahan'])){
												$sql = "UPDATE usulan_perubahan SET status = 1 WHERE id='$id_perubahan'";
												$result = mysqli_query($koneksi, $sql);
									
												if (mysqli_num_rows($result) == 0)
												{
													header('location:index.php');
												}
												else
												{
													die('Unable to insert data:' .mysql_error());
												}
											}else{
												header('location:prosedur_kerja.php');
											}
										}
										else
										{
											die('Unable to update record: ' .mysql_error());
										}		
										}else{
											echo "gagal upload file form mutu";
										}
									}
									else
									{
										die('Unable to insert data:' .mysql_error());
									}							
								}else{
									echo "gagal pindah file";
								}	
							}							
						}
						
					}else{
						echo "gagal hapus file history";
					}
				}else{
					$tmp_file = $r['file'];
					$source = "../files/$tmp_file";
					$destination = "../files/history/$tmp_file";
					$tmp_id = $r['id'];
					if(rename($source, $destination)){
						$send = mysqli_query($koneksi, "INSERT INTO history VALUES(NULL, '$tahun', '$tmp_file', '2', '$tmp_id')");
						if (mysqli_num_rows($send) == 0)
						{
					        if(move_uploaded_file($lokasi_file,$folder)){
							$data = mysqli_query($koneksi, "UPDATE prosedur_kerja SET kode='$kd', judul='$jdl', klausul='$kls', file='$nama_file', id_pedoman_mutu='$pd' WHERE id='$autoid'");

							if(mysqli_num_rows($data) == 0)
							{
								// header('location:prosedur_kerja.php');
								if(isset($_POST['id_perubahan'])){
									$sql = "UPDATE usulan_perubahan SET status = 1 WHERE id='$id_perubahan'";
									$result = mysqli_query($koneksi, $sql);
						
									if (mysqli_num_rows($result) == 0)
									{
										header('location:index.php');
									}
									else
									{
										die('Unable to insert data:' .mysql_error());
									}
								}else{
									header('location:prosedur_kerja.php');
								}
							}
							else
							{
								die('Unable to update record: ' .mysql_error());
							}		
							}else{
								echo "gagal upload file form mutu";
							}
						}
						else
						{
							die('Unable to insert data:' .mysql_error());
						}
						
					}else{
						echo "gagal pindah file";
					}
				}
			}
		}
	}

	// $lokasi_file = $_FILES['file']['tmp_name'];
	// $nama_file = $_FILES['file']['name'];
	// $folder = "../files/$nama_file";

	// $result = mysqli_query($koneksi, "SELECT * FROM prosedur_kerja WHERE id = $autoid");
	// foreach ($result as $r) {
	// 	if(unlink("../files/".$r['file'])){
	// 		if(move_uploaded_file($lokasi_file, $folder)){
	// 			$data = mysqli_query($koneksi, "UPDATE prosedur_kerja SET kode='$kd', judul='$jdl', klausul='$kls', file='$nama_file', id_pedoman_mutu='$pd' WHERE id='$autoid'");

	// 			if(mysqli_num_rows($data) == 0)
	// 			{				
	// 				if(isset($_POST['id_perubahan'])){
	// 					$sql = "UPDATE usulan_perubahan SET status = 1 WHERE id='$id_perubahan'";
	// 					$result = mysqli_query($koneksi, $sql);

	// 					if (mysqli_num_rows($result) == 0)
	// 					{
	// 						header('location:index.php');
	// 					}
	// 					else
	// 					{
	// 						die('Unable to insert data:' .mysql_error());
	// 					}
	// 				}else{
	// 					header('location:prosedur_kerja.php');
	// 				}
	// 			}
	// 			else
	// 			{
	// 				die('Unable to update record: ' .mysql_error());
	// 			}
	// 		}else{
	// 			echo "File Gagal Di Upload";
	// 		}
	// 	}
	// }
}
?>