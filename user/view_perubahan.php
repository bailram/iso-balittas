<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
    get_bread_three();
    // echo $dokumenID." ".$kategoriID;

	include('../koneksi.php');
	$id = $_GET['id'];
	$data = mysqli_query($koneksi ,"SELECT * FROM usulan_perubahan where id=$id");
	foreach ($data as $row){
		$tanggal = $row['tanggal'];
		$nama_pengusul = $row['nama_pengusul'];
		$kode = $row['kode'];
		$judul = $row['judul'];
		$keterangan = $row['keterangan'];
		$id_kategori = $row['id_kategori'];
		$id_dokumen = $row['id_dokumen'];
		$status = $row['status'];
		$username = $row['username'];
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
				<form class="form-horizontal" method="post" action="#" enctype="multipart/form-data">
					<fieldset>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Tanggal:</label>
						<div class="controls">
							<p><?php echo $tanggal?></p>
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Nama Pengusul:</label>
						<div class="controls">
							<?php echo $nama_pengusul?>
						</div>
						</div>	
						<div class="control-group">
						<label class="control-label" for="focusedInput">Paraf:</label>
						<div class="controls">
							<?php echo $username?>
						</div>
						</div>					
						<div class="control-group">
						<label class="control-label" for="focusedInput">Kode:</label>
						<div class="controls">						
							<?php echo $kode?>
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Judul:</label>
						<div class="controls">
							<?php echo $judul?>
						</div>
						</div>						
                        <div class="control-group">
						<label class="control-label" for="focusedInput">Keterangan:</label>
						<div class="controls">
							<?php echo $keterangan?>
							<!-- <input class="input-xlarge focused" name="txtjudul" id="focusedInput" type="text" placeholder="Masukkan Judul"> -->
						</div>
						</div>						
						<div class="form-actions">
                        <input type="hidden" name="dID" value="<?php echo $dokumenID; ?>">                        
                        <input type="hidden" name="kategori" value="<?php echo $kategoriID; ?>">
						<input type="hidden" name="username" value="<?php echo $username; ?>">
						<?php 
							if($id_kategori==1){
								$link = "edit_pedoman_mutu.php?uID=".$id_dokumen."&usulan=".$id;
							}else if($id_kategori==2){
								$link = "edit_prosedur_kerja.php?uID=".$id_dokumen."&usulan=".$id;
							}else if($id_kategori==3){
								$link = "edit_instruksi_kerja.php?uID=".$id_dokumen."&usulan=".$id;
							}else{
								$link = "edit_form_mutu.php?uID=".$id_dokumen."&usulan=".$id;
							}
						?>
						<a class="btn btn-info" href="<?php echo $link?>">
							<i class="halflings-icon white edit"></i> Edit data
						</a>
						</div>
					</fieldset>
				</form>
			
			</div>
		</div><!--/span-->
	</div><!--/row-->

<?php
	get_footer();
?>		