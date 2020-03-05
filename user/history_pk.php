<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
	get_bread();
	$username = $_SESSION['username'];
	$idD = $_GET['idD'];
	$idK = $_GET['idK'];
	include("../koneksi.php");
						
	// if($_SESSION['id_hak_akses']=="WP"){ 
	// 	$sql = "SELECT * FROM history order by id desc";
	// }else{
	// 	$sql = "SELECT * FROM history where username='$username' order by id desc";
	// }

	$sql = "SELECT * FROM history where id_kategori='$idK' AND id_dokumen='$idD' order by tahun desc";
	
	$data = mysqli_query($koneksi, $sql);
?>	
		<!-- pedoman mutu -->
	<div class="row-fluid sortable">		
		<div class="box span12">
			<div class="box-header" data-original-title>				
				<h2><i class="icon-file-alt"></i><span class="break"></span>History - <?php echo $_GET['kode']; ?></h2>
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
							<th>Tahun</th>
							<th>File</th>				
						</tr>
					</thead>
					<tbody>
					<?php
						$i = 1;
						foreach ($data as $row)
					{ ?>
					<tr>
						<td><?php echo $i++; ?></td>
						<td><?php echo $row['tahun']; ?></td>
						<td><a href="../files/history/<?php echo $row['file']; ?>">View Document</a></td>
<!-- 						<?php 
							$id=$row['id_kategori'];
							$result = mysqli_query($koneksi, "SELECT * FROM kategori where id=$id");

							while ($isi = mysqli_fetch_array($result)) {							
									$kategori=$isi['nama'];														
							}
						?> -->				
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