<?php
$userID = $_GET['uID'];

	include('../koneksi.php');

	$sql ="SELECT * FROM user where id = '$userID'";
	$data = mysqli_query($koneksi ,$sql);

	$num = mysqli_num_rows($data);

	$i = 0;

	foreach ($data as $key) {
		$autoid = $key['id'];
		$user = $key['username'];
		$pass = $key['password'];
		$nama = $key['nama'];
		$ln = $key['id_hak_akses'];
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
	get_bread_four();
?>
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>Update User's Data</h2>
						<div class="box-icon">
							<a href="users.php" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" method="post" action="update_data.php">
							<fieldset>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">Username:</label>
								<div class="controls">
								  <input class="input-xlarge focused" name="txtusername" id="focusedInput" type="text" placeholder="Username" 
								  value="<?php echo $user; ?>">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">Password:</label>
								<div class="controls">
								  <input class="input-xlarge focused" name="txtpassword" id="focusedInput" type="password" placeholder="Password"
								  value="<?php echo $pass; ?>">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">Nama:</label>
								<div class="controls">
								  <input class="input-xlarge focused" name="txtfirstname" id="focusedInput" type="text" placeholder="Firstname"
								  value="<?php echo $nama; ?>">
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
								<label class="control-label" for="focusedInput">Hak Akses:</label>
								<div class="controls">
									<select name="hak_akses">
										<?php
										$data= mysqli_query($koneksi, "select * from hak_akses");
									
										foreach($data as $isi){
											if($ln==$isi['id']){
												echo "<option value=$isi[id] selected='selected'>$isi[nama]</option>";
											}else{
												echo "<option value=$isi[id]>$isi[nama]</option>";
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