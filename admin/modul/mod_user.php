<?php
error_reporting(0);
switch($_GET['act'])
{
  // Tampil User
  default:
    echo "<h2>Tambah User</h2>
          <input type=button value='Tambah User' onclick=location.href='?module=user&act=tambahuser'>
          <table width=96%>
          <tr><th>no</th><th>username</th><th>nama lengkap</th><th>email</th><th>aksi</th></tr>"; 
    $tampil=mysql_query("SELECT * FROM user ORDER BY id_user");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
	$idregis=$r['id_user'];
       echo "<tr><td>$no</td>
             <td>$r[username]</td>
             <td>$r[nama_lengkap]</td>
		         <td><a href=mailto:$r[email]>$r[email]</a></td>
             <td><a href=?module=user&act=edituser&id=$r[id_user]>Edit</a> | 
	                  <a href='#' onclick='cek();'>Hapus</a>
             </td></tr>";
      $no++;
    }
    echo "</table>";
    break;
  
  case "tambahuser":
    echo "<h2>Tambah User</h2>
          <form method=POST action='./aksi.php?module=user&act=input'>
          <table>
          <tr><td>Username</td>     <td> : <input type=text name='username'></td></tr>
          <tr><td>Password</td>     <td> : <input type=text name='password'></td></tr>
          <tr><td>Nama Lengkap</td> <td> : <input type=text name='nama_lengkap' size=30></td></tr>  
          <tr><td>E-mail</td>       <td> : <input type=text name='email' size=30></td></tr>
          <tr><td colspan=2><input type=submit value=Simpan>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form><br><br>";
     break;
    
  case "edituser":
    $edit=mysql_query("SELECT * FROM user WHERE id_user='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    echo "<h2>Edit User</h2>
          <form method=POST action=./aksi.php?module=user&act=update>
          <input type=hidden name=id value='$r[id_user]'>
          <table>
          <tr><td>Username</td>     <td> : <input type=text name='username' value='$r[username]'></td></tr>
          <tr><td>Password</td>     <td> : <input type=text name='password'> *) </td></tr>
          <tr><td>Nama Lengkap</td> <td> : <input type=text name='nama_lengkap' size=30  value='$r[nama_lengkap]'></td></tr>
          <tr><td>E-mail</td>       <td> : <input type=text name='email' size=30 value='$r[email]'></td></tr>
          <tr><td colspan=2>*) Apabila password tidak diubah, dikosongkan saja.</td></tr>
          <tr><td colspan=2><input type=submit value=Update>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
?>
<script type="text/javascript">
    function cek(){
    var msg = confirm("Apakah Anda yakin ?");
    if(msg==true){
    window.location="hapus_user.php?id=<?php echo "$idregis";?>";  
    }
    else{
    window.location="media.php?module=user";
    }
    }
    </script>