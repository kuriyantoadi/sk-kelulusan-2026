-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2026 at 10:52 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skl2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`, `status`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `id_kompetensi_keahlian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `id_kompetensi_keahlian`) VALUES
(1, 'XII AKL 1', 5),
(2, 'XII AKL 2', 5),
(3, 'XII TKJ 1', 6),
(4, 'XII TKJ 2', 6),
(5, 'XII OTKP 1', 7),
(6, 'XII OTKP 2', 7),
(7, 'XII RPL 1', 10),
(8, 'XII RPL 2', 10),
(9, 'XII TKR 1', 9),
(10, 'XII TKR 2', 9),
(11, 'XII TPM 1', 8),
(12, 'XII TPM 2', 8),
(13, 'XII TPM 3', 8),
(14, 'XII TPM 4', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kompetensi_keahlian`
--

CREATE TABLE `tb_kompetensi_keahlian` (
  `id_kompetensi_keahlian` int(11) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `paket_keahlian` varchar(50) NOT NULL,
  `jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kompetensi_keahlian`
--

INSERT INTO `tb_kompetensi_keahlian` (`id_kompetensi_keahlian`, `program_keahlian`, `paket_keahlian`, `jurusan`) VALUES
(5, 'Akuntansi dan Keuangan', 'Akuntansi dan Keuangan Lembaga', 'bismen'),
(6, 'Teknik Komputer dan Informatika', 'Teknik Komputer dan Jaringan', 'teknologi'),
(7, 'Manajemen Perkantoran', 'Otomatisasi dan Tata Kelola Perkantoran', 'bismen'),
(8, 'Teknik Mesin', 'Teknik Pemesinan', 'teknologi'),
(9, 'Teknik Otomotif', 'Teknik Kenderaan Ringan Otomotif ', 'teknologi'),
(10, 'Teknik Komputer dan Informatika', 'Rekayasa Perangkat Lunak', 'teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil_sekolah`
--

CREATE TABLE `tb_profil_sekolah` (
  `profil_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `tahun_ajaran_awal` varchar(5) NOT NULL,
  `tahun_ajaran_akhir` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profil_sekolah`
--

INSERT INTO `tb_profil_sekolah` (`profil_sekolah`, `nama_sekolah`, `tahun_ajaran_awal`, `tahun_ajaran_akhir`) VALUES
(1, 'SMKN 1 Kragilan', '2024', '2025');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa_bismen`
--

CREATE TABLE `tb_siswa_bismen` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `nama_org_tua` varchar(50) NOT NULL,
  `nis_siswa` varchar(15) NOT NULL,
  `nisn_siswa` varchar(15) NOT NULL,
  `pai` int(11) NOT NULL,
  `pkn` int(11) NOT NULL,
  `b_ind` int(11) NOT NULL,
  `mtk` int(11) NOT NULL,
  `sejindo` int(11) NOT NULL,
  `b_ing` int(11) NOT NULL,
  `senbud` int(11) NOT NULL,
  `pjok` int(11) NOT NULL,
  `mulok` int(11) NOT NULL,
  `simdig` int(11) NOT NULL,
  `ekonomi_bisnis` int(11) NOT NULL,
  `administrasi_umum` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `dasar_program_keahlian` int(11) NOT NULL,
  `kompetensi_keahlian` int(11) NOT NULL,
  `rata_rata` varchar(11) NOT NULL,
  `status_kelulusan` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_kelas` varchar(100) NOT NULL,
  `token` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_siswa_bismen`
--

INSERT INTO `tb_siswa_bismen` (`id_siswa`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `nama_org_tua`, `nis_siswa`, `nisn_siswa`, `pai`, `pkn`, `b_ind`, `mtk`, `sejindo`, `b_ing`, `senbud`, `pjok`, `mulok`, `simdig`, `ekonomi_bisnis`, `administrasi_umum`, `ipa`, `dasar_program_keahlian`, `kompetensi_keahlian`, `rata_rata`, `status_kelulusan`, `password`, `id_kelas`, `token`, `status`) VALUES
(1, 'ANGGI INDRIANI', 'Serang', '27 Oktober 2005', 'Asep Gunawan', '212210050', '0052516706', 81, 90, 85, 80, 80, 87, 83, 82, 80, 80, 84, 81, 81, 85, 83, '83', 'LULUS', '', '1', '72573715481727331669', 'siswa'),
(2, 'BELLA DESWITA SARI', 'Kotaagung', '22 Desember 2005', 'Bambang Berliansyah', '212210077', '0059958858', 83, 90, 85, 82, 85, 89, 87, 90, 85, 80, 83, 82, 85, 85, 84, '85', 'LULUS', '', '1', '46871265742313404874', 'siswa'),
(3, 'BUNGA DELIA FEBRIYANTI ', 'Jakarta', ' 12 Februari 2006', 'Dedy', '212210080', '0066450482', 84, 90, 85, 85, 85, 81, 89, 78, 80, 85, 84, 85, 83, 83, 84, '84', 'LULUS', '', '1', '12424616433871428853', 'siswa'),
(4, 'DEA APRILIA', 'Serang', '26 April 2005', 'Aprijal', '212210090', '0059235189', 84, 90, 85, 85, 85, 89, 81, 79, 85, 80, 83, 83, 83, 85, 84, '84', 'LULUS', '', '1', '48228715493823371557', 'siswa'),
(5, 'DESTI KOMARA PUTRI', 'Serang', '16 Desember 2006', 'Eko Sugianto', '212210096', '0067082682', 81, 90, 85, 78, 80, 83, 78, 82, 85, 80, 80, 81, 82, 83, 82, '82', 'LULUS', '', '1', '43699209162977247154', 'siswa'),
(6, 'DESY DESTRIANANDA', 'Serang', ' 5 Desember 2005', 'Marjan', '212210097', '0056728121', 79, 85, 80, 80, 80, 82, 79, 85, 80, 81, 82, 84, 80, 82, 82, '81', 'LULUS', '', '1', '63344790910056067328', 'siswa'),
(7, 'DEWI HARYANTI', 'Jakarta', ' 18 Januari 2006 ', 'Toni Haryanto', '212210098', '0063691161', 80, 90, 85, 82, 85, 84, 89, 82, 80, 81, 82, 80, 82, 82, 82, '83', 'LULUS', '', '1', '42429803071570130877', 'siswa'),
(8, 'DUMYATI', 'Serang', ' 9 November 2005', 'Keming', '212210103', '0053268751', 80, 90, 80, 78, 80, 84, 90, 82, 80, 80, 81, 80, 80, 85, 82, '82', 'LULUS', '', '1', '55176479120924556687', 'siswa'),
(9, 'DWI MUHARROMAH', 'Serang', ' 31 Januari 2006', 'Ahmad Tabriji', '212210104', '0062542572', 80, 90, 85, 85, 85, 85, 90, 84, 80, 83, 82, 81, 80, 89, 83, '84', 'LULUS', '', '1', '89206233697530801985', 'siswa'),
(10, 'EKA AMELIA', 'Serang', ' 6 Mei 2006', 'Ade Setiawan', '212210111', '0066138671', 90, 90, 88, 82, 85, 89, 87, 92, 88, 85, 82, 81, 83, 89, 84, '86', 'LULUS', '', '1', '57975103404668839024', 'siswa'),
(11, 'ELSA NUARI DAMAYANTI', 'Serang', '25 Januari 2006', 'Samroi', '212210113', '0069585715', 83, 90, 85, 85, 85, 81, 90, 90, 90, 83, 85, 83, 82, 83, 83, '85', 'LULUS', '', '1', '04247536099706135178', 'siswa'),
(12, 'FEBBY AYU LESTARI', 'Serang', '28 Februari 2006', 'Soiyah', '212210134', '0068978194', 88, 90, 87, 85, 85, 89, 87, 92, 85, 84, 84, 84, 83, 90, 85, '87', 'LULUS', '', '1', '40491310076767976061', 'siswa'),
(13, 'FIRLY MAULANA', 'Serang', '15 September 2005', 'Adi Supriadi', '212210146', '0056324401', 87, 90, 85, 78, 80, 85, 81, 80, 80, 84, 80, 80, 78, 83, 80, '82', 'LULUS', '', '1', '14271947451396449839', 'siswa'),
(14, 'FISKA APRILIA RAHMAWATI', 'Sleman', '6 April 2006', 'Kistono', '212210148', '0064742862', 81, 90, 85, 80, 85, 83, 78, 80, 80, 85, 81, 80, 79, 83, 81, '82', 'LULUS', '', '1', '27718303584035532932', 'siswa'),
(15, 'HUSNUL HOTIMAH', 'Serang', '23 Maret 2005', 'Jasmani', '212210166', '0057839365', 82, 90, 85, 80, 85, 84, 83, 78, 80, 82, 86, 85, 86, 85, 86, '84', 'LULUS', '', '1', '16732665985615396073', 'siswa'),
(16, 'INTAN NURAENI', 'Cianjur', '20 Mei 2006', 'Khasuri', '212210180', '0064784629', 84, 90, 85, 82, 85, 86, 87, 82, 80, 82, 85, 83, 82, 86, 84, '84', 'LULUS', '', '1', '70837641055635828687', 'siswa'),
(17, 'ITA ROSITA', 'Serang', '29 November 2006', 'H.Syafe\'I', '212210190', '0061699408', 85, 90, 85, 82, 85, 81, 78, 85, 80, 82, 83, 83, 82, 85, 83, '83', 'LULUS', '', '1', '56794191712585206627', 'siswa'),
(18, 'KUSNIYAH', 'Serang', '3 Agustus 2006', 'Guniwan', '212210212', '0069784644', 78, 85, 85, 80, 85, 83, 79, 78, 80, 82, 82, 80, 80, 80, 80, '81', 'LULUS', '', '1', '84055093726035497035', 'siswa'),
(19, 'MARINA OKTAVIAWATI', 'Serang', '28 Oktober 2005', 'Marjuki', '212210240', '0054640585', 80, 90, 85, 80, 85, 89, 89, 82, 80, 84, 84, 80, 82, 84, 83, '84', 'LULUS', '', '1', '66256266759158499054', 'siswa'),
(20, 'MAULIDA LESTARI', 'Serang', '22 Mei 2005', 'Hidayat', '212210250', '0057714851', 82, 85, 85, 82, 85, 82, 83, 82, 85, 83, 84, 83, 82, 83, 83, '83', 'LULUS', '', '1', '97892819815928565938', 'siswa'),
(21, 'NADINE ATIQA FAIRUZIA', 'Serang', ' 15 Juli 2006', 'Zulfan', '212210324', '0062007988', 83, 90, 80, 85, 85, 82, 87, 90, 80, 82, 84, 84, 84, 83, 84, '84', 'LULUS', '', '1', '58783597946791710742', 'siswa'),
(22, 'NAJMAH MUDIYAH', 'Serang', '15 Juli 2006', 'Ahyar', '212210326', '0065611448', 86, 90, 85, 85, 85, 78, 90, 83, 80, 84, 81, 80, 80, 84, 81, '83', 'LULUS', '', '1', '15744759064238230745', 'siswa'),
(23, 'NAJWA LAODYA RIDWAN', 'Serang', '31 Juli 2006', 'M Ridwan', '212210328', '0069465539', 84, 90, 85, 90, 88, 90, 89, 85, 88, 83, 85, 85, 83, 90, 86, '87', 'LULUS', '', '1', '96216642853437443773', 'siswa'),
(24, 'NANDA SAFITRI', 'Jakarta', '13  September 2006', 'Untung Triono', '212210329', '0062740172', 83, 90, 80, 88, 87, 89, 82, 85, 80, 84, 80, 80, 80, 83, 81, '83', 'LULUS', '', '1', '37032852003948493499', 'siswa'),
(25, 'NAZILA KARTIKA', 'Lampung', '2 Agustus 2006', 'Zulkarnain', '212210338', '0063550941', 83, 90, 85, 85, 86, 89, 78, 90, 85, 86, 83, 82, 83, 86, 84, '85', 'LULUS', '', '1', '53042591199863592115', 'siswa'),
(26, 'NIA KURNIAWATI', 'Serang', '16 Januari 2006', 'Sakua', '212210341', '0061976855', 81, 90, 85, 82, 85, 89, 78, 85, 85, 85, 81, 80, 81, 83, 81, '83', 'LULUS', '', '1', '03214412632973473490', 'siswa'),
(27, 'NIKY ELIZA DWI ANGGRAENI', 'Serang', ' 24 Juni  2006', 'Solichin', '212210342', '0069538472', 83, 90, 85, 90, 88, 84, 87, 77, 80, 85, 81, 82, 85, 88, 84, '85', 'LULUS', '', '1', '81100981142885049401', 'siswa'),
(28, 'NUFIA DWI AGUSTIN', 'Serang', '6 Nopember 2006', 'Agus', '212210350', '0066470516', 85, 90, 87, 82, 85, 81, 78, 79, 85, 85, 85, 84, 82, 85, 84, '84', 'LULUS', '', '1', '09391654711270684640', 'siswa'),
(29, 'NUR WIDIATUN NADIYAH', 'Serang', '16 April 2006', 'Entis Sutisna', '212210354', '0061822359', 80, 90, 85, 80, 85, 88, 85, 79, 85, 86, 83, 83, 85, 84, 84, '84', 'LULUS', '', '1', '74204040942324805645', 'siswa'),
(30, 'RIFKI FEBRIANSYAH', 'Serang', '3 Februari 2006', 'Munajah', '212210395', '0067908520', 86, 90, 85, 80, 85, 89, 89, 85, 80, 86, 81, 80, 82, 84, 82, '84', 'LULUS', '', '1', '10807001504268872534', 'siswa'),
(31, 'ROBI\'ATUL ADAWIYAH', 'Serang', '9 Desember 2006', 'Syarifan', '212210415', '3061955999', 84, 90, 85, 80, 85, 80, 85, 80, 80, 85, 82, 81, 81, 83, 82, '83', 'LULUS', '', '1', '02375810926189912597', 'siswa'),
(32, 'SERLIYANAH', 'Serang', '10 Mei 2005', 'Mastiyah', '212210447', '0052587589', 80, 90, 85, 85, 86, 80, 89, 75, 80, 82, 82, 81, 80, 84, 82, '83', 'LULUS', '', '1', '04627269875899513607', 'siswa'),
(33, 'SIFA RATU AYU ROHMAWATI', 'Serang', '10 Maret 2006', 'Sirun', '212210449', '0066265421', 83, 90, 85, 82, 85, 89, 87, 85, 80, 83, 85, 85, 86, 85, 85, '85', 'LULUS', '', '1', '10505747815463003982', 'siswa'),
(34, 'SUHERNI', 'Serang', '25 September 2006', 'Sueli', '212210480', '0069396413', 92, 90, 88, 92, 88, 89, 90, 82, 85, 83, 86, 86, 84, 92, 87, '88', 'LULUS', '', '1', '58113867091099394104', 'siswa'),
(35, 'SULFI KHOFIFAH', 'Serang', '13 Maret 2006', 'Umamah', '212210482', '0065743409', 83, 90, 80, 85, 87, 84, 83, 75, 80, 80, 82, 80, 81, 83, 82, '82', 'LULUS', '', '1', '99504693695552765805', 'siswa'),
(36, 'SYALWA MAULIDYA FEBRIYANTI', 'Tangerang', '12 Februari 2006', 'Iwan Budiawan', '212210494', '0062603669', 81, 87, 80, 85, 88, 81, 81, 90, 85, 83, 83, 80, 82, 84, 82, '83', 'LULUS', '', '1', '37937662142850702747', 'siswa'),
(37, 'ZASKIA MECCA', 'Tangerang', '5 Maret 2006', 'Aas Ilyas', '212210524', '0064095798', 88, 90, 80, 80, 85, 83, 82, 79, 85, 83, 82, 82, 82, 84, 83, '83', 'LULUS', '', '1', '86404790124628629918', 'siswa'),
(38, 'AJENG WIDIAH UTAMI', 'Tanggamus', '18 Mei 2006', 'Zuwawi', '212210032', '0062010159', 83, 90, 85, 80, 85, 86, 90, 78, 90, 80, 84, 83, 84, 85, 84, '84,5', 'LULUS', '', '2', '27470809781050256710', 'siswa'),
(39, 'ARUM ARNITA FITRI', 'Serang', '02 Oktober 2006', 'Gobi Suyatman', '212210065', '0065703599', 82, 90, 85, 80, 80, 82, 79, 82, 80, 80, 80, 81, 80, 80, 80, '81,4', 'LULUS', '', '2', '40327070921115790615', 'siswa'),
(40, 'CYNDI RAHMAWATI', 'Serang', '03 April 2006', 'Muhamad Ridwan', '212210082', '0062234875', 84, 90, 80, 82, 80, 82, 79, 80, 80, 80, 80, 80, 79, 80, 80, '81,0', 'LULUS', '', '2', '04290958283786051797', 'siswa'),
(41, 'DELIS ARYANI', 'Muara Enim', '20 Januari 2006', 'Wawan Gunawan', '212210094', '0056568772', 80, 87, 80, 85, 80, 78, 79, 75, 80, 80, 80, 80, 79, 83, 80, '80,4', 'LULUS', '', '2', '38868331553074414628', 'siswa'),
(42, 'DESI PERMATASARI', 'Serang', '26 Januari 2006', 'Sarmunah', '212210095', '0064329054', 82, 90, 80, 80, 80, 78, 86, 85, 87, 82, 82, 83, 81, 84, 83, '82,8', 'LULUS', '', '2', '78007597620267278996', 'siswa'),
(43, 'DIANA MARLIANA ', 'Serang', '04 Maret 2006', 'Dartam', '212210099', '0066766966', 80, 90, 85, 82, 85, 87, 82, 79, 83, 83, 84, 84, 80, 88, 84, '83,7', 'LULUS', '', '2', '82679817945066035379', 'siswa'),
(44, 'DWI PUTRI ANGGRAENI', 'Serang', '09 Januari 2007', 'Suminah', '212210105', '0079980165', 90, 90, 85, 82, 85, 92, 90, 80, 90, 86, 86, 84, 84, 90, 86, '86,7', 'LULUS', '', '2', '08606720144978160151', 'siswa'),
(45, 'FIDIA CAHYANI', 'Serang', '22 Maret 2006', 'Sarpali', '212210142', '0062985221', 83, 90, 80, 78, 80, 82, 84, 84, 85, 82, 82, 83, 80, 80, 81, '82,3', 'LULUS', '', '2', '66883650401355778756', 'siswa'),
(46, 'HANI INDIANTI', 'Cilacap', '19 Maret 2006', 'Hendri', '212210158', '0069604331', 91, 90, 88, 90, 86, 90, 90, 85, 90, 84, 87, 86, 86, 85, 86, '87,6', 'LULUS', '', '2', '58811321543385745942', 'siswa'),
(47, 'IMAM HANAFI', 'Serang', '11 September 2006', 'Irig', '212210173', '0067116385', 88, 87, 85, 85, 85, 87, 90, 85, 90, 82, 85, 83, 81, 82, 82, '85,1', 'LULUS', '', '2', '31310244239274127710', 'siswa'),
(48, 'INDANA HALWAH RAQIQAH', 'Klaten', '14 Mei 2006', 'Amsori, S.Kom', '212210178', '0063008950', 90, 90, 88, 92, 86, 92, 90, 88, 90, 84, 88, 86, 88, 87, 87, '88,4', 'LULUS', '', '2', '08052500972338906667', 'siswa'),
(49, 'ISMI AGUSTIRA', 'Serang', '03 Agustus 2006', 'Idris Sardi', '212210187', '0069308779', 83, 90, 80, 90, 80, 85, 82, 85, 83, 86, 82, 82, 80, 85, 80, '83,5', 'LULUS', '', '2', '81176065828568824590', 'siswa'),
(50, 'JAISY AZKA FIDINI', 'Serang', '27 Oktober 2005', 'Agung Marwanto', '212210192', '0056301215', 83, 90, 85, 85, 85, 78, 90, 85, 90, 82, 83, 83, 82, 85, 83, '84,6', 'LULUS', '', '2', '28256207860760430712', 'siswa'),
(51, 'LIA RAHAYU', 'Serang', '26 April 2006', 'Rohiyah', '212210220', '0062733066', 81, 90, 85, 82, 80, 89, 88, 88, 88, 83, 83, 81, 81, 84, 82, '84,3', 'LULUS', '', '2', '67408413127707408836', 'siswa'),
(52, 'LIDIA NING TIAS', 'Serang', '04 Februari 2006', 'Tarwad', '212210221', '0063522466', 86, 90, 85, 80, 85, 89, 86, 82, 87, 82, 84, 82, 83, 85, 83, '84,6', 'LULUS', '', '2', '85470126901837788351', 'siswa'),
(53, 'LUSYANA SAFARA', 'Serang', '19 September 2005', 'Bayu Suroso', '212210225', '0055903662', 84, 90, 85, 82, 82, 88, 84, 82, 85, 83, 83, 81, 81, 82, 81, '83,6', 'LULUS', '', '2', '71408485384747562370', 'siswa'),
(54, 'MARCELIA PUTRI', 'Serang', '09 Maret 2006', 'Marjuki', '212210238', '0065526783', 84, 90, 85, 85, 85, 90, 79, 85, 80, 82, 85, 83, 82, 87, 84, '84,4', 'LULUS', '', '2', '38855007324466928781', 'siswa'),
(55, 'MARWATIL FARIHAH', 'Serang', '02 Juni 2005', 'Sukrani', '212210244', '0059581306', 80, 90, 85, 85, 84, 90, 84, 85, 85, 84, 82, 83, 80, 87, 80, '84,3', 'LULUS', '', '2', '87278649896669376110', 'siswa'),
(56, 'MELODI', 'Serang', '20 Juli 2004', 'Sutikah', '212210256', '0044203901', 91, 90, 85, 82, 85, 85, 79, 80, 80, 83, 84, 81, 80, 82, 81, '83,2', 'LULUS', '', '2', '05824001736590222728', 'siswa'),
(57, 'MUHAMAD KHAENDAR', 'Serang', '03 Maret 2006', 'H. Kamsin', '212210277', '0056461451', 80, 90, 85, 78, 80, 78, 79, 82, 80, 85, 80, 81, 80, 84, 82, '81,6', 'LULUS', '', '2', '35809959398317338445', 'siswa'),
(58, 'MUTIARA AMALINA', 'Bumi Restu', '04 September 2006', 'Nofrizal', '212210315', '0066622096', 91, 90, 85, 80, 86, 80, 88, 88, 89, 86, 87, 84, 84, 88, 85, '86,1', 'LULUS', '', '2', '27414797406993633769', 'siswa'),
(59, 'NABILA ARIS', 'Sekru', '02 Desember 2006', 'Aris Toha', '212210320', '0056246879', 80, 90, 85, 82, 85, 80, 82, 80, 85, 85, 84, 80, 80, 85, 82, '83,0', 'LULUS', '', '2', '18975897237293493200', 'siswa'),
(60, 'PANJI MUHAMMAD RAYSHA', 'Pati', '02 Juli 2006', 'John Venny', '212210365', '0066658928', 81, 90, 85, 78, 82, 83, 90, 83, 90, 82, 82, 82, 80, 84, 80, '83,5', 'LULUS', '', '2', '28142469336493751135', 'siswa'),
(61, 'REVALINA KHOLIYAH PUTRI', 'Serang', '30 Juli 2006', 'Sobari', '212210389', '0069092725', 81, 90, 85, 85, 80, 78, 79, 82, 80, 82, 80, 81, 79, 80, 80, '81,5', 'LULUS', '', '2', '15585891621801118410', 'siswa'),
(62, 'RINI RAHMAWATI', 'Serang', '16 November 2004', 'Kusni', '212210398', '0042891489', 80, 87, 85, 82, 80, 78, 82, 82, 83, 82, 80, 80, 79, 80, 80, '81,3', 'LULUS', '', '2', '98991157239509621662', 'siswa'),
(63, 'RISKA INDAH SARI', 'Serang', '23 Mei 2006', 'Rasyid', '212210399', '0068594213', 91, 90, 85, 80, 83, 89, 79, 79, 80, 83, 82, 82, 81, 84, 82, '83,4', 'LULUS', '', '2', '75389692756502360423', 'siswa'),
(64, 'RIZKI FEBRIANSYAH', 'Serang', '03 Februari 2006', 'Munajah', '212210410', '0061855035', 84, 90, 85, 78, 82, 88, 79, 82, 80, 84, 81, 82, 80, 87, 83, '83,0', 'LULUS', '', '2', '37430621210839526156', 'siswa'),
(65, 'SAPINAH', 'Serang', '26 Desember 2006', 'Saparudin', '212210437', '0065238852', 85, 90, 85, 80, 85, 90, 79, 78, 80, 85, 84, 82, 82, 85, 83, '83,5', 'LULUS', '', '2', '06714619878147283638', 'siswa'),
(66, 'SELPI UMAROH ', 'Serang', '08 Januari 2006', 'Suproni', '212210444', '0068410671', 81, 90, 85, 80, 85, 84, 84, 80, 85, 85, 83, 81, 83, 81, 82, '83,2', 'LULUS', '', '2', '09320290799587229046', 'siswa'),
(67, 'SINTIA', 'Serang', '03 Februari 2004', 'Siti Aminah', '212210450', '0049029957', 85, 90, 85, 80, 84, 89, 90, 82, 90, 83, 83, 82, 82, 87, 84, '85,0', 'LULUS', '', '2', '80107511843451569908', 'siswa'),
(68, 'SISKA', 'Serang', '01 Juli 2006', 'Tikah', '212210452', '0065890392', 82, 90, 85, 82, 83, 84, 79, 82, 80, 84, 81, 80, 82, 83, 82, '82,6', 'LULUS', '', '2', '35489610313325574482', 'siswa'),
(69, 'SITI MARLENI', 'Serang', '08 Juni 2005', 'Suneni', '212210461', '0058946232', 83, 90, 85, 82, 83, 78, 79, 80, 80, 80, 82, 81, 82, 82, 82, '81,9', 'LULUS', '', '2', '29499198081293678958', 'siswa'),
(70, 'SITI MARYAM FERDIAWATI', 'Jakarta', '14 Maret 2005', 'Kapidin', '212210462', '0054146514', 90, 90, 88, 85, 86, 88, 90, 82, 90, 82, 86, 85, 85, 84, 85, '86,4', 'LULUS', '', '2', '39065115988988998206', 'siswa'),
(71, 'SITI PATONAH', 'Serang', '21 Agustus 2006', 'Sangsang', '212210468', '0064456675', 89, 90, 85, 80, 85, 90, 90, 80, 90, 85, 86, 85, 83, 84, 84, '85,7', 'LULUS', '', '2', '36852713896194935743', 'siswa'),
(72, 'SURYATI', 'Serang', '27 April 2005', 'Amaliah', '212210491', '0053256054', 81, 90, 85, 82, 83, 83, 90, 85, 90, 85, 82, 83, 84, 84, 84, '84,7', 'LULUS', '', '2', '17271944379780772537', 'siswa'),
(73, 'SYIFAA NUUR AINI', 'Serang', '20 Juni 2006', 'M. Fakri', '212210497', '0066198874', 83, 90, 85, 82, 82, 83, 86, 83, 86, 85, 82, 81, 83, 84, 83, '83,8', 'LULUS', '', '2', '42003369641064147597', 'siswa'),
(74, 'ANGGI ANGGREANI', 'Pandeglang', '31 Oktober 2005', 'Edy Kartoyo Susanto', '212210049', '0057733773', 88, 88, 82, 80, 85, 85, 78, 80, 80, 80, 86, 86, 82, 85, 85, '83', 'LULUS', '', '5', '38748923532610081533', 'siswa'),
(75, 'ANISAH YULIYANTI', 'Serang', '18 Juli 2006', 'Ubaedilah', '212210056', '0062914111', 89, 88, 80, 85, 85, 88, 78, 80, 80, 84, 82, 82, 80, 82, 80, '83', 'LULUS', '', '5', '79565607033065080084', 'siswa'),
(76, 'ANNISA RAHMAN', 'Serang', '5 Juli 2006', 'Jarmantius', '212210057', '0062881345', 88, 89, 80, 80, 83, 89, 85, 85, 90, 85, 80, 80, 80, 95, 85, '85', 'LULUS', '', '5', '88466384840165463086', 'siswa'),
(77, 'APRILIA', 'Serang', ' 4 November 2006', 'Asmah', '212210059', '0058131511', 89, 88, 80, 82, 80, 85, 78, 82, 80, 82, 84, 85, 81, 90, 88, '84', 'LULUS', '', '5', '15512069928278235247', 'siswa'),
(78, 'ARYA BAGUS SADEWA', 'Serang', '21 Juli 2004', 'Subakri', '212210066', '0047672923', 85, 85, 79, 79, 80, 84, 78, 85, 80, 80, 80, 80, 80, 85, 83, '82', 'LULUS', '', '5', '02591947702207892486', 'siswa'),
(79, 'ASITTATUNNISA', 'Serang', '19 Februari 2006', 'Siti Maemunah', '212210069', '0061007974', 88, 88, 80, 83, 85, 85, 78, 87, 80, 80, 84, 85, 80, 90, 90, '84', 'LULUS', '', '5', '45196504170002722380', 'siswa'),
(80, 'ATTASYA SYAHARANY', 'Tangerang', '04 Juni 2005', 'Saidih', '212210071', '0051252425', 88, 88, 79, 84, 80, 85, 78, 84, 80, 82, 82, 83, 82, 83, 80, '83', 'LULUS', '', '5', '08313231386540276622', 'siswa'),
(81, 'DEDE ALIYANI', 'Serang', '12 Mei 2005', 'Rayi', '212210091', '0054319362', 89, 88, 82, 78, 80, 87, 89, 82, 89, 82, 84, 83, 83, 82, 84, '84', 'LULUS', '', '5', '71104938133906992222', 'siswa'),
(82, 'ETI PUSPITASARI', 'Serang', '27 Mei 2006', 'Sadim', '212210120', '0064313553', 88, 85, 80, 79, 80, 85, 78, 79, 80, 79, 80, 80, 80, 82, 80, '81', 'LULUS', '', '5', '78279087676897867824', 'siswa'),
(83, 'FATWA ANDINI LESTARI', 'Serang', '09 Mei 2006', 'Amin Nurahman', '212210132', '0057905292', 90, 90, 84, 83, 85, 90, 90, 85, 90, 80, 85, 85, 81, 83, 84, '86', 'LULUS', '', '5', '55062507530622918130', 'siswa'),
(84, 'FIKA HUTRIANI', 'Serang', '17 Agustus 2006', 'Dudi', '212210143', '0064676373', 89, 90, 80, 81, 85, 85, 90, 83, 90, 85, 86, 85, 82, 90, 88, '86', 'LULUS', '', '5', '31633403181522458042', 'siswa'),
(85, 'FIKI FAUZIAH NINGSIH', 'Serang', '29 Mei 2006', 'Ngadiyono', '212210144', '0062322393', 89, 87, 82, 80, 80, 89, 78, 85, 80, 86, 82, 83, 82, 85, 86, '84', 'LULUS', '', '5', '26904759255551034765', 'siswa'),
(86, 'GITA HENITA', 'Serang', ' 4 April 2006', 'Saefudin', '212210154', '0068006348', 87, 87, 79, 79, 80, 85, 78, 82, 80, 79, 80, 80, 79, 80, 80, '81', 'LULUS', '', '5', '09740341594642318881', 'siswa'),
(87, 'GITA RIYANA', 'Serang', '27 Maret 2006', 'Sam\'Un', '212210155', '0069861177', 87, 87, 79, 79, 80, 89, 78, 78, 80, 80, 80, 82, 82, 90, 90, '83', 'LULUS', '', '5', '59105786054031443445', 'siswa'),
(88, 'HAFIDOH', 'Serang', '15 Juni 2006', 'Ahmad Izudin', '212210157', '0067872479', 93, 88, 85, 84, 85, 89, 78, 85, 80, 82, 87, 87, 84, 82, 85, '85', 'LULUS', '', '5', '86610165644696712853', 'siswa'),
(89, 'HARAMISAEL PURBA', 'Kotabumi', '21 Agustus 2005', 'Asman Purba', '212210159', '0058525127', 80, 85, 79, 78, 80, 85, 78, 80, 80, 79, 80, 80, 78, 80, 80, '80', 'LULUS', '', '5', '20901095180977957038', 'siswa'),
(90, 'INTAN SINTIA WIJAYANTI', 'Subang', '18 Januari 2006', 'Rohmat', '212210181', '0062415295', 92, 90, 84, 0, 85, 87, 89, 78, 90, 86, 84, 83, 82, 84, 88, '86', 'LULUS', '', '5', '31352475272159726005', 'siswa'),
(91, 'JELITA MULYA NINGSIH', 'Serang', '18 Juni 2005', 'Kamdah', '212210199', '0057451300', 90, 88, 80, 79, 80, 85, 78, 78, 80, 80, 84, 85, 81, 82, 84, '82', 'LULUS', '', '5', '54561812493101030312', 'siswa'),
(92, 'JOHANA SAPIRA', 'Serang', '25 Januari 2006', 'Jatna', '212210201', '0061229476', 88, 90, 87, 82, 85, 90, 78, 80, 80, 83, 83, 84, 80, 83, 84, '84', 'LULUS', '', '5', '58775762632363357141', 'siswa'),
(93, 'KIKI NOSIFA SETYANA', 'Karanganyar', '4 Nopember 2005', 'Katno', '212210207', '0053168106', 89, 89, 80, 79, 83, 85, 80, 84, 82, 82, 82, 83, 83, 80, 80, '83', 'LULUS', '', '5', '72475317666667950460', 'siswa'),
(94, 'LAILA ISTIQOMAH', 'Serang', '23 Januari 2006', 'Moh. Tohir', '212210213', '0069269350', 89, 89, 80, 85, 80, 88, 82, 82, 84, 82, 82, 83, 81, 82, 85, '84', 'LULUS', '', '5', '57718886421350382587', 'siswa'),
(95, 'LEA RAMA SALIM', 'Folley', '08 September 2006', 'Agus Salim', '212210215', '0066906484', 78, 88, 80, 79, 80, 85, 85, 84, 87, 79, 82, 85, 80, 80, 80, '82', 'LULUS', '', '5', '02716968647130726783', 'siswa'),
(96, 'LENI', 'Serang', '6 Juli 2006', 'Halimi', '212210216', '0069714111', 85, 85, 79, 79, 80, 85, 85, 80, 87, 79, 80, 80, 81, 80, 80, '82', 'LULUS', '', '5', '61945520514334094129', 'siswa'),
(97, 'LESI NABILA', 'Serang', '13 Desember 2005', 'Rafik (Alm)', '212210217', '0052909780', 87, 87, 80, 84, 80, 85, 78, 80, 80, 83, 80, 82, 80, 83, 83, '82', 'LULUS', '', '5', '36215388548483551005', 'siswa'),
(98, 'LEVI', 'Serang', '7 Mei 2005', 'Tangiah', '212210218', '0054945771', 90, 88, 82, 79, 83, 90, 87, 79, 89, 84, 83, 83, 83, 95, 90, '86', 'LULUS', '', '5', '27977345478960904347', 'siswa'),
(99, 'MAESAWATI', 'Serang', '16 Mei 2004', 'Sunariah', '212210232', '0044073063', 89, 88, 80, 79, 80, 85, 87, 85, 89, 86, 82, 83, 81, 82, 83, '84', 'LULUS', '', '5', '16340466167795943467', 'siswa'),
(100, 'MAISAROH', 'Serang', '31 Mei 2006', 'Marpuah', '212210235', '0061147417', 89, 88, 84, 79, 80, 88, 81, 81, 83, 83, 84, 85, 80, 88, 85, '84', 'LULUS', '', '5', '62101990275932829925', 'siswa'),
(101, 'MAR\'ATUL UMAEROH', 'Serang', '21 Maret 2007', 'Agus Hapawi', '212210237', '0079454487', 90, 90, 89, 86, 85, 89, 90, 88, 90, 86, 88, 87, 85, 85, 88, '88', 'LULUS', '', '5', '59421374165452468374', 'siswa'),
(102, 'MARDELIA PUTRI', 'Tanjung Raja', '31 Maret 2006', 'Muhtar', '212210239', '0068545747', 89, 90, 84, 84, 85, 85, 83, 85, 85, 85, 85, 85, 83, 90, 88, '86', 'LULUS', '', '5', '36868575629850236963', 'siswa'),
(103, 'MARSELA', 'Serang', '1 Januari 2005', 'Juleha', '212210242', '0051765632', 88, 89, 80, 79, 83, 85, 78, 85, 80, 82, 83, 84, 80, 83, 83, '83', 'LULUS', '', '5', '78567402803464497411', 'siswa'),
(104, 'MITA', 'Serang', '1 Juli 2006', 'Madsuni', '212210258', '0076677247', 89, 85, 80, 79, 80, 85, 81, 85, 83, 79, 80, 80, 80, 80, 80, '82', 'LULUS', '', '5', '26487876343710752199', 'siswa'),
(105, 'MUFTIHATUL AENI', 'Serang', '25 Februari 2006', 'Jamilah', '212210263', '0069550812', 88, 90, 79, 85, 83, 89, 78, 82, 80, 80, 80, 82, 79, 80, 80, '82', 'LULUS', '', '5', '24502532553441522755', 'siswa'),
(106, 'MUNAWAROH', 'Serang', '28 Maret 2006', 'Lukman', '212210311', '0064579825', 88, 85, 79, 79, 80, 85, 80, 85, 82, 82, 80, 80, 78, 80, 80, '82', 'LULUS', '', '5', '51320075760059724254', 'siswa'),
(107, 'MURNIAWATI', 'Serang', '7 Maret 2006', 'Sunariah', '212210313', '0066739701', 89, 89, 82, 79, 85, 89, 83, 82, 85, 84, 82, 83, 82, 88, 85, '84', 'LULUS', '', '5', '71542971496845487166', 'siswa'),
(108, 'MUTIARA ANGGAINI', 'Krui', '14 Juni 2006', 'Asrofil Umam', '212210316', '0065809579', 89, 89, 82, 79, 83, 85, 78, 85, 80, 82, 82, 83, 80, 84, 83, '83', 'LULUS', '', '5', '56653480192161541672', 'siswa'),
(109, 'NADIA VIBRIANTI', 'Serang', '16 Januari 2006', 'Sarnadi', '212210322', '0064096583', 85, 85, 80, 79, 80, 85, 78, 82, 80, 82, 80, 82, 79, 82, 83, '81', 'LULUS', '', '5', '01655039548805452765', 'siswa'),
(110, 'NASIAH', 'Serang', '29 Mei 2006', 'Timan', '212210331', '0064720113', 84, 90, 85, 82, 80, 87, 88, 81, 90, 80, 85, 86, 84, 84, 83, '84,5', 'LULUS', '', '6', '01148360720899307017', 'siswa'),
(111, 'NELISA', 'Serang', '6 September 2004', 'Anang', '212210340', '0048449914', 86, 90, 85, 80, 80, 90, 90, 85, 92, 80, 84, 84, 84, 84, 88, '85,4', 'LULUS', '', '6', '69592510257516566732', 'siswa'),
(112, 'NONA RIANA MANUPUTTY', 'Serang', '9 Oktober 2005', 'Lauri M Manuputty', '212210344', '0056812999', 83, 90, 85, 85, 80, 89, 79, 82, 81, 79, 84, 84, 83, 83, 82, '83,1', 'LULUS', '', '6', '41896520564934597991', 'siswa'),
(113, 'NOVA PADILAH', 'Serang', '3 November 2006', 'Nano Taryono', '212210346', '0061995848', 87, 90, 88, 90, 80, 89, 90, 82, 92, 88, 84, 85, 85, 87, 83, '86,6', 'LULUS', '', '6', '53055689539460572238', 'siswa'),
(114, 'NUR MUNIROH', 'Serang', '5 Agustus 2006', 'Badrun Ibrahim', '212210353', '0069469418', 85, 90, 88, 85, 80, 87, 82, 83, 84, 83, 84, 84, 83, 84, 83, '84,2', 'LULUS', '', '6', '21210888989655764429', 'siswa'),
(115, 'NURUL AFIFAH', 'Serang', '26 Agustus 2006', 'Ajhari', '212210360', '0067331495', 84, 90, 85, 80, 80, 87, 81, 84, 83, 80, 82, 85, 82, 84, 83, '83,2', 'LULUS', '', '6', '60858761653584203816', 'siswa'),
(116, 'NURUL MAHYA KHOIRUNISAK', 'Serang', '21 Mei 2006', 'Pada Sukriyadi', '212210363', '0068478077', 87, 90, 85, 82, 80, 87, 93, 85, 95, 84, 86, 88, 86, 87, 88, '86,7', 'LULUS', '', '6', '27875146667160039908', 'siswa'),
(117, 'OCHA ADELIA PURMALITA', 'Kota Bumi', '28 Juli 2005', 'Purwanto', '212210364', '0057256969', 86, 92, 85, 82, 80, 89, 84, 87, 86, 82, 85, 86, 84, 85, 83, '84,9', 'LULUS', '', '6', '34839940795993196689', 'siswa'),
(118, 'RANTIA PITALOKA DURI', 'Lubuk Nipis', '17 Januari 2005', 'Jauhari', '212210379', '0053937324', 85, 90, 85, 85, 80, 87, 83, 90, 85, 82, 84, 84, 82, 85, 83, '84,6', 'LULUS', '', '6', '73362070785059605603', 'siswa'),
(119, 'REVI IRENA', 'Tangerang', '4 Januari 2006', 'Irmawan', '212210390', '0065092236', 86, 90, 85, 80, 80, 89, 89, 87, 91, 85, 85, 86, 86, 85, 83, '85,7', 'LULUS', '', '6', '01986164099253591131', 'siswa'),
(120, 'ROHMAWATI', 'Serang', '6 April 2006', 'Toha B Anas', '212210417', '0063769393', 90, 95, 88, 92, 85, 90, 89, 90, 91, 88, 89, 90, 88, 89, 90, '89,5', 'LULUS', '', '6', '04360339578948966335', 'siswa'),
(121, 'RULLY MARDANI', 'Serang', '16 November 2006', 'Amatullah', '212210422', '0068326768', 83, 85, 85, 78, 80, 85, 79, 79, 81, 84, 80, 80, 80, 87, 82, '81,8', 'LULUS', '', '6', '46651453691722033272', 'siswa'),
(122, 'SANIAH', 'Serang', '20 Agustus 2006', 'Asari', '212210435', '0065006175', 85, 90, 85, 80, 80, 87, 79, 85, 81, 83, 80, 80, 80, 87, 88, '83,2', 'LULUS', '', '6', '66395581275992169508', 'siswa'),
(123, 'SASTIA JUNIARTI', 'Serang', '6 Juni 2006', 'Rustandi', '212210439', '00639739904', 88, 90, 85, 82, 80, 88, 79, 80, 81, 82, 84, 84, 82, 84, 82, '83,3', 'LULUS', '', '6', '54355617700950788460', 'siswa'),
(124, 'SASTIA YANAH DEWI', 'Serang', '31 Januari 2006', 'Rasta', '212210440', '0065086769', 85, 90, 85, 80, 80, 88, 83, 80, 85, 81, 81, 81, 80, 84, 80, '82,8', 'LULUS', '', '6', '92685397366461833845', 'siswa'),
(125, 'SAUD HASUDUNGAN GULTOM', 'Wailebet', '15 April 2006', 'Robinson Gultom', '212210441', '0063872339', 90, 90, 85, 78, 80, 85, 89, 90, 91, 80, 80, 80, 80, 84, 82, '84,2', 'LULUS', '', '6', '59940746782618357322', 'siswa'),
(126, 'SEKAR PURBANINGRUM SURYA DEWI TRI', 'Kebumen', '7 Mei 2006', 'Mulyadi Arifin', '212210443', '0069127142', 87, 90, 85, 90, 80, 89, 87, 88, 89, 82, 85, 86, 85, 85, 85, '86,1', 'LULUS', '', '6', '67964121330958883299', 'siswa'),
(127, 'SIFA NABILA', 'Serang', '5 September 2005', 'Ahmad Satibi', '212210448', '0059323983', 84, 90, 85, 85, 80, 89, 78, 80, 80, 79, 80, 80, 80, 83, 80, '82,2', 'LULUS', '', '6', '16035880461765881920', 'siswa'),
(128, 'SITI AMINAH', 'Serang', '28 April 2005', 'Bohari', '212210454', '0051737380', 86, 90, 85, 80, 80, 89, 87, 84, 89, 80, 84, 84, 82, 84, 85, '84,4', 'LULUS', '', '6', '51531052879089445027', 'siswa'),
(129, 'SITI MAEMUNAH', 'Serang', '26 Maret 2006', 'Yusuf', '212210460', '0067229458', 86, 90, 87, 82, 80, 89, 85, 82, 87, 82, 85, 86, 84, 85, 83, '84,7', 'LULUS', '', '6', '01208952750034631904', 'siswa'),
(130, 'SITI MAYSIN', 'Serang', '2 April 2006', 'Murid', '212210463', '0067678210', 87, 90, 85, 82, 80, 88, 85, 85, 87, 83, 84, 84, 83, 84, 85, '84,7', 'LULUS', '', '6', '15984054137308300040', 'siswa'),
(131, 'SITI MELIYAH', 'Serang', '11 Juni 2006', 'Maswi', '212210464', '0067917590', 85, 90, 85, 80, 80, 88, 83, 83, 85, 83, 83, 82, 81, 84, 81, '83,3', 'LULUS', '', '6', '71568475742740735343', 'siswa'),
(132, 'SITI NUR HIDAYAH', 'Serang', '5 Juni 2006', 'Sutikno', '212210466', '0064378798', 86, 90, 85, 80, 80, 86, 81, 79, 83, 84, 83, 84, 81, 84, 85, '83,2', 'LULUS', '', '6', '20600123886848393940', 'siswa'),
(133, 'SITIARA', 'Serang', '1 Agustus 2006', 'Taufik Saleh', '212210474', '0066901481', 88, 90, 85, 82, 80, 89, 89, 81, 91, 82, 81, 82, 81, 84, 83, '84,4', 'LULUS', '', '6', '16575375803405278111', 'siswa'),
(134, 'SUCI HAERINA', 'Serang', '14 Juli 2006', 'Sukari', '212210477', '0061458572', 88, 90, 85, 80, 80, 88, 79, 84, 81, 85, 83, 84, 82, 85, 85, '83,8', 'LULUS', '', '6', '62332477341649148351', 'siswa'),
(135, 'SULIS SETIAWATI', 'Serang', '19 April 2006', 'Sobri B Kiming', '212210483', '0062619522', 86, 90, 85, 82, 80, 88, 79, 82, 81, 82, 83, 82, 80, 84, 83, '83,0', 'LULUS', '', '6', '91092090159082997214', 'siswa'),
(136, 'SYIFA HANIFAH', 'Kotabumi', '14 September 2005', 'Satir', '212210496', '0057765235', 87, 90, 85, 82, 80, 89, 83, 86, 85, 83, 83, 84, 81, 85, 85, '84,4', 'LULUS', '', '6', '77212596673892923120', 'siswa'),
(137, 'TETI SRI RAHMAWATI', 'Serang', '28 Maret 2006', 'Tata. S', '212210501', '0063041596', 86, 90, 85, 80, 80, 88, 83, 84, 85, 85, 83, 85, 84, 84, 83, '84,1', 'LULUS', '', '6', '22201056175446797810', 'siswa'),
(138, 'UMAROH', 'Serang', '3 Juni 2006', 'Arubi', '212210510', '0061855425', 87, 90, 85, 80, 80, 87, 79, 81, 81, 82, 84, 86, 80, 84, 84, '83,2', 'LULUS', '', '6', '90280816669460624104', 'siswa'),
(139, 'VIKA DWI SEPTIORINI', 'Serang', '8 September 2005', 'Sugani', '212210513', '0058207171', 85, 90, 85, 80, 80, 88, 82, 81, 84, 83, 81, 83, 82, 83, 83, '83,4', 'LULUS', '', '6', '02718015020246750241', 'siswa'),
(140, 'YUYUN YULIYANTI', 'Serang', '14 Juli 2005', 'Toming', '212210520', '0053915225', 83, 90, 85, 82, 80, 87, 78, 79, 80, 84, 81, 81, 80, 83, 80, '82,2', 'LULUS', '', '6', '47495966706509632613', 'siswa'),
(141, 'ZAHRA PEBRIANI', 'Serang', '22 Februari 2006', 'Cecep Isro Mi\'Roji', '212210522', '0063748712', 86, 90, 85, 80, 80, 87, 86, 83, 88, 82, 84, 85, 85, 84, 85, '84,7', 'LULUS', '', '6', '24995798634061003579', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa_tekno`
--

CREATE TABLE `tb_siswa_tekno` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `nama_org_tua` varchar(50) NOT NULL,
  `nis_siswa` varchar(15) NOT NULL,
  `nisn_siswa` varchar(15) NOT NULL,
  `pai` int(11) NOT NULL,
  `pkn` int(11) NOT NULL,
  `b_ind` int(11) NOT NULL,
  `mtk` int(11) NOT NULL,
  `sejindo` int(11) NOT NULL,
  `b_ing` int(11) NOT NULL,
  `senbud` int(11) NOT NULL,
  `pjok` int(11) NOT NULL,
  `mulok` int(11) NOT NULL,
  `simdig` int(11) NOT NULL,
  `fisika` int(11) NOT NULL,
  `kimia` int(11) NOT NULL,
  `dasar_program_keahlian` varchar(30) NOT NULL,
  `kompetensi_keahlian` int(11) NOT NULL,
  `rata_rata` int(11) NOT NULL,
  `status_kelulusan` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_kelas` varchar(20) NOT NULL,
  `token` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_siswa_tekno`
--

INSERT INTO `tb_siswa_tekno` (`id_siswa`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `nama_org_tua`, `nis_siswa`, `nisn_siswa`, `pai`, `pkn`, `b_ind`, `mtk`, `sejindo`, `b_ing`, `senbud`, `pjok`, `mulok`, `simdig`, `fisika`, `kimia`, `dasar_program_keahlian`, `kompetensi_keahlian`, `rata_rata`, `status_kelulusan`, `password`, `id_kelas`, `token`, `status`) VALUES
(1, 'ADITYA PUTRA UTAMA', 'Harapan', '20 April 2006', 'Komarudin', '212210013', '0662325446', 80, 87, 80, 78, 80, 87, 79, 84, 83, 79, 80, 80, '86', 82, 81, 'LULUS', '', '11', '93454679115284235312', 'siswa'),
(2, 'AGE SARJATI', 'Serang ', '21 Agustus 2006', 'Wadi Elfara ', '212210019', '0061251535', 80, 88, 80, 78, 80, 86, 79, 80, 80, 79, 78, 79, '88', 81, 81, 'LULUS', '', '11', '41700097716100032173', 'siswa'),
(3, 'AHMAD GALANG SAPUTRA', 'Serang ', '2 Januari 2006', 'Ramid ', '212210026', '0066100724', 80, 87, 84, 85, 80, 87, 84, 80, 83, 79, 80, 78, '89', 82, 82, 'LULUS', '', '11', '91632359081116107974', 'siswa'),
(4, 'ALFATHA ABDA', 'Serang ', '3 Juni 2006', 'Jejen Jaenuri', '212210036', '0069081614', 90, 89, 80, 80, 80, 86, 82, 80, 84, 78, 76, 83, '90', 82, 82, 'LULUS', '', '11', '03830496506833698502', 'siswa'),
(5, 'ALWI SIHAB KAULANI', 'Serang ', '5 Juni 2006', 'Safri Afifi', '212210041', '0069336386', 80, 80, 79, 78, 75, 84, 79, 75, 82, 78, 80, 78, '80', 80, 79, 'LULUS', '', '11', '88721096424695376047', 'siswa'),
(6, 'BAYU NUGROHO', 'Serang ', '18 Maret 2006', 'Mariyo Edi Purnomo', '212210076', '0069520607', 80, 87, 82, 79, 80, 85, 79, 78, 82, 80, 88, 80, '87', 83, 82, 'LULUS', '', '11', '92617247684020875741', 'siswa'),
(7, 'BERKAT JULIANDA HASUGIAN', 'Serang ', '1 Juli 2006', 'Irwan Efendi. H', '212210078', '0068153612', 80, 88, 80, 79, 80, 85, 84, 84, 83, 80, 78, 80, '90', 82, 82, 'LULUS', '', '11', '46791180569023702730', 'siswa'),
(8, 'CHAFIDZ AJI BAHTIAR ALAMSYAH', 'Serang ', '10 Desember 2005', 'Sariman', '212210081', '0067726951', 80, 87, 80, 79, 80, 84, 79, 79, 81, 80, 78, 80, '88', 81, 81, 'LULUS', '', '11', '81356928618657222331', 'siswa'),
(9, 'DANANG WAHYUDHA SETYAPUTRA', 'Serang ', '13 Mei 2006', 'Agus Erwanto', '212210086', '0065243517', 80, 90, 87, 79, 80, 85, 84, 78, 82, 82, 78, 96, '88', 85, 83, 'LULUS', '', '11', '52318011372884396651', 'siswa'),
(10, 'DZAKY SEVCHENCO YOLA', 'Serang ', '8 Januari 2006', 'Feri Yulianto', '212210107', '0062641066', 80, 89, 82, 78, 80, 84, 84, 81, 82, 78, 78, 79, '87', 81, 81, 'LULUS', '', '11', '20357538082716571462', 'siswa'),
(11, 'FEBRI MAULANA YUSUF DARMAWAN', 'Serang ', '28 Februari 2006', 'Wawan Darmawan', '212210135', '0066540204', 80, 90, 80, 78, 80, 88, 79, 78, 79, 80, 78, 80, '88', 81, 81, 'LULUS', '', '11', '29491873133289125807', 'siswa'),
(12, 'FEBRIAN DANY ARDIANTO', 'Ngawi', '1 Juli 2006', 'Mispan ', '212210137', '0066660612', 80, 89, 92, 78, 80, 88, 86, 92, 83, 88, 78, 84, '87', 84, 84, 'LULUS', '', '11', '43763599642187396358', 'siswa'),
(13, 'FIRMAN SYAHWA', 'Serang ', '12 September 2005', 'Nurul Huda', '212210147', '0053429916', 80, 87, 80, 79, 80, 85, 79, 78, 83, 80, 80, 80, '89', 82, 81, 'LULUS', '', '11', '68853690197168372758', 'siswa'),
(14, 'HENDRIANSAH', 'Serang ', '1 Agustus 2005', 'Toton Sugianto', '212210162', '0054263456', 80, 86, 79, 79, 80, 85, 79, 84, 78, 78, 76, 79, '89', 80, 80, 'LULUS', '', '11', '50448016581767654600', 'siswa'),
(15, 'IBNU SOLEH', 'Serang ', '15 Januari 2006', 'Misad ', '212210169', '0065901271', 80, 85, 79, 80, 80, 85, 79, 80, 85, 78, 80, 80, '88', 82, 81, 'LULUS', '', '11', '77174678003243386250', 'siswa'),
(16, 'LUKI PIRMANSYAH', 'Serang ', '25 Desember 2005', 'M. Yusup', '212210223', '0053361280', 80, 88, 80, 79, 80, 86, 79, 79, 83, 78, 82, 79, '88', 82, 81, 'LULUS', '', '11', '77982552333757050807', 'siswa'),
(17, 'MOHAMMAD ZULKARNAEN', 'Serang ', '26 Oktober 2005', 'Jaya ', '212210262', '0051953515', 80, 89, 84, 79, 80, 87, 79, 81, 79, 79, 82, 80, '89', 82, 82, 'LULUS', '', '11', '61194682664931842701', 'siswa'),
(18, 'MUHAMAD ELDA SUHERLAN', 'Serang ', '2 September 2005', 'Elan Suherlan', '212210272', '0055975834', 80, 89, 82, 79, 80, 87, 79, 79, 85, 79, 80, 78, '88', 82, 81, 'LULUS', '', '11', '63966483538129264503', 'siswa'),
(19, 'MUHAMAD TEGAR', 'Serang ', '8 Mei 2006', 'Mansur', '212210288', '0069122122', 90, 89, 82, 80, 80, 85, 79, 78, 83, 80, 85, 80, '87', 83, 82, 'LULUS', '', '11', '10717283597300993536', 'siswa'),
(20, 'MUHAMMAD NIZAR SAPUTRA', 'Serang ', '14 Maret 2006', 'Edi Rukmana', '212210299', '0062612986', 80, 90, 80, 78, 80, 87, 84, 78, 79, 80, 88, 94, '87', 86, 83, 'LULUS', '', '11', '75234578467516622223', 'siswa'),
(21, 'MUHAMMAD RENDI MULYADI', 'Serang ', '27 Oktober 2005', 'Armin', '212210301', '0056178539', 80, 88, 80, 79, 80, 89, 82, 78, 88, 80, 82, 78, '87', 83, 82, 'LULUS', '', '11', '72057717447159204854', 'siswa'),
(22, 'MUHAMMAD SYAHRUL', 'Serang ', '18 Mei 2006', 'Unang', '212210306', '0057568411', 80, 89, 79, 79, 80, 85, 79, 80, 80, 80, 80, 80, '87', 81, 81, 'LULUS', '', '11', '75602110954908314136', 'siswa'),
(23, 'MUHAMMAD TEGAR NUGRAHA', 'Serang ', '8 Juni 2006', 'Asep Nurdin', '212210307', '0067617532', 80, 89, 80, 78, 80, 85, 88, 82, 80, 80, 85, 79, '88', 82, 82, 'LULUS', '', '11', '77994027657833293833', 'siswa'),
(24, 'NABIL KUSUMA', 'Serang ', '4 September 2005', 'Kuriah ', '212210319', '0051087799', 80, 89, 84, 79, 80, 86, 79, 80, 79, 80, 80, 83, '87', 82, 81, 'LULUS', '', '11', '65304498873983743902', 'siswa'),
(25, 'RAFIANA FIRDAUS', 'Serang ', '7 Juni 2006', 'Yusron', '212210375', '0069354161', 80, 89, 80, 85, 80, 89, 79, 90, 81, 80, 82, 79, '88', 82, 83, 'LULUS', '', '11', '06529532443776427505', 'siswa'),
(26, 'RESTU BRONTO GURITNO', 'Ngawi', '9 November 2005', 'Supardi', '212210385', '0057955011', 80, 90, 82, 80, 80, 87, 79, 78, 78, 82, 79, 80, '88', 81, 81, 'LULUS', '', '11', '21385613067394239692', 'siswa'),
(27, 'RIJALUDIN', 'Serang ', '3 September 2006', 'Nahari', '212210396', '3064315258', 80, 86, 85, 82, 80, 89, 90, 78, 83, 85, 80, 80, '89', 83, 83, 'LULUS', '', '11', '61939113750908358158', 'siswa'),
(28, 'RIZKI ARSAD NUGRAHA', 'Rejomulyo', '31 Agustus 2005', 'Sutardi', '212210409', '0056699071', 80, 86, 80, 78, 80, 86, 79, 80, 78, 86, 81, 82, '89', 83, 82, 'LULUS', '', '11', '94413418416960880784', 'siswa'),
(29, 'RIZKI MAULANA', 'Serang ', '17 Juni 2006', 'Iman Rockiman', '212210411', '0062441506', 80, 89, 82, 78, 80, 86, 79, 80, 80, 84, 81, 80, '88', 83, 82, 'LULUS', '', '11', '69819343507038398526', 'siswa'),
(30, 'SANDI IRAWAN', 'Serang ', '3 Mei 2006', 'Iwan', '212210432', '0068277567', 80, 87, 82, 78, 80, 85, 79, 86, 83, 84, 77, 80, '87', 82, 82, 'LULUS', '', '11', '06427273005629138764', 'siswa'),
(31, 'SITI AULIA DWI FITRIYANI', 'Serang ', '4 Mei 2005', 'Ahmad Yani', '212210456', '0051685016', 80, 89, 80, 80, 80, 87, 79, 84, 83, 84, 82, 80, '90', 84, 82, 'LULUS', '', '11', '61090718672243534042', 'siswa'),
(32, 'THIYO ARDHIANSYAH', 'Serang ', '17 Juli 2006', 'Subeki', '212210503', '0069288634', 80, 88, 80, 78, 80, 87, 79, 90, 82, 85, 81, 80, '89', 83, 83, 'LULUS', '', '11', '35555449204050094667', 'siswa'),
(33, 'TONI HERLIYADI', 'Serang ', '30 Maret 2006', 'Mulyadi', '212210506', '0068208778', 80, 90, 82, 78, 80, 85, 90, 82, 78, 85, 84, 82, '87', 83, 83, 'LULUS', '', '11', '07607348063098081869', 'siswa'),
(34, 'TRISAN ARI BOWO', 'Grobogan', '16 Desember 2005', 'Moch. Dulrochim', '212210507', '0058160373', 80, 90, 82, 80, 80, 87, 79, 90, 80, 86, 82, 82, '87', 83, 83, 'LULUS', '', '11', '09001026825193043578', 'siswa'),
(35, 'AAN SOPIAN', 'Serang', '17 Agustus 2005', '(Alm) Rudi', '212210004', '0057332161', 80, 87, 80, 78, 81, 80, 79, 82, 81, 84, 78, 78, '82', 82, 80, 'LULUS', '', '12', '76182741041635962159', 'siswa'),
(36, 'ALIYAH', 'Serang', '24 Mei 2006', 'Rodiah', '212210039', '0067426949', 83, 87, 84, 80, 85, 85, 79, 82, 85, 85, 80, 78, '84', 84, 82, 'LULUS', '', '12', '43734186960970611286', 'siswa'),
(37, 'AMMAR ZAIDAN', 'Serang', '14 Maret 2006', 'Ahmad Yani', '212210044', '0062530137', 80, 87, 80, 78, 83, 85, 86, 90, 83, 86, 81, 80, '83', 83, 83, 'LULUS', '', '12', '21985900279980331511', 'siswa'),
(38, 'AQSHAL ARJUNO INAWAN', 'Serang', '9 Desember 2005', 'Arif Gunawan', '212210060', '0056019036', 80, 90, 79, 78, 82, 87, 79, 80, 82, 85, 80, 79, '82', 82, 81, 'LULUS', '', '12', '58936265507122430031', 'siswa'),
(39, 'ARYA SATYA D.P', 'Blitar', '12 Februari 2006', 'Basuki Rahmat', '212210067', '0065989228', 80, 87, 78, 78, 80, 80, 79, 78, 80, 86, 80, 80, '81', 81, 80, 'LULUS', '', '12', '93780559648946197288', 'siswa'),
(40, 'FAIZ HENDRO KARTIKO', 'Serang', '14 April 2006', '(Alm) Hartanto', '212210123', '0069142170', 80, 87, 79, 78, 80, 80, 90, 85, 80, 86, 78, 80, '80', 80, 81, 'LULUS', '', '12', '77297266122491726425', 'siswa'),
(41, 'FAJAR YULIANDA', 'Serang', '29 Juli 2006', 'Sumitro', '212210124', '0061855457', 85, 87, 83, 79, 84, 87, 79, 80, 84, 83, 82, 78, '84', 84, 82, 'LULUS', '', '12', '71085542946357475803', 'siswa'),
(42, 'GALIH FAKHRI', 'Serang', '1 Juli 2006', 'Purwadi', '212210152', '0066799078', 85, 87, 80, 78, 83, 85, 79, 78, 83, 85, 83, 80, '83', 83, 82, 'LULUS', '', '12', '20210994425935609249', 'siswa'),
(43, 'IBNU AKMAL RAMADHAN', 'Serang', '16 September 2006', 'Sunardi Apandi', '212210168', '0067272148', 80, 87, 79, 78, 82, 80, 82, 80, 82, 85, 80, 78, '82', 82, 81, 'LULUS', '', '12', '95787855149335616837', 'siswa'),
(44, 'IMAM MA\'RUF', 'Serang', '23 Juni 2006', 'Mulyadi', '212210174', '0068777871', 85, 87, 83, 79, 84, 82, 82, 78, 84, 85, 81, 78, '82', 82, 82, 'LULUS', '', '12', '72679127690131063325', 'siswa'),
(45, 'JAENAL IKWAN', 'Serang', '1 Juli 2005', 'Sahroni', '212210191', '0059340508', 86, 87, 84, 78, 83, 85, 79, 78, 83, 78, 85, 79, '83', 83, 82, 'LULUS', '', '12', '00511868278602762235', 'siswa'),
(46, 'M. RIFKI PRAMANA PUTRA', 'Lebak', '7 Juli 2005', 'Aat Hadi Putra', '212210228', '0056963221', 87, 87, 84, 79, 85, 90, 84, 78, 85, 85, 82, 78, '84', 84, 83, 'LULUS', '', '12', '26064988497757539450', 'siswa'),
(47, 'M.FALHAN FATHI FIRDAUS', 'Serang', '7 Juni 2006', 'Bayu Nursyah Firman', '212210229', '0062406784', 80, 87, 83, 78, 80, 85, 82, 78, 80, 86, 78, 79, '80', 80, 81, 'LULUS', '', '12', '85953886335284458435', 'siswa'),
(48, 'MATLUBI', 'Serang', '15 Desember 2005', 'Misri', '212210248', '0052511928', 88, 87, 83, 79, 84, 84, 79, 84, 84, 85, 80, 79, '85', 85, 83, 'LULUS', '', '12', '21360031482211824264', 'siswa'),
(49, 'MAULANA HAIKAL', 'Serang', '7 April 2006', 'Usup Maulana', '212210249', '0067838735', 83, 87, 85, 79, 83, 85, 79, 80, 83, 84, 80, 78, '84', 84, 82, 'LULUS', '', '12', '53672078331333879668', 'siswa'),
(50, 'MUHAMAD BAYU KURNIAWAN', 'Serang', '28 Juli 2006', 'Suradi', '212210269', '0068259653', 80, 87, 82, 78, 84, 85, 84, 84, 84, 85, 81, 80, '83', 83, 82, 'LULUS', '', '12', '19486165082679705548', 'siswa'),
(51, 'MUHAMAD NUR HOLIS', 'Serang', '16 Desember 2006', 'Sarbini', '212210280', '0061356918', 81, 87, 82, 78, 81, 80, 79, 82, 81, 83, 78, 78, '82', 82, 81, 'LULUS', '', '12', '75679703249588959111', 'siswa'),
(52, 'MUHAMAD SAEPUDIN', 'Serang', '16 Oktober 2005', 'Basri', '212210285', '0053915329', 80, 87, 79, 78, 81, 85, 84, 82, 81, 83, 78, 78, '82', 82, 81, 'LULUS', '', '12', '00475605377503721561', 'siswa'),
(53, 'MUHAMMAD ARIEL NOVALDI', 'Serang', '19 November 2005', 'Muhammad Asrori', '212210290', '0053657908', 90, 90, 83, 85, 85, 89, 84, 85, 85, 85, 80, 79, '85', 85, 85, 'LULUS', '', '12', '78408761733356726602', 'siswa'),
(54, 'MUHAMMAD FATIH ARRASYIID', 'Serang', '17 Juli 2007', 'Noples Herwadi', '212210291', '0062579751', 85, 90, 80, 80, 84, 85, 86, 78, 84, 85, 84, 80, '84', 84, 83, 'LULUS', '', '12', '30472158537769640560', 'siswa'),
(55, 'MUHAMMAD FEBRIYAN GIBRANI', 'Serang', '6 Februari 2006', 'Iwan Setiawan', '212210293', '0062150930', 82, 87, 83, 78, 83, 85, 79, 78, 83, 78, 80, 78, '82', 82, 81, 'LULUS', '', '12', '40067543111603816488', 'siswa'),
(56, 'MUHAMMAD IMAM BAEDOWI', 'Serang', '6 September 2005', 'Saefudin', '212210297', '0052619137', 89, 90, 85, 87, 87, 89, 90, 78, 87, 87, 87, 80, '86', 86, 86, 'LULUS', '', '12', '39566793923540368004', 'siswa'),
(57, 'MUHAMMAD KHAERUL MAZID', 'Serang', '29 Januari 2006', 'Judi', '212210298', '0061111178', 89, 87, 80, 80, 85, 96, 90, 94, 85, 89, 88, 95, '85', 85, 87, 'LULUS', '', '12', '49385667745146614815', 'siswa'),
(58, 'MUHAMMAD RAFLY FEBRIAN', 'Serang', '20 Februari 2006', 'Maswadi', '212210300', '0065539791', 82, 87, 83, 78, 82, 85, 79, 85, 82, 80, 80, 78, '82', 82, 81, 'LULUS', '', '12', '10055127834709727594', 'siswa'),
(59, 'MUHAMMAD RIZKI ALFAREL', 'Serang', '1 Mei 2006', 'Sapan', '212210304', '0066715471', 87, 87, 84, 79, 84, 85, 79, 85, 84, 83, 80, 79, '84', 84, 83, 'LULUS', '', '12', '29107063340285948247', 'siswa'),
(60, 'NAJRIL ILHAM', 'Serang', '4 Juli 2006', '(Alm) Maiyah', '212210327', '0061407597', 90, 87, 84, 81, 85, 86, 84, 78, 85, 85, 84, 79, '85', 85, 84, 'LULUS', '', '12', '25559655870566980138', 'siswa'),
(61, 'NUR HAYADI', 'Serang', '22 Juni 2005', '(Alm) Jemani', '212210352', '0055653542', 90, 87, 85, 82, 86, 87, 84, 78, 86, 85, 84, 79, '86', 86, 84, 'LULUS', '', '12', '95551475392089611025', 'siswa'),
(62, 'NURUL HASANAH', 'Serang', '5 Mei 2005', 'Ijah', '212210362', '0055318058', 84, 87, 84, 80, 85, 85, 86, 82, 85, 85, 83, 79, '84', 84, 83, 'LULUS', '', '12', '23750012868641804434', 'siswa'),
(63, 'REIKY DEWAN SASONGKO', 'Serang', '16 November 2005', 'Sasongko', '212210383', '0058221617', 80, 87, 85, 79, 84, 88, 79, 78, 84, 85, 83, 79, '84', 84, 82, 'LULUS', '', '12', '22331126247373202626', 'siswa'),
(64, 'RIZAZ RAMADAN', 'Serang', '29 September 2006', 'Nurdi', '212210406', '0066642080', 85, 87, 82, 79, 83, 86, 79, 90, 83, 85, 81, 78, '83', 83, 83, 'LULUS', '', '12', '35028199731559693045', 'siswa'),
(65, 'WAHYU PAMUNGKAS', 'Serang', '10 Februari 2005', 'Heni Purjanto', '212210514', '0054368811', 87, 87, 82, 79, 84, 86, 86, 80, 84, 89, 81, 80, '82', 82, 83, 'LULUS', '', '12', '69220978005415410977', 'siswa'),
(66, 'WISNU ARYADINATA', 'Serang', '30 Juni 2006', 'Eko Gusmara', '212210516', '0064776410', 90, 87, 80, 80, 84, 88, 79, 78, 84, 85, 82, 78, '83', 83, 82, 'LULUS', '', '12', '48114396876757916332', 'siswa'),
(67, 'AAN SETIAWAN', 'SERANG', '16 November 2004', 'WAWAN SAEFUL', '212210003', '0058938885', 83, 84, 84, 79, 81, 80, 79, 84, 81, 85, 81, 79, '85', 84, 81, 'LULUS', '', '13', '46640896794213555215', 'siswa'),
(68, 'ACHMAD AFIFI', 'SERANG', '9 Agustus 2005', 'SUKRA', '212210007', '0059025168', 82, 83, 82, 78, 81, 85, 79, 78, 81, 82, 79, 79, '80', 81, 80, 'LULUS', '', '13', '42026120799258241620', 'siswa'),
(69, 'AFAENDI', 'SERANG', '13 Januari 2006', 'SARMIN', '212210015', '0065758586', 81, 87, 78, 78, 81, 80, 79, 78, 81, 82, 79, 81, '80', 80, 80, 'LULUS', '', '13', '68307710894204897538', 'siswa'),
(70, 'AFIDKO ARIF FIRDAUS', 'SERANG', '8 November 2005', 'HASAN BASRI', '212210017', '0057873816', 84, 85, 84, 80, 81, 86, 79, 77, 81, 79, 82, 83, '88', 85, 82, 'LULUS', '', '13', '66147538092709898745', 'siswa'),
(71, 'AGUNG DARMAWAN', 'SERANG', '28 Maret 2006', 'WARSO', '212210023', '0065098121', 83, 84, 83, 78, 81, 86, 79, 82, 81, 78, 79, 79, '82', 81, 81, 'LULUS', '', '13', '16069869953482534772', 'siswa'),
(72, 'AHMAD FAUZIHAN KHOBIR', 'SERANG', '28 September 2004', 'ANDI HARYONO', '212210024', '0046433760', 84, 89, 85, 79, 81, 86, 79, 80, 81, 87, 80, 81, '85', 85, 82, 'LULUS', '', '13', '81779771674801843644', 'siswa'),
(73, 'AHMAD RAFLI TAFTANZANY', 'PANDEGLANG', '23 Januari 2006', 'BAMBANG IRAWAN', '212210028', '0065803712', 83, 85, 83, 84, 90, 87, 90, 85, 90, 85, 80, 81, '84', 84, 85, 'LULUS', '', '13', '45878489630444615495', 'siswa'),
(74, 'ALVIN DWI PANGGA', 'SERANG', '12 April 2006', 'BAHRUDIN', '212210040', '0061005553', 82, 83, 80, 78, 81, 85, 79, 90, 81, 84, 79, 86, '81', 84, 82, 'LULUS', '', '13', '58652759787770478988', 'siswa'),
(75, 'ARI', 'SERANG', '5 November 2005', 'JUANTA', '212210061', '0059997384', 82, 86, 82, 78, 81, 85, 79, 78, 81, 85, 79, 80, '83', 81, 81, 'LULUS', '', '13', '46510462777228756808', 'siswa'),
(76, 'ARIP SUPIADI', 'SERANG', '2 Februari 2005', 'EMBAY SUPRIYATI', '212210064', '0052965705', 87, 83, 84, 79, 88, 88, 82, 80, 88, 87, 80, 86, '86', 86, 84, 'LULUS', '', '13', '81016538040678471641', 'siswa'),
(77, 'BAGUS SEPTIAN ARDIANSYAH', '', '', '', '212210074', '0058225478', 79, 83, 79, 78, 81, 88, 79, 78, 81, 78, 79, 86, '80', 80, 80, 'LULUS', '', '13', '84325520779099267021', 'siswa'),
(78, 'DAVID KURNIAWAN', 'SERANG', '20 April 2006', 'KURTUBI', '212210089', '0069062359', 78, 83, 80, 78, 81, 85, 79, 90, 81, 78, 80, 80, '81', 82, 81, 'LULUS', '', '13', '57014946639810525150', 'siswa'),
(79, 'DIMAS SAPUTRA', 'SERANG', '3 Desember 2006', 'ANI KARTIKA', '212210102', '0057990326', 79, 83, 83, 78, 81, 85, 79, 82, 81, 85, 83, 81, '81', 83, 81, 'LULUS', '', '13', '25391536377758835573', 'siswa'),
(80, 'EMI IHYAWAN', 'SERANG', '30 Januari 2005', 'RIDWAN', '212210114', '0058060989', 79, 83, 80, 78, 81, 84, 79, 78, 81, 79, 79, 80, '82', 81, 80, 'LULUS', '', '13', '75350317916820916615', 'siswa'),
(81, 'FUZIATUN NISA', 'SERANG', '9 Juni 2006', 'MU\'IN', '212210151', '0062066776', 85, 85, 84, 79, 83, 85, 79, 80, 83, 83, 82, 79, '87', 86, 82, 'LULUS', '', '13', '42901673774348352659', 'siswa'),
(82, 'IAM ALANSYAH', 'SERANG', '30 April 2007', 'JAMHURI RUSLAN', '212210167', '0074020781', 84, 84, 83, 83, 81, 89, 79, 82, 81, 85, 80, 81, '83', 84, 82, 'LULUS', '', '13', '84759936337184587065', 'siswa'),
(83, 'ILHAM FEBRIANSYAH', 'SERANG', '10 Februari 2005', 'ANTON HILMAN', '212210171', '0052158492', 84, 88, 80, 78, 83, 89, 82, 90, 83, 85, 80, 82, '81', 81, 83, 'LULUS', '', '13', '71763181536432247686', 'siswa'),
(84, 'KAJUDIN', 'SERANG', '17 Juni 2006', 'SUKENI', '212210203', '0065786227', 80, 88, 82, 78, 81, 85, 79, 80, 81, 85, 80, 81, '83', 82, 81, 'LULUS', '', '13', '25035742021934525236', 'siswa'),
(85, 'M. DEVAN NIO ANJALA PUTRA', 'SERANG', '22 April 2006', 'MUHSIN', '212210227', '0066623588', 84, 90, 83, 81, 89, 89, 88, 78, 89, 85, 83, 80, '82', 83, 84, 'LULUS', '', '13', '19771943117729938680', 'siswa'),
(86, 'MAULIDANU', 'SERANG', '11 April 2005', 'SAEPI', '212210251', '0051347195', 83, 89, 84, 81, 89, 86, 86, 85, 89, 85, 84, 80, '87', 87, 85, 'LULUS', '', '13', '00076492123431313156', 'siswa'),
(87, 'MOHAMMAD ABDUL AZIS', 'PATI', '26 April 2006', 'SARIKAM', '212210260', '0066188776', 85, 86, 82, 79, 81, 85, 79, 90, 81, 87, 80, 81, '83', 84, 82, 'LULUS', '', '13', '54058676083154600476', 'siswa'),
(88, 'MOHAMMAD DIO ALFATHIR', 'SERANG', '17 Mei 2005', 'NASIR', '212210261', '0062351032', 86, 88, 86, 83, 81, 87, 79, 82, 81, 87, 81, 81, '87', 86, 83, 'LULUS', '', '13', '02911321937456246229', 'siswa'),
(89, 'MUHAMAD BAGAS WIJAYA', 'SERANG', '18 Desember 2006', 'JANUR KURNIA', '212210268', '0066387012', 85, 89, 83, 79, 81, 85, 79, 78, 81, 87, 84, 81, '82', 84, 82, 'LULUS', '', '13', '75947301532845969135', 'siswa'),
(90, 'MUHAMAD RISMI SEPTIAWAN', 'SERANG', '28 September 2005', 'PUJIONO', '212210283', '0051169182', 83, 84, 79, 78, 81, 85, 79, 81, 81, 85, 79, 80, '80', 79, 80, 'LULUS', '', '13', '63381222628345375735', 'siswa'),
(91, 'RAFEL KURNIAWAN', 'SERANG', '16 Juli 2005', 'AGUS WAHYUDI', '212210374', '0053921309', 85, 90, 87, 90, 93, 90, 90, 82, 93, 96, 87, 86, '89', 86, 88, 'LULUS', '', '13', '26120027143428638489', 'siswa'),
(92, 'RAIHAN MUFLIH RUSWANTO', 'SERANG', '13 Januari 2006', 'SISWANTO', '212210376', '0066379977', 86, 83, 84, 80, 86, 89, 82, 84, 86, 85, 80, 80, '83', 83, 83, 'LULUS', '', '13', '96691923697080003391', 'siswa'),
(93, 'RENDI RIFALDO', 'SUKABUMI', '18 Mei 2006', 'AGUS RIYANTO', '212210384', '0062949739', 85, 89, 84, 78, 81, 85, 79, 82, 81, 86, 82, 82, '80', 82, 82, 'LULUS', '', '13', '85687107893683574973', 'siswa'),
(94, 'RIKI PUTRA', 'SERANG', '1 Agustus 2005', 'KASMIN', '212210397', '0057816529', 82, 89, 82, 78, 81, 87, 79, 78, 81, 86, 79, 80, '81', 83, 81, 'LULUS', '', '13', '33395777304401601147', 'siswa'),
(95, 'RIZKI MIFTAHUL HUDA', '', '', '', '212210412', '0059427262', 85, 83, 78, 78, 81, 85, 79, 78, 81, 85, 82, 79, '82', 80, 81, 'LULUS', '', '13', '19398944887475263018', 'siswa'),
(96, 'SAHRONI', 'SERANG', '7 Januari 2004', 'SAR AH', '212210427', '0042006386', 81, 84, 79, 78, 81, 85, 79, 78, 81, 83, 81, 79, '80', 81, 80, 'LULUS', '', '13', '44090939543133513879', 'siswa'),
(97, 'SENDI RAMADANI', '', '', '', '212210445', '0063668949', 81, 89, 79, 78, 81, 85, 79, 82, 81, 87, 84, 81, '82', 83, 82, 'LULUS', '', '13', '80515625492902629590', 'siswa'),
(98, 'TASYA APRILIA', 'SERANG', '23 April 2006', 'TARMIDI', '212210498', '0068971302', 82, 88, 83, 79, 82, 86, 79, 82, 82, 87, 82, 79, '85', 84, 82, 'LULUS', '', '13', '75095041229331595291', 'siswa'),
(99, 'ZANDRIA DEZKY', '', '', '', '212210523', '0057234805', 84, 85, 81, 78, 81, 85, 79, 81, 81, 81, 80, 80, '79', 81, 81, 'LULUS', '', '13', '46636160709525700066', 'siswa'),
(100, 'AAN', 'Serang', '20 Oktober 2006', 'Suneni', '212210001', '0067544636', 86, 89, 83, 78, 83, 87, 89, 82, 85, 84, 86, 87, '86', 86, 85, 'LULUS', '', '14', '78539167806186537125', 'siswa'),
(101, 'ABDUL RASYD', 'Serang', '11 Januari 2006', 'Rahman', '212210005', '0065622299', 85, 90, 86, 78, 86, 90, 90, 88, 85, 78, 88, 90, '86', 86, 86, 'LULUS', '', '14', '17576130010994409859', 'siswa'),
(102, 'ABIE SAPUTRA', 'Serang', '16 Februari 2006', 'Abdul Rouf', '212210006', '0067109978', 85, 87, 84, 79, 84, 90, 79, 80, 85, 80, 78, 82, '86', 86, 83, 'LULUS', '', '14', '98048105210332915540', 'siswa'),
(103, 'AFRI DOTUL FATMA', 'Serang', '30 Desember 2005', 'Kastani', '212210018', '0051204367', 86, 89, 85, 79, 85, 92, 89, 90, 85, 82, 86, 84, '86', 86, 86, 'LULUS', '', '14', '41168201893463775404', 'siswa'),
(104, 'AGIL PRASETYA MUKTI', 'Serang', '27 Mei 2005', 'Suratman', '212210022', '0059516747', 88, 90, 86, 80, 86, 89, 90, 92, 85, 78, 86, 89, '86', 86, 86, 'LULUS', '', '14', '78580693351393565611', 'siswa'),
(105, 'ALFANDI', 'Serang', '8 Juli 2006', 'Ahmad Syukri', '212210035', '0063310630', 87, 89, 86, 82, 86, 90, 90, 92, 85, 92, 76, 90, '87', 87, 87, 'LULUS', '', '14', '27461891050205080738', 'siswa'),
(106, 'ANDREAS ANGGARA SIREGAR', 'Palembang', '23 Februari 2005', 'Mangasa Siregar', '212210048', '0058110003', 83, 88, 87, 78, 87, 94, 90, 90, 85, 90, 85, 90, '85', 85, 86, 'LULUS', '', '14', '40578314611978519205', 'siswa'),
(107, 'ASEP RENDI SAPUTRA', 'Lampung', '25 September 2004', 'Yuri Yanto', '212210068', '0048294250', 84, 80, 80, 78, 80, 95, 82, 79, 85, 68, 84, 81, '81', 81, 81, 'LULUS', '', '14', '34795728612218892023', 'siswa'),
(108, 'BAYU DWI  NUR RASYID', 'Serang', '29 November 2005', 'Suparto', '212210075', '0053242656', 87, 90, 90, 79, 90, 94, 90, 82, 85, 98, 85, 94, '88', 88, 88, 'LULUS', '', '14', '98391229238165699464', 'siswa'),
(109, 'BUDI SANTOSO', 'serang', '17 Oktober 2006', 'Tuti herawati', '212210079', '0067551411', 85, 85, 80, 78, 80, 87, 84, 78, 85, 84, 81, 78, '82', 82, 82, 'LULUS', '', '14', '74980413476775410077', 'siswa'),
(110, 'ERLANGGA ROMADHONI', 'Serang', '8 Oktober 2005', 'Dahlan', '212210117', '0054130671', 88, 90, 82, 80, 82, 87, 84, 82, 85, 78, 84, 80, '84', 84, 83, 'LULUS', '', '14', '18128172707556397268', 'siswa'),
(111, 'FAHRUROJI', 'serang', '18 Agustus 2005', 'Samhudi', '212210122', '0056934340', 86, 89, 82, 79, 82, 89, 90, 84, 85, 80, 85, 80, '84', 84, 84, 'LULUS', '', '14', '76415186422993715867', 'siswa'),
(112, 'FAKHRU ROZI', 'Serang', '29 Mei 2006', 'Asmuni suhaeri', '212210125', '0066157440', 85, 87, 85, 79, 85, 94, 90, 84, 85, 96, 88, 90, '86', 86, 87, 'LULUS', '', '14', '01826460795494619897', 'siswa'),
(113, 'FARHAN MALAYANG', 'Serang', '15 Februari 2006', 'Ardyan', '212210127', '0062143130', 82, 86, 80, 79, 80, 78, 79, 78, 85, 80, 88, 80, '84', 84, 81, 'LULUS', '', '14', '92757178914085547778', 'siswa'),
(114, 'FARHAN PRAYOGA', 'Serang', '1 Mei 2006', 'Toha', '212210128', '0068416655', 87, 85, 90, 80, 90, 90, 85, 94, 85, 94, 88, 95, '85', 85, 88, 'LULUS', '', '14', '54404880893574868354', 'siswa'),
(115, 'FATHAR IDZNI FARIZAN', 'serang', '2 Juni 2006', 'Sahari ', '212210130', '0061966147', 79, 88, 80, 79, 80, 85, 79, 82, 85, 80, 84, 79, '84', 84, 82, 'LULUS', '', '14', '12409771344214884815', 'siswa'),
(116, 'FERA FERNANDA', 'Negeri Agung', '10 Agustus 2005', 'Suprapto', '212210140', '0052527341', 86, 89, 83, 79, 83, 85, 79, 90, 85, 83, 82, 79, '85', 85, 83, 'LULUS', '', '14', '02743588109886709509', 'siswa'),
(117, 'HUSNI ARDIANSAH', 'serang', '16 Oktober 2005', 'Elah', '212210165', '0054584247', 87, 89, 82, 83, 82, 85, 85, 82, 85, 82, 84, 80, '85', 85, 84, 'LULUS', '', '14', '38885087827086572210', 'siswa'),
(118, 'IMAM ROMADON', 'Serang', '9 Agustus 2006', 'Asmin ', '212210175', '0068500913', 87, 89, 80, 80, 80, 85, 81, 82, 85, 80, 81, 78, '83', 83, 82, 'LULUS', '', '14', '47090025998542519619', 'siswa'),
(119, 'MAHFUD FUDOLI', 'Serang', '29 Agustus 2006', 'Satim ', '212210233', '0069381458', 88, 90, 85, 83, 85, 90, 81, 85, 85, 80, 86, 86, '87', 87, 85, 'LULUS', '', '14', '94411388728550890542', 'siswa'),
(120, 'MUHAMAD DAFFA ROBI', 'Serang', '13 Juni 2005', 'Muktar', '212210270', '0059880938', 82, 88, 79, 78, 79, 90, 81, 78, 85, 80, 84, 79, '82', 82, 81, 'LULUS', '', '14', '51540347225000315833', 'siswa'),
(121, 'MUHAMAD FAHMI SAPUTRA', 'Serang', '4 Juli 2005', 'Rositawati ', '212210273', '0056468862', 88, 89, 86, 80, 86, 90, 81, 81, 85, 85, 88, 80, '86', 86, 85, 'LULUS', '', '14', '34835942708241250614', 'siswa'),
(122, 'MUHAMAD RIJAL SAFITRI', 'serang', '28 Oktober 2005', 'Hermansyah', '212210282', '0054865298', 86, 89, 83, 80, 83, 90, 79, 90, 85, 82, 83, 80, '85', 85, 84, 'LULUS', '', '14', '48405814682150675525', 'siswa'),
(123, 'MUHAMMAD GHIANNI', 'Serang', '23 September 2005', 'Moh. Darip', '212210295', '0057706451', 86, 89, 85, 85, 85, 89, 79, 78, 85, 80, 84, 78, '85', 85, 83, 'LULUS', '', '14', '37535191657532423314', 'siswa'),
(124, 'MUHAMMAD SA\'DA', 'serang', '18 Maret 2006', 'Rasti', '212210305', '0069207351', 86, 89, 83, 83, 83, 89, 83, 78, 85, 86, 83, 82, '85', 85, 84, 'LULUS', '', '14', '14467097988625883508', 'siswa'),
(125, 'MUHAMMAD ZULIANSYAH FADIL AZHAR', 'serang', '8 September 2006', 'Suhaemi', '212210528', '0041602122', 86, 90, 88, 82, 88, 89, 90, 82, 85, 96, 85, 88, '86', 86, 87, 'LULUS', '', '14', '03698552620046933438', 'siswa'),
(126, 'NAUFAL FARRAS AZIZ', 'serang', '20 Agustus 2006', 'Satra', '212210336', '0061255105', 85, 86, 83, 79, 83, 89, 79, 81, 85, 80, 84, 80, '84', 84, 83, 'LULUS', '', '14', '07446927603109992036', 'siswa'),
(127, 'NAUFAL MABRUR', 'serang', '24 September 2005', 'Abror', '212210337', '0057643530', 82, 86, 79, 79, 79, 85, 79, 80, 85, 84, 78, 78, '83', 83, 81, 'LULUS', '', '14', '28970459958694944201', 'siswa'),
(128, 'NURHAYATI', 'serang', '11 November 2005', 'Wahid ', '212210355', '0055258897', 86, 89, 85, 79, 85, 85, 79, 80, 85, 80, 85, 79, '86', 86, 83, 'LULUS', '', '14', '00596292307659811193', 'siswa'),
(129, 'PONDRA BEKTI NUSANTORO', 'Serang', '30 Januari 2006', 'Amir', '212210370', '0064046693', 84, 87, 87, 82, 87, 98, 90, 92, 85, 94, 88, 99, '87', 87, 89, 'LULUS', '', '14', '58581818056732955902', 'siswa'),
(130, 'RIAN ILYASA', 'Serang', '31 Oktober 2005', 'Rudi Sugiarto', '212210392', '0061597302', 86, 89, 86, 79, 86, 88, 90, 92, 85, 88, 85, 86, '85', 85, 86, 'LULUS', '', '14', '47587255733593542594', 'siswa'),
(131, 'RIDHO HARDIAN PRATAMA', 'Serang', '18 April 2006', 'Suwito', '212210393', '0066491026', 82, 88, 80, 80, 80, 88, 81, 90, 85, 82, 82, 79, '84', 84, 83, 'LULUS', '', '14', '07188358105063603371', 'siswa'),
(132, 'RIZKY ALPAREZA', 'Serang', '16 Desember 2005', 'Arsudin', '212210413', '0053524436', 86, 90, 90, 80, 90, 96, 90, 90, 85, 98, 86, 93, '88', 88, 89, 'LULUS', '', '14', '56690479390851717605', 'siswa'),
(133, 'RUBEN HAIKAL SIREGAR', 'Serang', '23 Juni 2006', 'Bitner Siregar ', '212210420', '0063617217', 80, 90, 86, 80, 86, 89, 89, 90, 85, 80, 83, 93, '86', 86, 85, 'LULUS', '', '14', '41866006875036905581', 'siswa'),
(134, 'YUGO HARIS PRASETYO', 'Serang', '27 Februari 2006', 'Yohanes Kriswanto', '212210518', '0065508947', 87, 89, 90, 88, 90, 89, 89, 90, 85, 94, 88, 94, '86', 86, 88, 'LULUS', '', '14', '80341795196779239594', 'siswa'),
(135, 'ADITIA MAULANA', 'Pandeglang', '24 Maret 2006', 'Jumadi', '212210010', '0062539965', 82, 80, 80, 78, 80, 80, 78, 80, 79, 80, 80, 80, '80', 84, 80, 'LULUS', '', '9', '46599187124829165375', 'siswa'),
(136, 'ADRIAN SAPUTRA', 'Tangerang', '14 Agustus 2005', 'Anwar', '212210014', '0059229497', 85, 88, 80, 85, 85, 85, 83, 82, 84, 80, 83, 79, '91', 90, 84, 'LULUS', '', '9', '23428143188858175449', 'siswa'),
(137, 'APIF HIDAYATULLAH', 'Serang', '19 April 2006', 'Muh. Toha', '212210058', '0065621822', 83, 84, 80, 85, 85, 80, 83, 82, 84, 84, 80, 81, '83', 84, 82, 'LULUS', '', '9', '45138758518021523878', 'siswa'),
(138, 'ARI SAPUTRA', 'Serang', '01 Oktober 2005', 'Jaenudin', '212210062', '0055845618', 87, 85, 80, 81, 85, 83, 78, 78, 79, 82, 80, 78, '80', 80, 81, 'LULUS', '', '9', '48068116185400606946', 'siswa'),
(139, 'DAMA EGY TIRTAJAYA', 'Serang', '01 Februari 2006', 'Edi Majedi', '212210085', '0065589596', 85, 82, 80, 80, 80, 79, 78, 88, 79, 85, 78, 78, '80', 80, 80, 'LULUS', '', '9', '80454048380029973681', 'siswa'),
(140, 'DEDE ARIPIN', 'Serang', '13 Januari 2006', 'Nata', '212210092', '0065761542', 83, 81, 85, 80, 85, 80, 78, 78, 79, 86, 78, 79, '80', 83, 81, 'LULUS', '', '9', '30746914829469536228', 'siswa'),
(141, 'DZAKY SANDANA', 'Jakarta', '01 September 2005', 'Johana', '212210106', '0059512776', 85, 89, 85, 83, 85, 80, 81, 88, 82, 87, 80, 79, '91', 90, 84, 'LULUS', '', '9', '11788226165091532981', 'siswa'),
(142, 'EDHO ILLAH ASYUKRI', 'Serang', '04 Oktober 2006', 'Syukri A. Karim', '212210110', '0069877409', 89, 87, 80, 86, 85, 85, 78, 79, 80, 87, 82, 79, '91', 90, 84, 'LULUS', '', '9', '30039054745680199218', 'siswa'),
(143, 'INDRA SIALLAGAN', 'Barisan Mulia', '03 November 2005', 'Jahormat Siallagan', '212210179', '0055435257', 80, 88, 80, 80, 80, 80, 78, 80, 79, 86, 80, 79, '80', 89, 81, 'LULUS', '', '9', '42248432712833433401', 'siswa'),
(144, 'JAJAT CAHAYA', 'Serang', '21 November 2005', 'Janti', '212210193', '0057825781', 80, 80, 78, 79, 80, 78, 78, 82, 79, 78, 78, 80, '80', 85, 79, 'LULUS', '', '9', '34408253890332335242', 'siswa'),
(145, 'JAMALUDIN', 'Serang', '17 Juni 2006', 'Markawi', '212210194', '0063204843', 89, 88, 80, 82, 85, 83, 78, 78, 79, 87, 78, 80, '80', 90, 82, 'LULUS', '', '9', '75664283476211505254', 'siswa'),
(146, 'JANDIA WASTI', 'Serang', '08 Juni 2006', 'Junaedi', '212210196', '0068961817', 80, 82, 80, 78, 80, 79, 78, 78, 79, 86, 78, 78, '80', 80, 79, 'LULUS', '', '9', '16090815979985250140', 'siswa'),
(147, 'JEFRY ANTO', 'Serang', '02 Maret 2006', 'Seripah', '212210198', '0062939612', 85, 87, 87, 82, 85, 82, 78, 85, 79, 86, 85, 80, '81', 90, 83, 'LULUS', '', '9', '59562662087040394893', 'siswa'),
(148, 'KORIYANDI', 'Serang', '25 Oktober 2005', 'Komariyah', '212210208', '0063198361', 87, 81, 85, 84, 85, 82, 78, 78, 79, 86, 78, 83, '80', 90, 82, 'LULUS', '', '9', '35357672561604833857', 'siswa'),
(149, 'MAD ROFIK', 'Serang', '06 April 2006', 'Markani', '212210231', '0068600612', 89, 88, 80, 80, 80, 82, 78, 83, 79, 86, 80, 81, '80', 85, 82, 'LULUS', '', '9', '44159111545035408585', 'siswa'),
(150, 'MASRONI', 'Serang', '05 April 2005', 'Wawi', '212210247', '0044139767', 90, 88, 80, 80, 85, 82, 78, 78, 79, 86, 78, 79, '80', 82, 81, 'LULUS', '', '9', '53173140216419253862', 'siswa'),
(151, 'MUHAMAD SAID', 'Serang', '26 September 2006', 'Namin', '212210286', '0061720592', 85, 81, 80, 79, 80, 80, 78, 85, 79, 87, 78, 80, '80', 80, 80, 'LULUS', '', '9', '45917958114676524905', 'siswa'),
(152, 'MUHAMMAD FIQRI', 'Serang', '28 April 2006', 'Karyani', '212210294', '0061530654', 84, 83, 80, 84, 85, 79, 78, 78, 80, 86, 78, 78, '82', 83, 81, 'LULUS', '', '9', '19632858873981550276', 'siswa'),
(153, 'MUHAMMAD RIZKI', 'Serang', '10 Mei 2006', 'Suroto', '212210303', '0062562729', 86, 86, 80, 80, 85, 82, 78, 78, 80, 84, 78, 79, '82', 88, 81, 'LULUS', '', '9', '26858110204877600687', 'siswa'),
(154, 'MUHAMAD WISNU PRIBADI', 'Serang', '31 Mei 2005', 'Ahmad Subari', '212210309', '0053149490', 82, 80, 80, 79, 80, 79, 78, 78, 79, 85, 78, 78, '80', 80, 79, 'LULUS', '', '9', '88680108203868705476', 'siswa'),
(155, 'NAUFAL DZAKY', 'Rangkas Bitung', '11 Maret 2006', 'Yoyok Sayudi', '212210335', '0065050458', 82, 80, 80, 82, 85, 80, 78, 78, 80, 78, 78, 78, '83', 83, 80, 'LULUS', '', '9', '91703119200338438192', 'siswa'),
(156, 'NOVAL', 'Serang', '14 Agustus 2006', 'Umaroh', '212210347', '0052658915', 82, 82, 80, 79, 80, 80, 78, 82, 79, 79, 78, 78, '80', 80, 79, 'LULUS', '', '9', '34297272274969868702', 'siswa'),
(157, 'NOVAL RAMADHANI SAPUTRA', 'Klaten', '12 November 2005', 'Sugiman', '212210348', '0054010374', 83, 82, 80, 82, 85, 80, 78, 82, 80, 84, 78, 79, '82', 85, 81, 'LULUS', '', '9', '60875303096651485726', 'siswa'),
(158, 'RAMADHAN', 'Jakarta', '01 November 2005', 'Muhamad Nurdin', '212210400', '0058260914', 84, 81, 80, 80, 80, 79, 78, 78, 79, 84, 78, 78, '80', 80, 79, 'LULUS', '', '9', '84504956966873648974', 'siswa'),
(159, 'RIYAN', 'Serang', '03 Februari 2005', 'Abudin', '212210404', '0056390899', 83, 81, 83, 82, 80, 79, 78, 82, 79, 83, 78, 78, '80', 80, 80, 'LULUS', '', '9', '79543978114568105743', 'siswa'),
(160, 'RIZKI AKILA IBRAHIM', 'Serang', '24 Mei 2006', 'Lamri', '212210407', '0063234707', 89, 89, 80, 84, 85, 85, 89, 85, 90, 83, 85, 85, '91', 90, 86, 'LULUS', '', '9', '49717058826708923647', 'siswa'),
(161, 'ROHIMSAH', 'Serang', '14 April 2005', 'Rasam', '212210416', '0053543637', 89, 81, 80, 90, 85, 81, 81, 79, 82, 84, 78, 80, '80', 90, 82, 'LULUS', '', '9', '48825797412124053180', 'siswa'),
(162, 'RUDIN', 'Serang', '04 Maret 2006', 'Naca', '212210421', '0068812245', 84, 86, 80, 78, 80, 79, 78, 78, 79, 82, 78, 78, '80', 80, 80, 'LULUS', '', '9', '36983355019374604909', 'siswa'),
(163, 'SARMIN', 'Serang', '02 Oktober 2003', 'Sakar', '212210438', '0037378232', 88, 81, 80, 83, 85, 82, 83, 82, 84, 85, 78, 79, '85', 90, 83, 'LULUS', '', '9', '74358522206977468826', 'siswa'),
(164, 'TEGAR WICAKSONO', 'Serang', '22 Juli 2005', 'Muhamad Suryanto', '212210500', '0058413097', 87, 84, 80, 82, 85, 85, 87, 80, 88, 84, 80, 78, '83', 90, 83, 'LULUS', '', '9', '49196126642744257707', 'siswa'),
(165, 'TIAS ASOR', 'Serang', '17 April 2005', 'Raman', '212210504', '0059352831', 84, 83, 78, 81, 80, 79, 78, 90, 79, 87, 78, 79, '80', 81, 81, 'LULUS', '', '9', '23812731382170322559', 'siswa'),
(166, 'AAN ANDRIANI', 'SERANG', '3 OKTOBER 2006', 'AMNAH ', '212210002', '0069719487', 81, 85, 80, 85, 80, 84, 81, 86, 80, 85, 78, 82, '83', 78, 81, 'LULUS', '', '10', '00499510450797765162', 'siswa'),
(167, 'ADITYA JUNIARDI', 'SERANG', '1 JUNI 2006', 'DJUMADI', '212210012', '0065671389', 83, 89, 80, 84, 80, 85, 86, 78, 80, 86, 82, 82, '85', 80, 82, 'LULUS', '', '10', '66226561475022556165', 'siswa'),
(168, 'AGES SINARAN', 'TANGERANG', '15 MARET 2006', 'UKON', '212210020', '0064980034', 79, 85, 78, 80, 80, 80, 83, 79, 80, 82, 77, 85, '84', 75, 80, 'LULUS', '', '10', '59637211837161638668', 'siswa'),
(169, 'AHMAD FIRDAUS', 'BERAU', '22 September 2005', 'SAIMAD', '212210025', '0057814217', 78, 85, 80, 81, 80, 85, 78, 82, 80, 79, 75, 78, '82', 75, 79, 'LULUS', '', '10', '44906710175498228220', 'siswa'),
(170, 'AHMAD PATUR RIDWAN', 'SERANG', '15 September 2006', 'HUSEN ', '212210027', '0064023233', 76, 85, 80, 78, 80, 85, 78, 78, 80, 79, 78, 79, '84', 78, 79, 'LULUS', '', '10', '75734511588855541064', 'siswa'),
(171, 'DANI', 'SERANG', '26 MEI 2005', 'KAMISAH ', '212210087', '0057903550', 77, 85, 80, 80, 80, 85, 78, 80, 80, 79, 77, 79, '84', 78, 80, 'LULUS', '', '10', '38776345019955600400', 'siswa'),
(172, 'DICKI RAHMADANI', 'SERANG', '14 OKTOBER 2006', 'NURSAIUN', '212210100', '0076852611', 76, 85, 78, 78, 80, 85, 78, 75, 80, 78, 76, 78, '80', 80, 79, 'LULUS', '', '10', '18719630862851918376', 'siswa'),
(173, 'DZIKRI FATURROHMAN', 'SERANG', '10 FEBRUARI 2006', 'USMAN ', '212210108', '0066694909', 78, 85, 80, 81, 80, 85, 78, 80, 80, 80, 81, 79, '85', 89, 81, 'LULUS', '', '10', '77643551849116254302', 'siswa'),
(174, 'ENDIN KOSASIH', 'SERANG', '28 0KTOBER 2006', 'KARNIAH', '212210115', '0065380911', 75, 85, 79, 78, 80, 80, 78, 77, 80, 78, 78, 78, '80', 75, 78, 'LULUS', '', '10', '05777906644941840713', 'siswa'),
(175, 'FARHAN ANDANI', 'SERANG', '21 MARET 2006 ', 'ROHMANI ', '212210126', '0065310864', 75, 85, 79, 80, 80, 80, 78, 80, 80, 78, 76, 78, '80', 75, 78, 'LULUS', '', '10', '76220337808924800601', 'siswa'),
(176, 'FARIS TRISNO MULIA', 'SERANG', '23 MARET 2006', 'SUTRISNO', '212210129', '0053172415', 88, 90, 86, 86, 85, 88, 90, 80, 85, 80, 85, 80, '93', 95, 86, 'LULUS', '', '10', '35996443471937306839', 'siswa'),
(177, 'FEEBYI  NOVALDYI', 'SERANG', '21 FEBRUARI 2006', 'MASRI', '212210139', '0064215602', 80, 85, 80, 80, 80, 85, 78, 81, 80, 80, 77, 78, '83', 82, 80, 'LULUS', '', '10', '45714860050083991789', 'siswa'),
(178, 'HARDIYANSYAH', 'SERANG', '8 JANUARI 2007', 'ASNIAH', '212210160', '0079175259', 85, 85, 80, 87, 80, 85, 78, 82, 80, 86, 86, 80, '90', 86, 83, 'LULUS', '', '10', '71782778953634382374', 'siswa'),
(179, 'HENDI', 'SERANG', '2 FEBRUARI 2005', 'YANTO ', '212210161', '0057890412', 76, 85, 86, 80, 80, 86, 78, 78, 80, 78, 75, 78, '82', 84, 80, 'LULUS', '', '10', '03906709129089200221', 'siswa'),
(180, 'HOLIL HIDAYATULLOH', 'SERANG', '7 JULI 2006', 'SUSI MARDIANAH', '212210164', '0068769806', 82, 85, 85, 85, 80, 85, 87, 84, 80, 80, 88, 78, '83', 87, 83, 'LULUS', '', '10', '40328500944640704387', 'siswa'),
(181, 'IHSAN MAULANA', 'LEBAK', '29 September 2005', 'SUKADI', '212210170', '0057496555', 78, 85, 80, 84, 80, 85, 78, 86, 80, 84, 80, 80, '86', 85, 82, 'LULUS', '', '10', '69181696374795893907', 'siswa'),
(182, 'KSATRIA ASAD MAHA MANSYURIN', 'CILEGON', '9 MEI 2005', 'HENDI HERDIANSYAH', '212210210', '0053428891', 77, 85, 80, 83, 80, 85, 78, 80, 80, 79, 81, 80, '84', 88, 81, 'LULUS', '', '10', '42554540290176734664', 'siswa'),
(183, 'M RIZKI FIRDAUS', 'WAY KANAN ', '30 JULI 2006', 'AGUS', '212210226', '0067234110', 79, 85, 80, 83, 80, 85, 78, 80, 80, 82, 78, 79, '85', 83, 81, 'LULUS', '', '10', '20912336114159164109', 'siswa'),
(184, 'MARVIN SUBHASTIAN', 'SERANG', '1 MARET 2005', 'HAYATI NUFUS', '212210243', '0053147136', 75, 85, 78, 78, 80, 80, 78, 78, 80, 78, 75, 79, '80', 75, 78, 'LULUS', '', '10', '32491808237094939178', 'siswa'),
(185, 'MOCH AGUNG RAMADHON', 'TANGERANG ', '10 OKTOBER 2006', 'ABDUL ROHMAN ', '212210259', '0066896192', 82, 85, 78, 80, 80, 85, 78, 80, 80, 84, 78, 80, '80', 75, 80, 'LULUS', '', '10', '50259054705096320047', 'siswa'),
(186, 'MUHAMAD DAUD EFENDI', 'SERANG', '4 FEBRUARI 2004', 'SANIMAN ', '212210271', '0047179959', 75, 85, 78, 78, 80, 80, 83, 78, 80, 78, 75, 78, '80', 80, 79, 'LULUS', '', '10', '89056197243055209985', 'siswa'),
(187, 'MUHAMAD RIZKI', 'SERANG', '10 April 2006', 'SUHENDRI', '212210284', '0061359688', 76, 85, 83, 86, 80, 80, 85, 84, 80, 78, 80, 79, '80', 83, 81, 'LULUS', '', '10', '46562964355159817272', 'siswa'),
(188, 'MUHAMMAD FAUZAN AKMAL', 'SERANG', '4 November 2005', 'AGUS SUDIRJA', '212210292', '0054869590', 77, 85, 80, 82, 80, 89, 81, 84, 80, 84, 80, 80, '91', 86, 82, 'LULUS', '', '10', '57524065291418999064', 'siswa'),
(189, 'MUHAMMAD ILMAN AGUSTINO', 'SERANG', '17 AGUSTUS 2006', 'HASAN BASRI', '212210296', '0062674685', 76, 85, 80, 85, 80, 85, 78, 80, 80, 78, 75, 79, '90', 80, 80, 'LULUS', '', '10', '54779301104960313001', 'siswa'),
(190, 'MUKLAS', 'SERANG', '1 JANUARI 2004', 'MINI', '212210310', '0042364417', 75, 85, 80, 80, 80, 85, 78, 80, 80, 78, 76, 79, '80', 78, 79, 'LULUS', '', '10', '05810068958477769767', 'siswa'),
(191, 'RAMDAN ARDIANSYAH', 'SERANG', '04 OKTOBER 2005', 'SANWANI', '212210378', '0066178684', 75, 85, 80, 80, 80, 85, 78, 77, 80, 78, 75, 80, '80', 82, 79, 'LULUS', '', '10', '59654954519136305817', 'siswa'),
(192, 'RETNO', 'SERANG', '2 JUNI 2005', 'BUDI HARYONO', '212210386', '0056304978', 76, 85, 80, 82, 80, 88, 78, 80, 80, 78, 80, 79, '80', 79, 80, 'LULUS', '', '10', '99165147344030873710', 'siswa'),
(193, 'REZAL ADITYA RAMADHAN', 'WONOGIRI ', '5 OKTOBER  2005', 'PAIMIN', '212210391', '0057756432', 75, 85, 80, 80, 80, 87, 78, 81, 80, 78, 75, 79, '80', 78, 79, 'LULUS', '', '10', '59024351036675154628', 'siswa'),
(194, 'SANDI SAPUTRA', 'SERANG', '20 AGUSTUS 2006', 'MARSANI ', '212210433', '0066258426', 75, 85, 79, 78, 80, 85, 78, 79, 80, 78, 75, 79, '80', 75, 79, 'LULUS', '', '10', '01626450146248318838', 'siswa'),
(195, 'SUHHADI', 'SERANG', '13 November 2006', 'SAMADI', '212210481', '0062839892', 75, 85, 78, 78, 80, 80, 78, 75, 80, 78, 75, 78, '80', 78, 78, 'LULUS', '', '10', '34738304645195890635', 'siswa'),
(196, 'SUPRIYADI', 'SERANG', '5 MEI 2006', 'HADIJAH', '212210488', '0067663546', 80, 85, 85, 85, 80, 85, 81, 84, 80, 78, 82, 79, '90', 88, 83, 'LULUS', '', '10', '57602089245040724215', 'siswa'),
(197, 'TIO MAULANA', 'SERANG', '7 JULI 2005', 'SANIMAN ', '212210505', '0058255928', 75, 85, 78, 78, 80, 85, 78, 80, 80, 78, 76, 78, '80', 70, 78, 'LULUS', '', '10', '25009979736007423320', 'siswa'),
(198, 'YUSUF', 'SERANG', '10 April 2005', 'SUPARNA', '212210519', '0056254638', 82, 85, 85, 80, 80, 85, 78, 80, 80, 78, 78, 78, '89', 87, 81, 'LULUS', '', '10', '91068149962258273211', 'siswa'),
(199, 'ANA NURFITRIANA', 'Serang', '01 Desember 2006', 'Awam', '212210045', '0062825446', 91, 83, 85, 87, 85, 78, 90, 84, 90, 80, 80, 82, '88', 96, 85, 'LULUS', '', '3', '80400082309914695677', 'siswa'),
(200, 'ANDIKA KRISNA WIJAYA', 'Serang', '11 Februai 2006', 'Didik Purwanto', '212210047', '0063763954', 88, 81, 80, 80, 80, 78, 90, 80, 90, 78, 88, 80, '84', 82, 82, 'LULUS', '', '3', '91125286140524486051', 'siswa'),
(201, 'ANGRAENI SAFITRI', 'Serang', '06 Desember 2006', 'Herman', '212210052', '0063684972', 89, 82, 85, 85, 85, 76, 90, 84, 90, 84, 82, 82, '88', 96, 85, 'LULUS', '', '3', '85592842083332955206', 'siswa'),
(202, 'ANIATUN NABILA', 'Serang', '20 Mei 2006', 'Jahuri', '212210054', '0061873453', 89, 82, 85, 85, 85, 76, 90, 80, 90, 78, 82, 80, '87', 95, 84, 'LULUS', '', '3', '89413919764602194392', 'siswa'),
(203, 'ARIEL DESFRENDI MARBUN', 'Unteholing', '17 Desember 2006', 'Jepta Urin Marbun', '212210063', '0068606918', 80, 83, 90, 92, 85, 86, 90, 82, 90, 82, 88, 81, '90', 97, 86, 'LULUS', '', '3', '77811817074896119688', 'siswa'),
(204, 'DAVA TRY HERDIYAN', 'Serang', '20 Januari 2006', 'Soma', '212210088', '0068223691', 89, 80, 87, 90, 85, 86, 90, 82, 90, 78, 86, 80, '90', 97, 86, 'LULUS', '', '3', '29321732265262434970', 'siswa'),
(205, 'ERIC ANDRY SETYAWAN', 'Semarang', '06 Desember 2005', 'Tri Hariyadi', '212210116', '0056227823', 91, 85, 86, 90, 85, 80, 90, 80, 90, 82, 85, 84, '90', 98, 86, 'LULUS', '', '3', '71511650202857872614', 'siswa'),
(206, 'GILANG FAIZ TURANGGA', 'Kuningan', '26 November 2005', 'Muhammad Harun', '212210153', '0054982786', 86, 79, 80, 80, 80, 78, 79, 82, 80, 78, 78, 80, '80', 89, 80, 'LULUS', '', '3', '01659498188142502908', 'siswa'),
(207, 'IRVINA FEBRIYANI', 'Serang', '12 Februari 2006', 'Giyarno', '212210185', '0063916593', 90, 85, 85, 82, 85, 76, 84, 82, 84, 90, 86, 84, '88', 96, 85, 'LULUS', '', '3', '01982171942894442526', 'siswa'),
(208, 'JAMHARI', 'Serang', '23 Juni 2006', 'Abdul Amat', '212210195', '0068267343', 89, 80, 85, 80, 80, 76, 86, 80, 86, 82, 81, 80, '88', 94, 83, 'LULUS', '', '3', '03701283848539983093', 'siswa'),
(209, 'KRISNA WAHYU PRADITA', 'Pati', '23 Mei 2006', 'Sutrisno', '212210209', '0067900424', 90, 85, 87, 90, 85, 78, 86, 84, 86, 84, 86, 81, '90', 96, 86, 'LULUS', '', '3', '35965753239562620903', 'siswa'),
(210, 'MARLANI  LOBAT', 'Sorong', '12 Agustus 2004', 'Orgenes lobat', '212210241', '0048126543', 80, 79, 83, 80, 80, 76, 79, 78, 80, 80, 78, 79, '84', 95, 80, 'LULUS', '', '3', '72165244340788329116', 'siswa'),
(211, 'MEGA OKTAVIANI', 'Serang', '17 Oktober 2006', 'Memed David', '212210254', '0069893593', 90, 81, 83, 82, 80, 82, 84, 78, 84, 86, 81, 81, '85', 95, 83, 'LULUS', '', '3', '45287289332111725925', 'siswa'),
(212, 'MELINDA', 'Serang', '17 Oktober 2006', 'Misna', '212210255', '0066239090', 89, 81, 85, 82, 80, 82, 78, 78, 80, 82, 84, 80, '85', 93, 82, 'LULUS', '', '3', '34143189363712829496', 'siswa'),
(213, 'MURNI DINA LESTARI', 'Serang', '17 Juli 2006', 'Zarkoni', '212210312', '0065759397', 92, 85, 87, 90, 85, 80, 90, 80, 90, 90, 83, 84, '88', 97, 87, 'LULUS', '', '3', '43856721110581903220', 'siswa'),
(214, 'MUTIARA SHANTY', 'Serang', '27 Oktober 2005', 'Didik Relawanto', '212210317', '0056428504', 93, 85, 87, 90, 85, 82, 89, 80, 89, 80, 87, 84, '88', 95, 86, 'LULUS', '', '3', '75974447649208569013', 'siswa'),
(215, 'NADILLA FRATIWI', 'Serang', '24 Februari 2007', 'Kasbullah', '212210323', '0075097430', 91, 85, 85, 82, 80, 78, 87, 82, 87, 79, 81, 80, '88', 97, 84, 'LULUS', '', '3', '87756797983939744365', 'siswa'),
(216, 'NURHAYATI', 'Serang', '05 Mei 2006', 'Sayunah', '212210356', '0062154938', 90, 81, 85, 85, 80, 76, 82, 80, 82, 79, 80, 80, '84', 97, 82, 'LULUS', '', '3', '03686824009484387465', 'siswa'),
(217, 'PEBI RAHIMAH', 'Serang', '24 Februari 2006', 'Remidin', '212210367', '0077858560', 88, 79, 84, 82, 80, 76, 79, 79, 80, 78, 78, 79, '84', 94, 81, 'LULUS', '', '3', '50714915370447069064', 'siswa'),
(218, 'QUROTUN AENI', 'Serang', '11 Januari 2006', 'Marhadi', '212210372', '0068459781', 89, 80, 85, 82, 85, 78, 88, 82, 88, 82, 82, 80, '87', 96, 84, 'LULUS', '', '3', '81613577409643015714', 'siswa'),
(219, 'RADEN GHANI ADITYA RIZKI SAPUTRA', 'Cilegon', '10 Maret 2006', 'Raden Gungun Suryana Putra', '212210373', '0065792676', 92, 85, 85, 92, 85, 86, 88, 84, 88, 82, 88, 84, '90', 97, 87, 'LULUS', '', '3', '61373678061379977400', 'siswa'),
(220, 'RIZKY RIZALDI', 'Serang', '13 April 2006', 'Dahlan', '212210414', '0064100177', 88, 79, 80, 80, 80, 78, 79, 82, 80, 80, 80, 80, '83', 84, 80, 'LULUS', '', '3', '64743578182659736340', 'siswa'),
(221, 'SAFITRI JULIYANA', 'Serang', '17 Juli 2005', 'Ernawati', '212210426', '0058634022', 90, 84, 85, 85, 85, 78, 84, 88, 84, 80, 79, 83, '88', 97, 85, 'LULUS', '', '3', '32204281523323119019', 'siswa'),
(222, 'SALSABILAH MAHARANI', 'Palembang', '10 Mei 2006', 'Ahmad Ghozali', '212210430', '0064792401', 92, 83, 85, 92, 85, 86, 84, 88, 84, 82, 84, 83, '88', 97, 86, 'LULUS', '', '3', '30943236398153114692', 'siswa'),
(223, 'SANI', 'Serang', '18 Agustus 2005', 'Samin', '212210434', '0051211659', 90, 85, 83, 80, 80, 78, 90, 84, 90, 86, 80, 83, '87', 96, 85, 'LULUS', '', '3', '33767823150652050943', 'siswa'),
(224, 'SANIMAH', 'Serang', '08 Juli 2006', 'Sini', '212210436', '0061737532', 90, 83, 83, 80, 80, 76, 86, 82, 86, 80, 81, 80, '87', 95, 83, 'LULUS', '', '3', '32199316041898346682', 'siswa'),
(225, 'SEPTI RAHMADANI', 'Serang', '26 September 2006', 'Fahruroji', '212210446', '0064687922', 92, 85, 85, 85, 85, 86, 90, 84, 90, 82, 86, 84, '87', 97, 87, 'LULUS', '', '3', '15783163910371733998', 'siswa'),
(226, 'SITI ANISAH', 'Serang', '12 September 2006', 'Kurtubi', '212210455', '0062870177', 89, 83, 85, 80, 80, 76, 82, 84, 82, 80, 81, 81, '84', 95, 83, 'LULUS', '', '3', '42890421270739563548', 'siswa'),
(227, 'SITI FATIMAH', 'Serang', '07 Februari 2006', 'Supendi', '212210458', '0064505987', 89, 83, 85, 80, 80, 78, 82, 82, 82, 80, 79, 80, '87', 94, 82, 'LULUS', '', '3', '06612175269163615531', 'siswa'),
(228, 'SITI FITRIAH', 'Serang', '26 September 2006', 'Djahidi', '212210459', '0067246119', 90, 82, 85, 82, 80, 76, 88, 81, 88, 80, 82, 80, '85', 94, 83, 'LULUS', '', '3', '51216490815418864701', 'siswa'),
(229, 'SITI NURMAYA', 'Serang', '13 Juli 2005', 'Yahya', '212210467', '0053033613', 89, 81, 83, 80, 80, 78, 79, 85, 80, 80, 80, 80, '85', 95, 82, 'LULUS', '', '3', '54332143960570137277', 'siswa'),
(230, 'SOPWANUDIN', 'Serang', '01 Desember 2006', 'Suebah', '212210476', '0069301990', 89, 82, 85, 80, 80, 78, 79, 80, 80, 82, 80, 81, '85', 84, 81, 'LULUS', '', '3', '82507817919257473056', 'siswa'),
(231, 'THANIA ARYUANI NINGSIH', 'Cilegon', '22 Desember 2005', 'Suningsih', '212210502', '0055063689', 89, 83, 86, 82, 80, 76, 90, 85, 90, 80, 81, 83, '86', 94, 84, 'LULUS', '', '3', '35871665687491153074', 'siswa'),
(232, 'UMAR ADIANSYAH', 'Serang', '28 Juli 2005', 'Rapudin', '212210509', '0053753802', 89, 84, 82, 80, 80, 82, 79, 85, 80, 80, 81, 80, '85', 90, 82, 'LULUS', '', '3', '73355742990305179261', 'siswa'),
(233, 'AKA ANAS', 'Pandeglang', '30 Oktober 2006', 'Samsudin', '212210033', '0054463937', 88, 83, 90, 90, 85, 76, 90, 88, 92, 80, 85, 90, '96', 90, 87, 'LULUS', '', '4', '65455104253397567137', 'siswa'),
(234, 'ALYA MUKHBITA', 'Serang', '24 September 2005', 'Marwan Darmi', '212210042', '0054270927', 83, 82, 85, 80, 84, 76, 86, 82, 80, 80, 82, 84, '94', 90, 83, 'LULUS', '', '4', '11889423868149608975', 'siswa'),
(235, 'ATHUR AFRIYANSYAH', 'Serang', '18 Maret 2005', 'Triyana', '212210070', '0055923773', 85, 82, 85, 85, 84, 76, 88, 82, 80, 82, 80, 80, '96', 90, 83, 'LULUS', '', '4', '36699206238889890743', 'siswa'),
(236, 'AULIA AZHAR ARUM WIJAYANTI', 'Kranganyar', '5 November 2005', 'Wagimin', '212210072', '0051471754', 86, 83, 86, 80, 83, 76, 79, 90, 81, 80, 80, 80, '94', 84, 83, 'LULUS', '', '4', '89793853945108092472', 'siswa'),
(237, 'EKA WULANDARI', 'Serang', '11 Maret 2006', 'Namin', '212210112', '0068963832', 85, 80, 82, 80, 84, 78, 79, 77, 81, 79, 80, 80, '95', 84, 81, 'LULUS', '', '4', '30559046136947650672', 'siswa'),
(238, 'ERWIN SYAH', 'Serang', '26 September 2006', 'Sukanta Alm.', '212210118', '0064889816', 82, 82, 83, 85, 80, 76, 79, 79, 83, 79, 80, 80, '88', 83, 81, 'LULUS', '', '4', '53918378369332360449', 'siswa'),
(239, 'EVERTH AYANDISO MIRIMO', 'Biak', '9 Oktober 2006', 'Silas Mirino', '212210016', '0064712883', 80, 79, 82, 78, 82, 76, 84, 78, 76, 80, 80, 80, '89', 83, 80, 'LULUS', '', '4', '63051665645901315065', 'siswa'),
(240, 'FEBRIYANSAH', 'Serang', '13 Februari 2006', 'Jamaludin', '212210138', '0066642550', 86, 86, 85, 90, 85, 76, 88, 84, 90, 80, 80, 80, '96', 90, 85, 'LULUS', '', '4', '05912689523419250297', 'siswa'),
(241, 'FRESHA NAILUFA', 'Serang', '28 Juni 2006', 'Muhammad Anani', '212210150', '0063161923', 84, 79, 83, 78, 82, 76, 79, 77, 78, 80, 83, 83, '87', 84, 80, 'LULUS', '', '4', '36502859879860692422', 'siswa'),
(242, 'IRRAM RIZKI MAULANA', 'Bandung', '31 Mei 2006', 'Deni Somantri', '212210184', '0069321776', 84, 81, 86, 80, 84, 82, 90, 85, 89, 86, 80, 80, '96', 87, 85, 'LULUS', '', '4', '61673827472890564299', 'siswa');
INSERT INTO `tb_siswa_tekno` (`id_siswa`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `nama_org_tua`, `nis_siswa`, `nisn_siswa`, `pai`, `pkn`, `b_ind`, `mtk`, `sejindo`, `b_ing`, `senbud`, `pjok`, `mulok`, `simdig`, `fisika`, `kimia`, `dasar_program_keahlian`, `kompetensi_keahlian`, `rata_rata`, `status_kelulusan`, `password`, `id_kelas`, `token`, `status`) VALUES
(243, 'KATHIA NUR AISYAH SEPTIAWATI', 'Jakarta', '18 September 2005', 'Wage Sugito', '212210204', '0057124546', 86, 82, 86, 85, 85, 82, 90, 85, 90, 84, 85, 86, '96', 87, 86, 'LULUS', '', '4', '43141989475587615217', 'siswa'),
(244, 'KAYLA SABILA', 'Serang', '21 Januari 2006', 'Ahmad Suhendar', '212210205', '0061289426', 82, 85, 84, 85, 83, 76, 84, 82, 84, 84, 80, 80, '91', 83, 83, 'LULUS', '', '4', '06551913852120068282', 'siswa'),
(245, 'KHOIRIL ANAM', 'Serang', '10 Maret 2005', 'Kasbi', '212210206', '0052248997', 83, 85, 85, 78, 84, 76, 86, 79, 89, 88, 80, 80, '96', 87, 84, 'LULUS', '', '4', '82907945787502158374', 'siswa'),
(246, 'KURNIAH', 'Serang', '31 Juli 2006', 'Kodiman', '212210211', '0067739568', 83, 83, 85, 90, 83, 76, 90, 83, 83, 80, 80, 80, '95', 83, 83, 'LULUS', '', '4', '32464712387510897012', 'siswa'),
(247, 'LOLA MELISAH', 'Serang', '10 September 2005', 'Sapri', '212210222', '0055261254', 82, 81, 83, 80, 82, 76, 79, 83, 81, 80, 80, 80, '93', 82, 81, 'LULUS', '', '4', '66575804261354006735', 'siswa'),
(248, 'MASITOH', 'Serang', '29 April 2006', 'Armin', '212210246', '0067527647', 83, 82, 85, 82, 83, 78, 84, 82, 90, 80, 80, 80, '95', 85, 83, 'LULUS', '', '4', '61428263682439046449', 'siswa'),
(249, 'MAYA', 'Serang', '15 Oktober 2006', 'Madsana', '212210253', '0067527674', 83, 84, 83, 80, 83, 78, 79, 79, 81, 80, 80, 80, '92', 83, 81, 'LULUS', '', '4', '59752102767657988419', 'siswa'),
(250, 'MUSLIK', 'Serang', '21 Maret 2006', 'Acang', '212210314', '0065394966', 82, 79, 83, 78, 80, 76, 79, 80, 83, 86, 80, 80, '86', 85, 81, 'LULUS', '', '4', '37218738872431756929', 'siswa'),
(251, 'MUTIARA SHINTA', 'Serang', '27 Oktober 2005', 'Didik Relawanto', '212210318', '0057893340', 87, 82, 88, 90, 85, 82, 88, 85, 90, 84, 86, 90, '94', 90, 87, 'LULUS', '', '4', '36639257618557853153', 'siswa'),
(252, 'NANDA SETYANINGRUM', 'Serang', '28 Oktober 2005', 'Nana Sumarna', '212210330', '0056194964', 87, 86, 87, 90, 85, 88, 90, 85, 83, 80, 85, 87, '95', 90, 87, 'LULUS', '', '4', '26365733598048033155', 'siswa'),
(253, 'NURPADILAH', 'Serang', '11 Januari 2005', 'Kasarudin', '212210358', '0056397754', 82, 79, 83, 85, 82, 76, 88, 85, 81, 82, 80, 80, '88', 83, 82, 'LULUS', '', '4', '11107482279787973274', 'siswa'),
(254, 'RATNA NOVIYANI', 'Serang', '08 Nopember 2006', 'Subeki', '212210380', '0062089956', 82, 84, 85, 80, 83, 76, 82, 82, 89, 80, 80, 80, '93', 85, 82, 'LULUS', '', '4', '28213010392134549119', 'siswa'),
(255, 'REVA RAHMAWATI', 'Serang', '17 September 2006', 'Jusri', '212210388', '0061748548', 83, 81, 85, 82, 84, 78, 90, 79, 89, 80, 85, 88, '96', 86, 84, 'LULUS', '', '4', '44394275160307173934', 'siswa'),
(256, 'RIFA AYU NOVELIA', 'Serang', '19 November 2006', 'Wahyudi', '212210394', '0056679910', 83, 80, 83, 82, 83, 76, 84, 77, 78, 80, 80, 80, '92', 83, 81, 'LULUS', '', '4', '50899284966647449107', 'siswa'),
(257, 'SADIYAHTUL LAELAH', 'Serang', '7 Mei 2006', 'Nawawi', '212210425', '0063411993', 84, 83, 85, 85, 84, 76, 86, 82, 81, 80, 80, 80, '95', 86, 83, 'LULUS', '', '4', '04550086544867141229', 'siswa'),
(258, 'SAMAWATI', 'Serang', '30 Agustus 2004', 'Mukdar', '212210431', '0047231108', 83, 82, 84, 85, 82, 76, 82, 80, 90, 85, 80, 80, '95', 83, 83, 'LULUS', '', '4', '39930649525101532198', 'siswa'),
(259, 'SEFTILIA PUTRI', 'Serang', '29 September 2005', 'Darmin', '212210442', '0055111113', 84, 82, 83, 80, 83, 76, 79, 85, 84, 85, 80, 80, '93', 83, 82, 'LULUS', '', '4', '15369085765861087820', 'siswa'),
(260, 'SINTIA WATI', 'Serang', '23 Juli 2005', 'Sakri', '212210451', '053345630', 83, 83, 85, 80, 84, 76, 86, 80, 84, 83, 84, 84, '94', 87, 83, 'LULUS', '', '4', '92632545510655647370', 'siswa'),
(261, 'SITI YUNI', 'Serang', '9 Juli 2005', 'Alm. Samarudin', '212210473', '0051877355', 82, 82, 83, 80, 83, 76, 79, 78, 79, 83, 80, 78, '95', 83, 81, 'LULUS', '', '4', '79145004987011105008', 'siswa'),
(262, 'SULISTYAWATI', 'Serang', '23 Mei 2005', 'Azizi', '212210484', '0058765685', 87, 83, 83, 82, 83, 76, 79, 80, 86, 85, 80, 80, '95', 86, 83, 'LULUS', '', '4', '45702975317307872376', 'siswa'),
(263, 'SULKHATUN NAFSIYAH', 'Serang', '5 Juli 2006', 'Tarmedi', '212210485', '0062562361', 87, 82, 85, 85, 83, 76, 79, 80, 89, 94, 85, 85, '96', 87, 85, 'LULUS', '', '4', '86874773140855270233', 'siswa'),
(264, 'SURYA NOVA SAPUTRA', 'Karanganyar', '6 November 2005', 'Priyono', '212210490', '0057695597', 86, 88, 90, 90, 85, 86, 90, 90, 90, 85, 80, 80, '96', 90, 87, 'LULUS', '', '4', '44109190369567886639', 'siswa'),
(265, 'SYERLI', 'Serang', '20 Juni 2005', 'Asmad', '212210495', '0058942439', 88, 83, 85, 85, 83, 76, 84, 80, 84, 86, 80, 85, '95', 87, 84, 'LULUS', '', '4', '65176369166183598269', 'siswa'),
(266, 'ZULYATITA RAMADHANI', 'Blitar', '15 Oktober 2005', 'Iskandar Zulkarnain', '212210525', '0053403935', 86, 82, 87, 85, 85, 88, 86, 80, 89, 86, 85, 86, '95', 90, 86, 'LULUS', '', '4', '65892700408677261013', 'siswa'),
(267, 'ADE NURUL HANYFAH', 'Serang', ' 26 September 2004', 'Magribaeni', '212210008', '0049311089', 83, 90, 80, 79, 80, 78, 79, 75, 82, 80, 80, 81, '85', 85, 81, 'LULUS', '', '7', '45037456259214442073', 'siswa'),
(268, 'AIDA RESTI FITRIANI', 'Serang', '28 Oktober 2006', 'JUPRI', '212210029', '0063651444', 86, 90, 82, 80, 85, 86, 88, 85, 85, 80, 84, 80, '88', 88, 84, 'LULUS', '', '7', '84310807324295682377', 'siswa'),
(269, 'ANI NURFITRIANI', 'Serang', '01 Desember 2006', 'AWAM', '212210053', '0069609947', 88, 90, 85, 80, 85, 89, 90, 75, 85, 80, 87, 85, '90', 90, 85, 'LULUS', '', '7', '68389942135382364026', 'siswa'),
(270, 'ANISAH SOLEHATUN FITRIAH', 'Serang', ' 05 September 2006', 'NASA', '212210055', '0064508447', 85, 90, 79, 79, 85, 78, 84, 84, 85, 83, 80, 80, '90', 90, 83, 'LULUS', '', '7', '86960413726623163819', 'siswa'),
(271, 'DALPAN ROHI', 'Serang', ' 27 Oktober 2005', 'NAWI (Alm)', '212210084', '0059750133', 83, 90, 80, 79, 85, 89, 79, 75, 88, 80, 83, 85, '92', 92, 84, 'LULUS', '', '7', '74002197893436621247', 'siswa'),
(272, 'FEBRI RADITIA PRATAMA', 'Pandeglang', '02 Februari 2006', 'EFENDI', '212210136', '0064752032', 80, 90, 84, 83, 80, 89, 90, 78, 87, 86, 86, 80, '90', 90, 85, 'LULUS', '', '7', '08583263452711689914', 'siswa'),
(273, 'INDAH OLYPIA', 'Serang', '24 Juli 2006', 'MULYADI', '212210176', '0068825404', 85, 90, 80, 79, 80, 86, 79, 78, 80, 79, 85, 80, '85', 85, 82, 'LULUS', '', '7', '71240224224399304526', 'siswa'),
(274, 'INDAH RAMADANI', 'Serang', '31 Oktober 2005', 'ADUL', '1819062', '0051670558', 84, 90, 79, 79, 80, 78, 79, 83, 80, 79, 85, 80, '85', 85, 81, 'LULUS', '', '7', '63924934303922596727', 'siswa'),
(275, 'ISMAYANI', 'Serang', '11 Oktober 2006', 'ASIM', '212210186', '0062055107', 84, 90, 80, 79, 80, 90, 84, 78, 80, 79, 83, 83, '85', 85, 82, 'LULUS', '', '7', '52225453188587119250', 'siswa'),
(276, 'ISMI INDANA ZULFAH', 'Serang', '16 Agustus 2006', 'KAREN SUANDI', '212210188', '0061445862', 87, 94, 87, 87, 85, 93, 90, 84, 88, 85, 88, 81, '92', 92, 88, 'LULUS', '', '7', '89283129861838898600', 'siswa'),
(277, 'JERI', 'Serang', '17 Agustus 2005', 'MADLANI  (Alm)', '212210200', '0052744702', 79, 90, 80, 79, 80, 83, 82, 79, 80, 66, 81, 80, '85', 85, 80, 'LULUS', '', '7', '20542657854094318938', 'siswa'),
(278, 'JUSTIN SUPARMAN', 'Singkawang', ' 05 September 2005', 'SUPARMAN', '212210202', '0052796057', 80, 90, 88, 84, 85, 90, 82, 88, 85, 84, 86, 80, '90', 90, 85, 'LULUS', '', '7', '58148658443412692020', 'siswa'),
(279, 'MIROH', 'Serang', ' 21 Agustus 2006', 'MASKAM', '212210257', '0068800607', 83, 90, 80, 79, 80, 78, 84, 80, 80, 82, 83, 80, '85', 85, 82, 'LULUS', '', '7', '79204091401752007111', 'siswa'),
(280, 'MUHAMAD BAGAS PRAYOGA', 'Serang', ' 21 Februari 2005', 'OVAN AVIAN', '212210267', '0053876275', 82, 85, 79, 78, 80, 78, 79, 77, 80, 78, 80, 80, '85', 85, 80, 'LULUS', '', '7', '15692235632989297226', 'siswa'),
(281, 'MUHAMAD FERDI', 'Serang', ' 20 Juni 2006', 'RASIDI', '212210274', '0066653432', 79, 90, 79, 79, 80, 78, 79, 77, 80, 82, 84, 80, '85', 85, 81, 'LULUS', '', '7', '48399704766968946515', 'siswa'),
(282, 'MUHAMAD RIFAT SYAUQI', 'Lebak', ' 11 Juni 2006', 'MUNAWAR KHALIL (Alm)', '212210281', '0065570380', 83, 90, 80, 81, 85, 90, 79, 82, 85, 84, 85, 83, '90', 90, 84, 'LULUS', '', '7', '01237147390228678411', 'siswa'),
(283, 'NASIROH', 'Serang', ' 07 November 2003', 'NAKIRI', '212210332', '0038924621', 84, 90, 84, 79, 80, 87, 84, 80, 80, 85, 85, 80, '85', 85, 83, 'LULUS', '', '7', '73729146994779143483', 'siswa'),
(284, 'NATALIA ANDRIANI', 'Serang', ' 25 Desember 2006', 'SELAMET', '212210333', '0068343789', 84, 90, 82, 80, 80, 78, 84, 85, 80, 83, 85, 84, '85', 85, 83, 'LULUS', '', '7', '89410680022079534286', 'siswa'),
(285, 'NAUFAL AFAF EKAYANA', 'Jakarta', ' 09 Mei 2006', 'NANDANG ROHIMAT', '212210526', '3061859122', 80, 90, 84, 79, 85, 90, 84, 77, 85, 82, 78, 80, '90', 90, 83, 'LULUS', '', '7', '52113217481985557659', 'siswa'),
(286, 'NINDI AMALIYAH', 'Serang', ' 04 April 2006', 'SUBANDI', '212210343', '006207333', 88, 90, 85, 81, 89, 89, 88, 84, 84, 87, 86, 83, '85', 85, 86, 'LULUS', '', '7', '20687085606097373022', 'siswa'),
(287, 'NOVA MAY SAFANA', 'Serang', ' 13 Mei 2006', 'SUBAYI (Alm)', '212210345', '0061521290', 86, 90, 82, 80, 80, 87, 82, 80, 83, 85, 87, 82, '85', 85, 83, 'LULUS', '', '7', '32508182129319170410', 'siswa'),
(288, 'NOVIANI', 'Serang', ' 07 November 2006', 'AMID', '212210349', '0063071210', 85, 90, 82, 79, 80, 85, 82, 78, 80, 83, 81, 84, '85', 85, 82, 'LULUS', '', '7', '67861387885631842981', 'siswa'),
(289, 'PEDRO ADDEN ARYANSYAH', 'Serang', ' 13 Juni 2006', 'SUHARYONO', '212210368', '0067353419', 80, 90, 82, 78, 80, 78, 79, 90, 80, 82, 83, 80, '85', 85, 82, 'LULUS', '', '7', '85640996780711623664', 'siswa'),
(290, 'PUTRI ASTUTI', 'Serang', ' 10 November 2006', 'ASPURI', '212210371', '0065042613', 80, 90, 82, 78, 80, 78, 86, 80, 80, 85, 78, 84, '85', 85, 82, 'LULUS', '', '7', '22503799986855199367', 'siswa'),
(291, 'REVA LINTANG ASIH', 'Serang', ' 29 Juli 2006', 'WARDI', '212210387', '0062606658', 85, 90, 84, 80, 85, 86, 79, 85, 88, 83, 85, 80, '88', 88, 84, 'LULUS', '', '7', '58560178312668698459', 'siswa'),
(292, 'RIVA DWI PRATIWI', 'Serang', ' 02 Agustus 2006', 'Ach. Mustafid', '212210402', '0068309490', 86, 90, 89, 83, 85, 89, 90, 85, 85, 85, 85, 87, '90', 90, 87, 'LULUS', '', '7', '91256333363862849244', 'siswa'),
(293, 'RIZKI ANDINI', 'Serang', ' 07 Juni 2006', 'RAPIUDIN', '212210408', '0062772988', 86, 90, 82, 79, 80, 87, 86, 80, 83, 83, 85, 80, '85', 85, 83, 'LULUS', '', '7', '47920250946132394165', 'siswa'),
(294, 'ROJIYAH', 'Serang', ' 18 Februari 2007', 'ROHMAN', '212210418', '0079405082', 85, 90, 80, 79, 80, 89, 79, 85, 80, 86, 87, 82, '85', 85, 83, 'LULUS', '', '7', '83525324438206425953', 'siswa'),
(295, 'SISKA ANANTA', 'Serang', ' 15 Maret 2005', 'SARPANI', '212210453', '0058353715', 81, 90, 85, 78, 80, 78, 79, 79, 80, 85, 85, 80, '85', 85, 82, 'LULUS', '', '7', '45645435339277231632', 'siswa'),
(296, 'SITI DINAWATI', 'Serang', ' 08 Juni 2006', 'SAPRUDIN', '212210457', '0067147732', 81, 90, 80, 79, 80, 78, 79, 79, 80, 80, 84, 80, '85', 85, 81, 'LULUS', '', '7', '91784308616817141754', 'siswa'),
(297, 'SITI RAHAYU', 'Serang', ' 22 September 2005', 'SARIP', '212210469', '0059866620', 82, 90, 79, 79, 80, 78, 79, 75, 80, 79, 80, 80, '85', 85, 80, 'LULUS', '', '7', '49510926559057038671', 'siswa'),
(298, 'SITI SUNAMI', 'Serang', ' 12 Februari 2006', 'NANI FATUROHMAN', '212210471', '0065882118', 80, 90, 79, 79, 80, 78, 79, 77, 80, 80, 82, 80, '85', 85, 81, 'LULUS', '', '7', '71522518268416934272', 'siswa'),
(299, 'SOHARI SOLAHUDIN', 'Serang', ' 03 Februari 2006', 'SANAN', '212210475', '0069699888', 80, 90, 79, 79, 80, 78, 79, 77, 80, 84, 82, 80, '85', 85, 81, 'LULUS', '', '7', '46195776586604975798', 'siswa'),
(300, 'SUCI RAHAYU', 'Serang', ' 04 Juni 2006', 'RUKIMAN', '212210478', '0062280990', 85, 90, 80, 79, 80, 86, 88, 79, 85, 85, 84, 80, '85', 85, 83, 'LULUS', '', '7', '40117105980610645104', 'siswa'),
(301, 'TEBOK', 'Serang', ' 24 Maret 2005', 'BUNA', '212210499', '0053890706', 82, 90, 79, 79, 80, 78, 79, 82, 80, 80, 82, 80, '85', 85, 81, 'LULUS', '', '7', '45894113929802601814', 'siswa'),
(302, 'ULMI FADILAH', 'Serang', ' 05 April 2005', 'PENGKI SUWITO (Alm)', '1819898', '0053172485', 82, 90, 80, 79, 80, 78, 79, 85, 80, 80, 83, 80, '85', 85, 81, 'LULUS', '', '7', '22796759591493459823', 'siswa'),
(303, 'UVTIA NASARI', 'Serang', ' 09 Oktober 2006', 'SAMSURI', '212210512', '0065062479', 85, 90, 80, 79, 80, 78, 79, 79, 80, 79, 81, 80, '85', 85, 81, 'LULUS', '', '7', '64019080548929785773', 'siswa'),
(304, 'AISYAH', 'Serang', '17 Juli 2006', 'Samudi', '212210030', '0063216015', 93, 90, 85, 90, 90, 92, 90, 85, 91, 94, 85, 86, '93', 95, 89, 'LULUS', '', '8', '45550856105957548016', 'siswa'),
(305, 'ALDA SEPTIANA', 'Serang', '29 September 2005', 'Suhanda', '212210034', '0054684649', 89, 85, 84, 80, 85, 86, 82, 78, 83, 90, 83, 82, '88', 89, 84, 'LULUS', '', '8', '50372120026980009301', 'siswa'),
(306, 'ALIF ZIKRI AFATAN', 'Serang', '23 Juli 2005', 'Aep Nuryamin', '212210037', '0059546753', 87, 87, 80, 78, 87, 85, 79, 78, 80, 88, 80, 80, '86', 87, 83, 'LULUS', '', '8', '86463300797185123916', 'siswa'),
(307, 'ALYA SUSANTI', 'Serang', '22 Juli 2006', 'Mainah', '212210043', '0068050528', 88, 85, 80, 79, 85, 85, 79, 78, 80, 87, 85, 85, '88', 88, 83, 'LULUS', '', '8', '66889745501660073974', 'siswa'),
(308, 'DZIKRI MUHAMAD YASIN', 'Serang', '20 Agustus 2005', 'Oding Saputra', '212210109', '0051828136', 89, 87, 80, 80, 87, 85, 79, 80, 80, 89, 83, 85, '87', 89, 84, 'LULUS', '', '8', '94396113654445240316', 'siswa'),
(309, 'EVTA DWI SUGIHARTI', 'Serang', '12 Maret 2006', 'Epi Nuryanti', '212210121', '0069422276', 88, 87, 84, 80, 87, 92, 79, 78, 80, 88, 80, 80, '87', 88, 84, 'LULUS', '', '8', '29265155924594724010', 'siswa'),
(310, 'FATIA TASYA NABILLA', 'Serang', '10 Mei 2006', 'Fatah Hidayat', '212210131', '0066093499', 89, 85, 85, 78, 85, 85, 84, 78, 85, 89, 80, 80, '88', 89, 84, 'LULUS', '', '8', '89236145376083448573', 'siswa'),
(311, 'FITRI AMANDA', 'Serang', '27 Juli 2006', 'Astura', '212210149', '0062505824', 89, 87, 85, 80, 87, 85, 84, 80, 85, 89, 83, 83, '88', 89, 85, 'LULUS', '', '8', '22361873467825532922', 'siswa'),
(312, 'HISAR AGUSTUS SARAGIH', 'Serang', '27 Agustus 2005', 'Pirman Halomoan', '212210163', '0054085870', 85, 95, 89, 85, 95, 85, 90, 85, 91, 86, 83, 86, '86', 85, 87, 'LULUS', '', '8', '66159628054153258464', 'siswa'),
(313, 'ILHAM MUHAEMIN', 'Serang', '01 Mei 2006', 'Munir', '212210172', '0069237295', 90, 87, 80, 80, 87, 95, 79, 82, 80, 90, 80, 80, '91', 90, 85, 'LULUS', '', '8', '66063588756521451020', 'siswa'),
(314, 'ITA MASITA', 'Serang', '11 Oktober 2006', 'Mursid', '212210189', '0069884683', 89, 87, 84, 82, 87, 85, 79, 84, 80, 89, 85, 85, '90', 89, 85, 'LULUS', '', '8', '58640720276068760234', 'siswa'),
(315, 'JASSHEN YOUNG HIDAYAT', 'Serang', '23 Agustus 2005', 'Rachmat Hidayat', '212210197', '0055954739', 89, 87, 87, 80, 87, 85, 90, 84, 91, 89, 82, 87, '90', 89, 86, 'LULUS', '', '8', '86682715494522663270', 'siswa'),
(316, 'LARASATI AULIA RAHMAN ', 'Cilegon', '29 Maret 2006', 'Imam Saeful Rahman', '212210214', '0069077626', 89, 87, 84, 85, 87, 87, 86, 82, 87, 89, 85, 85, '89', 89, 86, 'LULUS', '', '8', '45306718112137071186', 'siswa'),
(317, 'LIA PITRIANI', 'Serang', '23 Juli 2006', 'Dhikat DH.BI', '212210219', '0066434262', 92, 87, 85, 85, 87, 90, 86, 84, 87, 92, 86, 86, '92', 92, 87, 'LULUS', '', '8', '19609949827786342687', 'siswa'),
(318, 'MAISAH', 'Serang', '15 Maret 2006', 'Kisot', '212210234', '0069018438', 89, 87, 85, 80, 87, 89, 88, 78, 89, 89, 85, 85, '89', 89, 86, 'LULUS', '', '8', '84171343007073989223', 'siswa'),
(319, 'MUHAMAD LUTFI RAMADHAN', 'Serang', '27 Oktober 2005', 'Afifi', '212210278', '00629325628', 90, 87, 80, 80, 87, 85, 88, 84, 89, 90, 80, 80, '90', 90, 85, 'LULUS', '', '8', '90202363007517110965', 'siswa'),
(320, 'NABILAH', 'Serang', '07 Maret 2006', 'Eni', '212210321', '0062928507', 89, 87, 84, 79, 87, 82, 82, 78, 83, 89, 85, 85, '89', 89, 84, 'LULUS', '', '8', '54835080777831794790', 'siswa'),
(321, 'NAILIL MUNAAYA', 'Serang', '01 Maret 2006', 'M. Rofik', '212210325', '0062750503', 88, 87, 80, 82, 87, 80, 79, 83, 80, 88, 85, 85, '88', 88, 84, 'LULUS', '', '8', '49711256232499560531', 'siswa'),
(322, 'NAZWA AMELIA PUTRI', 'Serang', '17 Februari 2006', 'Jahwadi', '212210339', '0062748571', 88, 87, 80, 79, 87, 85, 82, 78, 83, 88, 83, 80, '88', 88, 84, 'LULUS', '', '8', '49274190037919925645', 'siswa'),
(323, 'NUFUS SUZAKIA', 'Serang', '05 Juli 2007', 'Imam Subehi', '212210351', '0063319476', 93, 87, 85, 85, 87, 85, 79, 82, 80, 93, 80, 83, '93', 93, 86, 'LULUS', '', '8', '36385351892287648640', 'siswa'),
(324, 'NURJANAH', 'Serang', '23 Februari 2005', 'Jaedi', '212210357', '0053007289', 90, 87, 85, 85, 87, 85, 90, 82, 91, 90, 85, 80, '90', 90, 86, 'LULUS', '', '8', '89774063100953967603', 'siswa'),
(325, 'NURSITA', 'Serang', '10 Juli 2006', 'Sakiman', '212210359', '0067056014', 85, 87, 80, 78, 87, 85, 79, 80, 80, 85, 80, 87, '85', 85, 83, 'LULUS', '', '8', '66911676965383047252', 'siswa'),
(326, 'NURUL FADILAH', 'Serang', '26 Februari 2006', 'Suwari', '212210361', '0065822130', 87, 85, 80, 79, 85, 89, 79, 78, 80, 87, 83, 85, '87', 87, 83, 'LULUS', '', '8', '84808686608025070582', 'siswa'),
(327, 'PARID FIRMANSYAH', 'Serang', '31 Maret 2006', 'Yusdianto', '212210366', '0065939837', 87, 87, 79, 78, 87, 85, 79, 78, 80, 87, 80, 80, '87', 87, 82, 'LULUS', '', '8', '67940854064998111070', 'siswa'),
(328, 'PIPIT PATIMAH', 'Serang', '18 Mei 2006', 'Aspiah', '212210369', '0065411416', 86, 87, 80, 80, 87, 86, 81, 80, 82, 86, 85, 83, '86', 86, 83, 'LULUS', '', '8', '63385796778891373730', 'siswa'),
(329, 'RIVALDO', 'Belinyu Bangka', '28 Agustus 2005', 'Fendy', '212210403', '0059737845', 88, 87, 82, 80, 87, 80, 86, 80, 87, 88, 80, 80, '88', 88, 84, 'LULUS', '', '8', '95562095045358054384', 'siswa'),
(330, 'RIYANTI', 'Palembang', '16 Agustus 2006', 'Jasman', '212210405', '0061001239', 85, 87, 80, 80, 87, 86, 79, 79, 80, 85, 83, 83, '85', 85, 83, 'LULUS', '', '8', '81887222207567231181', 'siswa'),
(331, 'RYAN AZI MAULANA', 'Serang', '14 Agustus 2005', 'Abd. Rohmatullah', '212210424', '0056807693', 86, 87, 79, 78, 78, 85, 79, 80, 80, 85, 80, 80, '86', 86, 82, 'LULUS', '', '8', '85955902316486789661', 'siswa'),
(332, 'SALMA HUSSURUR', 'Bekasi', '07 Januari 2006', 'Hendrawanto', '212210429', '0069890660', 92, 95, 87, 90, 95, 95, 90, 85, 91, 92, 87, 87, '92', 92, 90, 'LULUS', '', '8', '93193045825734220396', 'siswa'),
(333, 'SITI ULFI', 'Serang', '17 Maret 2006', 'Supriyah', '212210472', '0061143197', 90, 87, 84, 80, 87, 86, 84, 78, 85, 90, 85, 85, '90', 90, 85, 'LULUS', '', '8', '23723933478225848616', 'siswa'),
(334, 'SURTINAH', 'Serang', '17 Mei 2005', 'Suryadi', '212210489', '0053915218', 89, 87, 85, 80, 87, 84, 86, 78, 87, 89, 80, 80, '89', 89, 85, 'LULUS', '', '8', '68531946060296184338', 'siswa'),
(335, 'WARDAH DELLA DELVIANI', 'Serang', '30 Oktober 2006', 'Midana ', '212210515', '0066112258', 87, 87, 80, 80, 87, 85, 79, 82, 80, 87, 83, 83, '87', 87, 83, 'LULUS', '', '8', '79775877842804158273', 'siswa'),
(336, 'YOSA', 'Serang', '05 Februari 2006', 'Sar\'it', '212210517', '0064378006', 89, 87, 85, 80, 87, 85, 88, 85, 89, 89, 85, 85, '89', 89, 86, 'LULUS', '', '8', '45496199897096594892', 'siswa'),
(337, 'Laborum Sed sit at', 'Omnis quia voluptate', '26/12/2010', 'Fuga Voluptatem con', 'Vitae sit quia ', 'Nostrum magnam ', 1, 14, 71, 82, 64, 81, 51, 40, 97, 26, 75, 49, '21', 70, 0, 'DITUNDA', 'd4131d4f33b43dceeabb1fe23a413da393ae7e46', '4', '', 'siswa'),
(338, 'test', 'Quod necessitatibus ', '123', 'Sapiente laudantium', 'Suscipit aperia', 'Est exercitatio', 17, 40, 15, 72, 51, 39, 8, 8, 63, 78, 14, 9, '91', 61, 0, 'DITUNDA', '1e39a296dc53ffac8ad99fdec3bb7a2c302a8c3b', '14', '', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kompetensi_keahlian`
--
ALTER TABLE `tb_kompetensi_keahlian`
  ADD PRIMARY KEY (`id_kompetensi_keahlian`);

--
-- Indexes for table `tb_profil_sekolah`
--
ALTER TABLE `tb_profil_sekolah`
  ADD PRIMARY KEY (`profil_sekolah`);

--
-- Indexes for table `tb_siswa_bismen`
--
ALTER TABLE `tb_siswa_bismen`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_siswa_tekno`
--
ALTER TABLE `tb_siswa_tekno`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_kompetensi_keahlian`
--
ALTER TABLE `tb_kompetensi_keahlian`
  MODIFY `id_kompetensi_keahlian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_profil_sekolah`
--
ALTER TABLE `tb_profil_sekolah`
  MODIFY `profil_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_siswa_bismen`
--
ALTER TABLE `tb_siswa_bismen`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tb_siswa_tekno`
--
ALTER TABLE `tb_siswa_tekno`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
