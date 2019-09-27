<?php
$module=$_GET['module'];
$save=$_GET['save'];
$act=$_GET['act'];
$tgl=date("Ymd"); 
if ($module='add_artikel' AND $save=='ok'){
	//untuk memindahkan file ke tempat uploadan
	$upload_path = "../foto_lowongan/";
	// handle aplikasi : apabila folder yang dimaksud tidak ada, maka akan dibuat
	if (!is_dir($upload_path)){
		mkdir($upload_path);
		opendir($upload_path);
	}
	$file = $_FILES['fupload']['name'];
	$tmp  = $_FILES['fupload']['tmp_name'];	
	$id_artikel=kdauto(artikel,'A');
	move_uploaded_file($tmp, $upload_path.$file);
    $sql=mysql_query("INSERT INTO artikel(id_artikel,judul,isi_artikel,tgl_artikel,gambar) 
	                       VALUES('$_POST[judul]',
                                '$tgl',
                                '$_POST[isi_artikel]',
                                '$file')");
	
	?>	
<?			
		if($sql){				   
		?>  <br><br><center>
			<meta http-equiv='refresh' content='0;URL=?module=artikel'>
			</center>
			<?
		} else {
		?><meta http-equiv='refresh' content='0;URL=?module=artikel'><?
		}
}
?>
<div class="content_title_01">Form Artikel</div>
<form method="post" action="?module=add_artikel&save=ok" enctype='multipart/form-data' onSubmit="return validasi(this)">
<table>  
		  <tr><td>Judul Artikel</td>     <td> : <input type=text name='judul' size='50'></td></tr>
	      <tr><td>Tanggal Artikel</td>    <td>:<input type="text" name="tgl_artikel" id="tanggalartikel"/>
          <tr><td>Isi Artikel</td>       <td> :<input type=text name='isi_artikel' size='50'></td></tr>
          <tr><td>Gambar</td>            <td> : <input type='file' name='fupload'></td></tr>
<td></td>
<td><br><button type="submit" name="submit" ><img src="images/daftar.png" width='20' height='20' /> Save</button>
&nbsp;<button type="reset" onclick=location.href='?module=artikel' name="reset" ><img src="images/back.png" width='20' height='20' /> Back</button></td>
</tr>
</table>  
</div>	
</form>
			
                    
            

<??>
