<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
	get_bread();
	$username = $_SESSION['username'];
	include("../koneksi.php");
						
	if($_SESSION['id_hak_akses']=="WP"){ 
		$sql = "SELECT * FROM usulan_perubahan order by id desc";
	}else{
		$sql = "SELECT * FROM usulan_perubahan where username='$username' order by id desc";
	}
	
	$data = mysqli_query($koneksi, $sql);
	$pedoman_mutu = [];
	$prosedur_kerja = [];
	$instruksi_kerja = [];
	$form_mutu = [];
?>	
		<!-- pedoman mutu -->
	<div class="row-fluid sortable">		
		<div class="box span12">
			<div class="box-header" data-original-title>
				<h2><i class="icon-file-alt"></i><span class="break"></span>Usulan Perubahan Dokumen</h2>
				<div class="box-icon">
					<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
					<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
					<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
				</div>
			</div>
			<div class="box-content">
				<table class="table table-striped table-bordered bootstrap-datatable datatable">
					<thead>
						<tr>
							<th>No</th>
							<th>Kode</th>
							<th>Judul</th>
							<th>Ketarangan</th>												
							<th>Dokumen</th>
							<th>Status</th>
							<th>Tindakan</th>				
						</tr>
					</thead>
					<tbody>
					<?php

						$i = 1;
						foreach ($data as $row)
					{ ?>
					<tr>
						<td><?php echo $i++; ?></td>
						<td><?php echo $row['kode']; ?></td>
						<td><?php echo $row['judul']; ?></td>
						<?php if($_SESSION['id_hak_akses']=="WP"){ ?>
						<td><a href="view_perubahan.php?id=<?php echo $row['id'] ?>">Lihat Selengkapnya</a></td>					
						<?php }else{ ?>
						<td><?php echo $row['keterangan']; ?></td>
						<?php } ?>
						<?php 
							$id=$row['id_kategori'];
							$result = mysqli_query($koneksi, "SELECT * FROM kategori where id=$id");

							while ($isi = mysqli_fetch_array($result)) {							
									$kategori=$isi['nama'];														
							}
						?>
						<td><?php echo $kategori;?></td>
						<td>
							<?php 
								if($row['status']==0){
									echo '<span class="badge badge-secondary">Proses</span>';
								}else{
									echo '<span class="badge badge-success">Selesai</span>';
								}
							?>
						</td>
						<td class="center">
							<?php if($_SESSION['id_hak_akses']=="WP"){ ?>
							<?php 
								if($row['id_kategori']==1){
									$link = "edit_pedoman_mutu.php?uID=".$row['id_dokumen']."&usulan=".$row['id'];
								}else if($row['id_kategori']==2){
									$link = "edit_prosedur_kerja.php?uID=".$row['id_dokumen']."&usulan=".$row['id'];
								}else if($row['id_kategori']==3){
									$link = "edit_instruksi_kerja.php?uID=".$row['id_dokumen']."&usulan=".$row['id'];
								}else{
									$link = "edit_form_mutu.php?uID=".$row['id_dokumen']."&usulan=".$row['id'];
								}
							?>
							<a class="btn btn-info" href="<?php echo $link?>">
								<i class="halflings-icon white edit"></i>  
							</a>
							<?php }else{ ?>
							<a class="btn btn-info" href="edit_perubahan_dokumen.php?uID=<?php echo $row['id']; ?>">
								<i class="halflings-icon white edit"></i>  
							</a>
							<?php } ?>
							<a class="btn btn-danger" onclick="return confirmDel()" href="delete_perubahan.php?delID=<?php echo $row['id'];?>">
								<i class="halflings-icon white trash"></i> 
							</a>
						</td>						
					</tr>
					<?php
						} 
					?>
					</tbody>
				</table>            
			</div>
		</div>	
	</div>	
		
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