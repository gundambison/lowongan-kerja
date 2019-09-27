<?php
switch($_GET['act']){
  // Tampil perusahaan
  default:
    echo "<h2>&#187; Daftar Artikel</h2>
          <input type=button value='Tambah Artikel' onclick=location.href='?module=artikel&act=tambahartikel'>
          <table width=96%>
          <tr><th>no</th>
		  <th>Judul Artikel</th>
		  <th>Isi Artikel</th>
		  <th>Tanggal</th>
		  <th>aksi</th></tr>"; 
    $tampil=mysql_query("SELECT * FROM artikel ORDER BY id_artikel");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
	 $tgl=tgl_indo($r['tgl_artikel']); 
       echo "<tr><td>$no</td>
             <td>$r[judul]</td>
			 <td>$r[isi_artikel]</td>
             <td>$tgl</td>
             
             <td align=center><a href=?module=artikel&act=editartikel&id=$r[id_artikel]>Edit</a> | 
	               <a href=./aksi.php?module=artikel&act=hapus&id=$r[id_artikel]>Hapus</a>
             </td></tr>";
      $no++;
    }
    echo "</table>";
    break;
  
  case "tambahartikel":
    echo "<h2>&#187; Tambah Artikel</h2>
          <form method=POST action='?module=artikel&act=input'>
          <table border='0'>
          <tr><td>Judul Artikel</td>     <td> : <input type=text name='judul' size='50'></td></tr>
		  <tr><td>Isi Artikel</td>     <td> : <textarea rows='30' cols='100%' name='isi_artikel'></textarea></td></tr>
          <tr><td>Gambar</td>       <td> : <input type='file' name='fupload' size=30></td></tr>
          <tr><td colspan=2><input type=submit value=Simpan>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form><br><br>";
     break;
    
  case "editartikel":
    $edit=mysql_query("SELECT * FROM artikel WHERE id_artikel='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    echo "<h2>&#187; Edit Perusahaan</h2>
          <form method=POST action=?module=artikel&act=update>
          <input type=hidden name=id value='$r[id_artikel]'>
          <table>
		 <tr><td>Judul Artikel</td>     <td> : <input type=text name='judul' size='50'></td></tr>
		  <tr><td>Isi Artikel</td>     <td> : <textarea rows='30' cols='100%' name='isi_artikel'></textarea></td></tr>
          <tr><td>Gambar</td>       <td> : <input type='file' name='fupload' size=30></td></tr>
          <tr><td colspan=2><input type=submit value=Simpan>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
?>
