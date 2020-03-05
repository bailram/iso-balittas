<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
    get_bread_three();
    $id = $_GET['uID'];    	


    include('../koneksi.php');
    $sql ="SELECT * FROM usulan_perubahan where id = '$id'";
	$data = mysqli_query($koneksi ,$sql);

	$num = mysqli_num_rows($data);	

	foreach ($data as $key) {
		$id = $key['id'];
		$tanggal = $key['tanggal'];
		$nama_pengusul = $key['nama_pengusul'];
		$kode = $key['kode'];
		$judul = $key['judul'];
        $keterangan = $key['keterangan'];
        $id_kategori = $key['id_kategori'];
        $id_dokumen = $key['id_dokumen'];
        $status = $key['status'];
		$username = $key['username'];
	}
?>
	<!-- Form-Input -->
	<div class="row-fluid sortable">
		<div class="box span12">
			<div class="box-header" data-original-title>
				<h2><i class="halflings-icon white edit"></i><span class="break"></span>Update Usulan Perubahan Dokumen</h2>
				<div class="box-icon">
					<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
					<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
					<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
				</div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" method="post" action="update_perubahan.php" enctype="multipart/form-data">
					<fieldset>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Tanggal:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txttanggal" id="focusedInput" type="text" placeholder="Masukkan Kode File" value="<?php echo $tanggal; ?>" readonly>
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
                            <textarea class="input-xlarge focused" id="textarea" name="keterangan" rows="3" placeholder="Masukkan keterangan perubahan dokumen"><?php echo $keterangan ?></textarea>
							<!-- <input class="input-xlarge focused" name="txtjudul" id="focusedInput" type="text" placeholder="Masukkan Judul"> -->
						</div>
						</div>						
						<div class="form-actions">
                        <input type="hidden" name="dID" value="<?php echo $id_dokumen; ?>">                        
                        <input type="hidden" name="kategori" value="<?php echo $id_kategori; ?>">
						<input type="hidden" name="username" value="<?php echo $username; ?>">
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
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