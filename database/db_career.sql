-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql210.byetcluster.com
-- Generation Time: Sep 24, 2019 at 10:53 AM
-- Server version: 5.6.45-86.1
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_24524368_career`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(17, 'Ferdi Hasan', 'ria@gmail.com', 'Ok', 'Mantapp', '2017-06-29'),
(18, 'wahyu', 'waahyuagungsantoso4@gmail.com', 'ww', 'ww', '2019-09-22');

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `id_lamaran` int(10) NOT NULL,
  `id_perusahaan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_registrasi` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_lowongan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `tgl_lamaran` date NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'Belum Dikonfirmasi'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `lamaran`
--

INSERT INTO `lamaran` (`id_lamaran`, `id_perusahaan`, `id_registrasi`, `id_lowongan`, `tgl_lamaran`, `status`) VALUES
(6, '1', 'RG000002', '3', '2014-04-30', 'Tidak Diterima'),
(7, '1', 'RG000002', '15', '2009-05-19', 'Belum Dikonfirmasi'),
(8, '18', 'RG000002', '7', '2016-05-16', 'Belum Dikonfirmasi'),
(9, '18', 'RG000003', '21', '2017-06-29', 'Diterima'),
(10, '18', 'RG000005', '21', '2019-09-22', 'Belum Dikonfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(10) NOT NULL,
  `id_perusahaan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `persaratan` text COLLATE latin1_general_ci NOT NULL,
  `tgl_lowongan` date NOT NULL,
  `user_posting` varchar(25) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `id_perusahaan`, `deskripsi`, `persaratan`, `tgl_lowongan`, `user_posting`) VALUES
