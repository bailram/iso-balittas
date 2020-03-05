<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
	get_bread_instruksi_kerja();
?>
	<?php if($_SESSION['id_hak_akses']=="WP"){ ?>
	<!-- form-input -->
	<div class="row-fluid sortable">
		<div class="box span12">
			<div class="box-header" data-original-title>
				<h2><i class="halflings-icon white edit"></i><span class="break"></span>Tambah Berkas Baru</h2>
				<div class="box-icon">
					<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
					<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
					<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
				</div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" method="post" action="save_instruksi_kerja.php" enctype="multipart/form-data">
					<fieldset>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Kode:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txtkode" id="focusedInput" type="text" placeholder="Masukkan Kode Files">
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Judul:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txtjudul" id="focusedInput" type="text" placeholder="Masukkan Judul">
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">File:</label>
						<div class="controls">
							<input type="file" class="form-control-file" id="exampleFormControlFile1" name="file">
							<!-- <input class="input-xlarge focused" name="txtfile" id="focusedInput" type="text" placeholder="Masukkan Nama"> -->
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Prosedur Kerja:</label>
						<div class="controls">
							
							<!-- <input class="input-xlarge focused" name="txtlastname" id="focusedInput" type="text" placeholder="Lastname"> -->
							<select name="id_pk">
							<?php
								include("../koneksi.php");
								$data = mysqli_query($koneksi, "SELECT * FROM prosedur_kerja");

								while ($isi = mysqli_fetch_array($data)) {
									echo "<option value=$isi[id]>$isi[kode]</option>";
								}
							?>
							</select>
						</div>
						</div>
						<!-- <div class="control-group">
						<label class="control-label" for="focusedInput">Email:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txtemail" id="focusedInput" type="text" placeholder="Email">
						</div>
						</div> -->
						<div class="form-actions">
						<button type="submit" onclick="return confirmAdd()" class="btn btn-primary">Tambahkan</button>
						</div>
					</fieldset>
				</form>
			
			</div>
		</div><!--/span-->
	
	</div><!--/row-->
	<?php } ?>
	<!-- list-data -->
	<div class="row-fluid sortable">		
		<div class="box span12">
			<div class="box-header" data-original-title>
				<h2><i class="icon-file-alt"></i><span class="break"></span>Instruksi Kerja</h2>
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
							<th>File</th>
							<th>Prosedur Kerja</th>
							<?php if($_SESSION['id_hak_akses']=="WP"){ ?>
							<th>Actions</th>
							<?php }else if($_SESSION['id_hak_akses']=="PS"){ ?>
							<?php }else{ ?>
							<th>Usulan Perubahan</th>
							<?php } ?>
						</tr>
					</thead>
					<tbody>
					<?php
						include("../koneksi.php");

						if($_SESSION['id_hak_akses']=="WP" || $_SESSION['id_hak_akses']=="PS"){ 
							$sql = "SELECT * FROM instruksi_kerja ORDER BY kode";
						}else{
							$sql = "SELECT * FROM instruksi_kerja WHERE kode LIKE '%.".$_SESSION['id_hak_akses'].".%' ORDER BY kode";
						}
						// $sql = "SELECT * FROM instruksi_kerja ORDER BY kode";
						$data = mysqli_query($koneksi, $sql);
						// $result=mysql_query($sql); //rs.open sql,con

					// while ($row=mysql_fetch_array($result))
						$i = 1;
						foreach ($data as $row)
					{ ?><!--open of while -->
					<tr>
						<td><?php echo $i++; ?></td>
						<td><?php echo $row['kode']; ?></td>
						<td><?php echo $row['judul']; ?></td>
						<!-- <td><?php echo $row['file']; ?></td> -->
						<td><a href="../files/<?php echo $row['file']; ?>">Lihat Berkas</a></td>
						<?php
							$id=$row['id_pk'];
							$result = mysqli_query($koneksi, "SELECT * FROM prosedur_kerja where id=$id");

							while ($isi = mysqli_fetch_array($result)) {							
									$data=$isi['kode'];														
							}
						?>
						<td><?php echo $data; ?></td>
						<?php if($_SESSION['id_hak_akses']=="WP"){ ?>
						<td class="center">
							<a class="btn btn-info" href="edit_instruksi_kerja.php?uID=<?php echo $row['id']; ?>">
								<i class="halflings-icon white edit"></i>  
							</a>
							<a class="btn btn-danger" onclick="return confirmDel()" href="delete_instruksi_kerja.php?delID=<?php echo $row['id'];?>">
								<i class="halflings-icon white trash"></i> 
							</a>
							<a class="btn btn-secondary" href="history_ik.php?kode=<?php echo $row['kode']; ?>&idD=<?php echo $row['id']; ?>&idK=3">
								<i class="halflings-icon white time"></i> 
							</a>		
						</td>
						<?php }else if($_SESSION['id_hak_akses']=="PS"){ ?>
						<?php }else{ ?>
						<td class="center">
							<a class="btn btn-info" href="perubahan_dokumen.php?dID=<?php echo $row['id']; ?>&kID=3">
								<i class="halflings-icon white edit"></i>  
							</a>
						</td>
						<?php } ?>
					</tr>
					<?php
						} //close of while
					?>
					</tbody>
				</table>            
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