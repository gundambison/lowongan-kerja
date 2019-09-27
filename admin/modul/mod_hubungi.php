<?php
error_reporting(0);
switch($_GET['act']){
  // Tampil Hubungi Kami
  default:
    echo "<h2>&#187; Hubungi Kami</h2>
          <table width=985>
          <tr><th>no</th><th>nama</th><th>email</th><th>subjek</th><th>tanggal</th><th>aksi</th></tr>";
    $no=1;
    $tampil=mysql_query("SELECT * FROM contact ORDER BY id_contact desc");  
    while ($r=mysql_fetch_array($tampil)){
	$idregis=$r['id_contact'];
      $tgl=tgl_indo($r['tanggal']);
      echo "<tr><td>$no</td>
                <td>$r[nama]</td>
                <td><a href=?module=hubungi&act=balasemail&id=$r[id_contact]>$r[email]</a></td>
                <td>$r[subjek]</td>
                <td>$tgl</a></td>
				
                <td> <a href='#' onclick='cek();'>Hapus</a> 
                </td></tr>";
      $no++;
    }
    echo "</table>";
    break;
  
  case "balasemail":
    $tampil = mysql_query("SELECT * FROM contact WHERE id_contact='$_GET[id]'");
    $r      = mysql_fetch_array($tampil);

    echo "<h2>&#187; Reply Email</h2>
          <form method=POST action='?module=hubungi&act=kirimemail'>
          <table>
		  <tr><td>Nama </td><td> : <input type=text name='nama' size=30 value='$r[nama]'></td></tr>
          <tr><td>Email</td><td> : <input type=text name='email' size=30 value='$r[email]'></td></tr>
          <tr><td>Subjek</td><td> : <input type=text name='subjek' size=50 value='Re: $r[subjek]'></td></tr>
          <tr><td>Pesan</td><td>  : <textarea name='pesan' rows=13 cols=70>
          
          
              
  -------------------------------------------------------------------------------------------
  $r[pesan]</textarea></td></tr>
          <tr><td colspan=2><input type=submit value=Kirim>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
     break;
    
  case "kirimemail":
    mail($_POST['email'],$_POST['subjek'],$_POST['pesan'],"From: redaksi@web.com");
    echo "<h2>Status Email</h2>
          <p>Email telah sukses terkirim kepada $_POST[email] </p>
          <p>[ <a href=javascript:history.go(-2)>Kembali</a> ]</p>";	 		  
    break;  
}
?>
<script type="text/javascript">
    function cek(){
    var msg = confirm("Apakah Anda yakin ?");
    if(msg==true){
    window.location="hapus_kontak.php?id=<?php echo "$idregis";?>";  
    }
    else{
    window.location="media.php?module=hubungi";
    }
    }
    </script>