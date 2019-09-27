<input type=button value='Tambah Artikel' onclick=location.href='?module=add_artikel'>
<table width='96%'>
          <tr><th>no</th>
		  <th>Judul Artikel</th>
		  <th>Tanggal</th>
		  <th>Isi Artikel</th>
		  <th>Aksi</th></tr> 
<?		  
    //$tampil=mysql_query("SELECT * FROM artikel ORDER BY id_artikel Desc");
    //$no=1;
    //while ($r=mysql_fetch_array($tampil)){
	 $i=0;
	 $tampil= "SELECT * FROM artikel ORDER BY id_artikel DESC";
	 $sql= mysql_query ($tampil);
	 while ($r = mysql_fetch_array($sql))
	 {
		 
	 $tgl=tgl_indo($r['tgl_artikel']); 
       echo "<tr><td>$i</td>
             <td>$r[judul]</td>
             <td>$tgl</td>
             <td>$r[isi_artikel]</td>
             <td align=center><a href=?module=mod_update_artikel&id=$r[id_artikel]>Edit</a> | 
	               <a href=./aksi.php?module=artikel&act=hapus&id=$r[id_artikel]>Hapus</a>
             </td></tr>";
      $i++;
    }
    echo "</table>";
?>
