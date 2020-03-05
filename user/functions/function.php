<?php
	function get_header(){
		require_once("includes/header.php");
	}
	function get_bread(){
		require_once("includes/breadcumb.php");
	}
	function get_bread_two(){
		require_once("includes/breadcumb_two.php");
	}
	function get_bread_three(){
		require_once("includes/breadcumb_three.php");
	}
	function get_bread_four(){
		require_once("includes/breadcumb_four.php");
	}
	function get_bread_pedoman_mutu(){
		require_once("includes/breadcumb_edit_pedoman_mutu.php");
	}
	function get_bread_prosedur_kerja(){
		require_once("includes/breadcumb_prosedur_kerja.php");
	}
	function get_bread_instruksi_kerja(){
		require_once("includes/breadcumb_instruksi_kerja.php");
	}
	function get_bread_edit_instruksi_kerja(){
		require_once("includes/breadcumb_edit_instruksi_kerja.php");
	}
	function get_bread_edit_form_mutu(){
		require_once("includes/breadcumb_edit_form_mutu.php");
	}
	function get_bread_form_mutu(){
		require_once("includes/breadcumb_form_mutu.php");
	}
	function get_sidebar(){
		require_once("includes/sidebar.php");
	}
	function get_part($addpart){
		require_once("includes/".$addpart);
	}
 	function get_footer(){
		require_once("includes/footer.php");
	}
?>