<?php 

session_start();

include 'koneksi.php';

$username = $_POST['username'];
$password = $_POST['password'];

$data = mysqli_query($koneksi, "SELECT * from user where username='$username' and password='$password'");

if(mysqli_num_rows($data)>0){
	foreach ($data as $user) {
		// echo $user['id_hak_akses'];
		$_SESSION['username'] = $username;
		$_SESSION['status'] = "login";
		if($user['id_hak_akses']==='AD'){			
			$_SESSION['id_hak_akses'] = $user['id_hak_akses'];				
			header("location:admin/users.php");
		}else{		
			$_SESSION['id_hak_akses'] = $user['id_hak_akses'];
			header("location:user/index.php");
		}
	}
}else{
	header("location:index.php?pesan=gagal");
}
?>