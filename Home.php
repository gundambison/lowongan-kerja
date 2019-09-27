<?php
session_start();
include"koneksi.php";
include"config/kodeauto.php";
include "config/fungsi_indotgl.php";
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bursa Kerja Batam 2019</title>
<meta name="keywords" content="lowongan kerja batam" />
<meta name="google-site-verification" content="0MdKZwMpHAZ64Qmj_zBEDRLitFOunPViQUZGAR9-tT4" />
<meta name="description" content="lowongan kerja batam dan bursa kerja batam 2019" />
<link href="style/style.css" rel="stylesheet" type="text/css" />
<link href="style/nav.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/logo2.png" />
<script type="text/javascript" src="nicEdit.js"></script>
<script type="text/javascript" src="time.js"></script>
<script type="text/javascript">
bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
	
function harusangka(jumlah){ // fungsi untuk harus angka pada text
  var karakter = (jumlah.which) ? jumlah.which : event.keyCode
  if (karakter > 31 && (karakter < 48 || karakter > 57))
    return false;

  return true;
}
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
    } if (errors) alert('The following error(s) occurred:\n'+errors);
    document.MM_returnValue = (errors == '');
} }
</script>
</head>
<body>
<div id="templatemo_container">
	<!-- Free Website Template by www.TemplateMo.com -->
    <div id="templatemo_header"><img src="images/header1.jpg" width='1050' height='215' /></div> 
    <!-- end of header -->
    
    
    <nav id="topNav">
        	<ul>
              <li><a href="./" ><img src="images/home.png" width='15' height='15' > Home</a></li>
              <li><a href="?page=profile" ><img src="images/user.ico" width='15' height='15' > &nbsp;Profile</a> </li>
              <li><a href="?page=contact" title="">&nbsp;&nbsp;&nbsp;<img src="images/contact.png" width='15' height='15' > &nbsp;Contact</a></li>
              <?
			  if(empty($_SESSION['username'])){
			  ?>
			  <li><a href="?page=registrasi"><img src="images/daftar.png" width='15' height='15' > Registrasi</a></li>
			  <?}else{}?>
			  <li><a href="?page=lowongan"><img src="images/lowongan.png" width='19' height='15' > Lowongan</a></li>
       	  </ul>
    </nav>
    <div id="templatemo_content" onfocus="MM_validateForm('username','','R');return document.MM_returnValue">    
    	<div id="content_left">
        	<div class="content_left_section">
            	
				<?php
				if(!empty($_SESSION['username'])){				
				?>
				<h3><img src="images/chat1.png" width='20' height='20' > Hallo <?echo$_SESSION['namalengkap'];?> !</h2>
                <div class='menu_left'><a href="./" class="last"><img src="images/left.png" width='15' height='10' > Home</a></div>
                <div class='menu_left'><a href="?page=setting_akun" class="last"><img src="images/left.png" width='15' height='10' > Setting Akun</a></div>
				<div class='menu_left'><a href="./logout.php" class="last"><img src="images/left.png" width='15' height='10' > Log Out</a></div>											
				<?php
				}else{
				?>
				<div class='menu_left'>&#187;Silahkan Login Disini</div>
				<form method="post" action="cek_login.php">
                        <table width='300' border='0'>
						<div class="form_row">
							<tr>
								<td width='110'>Email / User Name</td>
								<td>: </td>
								<td>
									<input name="username"  type="text" class="inputfield" id="username" style="width:140px;" required/>
								</td>
							</tr>
							<tr>
								<td>Level</td>
								<td>:</td>
								<td>
									<select name='level' style="width: 146px;" >
									<option value='user'>User</option>
									<option value='perusahaan'>Perusahaan</option>
									<option value='admin'>Admin</option>
									</select>
								</td>
							<tr>
								<td>Password</td>
								<td>:</td>
								<td>
									<input class="inputfield" name="password"  type="password" style="width: 140px;" required/>
								</td>
						  <tr> 
							  <td></td><td></td><td>
							  <br>&nbsp;<button type='submit'><img src="images/login.png" width='15' height='15' /> Masuk</button></div> </td>                       
                            </tr>
						  </div>
						</table>
          </form>  
				
				
				<?	
				}
				?>
				
				<div class='kotak_judul_left'>
				<div class='judul_left'><img src="images/lowongan.png" width='15' height='15' > Lowongan Terbaru</div>
				
				<marquee-off onmouseover=this.stop() height=250  onmouseout=this.start() BEHAVIOR=alternate  direction="down" >
				<?
				$tampil=mysql_query("SELECT * FROM lowongan,perusahaan where lowongan.id_perusahaan=perusahaan.id_perusahaan ORDER BY id_lowongan DESC limit 4");
				$no=1;
				while ($r=mysql_fetch_array($tampil)){
				$tgl=tgl_indo($r['tgl_lowongan']);
				?>
				<div class='isi_left'>
				<img src="foto_lowongan/<?php echo $r['foto'];?>" width='50' height='50' />
				<div class='title_perusahaan1'><b><? echo $r['nama_p'];?></b></div>
				<? echo $tgl;?> - <? echo $r['alamat'];?><br>
				<a href='?page=detail_lowongan&id=<? echo $r['id_lowongan'];?>&idp=<? echo $r['id_perusahaan'];?>'> Lihat Selengkapnya >> </a>
				</div>	
				<?
				}
				
				?>
				
				
				</marquee>				
				</div>
      </div> 
  </div> <!-- end of content left -->
        
        <div id="content_right">
        
        	<div class="content_right_section">
			
			<?php
			$page=$_GET['page'];
			if($page=='registrasi'){
			include"modul/mod_registrasi/registrasi.php";
			}
			else if($page=='view_registrasi'){
			include"modul/mod_registrasi/view_registrasi.php";
			}
			else if($page=='setting_akun'){
			include"modul/mod_registrasi/edit_akun.php";
			}
			else if($page=='profile'){
			include"profile.php";
			}
			else if($page=='contact'){
			include"contact.php";
			}
			else if($page=='lowongan'){
			include"lowongan.php";
			}
			else if($page=='cari_lowongan'){
			include"cari_lowongan.php";
			}
			else if($page=='detail_lowongan'){
			include"detail_lowongan.php";
			}
			else if($page=='info'){
			include"info_terbaru.php";
			}
			else if($page='home'){
			?>
            <div class="content_title_01">&#187; Selamat Datang di Bursa Kerja Batam 2019</div>
            <div class="content_right">
            
            <p class="judul_left"> <font size='4' class="title_bkk"  ><strong>BURSA KERJA BATAM
             </strong></font>       	    </p>
            <p class="isi_left"><strong>Kami adalah salah satu bursa kerja yang sudah mempunyai hubungan kerja sama dengan beberapa perusahaanyang brgerak di semua bidang  khususnya di daerah Batam yaitu di kawasan batam center, mukakuning, batu ampar, tanjung uncang, batu besar dan seluruh daerah yang ada dibatam.</strong></p>
            <p class="judul_left">---PROSEDUR YANG BERLAKU</p>
            <p class><strong>1. Jika ingin mendaftar lowongan yang ada pada bursa kerja kami , maka pencari kerja wajib daftar member.</strong></p>
            <p class><strong>2. Mengisi form member yang ada pada menu registrasi.</strong></p>
            <p class><strong>3. Pilih lowongan yang akan di daftar.</strong></p>
            <p class><strong>4. Kirim CV yang telah di upload.</strong></p>
            <p class><strong>5. Kirim Lamaran bisa menggunakan email yang tercantum di setiap persyaratan, bisa juga mengantarkan lamaran secara langsung.</strong></p>
            <p class><strong>5. Membawa persyaratan yang telah tercantum pada saat pelaksanaan tes sesuai loker yang telah dipilih.</strong></p>
            <p class>&nbsp;</p>
            </div>
       	    </div>
		<?}?>
        </div> <!-- end of content right -->
        
        <div class="cleaner">&nbsp;</div>
</div>
    
    <div id="templatemo_footer">
    Copyright &copy; 2019 Bursa Kerja Batam 2019  </div>
        <div style="clear: both; margin-top: 10px;">                
            <a href="http://validator.w3.org/check?uri=referer"></a>
            <a href="http://jigsaw.w3.org/css-validator/check/referer"></a>        </div> 
</div> <!-- end of footer -->
</body>
</html>