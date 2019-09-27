<input type=button value='Tambah Perusahaan' onclick=location.href='?module=add_perusahaan'>
<table width='96%'>
          <tr><th>no</th>
		  <th>Nama Perusahaan</th>
		  <th>Tanggal Daftar</th>
		  <th>Alamat</th>
		  <th>Wilayah</th>
		  <th>Email</th>
		  <th>Telepon</th>
		  <th>aksi</th></tr> 
<?php		  
    $tampil=mysql_query("SELECT * FROM perusahaan ORDER BY id_perusahaan");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
	$idregis=$r['id_perusahaan'];
	 $tgl=tgl_indo($r['tgl_daftar']); 
       echo "<tr><td>$no</td>
             <td>$r[nama_p]</td>
             <td>$tgl</td>
             <td>$r[alamat]</td>
             <td>$r[wilayah]</td>
             <td>$r[email]</td>
             <td>$r[tlp]</td>
             <td align=center><a href=?module=mod_update_perusahaan&id=$r[id_perusahaan]>Edit</a> | 
	               
				   <a href='#' onclick='cek();'>Hapus</a>
             </td></tr>";
      $no++;
    }
    echo "</table>";
?>
<script type="text/javascript">
    function cek(){
    var msg = confirm("Apakah Anda yakin ?");
    if(msg==true){
    window.location="./aksi.php?module=perusahaan&act=hapus&id=<?php echo "$idregis";?>";  
    }
    else{
    window.location="media.php?module=perusahaan";
    }
    }
    </script>