(4, '19', 'This is a W3C standards compliant free website template from OS Templates. This template is distributed using a Website Template Licence, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer. For more CSS templates visit Free Website Templates. Morbitincidunt maurisque eros molest nunc anteget sed vel lacus mus semper. Anterdumnullam interdum ero', 'This is a W3C standards compliant free website template from OS \r\nTemplates. This template is distributed using a Website Template \r\nLicence, which allows you to use and modify the template for both \r\npersonal and commercial use when you keep the provided credit links in \r\nthe footer. For more CSS templates visit Free Website Templates. \r\nMorbitincidunt maurisque eros molest nunc anteget sed vel lacus mus \r\nsemper. Anterdumnullam interdum ero', '2014-04-22', 'Administrator'),
(21, '18', '<div style=\"text-align: center;\"><b style=\"font-size: medium;\">Loker Batam 23 September 2019 - PT Catepillar indonesia </b><span style=\"font-size: medium;\">The worlds leading manufacturer of constrution, mining equipment</span></div><div style=\"text-align: center;\"><font size=\"3\"><br></font></div><div style=\"text-align: center;\"><b><font size=\"3\">POSITION : QUALITY CLERK</font></b></div><div style=\"text-align: center;\"><b><font size=\"3\"><br></font></b></div><div style=\"text-align: center;\"><b><br></b></div>', '<font size=\"3\">Persyaratan :</font><div><font size=\"3\"><br></font></div><div><ul><li><font size=\"3\">Memiliki Minimal 1-2 Tahun pengalaman kerja</font></li><li><font size=\"3\">Fresh graduate dipersilahkan melamar</font></li><li><font size=\"3\">Dapat berbahasa inggris</font></li><li><font size=\"3\">Berpengalaman bekerja di lingkungan perkantoran</font></li><li><font size=\"3\">Perhatian kepada hal hal detail</font></li><li><font size=\"3\">Memiliki Kemampuan Komputer&nbsp;</font></li><li><font size=\"3\">Memiliki kemampuan berkomunikasi yang baik</font></li><li><font size=\"3\">Focus pada customer</font></li></ul><div><font size=\"3\"><br></font></div></div><div><font size=\"3\">Lamaran Di antar Ke&nbsp;</font></div><div><font size=\"3\"><br></font></div><div><font size=\"3\">Alamat Email Perusahaan:</font></div><div><font size=\"3\">HR Departement PT. Caterpillar Indonesia Batam</font></div><div><font size=\"3\">An. Herwin (ext 4727)<br>Jln Brigjen katamso KM. 6 Tanjung Uncang, Batam 29423</font></div>', '2017-06-27', 'Administrator'),
(8, '20', 'This is a W3C standards compliant free website template from OS \r\nTemplates. This template is distributed using a Website Template \r\nLicence, which allows you to use and modify the template for both \r\npersonal and commercial use when you keep the provided credit links in \r\nthe footer. For more CSS templates visit Free Website Templates. \r\nMorbitincidunt maur', 'rhyrtyrtyryrtyrty<br>', '2014-04-29', 'PT. Bank CIMB Niaga'),
(22, '21', '<font size=\"3\"><b style=\"\">Lowongan Kerja Batam Hari ini 23 September 2019&nbsp;- PT Rodamas Makmur&nbsp;</b>Motor atau indomobil Merupakan perusahaan yang bergerak dalam jasapenjualan kendaraan</font><div style=\"\"><font size=\"3\"><br></font></div><div style=\"\"><font style=\"\" size=\"3\"><b style=\"\">POSITION : STAFF IT</b></font></div>', '<div><font size=\"3\">Kualifikasi:</font></div><div><ul><li><font size=\"3\">Pria, Usia Maksimal 28 Tahun</font></li><li><font size=\"3\">Pendidikan Min D3 Jurusan Informatika</font></li><li><font size=\"3\">Memahami dasar pemograman dan database</font></li><li><font size=\"3\">Bisa Instalasi jaringan, troubleshoot, hardware dan software</font></li><li><font size=\"3\">Komunikatif, jujur, kreatif dan bertanggungjawab</font></li><li><font size=\"3\">Bisa bekerja dalam tim maupun individual</font></li><li><font size=\"3\">Bagi yang memenuhi syarat silahkan antarkan lamaran anda ke :</font></li></ul></div><div><font size=\"3\"><br></font></div><div><font size=\"3\">Alamat Email Perusahaan:</font></div><div><font size=\"3\">PT. Rodamas Makmur Motor</font></div><div><font size=\"3\">(Indomobil Batam)</font></div><div><font size=\"3\">Jl. Yos Sudarso, Sei Baloi</font></div><div><font size=\"3\"><br></font></div><div><font size=\"3\">Cantumkan posisi yang dilamar pada sudut kanan amplop</font></div>', '2019-09-22', 'Administrator'),
(26, '23', '<p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\"><b>Loker Batam 23 September 2019 â€“ PT. Sumitomo Wiring Systems batam</b>&nbsp;adalah salah satu anak perusahaan jepang dari sumitomo wiring systems co.ltd japan yang berpusat di jepang selain di Indonesia sumitomo wiring systems</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><o:p><font size=\"3\">&nbsp;</font></o:p></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Sumitomo Wiring Systems Batam membutuhkan dengan segera karyawan pria/wanita untuk bekerja sebagai:</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><o:p><font size=\"3\">&nbsp;</font></o:p></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\"><b>POSITION : GENERAL AFFAIR ADMIN OPERATOR</b></font></p>', '<p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Responsibility:</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">PIC for warehouse of uniform and stationery and ensure proper storage</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Responsible to distribute material or equipments to other section</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Responsible for stock taking material</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Responsible for the use of locker</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Assists Supervisor in filling and document control</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Assists Purchase/buy products that day operations</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><o:p><font size=\"3\">&nbsp;</font></o:p></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Requirements</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Female</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Good attitude, good communication and high integrity</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">Able to organize and prioritize constraints numerous task and complete under time</font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><o:p><font size=\"3\">&nbsp;</font></o:p></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\">For those who the qualifications as mentioned above, please register throught the following link no later that&nbsp;<b>26 september 2019</b></font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\"><b><br></b></font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\"><b>Alamat Email Perusahaan:<br></b></font></p><p class=\"MsoNormal\" style=\"font-size: 8px;\"><font size=\"3\"><b><a href=\"https://docs.google.com/forms/d/e/1FAIpQLSd7GI57FvFSi4GgTomMR2Q4lUHQqN0Hzk8bcYazwgF3sv9Buw/viewform\" title=\"\" target=\"_blank\">KLIK DISINI</a></b></font></p>', '2019-09-23', 'Lowongan Kerja Batam PT. '),
(25, '22', '<font size=\"3\"><b>Loker Batam 23 September 2019 - PT. Cicor panatec</b> we are the swiss company specialized electronics manufacturing and injection molding in batam</font><div><font size=\"3\"><br></font></div><div><font size=\"3\"><b>POSITION : SET UP MAN MOLD</b></font></div>', '<font size=\"3\">Syarat\"</font><div><ul><li><font size=\"3\">Laki Laki</font></li><li><font size=\"3\">Pendidikan Minimum SMU/SMK</font></li><li><font size=\"3\">Umur minimum 20 tahun</font></li><li><font size=\"3\">Melampirkan surat keterangan sehat dari dokter</font></li><li><font size=\"3\">Melampirkan fotocopy SKCK</font></li><li><font size=\"3\">KTP ASLI</font></li><li><font size=\"3\">Mencantumkan fotocopy KTP yang masih berlaku</font></li><li><font size=\"3\">Melampirkan daftar riwayat hidup</font></li><li><font size=\"3\">Ijazah fotocopy</font></li><li><font size=\"3\">Pengalaman Molding Min 2tahun</font></li><li><font size=\"3\">mengetahui spesifikasi Plastic Raw Material</font></li><li><font size=\"3\">bersedia shift</font></li></ul><div><font size=\"3\"><br></font></div></div><div><font size=\"3\">Lamaran Dikirim melalui email:</font></div><div><font size=\"3\">Alamat Email Perusahaan:</font></div><div><font size=\"3\"><b>hr.panatec@cicor.com&nbsp;</b></font></div><div><font size=\"3\"><br></font></div><div><font size=\"3\"><b>Paling lambat kamis 26 september 2019</b></font></div>', '2019-09-23', 'Lowongan Kerja Batam PT. '),
(27, '24', '<font size=\"3\"><span style=\"font-family: Roboto, Arial, sans-serif;\"><b>PT. Alfa Scrpii merupakan dedeler Sepeda motor merk YAMAHA</b> untuk daerah, Sumut. NAD. Riau Daratan. Riau Kepulauan. Saat ini PT. Alfa Scapii</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><span style=\"font-family: Roboto, Arial, sans-serif;\">dudah mimiliki 37 cabang daaler.</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"></font><div id=\"kode-iklan-tengah1\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, sans-serif; vertical-align: baseline; max-height: 1e+07em; text-align: center;\"><ins class=\"adsbygoogle\" data-ad-layout=\"in-article\" data-ad-format=\"fluid\" data-ad-client=\"ca-pub-2291612240429362\" data-ad-slot=\"7652368433\" data-adsbygoogle-status=\"done\" data-overlap-observer-io=\"false\" style=\"margin: 20px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em; display: block; height: 0px;\"><ins id=\"aswift_1_expand\" style=\"margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em; display: inline-table; height: 0px; position: relative; visibility: visible; width: 675px; background-color: transparent;\"><ins id=\"aswift_1_anchor\" style=\"margin: 0px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em; display: block; height: 0px; position: relative; visibility: visible; width: 675px; background-color: transparent; overflow: hidden; opacity: 0;\"><font size=\"3\"><iframe width=\"675\" height=\"169\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" vspace=\"0\" hspace=\"0\" allowtransparency=\"true\" scrolling=\"no\" allowfullscreen=\"true\" id=\"aswift_1\" name=\"aswift_1\" style=\"margin: 0px; padding: 0px; border-width: 0px; border-style: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 675px; height: 169px;\"></iframe></font></ins></ins></ins></div><font size=\"3\"><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><span style=\"font-family: Roboto, Arial, sans-serif;\">Saat ini membutukan tenaga muda/i untuk bergabung Besama.</span></font>', '<font size=\"3\"><b style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, sans-serif; vertical-align: baseline; max-height: 1e+07em;\">SUPERVISOR AREA</b><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><span style=\"font-family: Roboto, Arial, sans-serif;\">Kualifikasi :</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"></font><ul style=\"margin: 0.5em 0em 0.5em 3em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.4em; font-family: Roboto, Arial, sans-serif; vertical-align: baseline; max-height: 1e+07em;\"><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Pria, Usia 23 - 35 tahun.</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Pengala man minimal 2 tahun bidang marketing/penjualan.</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Memiliki Kendaraan sendiri</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Memiliki SIM C &amp; SIM A (Lebih diutamakan).</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Bersedia Dinas Keluar Kota.</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Menguasal aplikasi Ms. Office.</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Bertanggung jawab dalam pengembangan area &amp; Riau Kepulauan.</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Diutamakan bisa berbahasa Mandarin Tiochiu).</font></li></ul><font size=\"3\"><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"></font><div id=\"kode-iklan-tengah2\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Roboto, Arial, sans-serif; vertical-align: baseline; max-height: 1e+07em; text-align: center;\"></div><font size=\"3\"><span style=\"font-family: Roboto, Arial, sans-serif;\">Peluang &amp; Fasilitas :</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"></font><ul style=\"margin: 0.5em 0em 0.5em 3em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.4em; font-family: Roboto, Arial, sans-serif; vertical-align: baseline; max-height: 1e+07em;\"><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">kesempatan menentukan karir dimasa depan.</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">kesempatan belajar berwirausaha.</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Insentif.</font></li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-height: 1e+07em;\"><font size=\"3\">Bonus Trip.</font></li></ul><font size=\"3\"><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><span style=\"font-family: Roboto, Arial, sans-serif;\">Kirim Berkas Lamaran Lengkap</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><span style=\"font-family: Roboto, Arial, sans-serif;\">(Surat larnaran. CV. Ijazah, FC Transkrip Nilai. KTP, FC SIM. FC Sertiflkat pendukun, pas Photo 3x4 1 tembar)</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><span style=\"font-family: Roboto, Arial, sans-serif;\">ke PT. Alfa Scorpii - Komp. Mahkota Raya Blok A No. 1-3 A,</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><span style=\"font-family: Roboto, Arial, sans-serif;\">Teluk Tering Batam Kota ( Simpang Vihara Maitreya)</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; font-family: Roboto, Arial, sans-serif;\"><span style=\"font-family: Roboto, Arial, sans-serif;\">email: riptap.alfacorpii@gmail.com | Mencantumkan KODE POSISI Pada kanan atas amplop</span></font>', '2019-09-23', 'Lowongan Kerja Alfa Scorp'),
(28, '25', '<span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\">PT. Alfa Scrpii merupakan dedeler Sepeda motor merk YAMAHA untuk daerah, Sumut. NAD. Riau Daratan. Riau Kepulauan. Saat ini PT. Alfa Scapii</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\">dudah mimiliki 37 cabang daaler.</span><div><span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><br></span></div><div><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><b style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Roboto, Arial, sans-serif; vertical-align: baseline; max-height: 1e+07em; color: rgb(119, 119, 119);\">SUPERVISOR AREA</b></div>', '<br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\">Kualifikasi :</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><ul style=\"margin: 0.5em 0em 0.5em 3em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: 1.4em; font-family: Roboto, Arial, sans-serif; vertical-align: baseline; max-height: 1e+07em; color: rgb(119, 119, 119);\"><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-height: 1e+07em;\">Pria, Usia 23 - 35 tahun.</li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-height: 1e+07em;\">Pengala man minimal 2 tahun bidang marketing/penjualan.</li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-height: 1e+07em;\">Memiliki Kendaraan sendiri</li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-height: 1e+07em;\">Memiliki SIM C &amp; SIM A (Lebih diutamakan).</li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-height: 1e+07em;\">Bersedia Dinas Keluar Kota.</li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-height: 1e+07em;\">Menguasal aplikasi Ms. Office.</li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-height: 1e+07em;\">Bertanggung jawab dalam pengembangan area &amp; Riau Kepulauan.</li><li style=\"margin: 0.5em 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-height: 1e+07em;\">Diutamakan bisa berbahasa Mandarin Tiochiu).</li></ul><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\">Kirim Berkas Lamaran Lengkap</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\">(Surat larnaran. CV. Ijazah, FC Transkrip Nilai. KTP, FC SIM. FC Sertiflkat pendukun, pas Photo 3x4 1 tembar)</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\">ke PT. Alfa Scorpii - Komp. Mahkota Raya Blok A No. 1-3 A,</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\">Teluk Tering Batam Kota ( Simpang Vihara Maitreya)</span><br style=\"margin: 0px; padding: 0px; max-height: 1e+07em; color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(119, 119, 119); font-family: Roboto, Arial, sans-serif; font-size: 16px;\">email: riptap.alfacorpii@gmail.com | Mencantumkan KODE POSISI Pada kanan atas amplop</span>', '2019-09-23', 'Lowongan Kerja Alfa Scorp'),
(29, '27', 'Loker Batam 24 September 2019 - PT Plasmotech Batam Is Field or plastic injection moulding located in batam center<div><br></div><div>dibutuhkan segera</div><div><br></div><div>position : Molding Techician</div>', 'General Requirement are<div><ul><li>E KTP</li><li>Minimal SMA</li><li>Must Have Experince min 2 year in plastic injection molding</li><li>able to responsible for all aspects or the injection molding process including, but not limited to, setup, troubleshooting, equipment maintenance and process</li><li>able to working with production team</li></ul><div>please sent your resume &amp; updated CV to:</div></div><div><br></div><div>Alamat Email Perusahaan:</div><div>PT. Plasmotech Batam</div><div>Exeutive Industrial Park Blok D4 Lot. 17-18</div><div>Batam Centre</div><div><br></div><div>Berlaku hingga 22 s/d 29 september 2019</div>', '2019-09-24', 'Lowongan Kerja Batam PT. '),
(30, '28', 'Lowongan Kerja Batam 24 September 2019 - PT Mitra Solusi Teknindo adalah perusahaan baja dan permesinan.<div><br></div><div>Mitra Solusi Teknindo mencari kandidat yang cocok untuk mengisi posisi di bawah ini :</div><div>a</div><div><br></div><div><b>POTISION : MANUAL, TURNING OPERATOR ( Manual Bubut Operator)</b></div><div><br></div>', 'Dengan Syarat :<div><ul><li>Laki laki</li><li>Minimal Tamatan SMK/SMA sederajat</li><li>Memiliki pengalaman kerja minimal 2 tahun di bidang yang asma</li><li>bertanggung jawab, jujur , setia dan memiliki motivasi yang tinggi</li></ul><div><br></div></div><div>Kirim CV dan surat lamaran ke:</div><div><br></div><div>Alamat Email Perusahaan :</div><div>PT. Mitra Solusi Teknindo</div><div>Executive Industrial Estate Blok D1 NO.2</div><div>Batam Centre</div><div><br></div><div>Email: herliana@mitrasolusiteknindo.com</div>', '2019-09-24', 'Lowongan Kerja Batam PT. ');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(8) NOT NULL,
  `nama_p` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_daftar` date NOT NULL,
  `alamat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `wilayah` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tlp` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_p`, `tgl_daftar`, `alamat`, `wilayah`, `email`, `tlp`, `password`, `foto`) VALUES
