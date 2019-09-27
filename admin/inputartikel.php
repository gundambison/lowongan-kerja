<body>
<?php

	
	$namafolder="gambar_artikel/"; //tempat menyimpan file

	if ($_POST['kirim'] == "Kirim") 
	{
	$judul				= $_POST['judul'];
	$isi_artikel		= $_POST['isi_artikel'];
	date_default_timezone_set('Asia/Jakarta');
	$tgl_artikel		= date('Y-m-d G:i:s');
	$gambar 			= $namafolder . basename($_FILES['gambar']['name']);
	$move				=  move_uploaded_file($_FILES['gambar']['tmp_name'], $gambar);			
	
	
	
	//validasi data data kosong
	if (empty($_POST['judul'])
	||empty($_POST['isi_artikel']))
{


?>
			<script language="JavaScript">
			alert('Data Harap Dilengkapi!');
			document.location='form-input-artikel.php';
			</script>
<?php
	}
	include "../koneksi.php";
	
//Masukan data ke tabel lowongan
$input1	="INSERT INTO artikel (judul, isi_artikel, tgl_artikel, gambar)
		VALUES ('$judul','$isi_artikel','$tgl_artikel','$gambar')";
$query_input1 =mysql_query($input1);
if ($query_input1) 
	{
//Jika Sukses
?>
		<script language="JavaScript">
		alert('Input Data Artikel Berhasil!');
		document.location='form-input-artikel.php';
		</script>
<?php
	}
	else 
	{
	//Jika Gagal
	echo "Input Gagal!";
	}
//Tutup koneksi engine MySQL
	mysql_close($Open);
	}
?>
</body>