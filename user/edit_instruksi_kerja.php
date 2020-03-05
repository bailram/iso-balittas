<?php
$userID = $_GET['uID'];
if(isset($_GET['usulan'])){
	$id_perubahan = $_GET['usulan'];
}

	include('../koneksi.php');

	$sql ="SELECT * FROM instruksi_kerja where id = '$userID'";
	$data = mysqli_query($koneksi ,$sql);

	$num = mysqli_num_rows($data);

	$i = 0;

	foreach ($data as $key) {
		$autoid = $key['id'];
		$kode = $key['kode'];
		$judul = $key['judul'];
		$file = $key['file'];
		$id_pk = $key['id_pk'];
		$i++;
	}

	// while ($i < $num)
	// {
	// 	$autoid = mysql_result($data,$i,"id");
	// 	$user = mysql_result($data,$i,"Username");
	// 	$pass = mysql_result($data,$i,"Password");
	// 	$fn = mysql_result($data,$i,"Firstname");
	// 	$ln = mysql_result($data,$i,"Lastname");
	// 	$email = mysql_result($data,$i,"Email");
	// 	$i++;
	// }

?>
<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
	get_bread_edit_instruksi_kerja();
?>
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>Update Instruksi Kerja</h2>
						<div class="box-icon">
							<a href="instruksi_kerja.php" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" method="post" action="update_instruksi_kerja.php" enctype="multipart/form-data">
							<fieldset>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">Kode:</label>
								<div class="controls">
								  <input class="input-xlarge focused" name="txtkode" id="focusedInput" type="text" placeholder="Username" 
								  value="<?php echo $kode; ?>">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">Judul:</label>
								<div class="controls">
								  <input class="input-xlarge focused" name="txtjudul" id="focusedInput" type="text" placeholder="Password"
								  value="<?php echo $judul; ?>">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">File:</label>
								<div class="controls">
								  <!-- <input class="input-xlarge focused" name="txtfile" id="focusedInput" type="text" placeholder="Firstname"
								  value="<?php echo $file; ?>"> -->
								  <input type="file" class="form-control-file" id="exampleFormControlFile1" name="file">
								</div>
							  </div>
							 <!--  <div class="control-group">
								<label class="control-label" for="focusedInput">Id Hak Akses :</label>
								<div class="controls">
								  <input class="input-xlarge focused" name="txtlastname" id="focusedInput" type="text" placeholder="Lastname"
								  value="<?php echo $ln; ?>">
								</div>
							  </div> -->
							  <div class="control-group">
								<label class="control-label" for="focusedInput">Prosedur Kerja:</label>
								<div class="controls">
									<select name="id_prosedur">
										<?php
										$data= mysqli_query($koneksi, "select * from prosedur_kerja");
									

										// while ($isi = mysqli_fetch_array($data)) {
										// 	echo "<option value=$isi[id]>$isi[kode]</option>";
										
										foreach($data as $isi){
											if($id_pk==$isi['id']){
												echo "<option value=$isi[id] selected='selected'>$isi[kode]</option>";
											}else{
												echo "<option value=$isi[id]>$isi[kode]</option>";
											}
										}										
										?>
									</select>
								  <!-- <input class="input-xlarge focused" name="txtemail" id="focusedInput" type="text" placeholder="Email"
								  value="<?php echo $email; ?>"> -->
								</div>
							  </div>
							  <div class="form-actions">
								<button type="submit" onclick="return confirmUpdate()" class="btn btn-primary">Save Changes</button>
								<input type="hidden" name="hid" value="<?php echo $autoid; ?>">
								<?php if(isset($_GET['usulan'])){ ?>									
									<input type="hidden" name="id_perubahan" value="<?php echo $id_perubahan; ?>">
								<?php } ?>
								<button type="submit" onclick="return" class="btn btn-danger">Batal</button>
								<!-- <input type="hidden" name="hid" value="<?php echo $autoid; ?>"> -->
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