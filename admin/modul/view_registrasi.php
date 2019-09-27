<?
error_reporting(0);
$page=$_GET['page'];
$update=$_GET['update'];
$act=$_GET['act'];
$sql=mysql_query("select * from registrasi where id_registrasi='$_GET[id]'");
$r=mysql_fetch_array($sql);
$tgl=tgl_indo($tgl['tgl_lahir']);
?>
<div class="content_title_01">&#187; User Account</div>
<div class='view'>
<table class='view' width='80%'>
<?
if(!empty($r['foto'])){
echo"<div class='foto'><img src='../foto_calon/$r[foto]' width='130' height='160'></div>";
}else{
echo"<div class='foto'><img src='images/nofoto.jpg' width='130' height='160'></div>";
}
?>
<tr><td width='200'> No Registrasi</td><td>: <?php echo $_GET['id'];?></td></tr> 
<tr><td> Nama Lengkap</td><td>: <?php echo $r['nama_lengkap'];?></td></tr> 
<!--<tr><td> No Telp</td><td>: <?php echo $r['notelp'];?></td></tr> -->
<tr><td>Jenis Kelamin </td><td>: <?php echo $r['jk'];?></td></tr>
<tr><td> Tempat / Tanggal Lahir </td><td>: <?php echo $r['tmp_lahir'];?> / <?php echo $r['tgl_lahir'];?></td></tr>
<tr><td> Umur</td><td>: <?php echo $r['umur'];?></td></tr>				 
<tr><td> Alamat</td><td>: <?php echo $r['alamat'];?></td></tr> 
<tr><td> No Hp</td><td>: <?php echo $r['nohp'];?></td></tr> 
<tr><td> Tamatan</td><td>: <?php echo $r['tamatan'];?></td></tr> 
<tr><td> Jurusan</td><td>: <?php  echo $r['jurusan'];?></td></tr> 
<tr><td> IPK </td><td>: <?php echo $r['ipk'];?></td></tr>   
<tr><td> Email</td><td>: <?php echo $r['email'];?></td></tr>  
<tr><td> Password</td><td>: <?php echo $r['password'];?></td></tr> 
</table>  
</div>	                           

