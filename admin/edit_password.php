<?php
	require_once("functions/function.php");
	get_header();
	get_sidebar();
	get_bread_three();    	
	$username = $_SESSION['username'];	        
?>
	<!-- Form-Input -->
	<div class="row-fluid sortable">    
		<div class="box span12">
			<div class="box-header" data-original-title>            
				<h2><i class="halflings-icon white edit"></i><span class="break"></span>Ubah Password</h2>
				<div class="box-icon">
					<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
					<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
					<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
				</div>
			</div>
            <br>
            <?php
                if(isset($_GET['p'])){
                    if($_GET['p'] == "0"){
                        echo "
                        <div class='alert alert-danger' role='alert'>
                            Pastikan anda memasukkan password lama dengan benar.
                        </div>";
                    }
                    elseif ($_GET['p'] == "1") {
                        echo "
                        <div class='alert alert-secondary' role='alert'>
                            Pastikan password baru dan konfirmasi password baru anda sama.
                        </div>";    
                    }
                    elseif ($_GET['p'] == "2") {
                        echo "
                        <div class='alert alert-success' role='alert'>
                            Berhasil mengganti password.
                        </div>";    
                    }
                }
            ?>            
            <br>
			<div class="box-content">
				<form class="form-horizontal" method="post" action="update_password.php" enctype="multipart/form-data">
					<fieldset>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Password lama:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="pwlama" id="focusedInput" type="password" placeholder="Masukkan password lama" >
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Password baru:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="pwbaru" id="focusedInput" type="password" placeholder="Masukkan password baru" >
						</div>
						</div>
						<div class="control-group">
						<label class="control-label" for="focusedInput">Konfirmasi password baru:</label>
						<div class="controls">
							<input class="input-xlarge focused" name="konfpwbaru" id="focusedInput" type="password" placeholder="Konfirmasi password baru" >
						</div>
						</div>
                        <div class="form-actions">						
						<input type="hidden" name="username" value="<?php echo $username; ?>">
						<button type="submit" class="btn btn-primary">Ubah Password</button>
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