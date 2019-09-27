<?php
error_reporting(0);
switch($_GET['act']){
  // Tampil lowongan
  default:
    echo "<h2>&#187; Daftar Lowongan</h2>
          <button type=button style='width:150px;padding:5px;text-align:center;' onclick=location.href='?module=lowongan&act=tambahlowongan'>Tambah Lowongan</button>
          <table width='985'>
          <tr><th>no</th><th>Nama Perusahaan</th><th>Lowongan</th><th>Tanggal Posting</th><th>User Posting</th><th>Aksi</th></tr>";
    $tampil=mysql_query("SELECT * FROM lowongan,perusahaan where lowongan.id_perusahaan=perusahaan.id_perusahaan ORDER BY id_lowongan DESC");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
	$idregis=$r['id_lowongan'];
      $tgl=tgl_indo($r['tgl_lowongan']);
      echo "<tr><td>$no</td>
                <td>$r[nama_p]</td>";?>
                <td><?php echo substr($r['deskripsi'],0,100);?> ...</td>
                <?php echo"<td>$tgl</td>
                <td>$r[user_posting]</td>
                <td> <a href=?module=lowongan&act=editlowongan&id=$r[id_lowongan]>Edit</a> | 
	                 
					   <a href='#' onclick='cek();'>Hapus</a>
		        </tr>";
    $no++;
    }
    echo "</table>";
    break;
  
  case "tambahlowongan":
    echo "<h2>&#187; Tambah Lowongan</h2>
          <form method=POST action='./aksi.php?module=lowongan&act=input' enctype='multipart/form-data'>
          <table>
          <tr><td>Nama Perusahaan</td><td> <select name='perusahaan' required>";
		  echo"<option value=''> >> Pilih Perusahaan << </option>";
		  $sql = mysql_query("SELECT * FROM perusahaan order by id_perusahaan asc");
          while($r= mysql_fetch_array($sql)){
		  echo"<option value='$r[id_perusahaan]'> $r[nama_p] </option>";
		  }
		  echo"</select>
		  </td></tr>
          <tr><td>Deskripsi</td><td>  <textarea name='deskripsi' rows=2 style='width:700px;height:200px;' cols=70 required></textarea></td></tr>
          <tr><td>Persaratan Lowongan</td><td>  <textarea name='persaratan' rows=2 style='width:700px;height:500px;' cols=70 required></textarea></td></tr>
          <tr><td></td><td><input type=submit value=Simpan>
                  <input type=button value=Batal onclick=self.history.back()></td></tr>
				  <input type='hidden' value='$_SESSION[namalengkap]' name='username'>
          </table></form><br><br><br>";
     break;    
  case "editlowongan":
    $edit = mysql_query("SELECT * FROM lowongan,perusahaan WHERE lowongan.id_perusahaan=perusahaan.id_perusahaan and  lowongan.id_lowongan='$_GET[id]'");
    $r    = mysql_fetch_array($edit);
    echo "<h2>&#187; Edit lLowongan</h2>
          <form method=POST enctype='multipart/form-data' action=./aksi.php?module=lowongan&act=update>
          <input type=hidden name='id' value=$r[id_lowongan]>
         <table>
          <tr><td>Nama Perusahaan</td><td> <select name='perusahaan'>";
		  echo"<option value='$r[id_perusahaan]' selected> $r[nama_p] </option>";
		  $sql = mysql_query("SELECT * FROM perusahaan order by id_perusahaan asc");
          while($p= mysql_fetch_array($sql)){
		  echo"<option value='$p[id_perusahaan]'> $p[nama_p] </option>";
		  }
		  echo"</select>
		  </td></tr>
          <tr><td>Deskripsi</td><td>  <textarea name='deskripsi' rows=2 style='width:700px;height:200px;' cols=70 required>$r[deskripsi]</textarea></td></tr>
          <tr><td>Persaratan Lowongan</td><td>  <textarea name='persaratan' rows=2 style='width:700px;height:500px;' cols=70 required>$r[persaratan]</textarea></td></tr>
          <tr><td></td><td><input type=submit value=Simpan>
                  <input type=button value=Batal onclick=self.history.back()></td></tr>
				  <input type='hidden' value='$_SESSION[namalengkap]' name='username'>
          </table></form><br><br><br>";
    break;  
}
?>
<script type="text/javascript">
    function cek(){
    var msg = confirm("Apakah Anda yakin ?");
    if(msg==true){
    window.location="hapus_lowongan.php?id=<?php echo "$idregis";?>";  
    }
    else{
    window.location="media.php?module=lowongan";
    }
    }
    </script>