(28, 'Lowongan Kerja Batam PT. Mitra Solusi Teknindo', '2019-09-24', 'Exeutive Industrial Estate Blok D1 No 2', 'Batam', 'herliana@mitrasolusiteknindo.com', '-', '2ecdf565d44933226cc6709c761c0acd', '2323.PNG'),
(27, 'Lowongan Kerja Batam PT. Plasmotech', '2019-09-24', 'Exeutive Industrial Park Blok D4 Lot 17-18', 'Batam', 'plasmotech', '-', '2ecdf565d44933226cc6709c761c0acd', '2323.PNG'),
(18, 'Lowongan Kerja PT. Caterpillar Indonesia Batam', '2019-09-22', 'Jl. Brigjend Katamso KM. 6 tanjung ucang batam', 'Batam', 'toyota@gmail.com', 'an. herwin (ext', 'd41d8cd98f00b204e9800998ecf8427e', 'Caterpillar-Indonesia-Batam-kerjabatamcom.jpg'),
(21, 'Lowongan Kerja Batam PT. Rodamas Makmur Motor', '2019-09-22', 'JL. Yos Sudarso, Sei Balo', 'Batam', 'indomobil', '-', '31dbdfd30e6c7af47df4294ad8474479', 'rodamas.jpg'),
(22, 'Lowongan Kerja Batam PT. Cicor Panatec', '2019-09-23', 'kawasan industri muka kuning', 'Batam', 'hr.panatec@cicor.com', '-', 'c997221578a29cbf4640441792b2950c', 'Cicor-Panatec-kerjabatamcom.jpg'),
(23, 'Lowongan Kerja Batam PT. Sumitomo Wiring Systems', '2019-09-23', 'kawasan industri muka kuning', 'Batam', '-', '-', '2bc8b302311fac411eb53970655277dd', 'Sumitomo-Wiring-Systems-Batam-Indonesia-kerjabatamcom.jpg'),
(25, 'Lowongan Kerja Alfa Scorpii ', '2019-09-23', 'Komp. Mahkota Raya Blok A No. 1-3 A', 'Batam', 'riptap.alfacorpii@gmail.com', '-', '2ecdf565d44933226cc6709c761c0acd', 'Lowongan-Kerja-ALFAp-SCORPII.jpg'),
(29, 'Lowongan Kerja Batam PT. JP Technology (2 Posisi)', '2019-09-24', 'Jl. Ahmad yani B3 Lot 2 Mukakuning 29433', 'Batam', 'JP', '-', '2ecdf565d44933226cc6709c761c0acd', '2323.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `id_registrasi` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `jk` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `tmp_lahir` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `umur` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `nohp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tamatan` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `jurusan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ipk` float NOT NULL,
  `lampiran` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `registrasi`
--

INSERT INTO `registrasi` (`id_registrasi`, `nama_lengkap`, `jk`, `tmp_lahir`, `tgl_lahir`, `umur`, `alamat`, `nohp`, `tamatan`, `jurusan`, `ipk`, `lampiran`, `email`, `password`, `foto`) VALUES
('RG000003', 'Joko', 'pria', 'Padang', '1984-05-04', '15', 'Padang', '082170664477', 'S1', 'Teknik Informatika', 3.25, 'tes.PNG', 'padang@gmail.com', '12345', 'grafik al.PNG'),
('RG000004', 'Syukri Erwin', 'pria', 'Padang', '1993-09-08', '17', 'Padang', '082170214455', 'S1', 'Teknik Informatika', 3.25, '1495528397282.jpg', 'vendry_bb@yahoo.com', '12345678', '20613543.png'),
('RG000005', 'Wahyu Agung', 'pria', 'Batam', '1994-05-28', '17', 'Tiban 1 ', '081374726311', 'D4', 'Multimedia dan Jaringan', 3.5, 'CV.pdf', 'wahyumaco@gmail.com', 'sayangkamu', 'Pas Photo 3x4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@web.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD PRIMARY KEY (`id_lamaran`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id_registrasi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lamaran`
--
ALTER TABLE `lamaran`
  MODIFY `id_lamaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
