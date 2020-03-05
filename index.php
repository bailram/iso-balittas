<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="./bootstrap-4.4.1-dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href='./css/login.css'>
	<title>Balittas | Balai Penelitian Pemanis dan Serat</title>
	<style>
		.input-text {
			border: none;		
			width: 100%;	
			padding-bottom: 5px;
			padding-left: 8px;
			border-bottom: 2px solid #e0e0e0;
		}

		.button{
			background-color: #819950; /* #7d8d46, #7ba244 */
			border: none;
			color: white;
			padding: 8px 8px;
			padding-left: 20px;
			padding-right: 20px;
			text-decoration: none;
			cursor: pointer;
		}
	</style>
</head>
<?php 
session_start();
if(isset($_SESSION['id_hak_akses'])){
	if($_SESSION['id_hak_akses']=='AD'){			
		header("location:admin/users.php");
	}else{				
		header("location:user/index.php");
	}
}
?>
<body style="background-color:#f9f9f9;"><!-- #e0e0e0 -->
	<div class="container" style="background-color:#fff;">
		<div class="row justify-content-md-center" style="margin-top:6%;">
			<div class="col col-lg-6">
				<div class="row">
					<div class="bg-dark text-white p-2" style="font-family: 'Merriweather-Regular'; font-size: 20px;"><i>ISO BALITTAS</i></div>
				</div>
				<div class="m-2 align-self-center p-5" >
					<h2 style="font-family: 'Merriwheater-Regular';"> Selamat Datang di ISO BALITTAS </h2>
					<h6 style="font-family: 'Helvetica';">Silahkan Login untuk melanjutkan</h6>														
					<br/>
					<?php
					if(isset($_GET['pesan'])){
						if($_GET['pesan'] == "gagal"){
							echo "
							<div class='alert alert-danger' role='alert'>
								Login gagal! username dan password salah.
							</div>";
						}
						elseif ($_GET['pesan'] == "logout") {
							echo "
							<div class='alert alert-secondary' role='alert'>
								Anda telah berhasil logout.
							</div>";
						}
						elseif ($_GET['pesan'] == "belum_login") {
							echo "
							<div class='alert alert-danger' role='alert'>
								Anda harus login untuk mengakses halaman ini.
							</div>";
						}
					}

					?>
					<br/>
					<form method ="post" action="cek_login.php">
						<div class="form-group">
							<input type="text" class="input-text" name="username" placeholder="Username">
						</div>
						<div class="form-group">
							<input type="password" class="input-text" name="password" placeholder="Password">
						</div>
						<!-- <div class="form-group"> -->
						<p style="color:#797579;"><small>Hubungi admin untuk mendapatkan akses.</small></p>
						<!-- </div> -->
						<div class="form-group">
							<input type="submit" class="button" value="Login">
						</div>						
					</form>
					
				</div>				
			</div>
			<div class="col p-0">
				<img src="./images/background.png" class="img-fluid" alt="Responsive image" style="width:100%; height:100%;">
			</div>
		</div>
	</div>
</body>
</html>