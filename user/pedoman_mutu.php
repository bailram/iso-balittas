<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
	get_bread_three();		
?>

<?php if($_SESSION['id_hak_akses']=="WP"){ ?>
	<!-- Form-Input -->
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
				<form class="form-horizontal" method="post" action="save_data.php" enctype="multipart/form-data">
					<fieldset>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Kode:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="txtkode" id="focusedInput" type="text" placeholder="Masukkan Kode File">
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
							<!-- <input class="input-xlarge focused" name="txtklausul" id="focusedInput" type="text" placeholder="Masukkan Klausul"> -->
							<input type="file" class="form-control-file" id="exampleFormControlFile1" name="file">
						</div>
						</div>						
						<div class="form-actions">
						<button type="submit" onclick="return confirmAdd()" class="btn btn-primary">Tambahkan</button>
						</div>
					</fieldset>
				</form>
			
			</div>
		</div><!--/span-->
	</div><!--/row-->
<?php } ?>
	<!-- List-data -->
	<div class="row-fluid sortable">		
		<div class="box span12">
			<div class="box-header" data-original-title>
				<h2><i class="icon-file-alt"></i><span class="break"></span>Pedoman Mutu</h2>
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
							<th>ID</th>
							<th>Kode</th>
							<th>Judul</th>
							<th>File</th>
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

						$sql = "SELECT * FROM pedoman_mutu ORDER BY id";
						$data = mysqli_query($koneksi, $sql);
						// $result=mysql_query($sql); //rs.open sql,con

					// while ($row=mysql_fetch_array($result))
						$i = 1;
						foreach ($data as $row)
					{ ?><!--open of while -->
					<tr>
						<td><?php echo $i++; ?></td>
						<td><?php echo $row['kode_prosedur']; ?></td>
						<td><?php echo $row['judul']; ?></td>
						<td><a href="../files/<?php echo $row['file']; ?>">Lihat Berkas</a></td>
						<?php if($_SESSION['id_hak_akses']=="WP"){ ?>
						<td class="center">
							<a class="btn btn-info" href="edit_pedoman_mutu.php?uID=<?php echo $row['id']; ?>">
								<i class="halflings-icon white edit"></i>  
							</a>
							<a class="btn btn-danger" onclick="return confirmDel()" href="delete_pedoman_mutu.php?delID=<?php echo $row['id'];?>">
								<i class="halflings-icon white trash"></i> 
							</a>
							<a class="btn btn-secondary" href="history_pm.php?kode=<?php echo $row['kode_prosedur']; ?>&idD=<?php echo $row['id']; ?>&idK=1">
								<i class="halflings-icon white time"></i> 
							</a>
						</td>
						<?php }else if($_SESSION['id_hak_akses']=="PS"){ ?>
						<?php }else{ ?>
							<td class="center">
							<a class="btn btn-info" href="perubahan_dokumen.php?dID=<?php echo $row['id']; ?>&kID=1">
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