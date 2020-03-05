<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
    get_bread_three();
    $dokumenID = $_GET['dID'];
	$kategoriID = $_GET['kID'];
	$username = $_SESSION['username'];	
    // echo $dokumenID." ".$kategoriID;

    include('../koneksi.php');
    if($kategoriID==1){// pedoman mutu
        $sql ="SELECT * FROM pedoman_mutu where id = '$dokumenID'";
        $data = mysqli_query($koneksi ,$sql);
        foreach ($data as $key) {
            $autoid = $key['id'];
            $kode = $key['kode_prosedur'];
            $judul = $key['judul'];            
        }
    }else if($kategoriID==2){// prosedur kerja
        $sql ="SELECT * FROM prosedur_kerja where id = '$dokumenID'";
        $data = mysqli_query($koneksi ,$sql);
        foreach ($data as $key) {
            $autoid = $key['id'];
            $kode = $key['kode'];
            $judul = $key['judul'];
        }
    }else if($kategoriID==3){// instruksi kerja
        $sql ="SELECT * FROM instruksi_kerja where id = '$dokumenID'";
        $data = mysqli_query($koneksi ,$sql);
        foreach ($data as $key) {
            $autoid = $key['id'];
            $kode = $key['kode'];
            $judul = $key['judul'];            
        }
    }else{// form mutu
        $sql ="SELECT * FROM form_mutu where id = '$dokumenID'";
        $data = mysqli_query($koneksi ,$sql);
        foreach ($data as $key) {
            $autoid = $key['id'];
            $kode = $key['kode'];
            $judul = $key['judul'];            
        }
	}
	
	$result = mysqli_query($koneksi, "SELECT * from user where username='$username'");
	foreach ($result as $r){
		$nama_pengusul = $r['nama'];
	}
?>
	<!-- Form-Input -->
	<div class="row-fluid sortable">
		<div class="box span12">
			<div class="box-header" data-original-title>
				<h2><i class="halflings-icon white edit"></i><span class="break"></span>Usulan Perubahan Dokumen</h2>
				<div class="box-icon">
					<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
					<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
					<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
				</div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" method="post" action="add_perubahan.php" enctype="multipart/form-data">
					<fieldset>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Tanggal:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txttanggal" id="focusedInput" type="text" placeholder="Masukkan Kode File" value="<?php echo date("Y-m-d"); ?>" readonly>
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Nama Pengusul:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txtnamapengusul" id="focusedInput" type="text" placeholder="Masukkan Kode File" value="<?php echo $nama_pengusul; ?>" readonly>
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Kode:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txtkode" id="focusedInput" type="text" placeholder="Masukkan Kode File" value="<?php echo $kode; ?>" readonly>
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Judul:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txtjudul" id="focusedInput" type="text" placeholder="Masukkan Judul" value="<?php echo $judul ?>" readonly>
						</div>
						</div>						
                        <div class="control-group">
						<label class="control-label" for="focusedInput">Keterangan:</label>
						<div class="controls">
                            <textarea class="input-xlarge focused" id="textarea" name="keterangan" rows="3" placeholder="Masukkan keterangan perubahan dokumen"></textarea>
							<!-- <input class="input-xlarge focused" name="txtjudul" id="focusedInput" type="text" placeholder="Masukkan Judul"> -->
						</div>
						</div>						
						<div class="form-actions">
                        <input type="hidden" name="dID" value="<?php echo $dokumenID; ?>">                        
                        <input type="hidden" name="kategori" value="<?php echo $kategoriID; ?>">
						<input type="hidden" name="username" value="<?php echo $username; ?>">
						<button type="submit" class="btn btn-primary">Tambahkan</button>
						</div>
					</fieldset>
				</form>
			
			</div>
		</div><!--/span-->
	</div><!--/row-->

<?php
	get_footer();
?>		

	
<!-- 	<div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<ul class="list-inline item-details">
				<li><a href="http://themifycloud.com">Admin templates</a></li>
				<li><a href="http://themescloud.org">Bootstrap themes</a></li>
			</ul>
		</div>
	</div> -->