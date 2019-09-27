<?php
	include "../config/koneksi.php";
	$id	= $_GET['id'];
	$sql	= mysql_query("delete from user where id_user='$id'");
	
	echo "<script language=javascript>
			window.alert('Hapus Berhasil');
			window.location='media.php?module=user';
			</script>";
?>