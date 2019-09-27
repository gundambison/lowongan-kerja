<?
$module=$_GET['module'];
$save=$_GET['save'];
$act=$_GET['act'];
$tgl=date("Ymd"); 
$tampil=mysql_query("SELECT * FROM artikel where id_artikel='$_GET[id]'");
$r=mysql_fetch_array($tampil);
if ($module='mod_update_artikel' AND $save=='ok'){
	//untuk memindahkan file ke tempat uploadan
	$upload_path = "../foto_lowongan/";
	// handle aplikasi : apabila folder yang dimaksud tidak ada, maka akan dibuat
	if (!is_dir($upload_path)){
		mkdir($upload_path);
		opendir($upload_path);
	}
	$file = $_FILES['fupload']['name'];
	$tmp  = $_FILES['fupload']['tmp_name'];	
	$id_artikel=kdauto(artikel,"P");
	{
   $sql=mysql_query("update artikel set judul='$_POST[judul]',
											tgl_artikel='$tgl',
											Isi Judul='$_POST[isi_artikel]' where id_artikel='$_POST[id_artikel]' ");
  }
 ?>	
<?			
		if($sql){				   
		?>  <br><br><center>
			<meta http-equiv='refresh' content='0;URL=?module=artikel'>
			</center>
			<?
		} else {
			?>			
			<meta http-equiv='refresh' content='0;URL=?module=artikel'><?
		}
			//echo "<script>window.location = '?module=formulir'</script>";
}
?>
<div class="content_title_01">Form Update Artikel</div>
<form method="post" action="?module=mod_update_artikel&save=ok" enctype='multipart/form-data' onSubmit="return validasi(this)">
<table>  
<input type='hidden' name='id_artikel' size='50' value='<?php echo $r['id_artikel'];?>'>
       <tr><td>Judul Artikel</td><td> : <input type=text name='judul' size='50' value='<?php echo $r['judul'];?>'></td></tr>
       <tr><td>Tanggal </td><td> : <input type=text name='tgl_artikel' size='50' value='<?php echo $r['tgl_artikel'];?>'></td></tr>
       <tr><td>Isi Artikel</td><td> :<input type=text name='isi_artikel' size='50' value=' <?php echo $r['isi_artikel'];?>'></td></tr>
       <tr><td>Gambar</td><td> : <input type='file' name='fupload'></td></tr>
<td></td>
<td><br><button type="submit" name="submit" ><img src="images/daftar.png" width='20' height='20' /> Update</button>
&nbsp;<button type="reset" onclick=location.href='?module=artikel' name="reset" ><img src="images/back.png" width='20' height='20' /> Back</button></td>
</tr>
</table>  
</div>	
</form>
			

<??>

