<?php
	include "../config/koneksi.php";
	$id	= $_GET['id'];
	$sql	= mysql_query("delete from lowongan where id_lowongan='$id'");
	
	echo "<script language=javascript>
			window.alert('Hapus Berhasil');
			window.location='media.php?module=lowongan';
			</script>";
?>