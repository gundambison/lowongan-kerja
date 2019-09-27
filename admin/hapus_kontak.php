<?php
	include "../config/koneksi.php";
	$id	= $_GET['id'];
	$sql	= mysql_query("delete from contact where id_contact='$id'");
	
	echo "<script language=javascript>
			window.alert('Hapus Berhasil');
			window.location='media.php?module=hubungi';
			</script>";
?>