<?php
	include "../config/koneksi.php";
	$id	= $_GET['id'];
	$sql	= mysql_query("delete from registrasi where id_registrasi='$id'");
	
	echo "<script language=javascript>
			window.alert('Hapus Berhasil');
			window.location='media.php?module=pendaftaran';
			</script>";
?>