<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_admin extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_admin');

		// qrcode
      	$this->load->library('ciqrcode');

		// session login
		if ($this->session->userdata('aktif') != true) {
			$url = base_url('Login/fa');
			redirect($url);
		}
	}

	public function index()
	{
		$this->load->view('C_admin/fa');
	}


	// tekno awal
	public function siswa_tekno()
	{
		// $ses_id_umkm = $this->session->userdata('ses_id');
		$data['tampil'] = $this->M_admin->siswa_tekno();


		$this->load->view('template/header-admin');
		$this->load->view('admin/siswa_tekno', $data);
		$this->load->view('template/footer-admin');
	}

	public function siswa_hapus_tekno($id_siswa)
	{
		$id_siswa = array('id_siswa' => $id_siswa);

		$success = $this->M_admin->siswa_hapus_tekno($id_siswa);
		$this->session->set_flashdata('msg', '
            <div class="alert alert-danger border-0 bg-danger alert-dismissible fade show">
				<div class="text-white">Hapus Data Siswa Berhasil</div>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>');
		redirect('C_admin/siswa_tekno');
	}

	public function siswa_detail_tekno($id_siswa)
	{
		$data['profil_sekolah'] = $this->M_admin->profil_sekolah();
		$data['tampil'] = $this->M_admin->siswa_detail_tekno($id_siswa);

		$this->load->view('template/header-admin');
		$this->load->view('admin/siswa_detail_tekno', $data);
		$this->load->view('template/footer-admin');
	}

	public function siswa_tekno_tambah()
	{
		$data['tampil_komptensi'] = $this->M_admin->kompetensi_keahlian_tekno();
		$data['tampil_kelas'] = $this->M_admin->kelas_tekno();

		// var_dump($data['tampil_kelas']);

		$this->load->view('template/header-admin');
		$this->load->view('admin/siswa_tekno_tambah', $data);
		$this->load->view('template/footer-admin');
	}

	public function siswa_tekno_tambah_up()
	{
		// tarik data dari post
		$tgl_lahir_post = $this->input->post('tgl_lahir');

		// Ubah format tanggal ke timestamp
		$timestamp = strtotime($tgl_lahir_post);

		// Ubah format timestamp ke format "dd/mm/yyyy"
		$tgl_lahir = date("d/m/Y", $timestamp);

		$nis_siswa = $this->input->post('nis_siswa');
		$nisn_siswa = $this->input->post('nisn_siswa');
		$password = sha1($this->input->post('password'));
		$nama_siswa = $this->input->post('nama_siswa');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$nama_org_tua = $this->input->post('nama_org_tua');
		$id_kelas = $this->input->post('id_kelas');
		$status_kelulusan = $this->input->post('status_kelulusan');
		$pai = $this->input->post('pai');
		$pkn = $this->input->post('pkn');
		$b_ind = $this->input->post('b_ind');
		$mtk = $this->input->post('mtk');
		$b_ing = $this->input->post('b_ing');
		$senbud = $this->input->post('senbud');
		$sejindo = $this->input->post('sejindo');
		$pjok = $this->input->post('pjok');
		$mulok = $this->input->post('mulok');
		$simdig = $this->input->post('simdig');
		$kimia = $this->input->post('kimia');
		$fisika = $this->input->post('fisika');
		$kompetensi_keahlian = $this->input->post('kompetensi_keahlian');
		$dasar_program_keahlian = $this->input->post('dasar_program_keahlian');

		$data_tambah = array(
			'nama_siswa' => $nama_siswa,
			'nis_siswa' => $nis_siswa,
			'password' => $password,
			'nisn_siswa' => $nisn_siswa,
			'tempat_lahir' => $tempat_lahir,
			'tgl_lahir' => $tgl_lahir,
			'nama_org_tua' => $nama_org_tua,
			'id_kelas' => $id_kelas,
			'status_kelulusan' => $status_kelulusan,
			'status' => 'siswa',
			'pai' => $pai,
			'pkn' => $pkn,
			'b_ind' => $b_ind,
			'mtk' => $mtk,
			'b_ing' => $b_ing,
			'senbud' => $senbud,
			'sejindo' => $sejindo,
			'pjok' => $pjok,
			'mulok' => $mulok,
			'simdig' => $simdig,
			'kimia' => $kimia,
			'fisika' => $fisika,
			'kompetensi_keahlian' => $kompetensi_keahlian,
			'dasar_program_keahlian' => $dasar_program_keahlian
		);

		$this->M_admin->siswa_tekno_tambah_up($data_tambah);

		$this->session->set_flashdata('msg', '
						<div class="alert alert-info border-0 bg-info alert-dismissible fade show">
							<div class="text-white">Tambah Data Siswa Berhasil</div>
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>');
		redirect('C_admin/siswa_tekno/');
	}

	public function siswa_edit_tekno($id_siswa)
	{
		// $kode_masyarakat = array('id_masyarakat' => $id_masyarakat);
		$data['tampil'] = $this->M_admin->siswa_edit_tekno($id_siswa);
		$data['tampil_komptensi'] = $this->M_admin->kompetensi_keahlian();
		$data['tampil_kelas'] = $this->M_admin->kelas();

		$this->load->view('template/header-admin');
		$this->load->view('admin/siswa_edit_tekno', $data);
		$this->load->view('template/footer-admin');
	}

	public function siswa_print_tekno($id_siswa)
	{
		// cek token
		$v_token = $this->M_admin->siswa_detail_tekno($id_siswa);

		foreach ($v_token as $cek_token):
			$id_token = $cek_token->token;
		endforeach;

		// awal proses QR
		$qr['data'] = 'https:skl2024.smkn1kragilan.sch.id/check/tekno/'.$id_token;
        $qr['level'] = 'H';
        $qr['size'] = 2;
        $qr['savename'] = FCPATH.'assets/qr/qr-'.$id_token.'.png'; // Menyimpan gambar di assets/qr
        $this->ciqrcode->generate($qr);
        $data['qr_image'] = base_url().'assets/qr/qr-'.$id_token.'.png'; // Mengirim URL gambar ke view

		$data['tampil'] = $this->M_admin->siswa_print_tekno($id_siswa);
		$this->load->view('admin/print_tekno', $data);
	}

	public function siswa_edit_up_tekno()
	{
		// tarik data dari post
		// $tgl_lahir_post = $this->input->post('tgl_lahir');

		// Ubah format tanggal ke timestamp
		// $timestamp = strtotime($tgl_lahir_post);

		// Ubah format timestamp ke format "dd/mm/yyyy"
		// $tgl_lahir = date("d/m/Y", $timestamp);

		$id_siswa = $this->input->post('id_siswa');
		$nis_siswa = $this->input->post('nis_siswa');
		$nisn_siswa = $this->input->post('nisn_siswa');
		$nama_siswa = $this->input->post('nama_siswa');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$tgl_lahir = $this->input->post('tgl_lahir');
		$nama_org_tua = $this->input->post('nama_org_tua');
		$status_kelulusan = $this->input->post('status_kelulusan');
		$pai = $this->input->post('pai');
		$pkn = $this->input->post('pkn');
		$b_ind = $this->input->post('b_ind');
		$mtk = $this->input->post('mtk');
		$b_ing = $this->input->post('b_ing');
		$senbud = $this->input->post('senbud');
		$sejindo = $this->input->post('sejindo');
		$pjok = $this->input->post('pjok');
		$mulok = $this->input->post('mulok');
		$simdig = $this->input->post('simdig');
		$kimia = $this->input->post('kimia');
		$fisika = $this->input->post('fisika');
		$kompetensi_keahlian = $this->input->post('kompetensi_keahlian');
		$dasar_program_keahlian = $this->input->post('dasar_program_keahlian');
		$id_kelas = $this->input->post('id_kelas');
		$kode_siswa = array('id_siswa' => $id_siswa); 

		$data_edit = array(
			'nama_siswa' => $nama_siswa,
			'nis_siswa' => $nis_siswa,
			'nisn_siswa' => $nisn_siswa,
			'tgl_lahir' => $tgl_lahir,
			'tempat_lahir' => $tempat_lahir,
			'nama_org_tua' => $nama_org_tua,
			'status_kelulusan' => $status_kelulusan,
			'pai' => $pai,
			'pkn' => $pkn,
			'b_ind' => $b_ind,
			'mtk' => $mtk,
			'b_ing' => $b_ing,
			'senbud' => $senbud,
			'sejindo' => $sejindo,
			'pjok' => $pjok,
			'mulok' => $mulok,
			'simdig' => $simdig,
			'kimia' => $kimia,
			'fisika' => $fisika,
			'kompetensi_keahlian' => $kompetensi_keahlian,
			'dasar_program_keahlian' => $dasar_program_keahlian,
			'id_kelas' => $id_kelas
		);

		$this->M_admin->siswa_edit_up_tekno($data_edit, $kode_siswa);

		$this->session->set_flashdata('msg', '
						<div class="alert alert-info border-0 bg-info alert-dismissible fade show">
							<div class="text-white">Edit Data Siswa Berhasil</div>
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>');
		redirect('C_admin/siswa_tekno/' . $id_siswa);
	}

	public function siswa_pass_tekno($id_siswa)
	{
		$data['tampil'] = $this->M_admin->siswa_detail_tekno($id_siswa);

		$this->load->view('template/header-admin', $data);
		$this->load->view('admin/siswa_pass_tekno', $data);
		$this->load->view('template/footer-admin', $data);
	}

	public function siswa_pass_up_tekno()
	{
		$id_siswa = $this->input->post('id_siswa');
		$pass = $this->input->post('password');
		$password = sha1($pass);

		$kode_siswa = array('id_siswa' => $id_siswa);

		$data_edit = array(
			'password' => $password
		);

		$this->M_admin->siswa_pass_up_tekno($data_edit, $kode_siswa);

		$this->session->set_flashdata('msg', '
						<div class="alert alert-warning border-0 bg-warning alert-dismissible fade show">
							<div class="text-white">Ubah Password Siswa Berhasil</div>
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
						');
		redirect('C_admin/siswa_tekno/' . $id_siswa);
	}

	// tekno akhir



	// bismen awal
	public function siswa_bismen()
	{
		// $ses_id_umkm = $this->session->userdata('ses_id');
		$data['tampil'] = $this->M_admin->siswa_bismen();
		$data['tampil_kelas'] = $this->M_admin->siswa_bismen();

		$this->load->view('template/header-admin');
		$this->load->view('admin/siswa_bismen', $data);
		$this->load->view('template/footer-admin');
	}

	public function siswa_bismen_tambah_up()
	{
		// tarik data dari post
		$tgl_lahir_post = $this->input->post('tgl_lahir');

		// Ubah format tanggal ke timestamp
		$timestamp = strtotime($tgl_lahir_post);

		// Ubah format timestamp ke format "dd/mm/yyyy"
		$tgl_lahir = date("d/m/Y", $timestamp);

		$id_siswa = $this->input->post('id_siswa');
		$nis_siswa = $this->input->post('nis_siswa');
		$nisn_siswa = $this->input->post('nisn_siswa');
		$password = $this->input->post('password');
		$nama_siswa = $this->input->post('nama_siswa');
		$id_kelas = $this->input->post('id_kelas');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$nama_org_tua = $this->input->post('nama_org_tua');
		$status_kelulusan = $this->input->post('status_kelulusan');
		$pai = $this->input->post('pai');
		$pkn = $this->input->post('pkn');
		$b_ind = $this->input->post('b_ind');
		$mtk = $this->input->post('mtk');
		$b_ing = $this->input->post('b_ing');
		$senbud = $this->input->post('senbud');
		$sejindo = $this->input->post('sejindo');
		$pjok = $this->input->post('pjok');
		$mulok = $this->input->post('mulok');

		$simdig = $this->input->post('simdig');	
		$ekonomi_bisnis = $this->input->post('ekonomi_bisnis');
		$administrasi_umum = $this->input->post('administrasi_umum');
		$ipa = $this->input->post('ipa');
		$dasar_program_keahlian = $this->input->post('dasar_program_keahlian');
		$kompetensi_keahlian = $this->input->post('kompetensi_keahlian');

		// jika siswa bismen
		$data_tambah = array(
			'nama_siswa' => $nama_siswa,
			'nis_siswa' => $nis_siswa,
			'nisn_siswa' => $nisn_siswa,
			'password' => sha1($password),
			'tempat_lahir' => $tempat_lahir,
			'tgl_lahir' => $tgl_lahir,
			'id_kelas' => $id_kelas,
			'nama_org_tua' => $nama_org_tua,
			'status_kelulusan' => $status_kelulusan,
			'status' => 'siswa',
			'pai' => $pai,
			'pkn' => $pkn,
			'b_ind' => $b_ind,
			'mtk' => $mtk,
			'b_ing' => $b_ing,
			'senbud' => $senbud,
			'sejindo' => $sejindo,
			'pjok' => $pjok,
			'simdig' => $simdig,
			'mulok' => $mulok,
			'ipa' => $ipa,
			'ekonomi_bisnis' => $ekonomi_bisnis,
			'administrasi_umum' => $administrasi_umum,
			'dasar_program_keahlian' => $dasar_program_keahlian,
			'kompetensi_keahlian' => $kompetensi_keahlian,

		);

		$this->M_admin->siswa_bismen_tambah_up($data_tambah);

		$this->session->set_flashdata('msg', '
							 <div class="alert alert-info border-0 bg-info alert-dismissible fade show">
								<div class="text-white">Tambah Data Siswa Berhasil</div>
								<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
							</div>');
		redirect('C_admin/siswa_bismen/' . $id_siswa);

		
	}

	public function siswa_bismen_tambah()
	{
		$data['tampil_komptensi'] = $this->M_admin->kompetensi_keahlian_bismen();
		$data['tampil_kelas'] = $this->M_admin->kelas_bismen();

		$this->load->view('template/header-admin');
		$this->load->view('admin/siswa_bismen_tambah', $data);
		$this->load->view('template/footer-admin');
	}

	public function siswa_hapus_bismen($id_siswa)
	{
		$id_siswa = array('id_siswa' => $id_siswa);

		$success = $this->M_admin->siswa_hapus_bismen($id_siswa);
		$this->session->set_flashdata('msg', '
									<div class="alert alert-danger border-0 bg-danger alert-dismissible fade show">
									<div class="text-white">Hapus Data Siswa Berhasil</div>
									<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
								</div>');
		redirect('C_admin/siswa_bismen');
	}

	public function siswa_detail_bismen($id_siswa)
	{
		$data['tampil'] = $this->M_admin->siswa_detail_bismen($id_siswa);
		$data['profil_sekolah'] = $this->M_admin->profil_sekolah();

		$this->load->view('template/header-admin');
		$this->load->view('admin/siswa_detail_bismen', $data);
		$this->load->view('template/footer-admin');
	}

	public function siswa_edit_bismen($id_siswa)
	{
		// $kode_masyarakat = array('id_masyarakat' => $id_masyarakat);
		$data['tampil'] = $this->M_admin->siswa_edit_bismen($id_siswa);
		$data['tampil_komptensi'] = $this->M_admin->kompetensi_keahlian();
		$data['tampil_kelas'] = $this->M_admin->kelas_bismen();

		$this->load->view('template/header-admin');
		$this->load->view('admin/siswa_edit_bismen', $data);
		$this->load->view('template/footer-admin');
	}

	// public function siswa_print_bismen1($id_siswa)
	// {
	// 	$data['tampil'] = $this->M_admin->print_bismen($id_siswa);
	// 	$this->load->view('admin/print_bismen', $data);
	// }

	public function siswa_print_bismen($id_siswa)
	{
		// cek token
		$v_token = $this->M_admin->siswa_detail_bismen($id_siswa);

		foreach ($v_token as $cek_token):
			$id_token = $cek_token->token;
		endforeach;

		// awal proses QR
		$qr['data'] = 'https:skl2024.smkn1kragilan.sch.id/check/bismen/'.$id_token;
        $qr['level'] = 'H';
        $qr['size'] = 2;
        $qr['savename'] = FCPATH.'assets/qr/qr-'.$id_token.'.png'; // Menyimpan gambar di assets/qr
        $this->ciqrcode->generate($qr);
        $data['qr_image'] = base_url().'assets/qr/qr-'.$id_token.'.png'; // Mengirim URL gambar ke view

		$data['tampil'] = $this->M_admin->print_bismen($id_siswa);
		$this->load->view('admin/print_bismen', $data);
	}

	public function siswa_edit_up_bismen()
	{
		// tarik data dari post
		// $tgl_lahir_post = $this->input->post('tgl_lahir');

		// Ubah format tanggal ke timestamp
		// $timestamp = strtotime($tgl_lahir_post);

		// Ubah format timestamp ke format "dd/mm/yyyy"
		// $tgl_lahir = date("d/m/Y", $timestamp);

		$id_siswa = $this->input->post('id_siswa');
		$nis_siswa = $this->input->post('nis_siswa');
		$nisn_siswa = $this->input->post('nisn_siswa');
		$nama_siswa = $this->input->post('nama_siswa');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$tgl_lahir = $this->input->post('tgl_lahir');
		$nama_org_tua = $this->input->post('nama_org_tua');
		$status_kelulusan = $this->input->post('status_kelulusan');
		$pai = $this->input->post('pai');
		$pkn = $this->input->post('pkn');
		$b_ind = $this->input->post('b_ind');
		$mtk = $this->input->post('mtk');
		$b_ing = $this->input->post('b_ing');
		$senbud = $this->input->post('senbud');
		$sejindo = $this->input->post('sejindo');
		$pjok = $this->input->post('pjok');
		$mulok = $this->input->post('mulok');
		$ipa = $this->input->post('ipa');

		$simdig = $this->input->post('simdig');
		$ekonomi_bisnis = $this->input->post('ekonomi_bisnis');
		$administrasi_umum = $this->input->post('administrasi_umum');
		$dasar_program_keahlian = $this->input->post('dasar_program_keahlian');
		$kompetensi_keahlian = $this->input->post('kompetensi_keahlian');
		$id_kelas = $this->input->post('id_kelas');

		$kode_siswa = array('id_siswa' => $id_siswa);

		$data_edit = array(
			'nama_siswa' => $nama_siswa,
			'nis_siswa' => $nis_siswa,
			'nisn_siswa' => $nisn_siswa,
			'tempat_lahir' => $tempat_lahir,
			'tgl_lahir' => $tgl_lahir,
			'nama_org_tua' => $nama_org_tua,
			'status_kelulusan' => $status_kelulusan,
			'id_kelas' => $id_kelas,
			'pai' => $pai,
			'pkn' => $pkn,
			'b_ind' => $b_ind,
			'mtk' => $mtk,
			'b_ing' => $b_ing,
			'senbud' => $senbud,
			'sejindo' => $sejindo,
			'pjok' => $pjok,
			'mulok' => $mulok,
			'ipa' => $ipa,

			'simdig' => $simdig,
			'ekonomi_bisnis' => $ekonomi_bisnis,
			'administrasi_umum' => $administrasi_umum,
			'kompetensi_keahlian' => $kompetensi_keahlian,
			'dasar_program_keahlian' => $dasar_program_keahlian,
			'rata_rata' => $rata_rata

		);

		$this->M_admin->siswa_edit_up_bismen($data_edit, $kode_siswa);

		$this->session->set_flashdata('msg', '
							 <div class="alert alert-info border-0 bg-info alert-dismissible fade show">
								<div class="text-white">Edit Data Siswa Berhasil</div>
								<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
							</div>'
						);
		redirect('C_admin/siswa_bismen/' . $id_siswa);
	}

	public function siswa_pass_bismen($id_siswa)
	{
		$data['tampil'] = $this->M_admin->siswa_detail_bismen($id_siswa);

		$this->load->view('template/header-admin', $data);
		$this->load->view('admin/siswa_pass_bismen', $data);
		$this->load->view('template/footer-admin', $data);
	}

	public function siswa_pass_up_bismen()
	{
		$id_siswa = $this->input->post('id_siswa');
		$password = sha1($this->input->post('password'));
		// $password = sha($pass);

		$kode_siswa = array('id_siswa' => $id_siswa);

		$data_edit = array(
			'password' => $password
		);

		$this->M_admin->siswa_pass_up_bismen($data_edit, $kode_siswa);

		$this->session->set_flashdata('msg', '
							 <div class="alert alert-warning border-0 bg-warning alert-dismissible fade show">
									<div class="text-white">Edit Password Siswa Berhasil</div>
									<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
								</div>');
		redirect('C_admin/siswa_bismen/' . $id_siswa);
	}

	// bismen

	// kompetensi keahlian awal
	public function kompetensi_keahlian()
	{
		$data['tampil'] = $this->M_admin->kompetensi_keahlian();

		$this->load->view('template/header-admin');
		$this->load->view('admin/kompetensi_keahlian', $data);
		$this->load->view('template/footer-admin');
	}

	public function kompetensi_keahlian_tambah()
	{
		$this->load->view('template/header-admin');
		$this->load->view('admin/kompetensi_keahlian_tambah');
		$this->load->view('template/footer-admin');
	}

	public function kompetensi_keahlian_tambah_up()
	{
		$program_keahlian = $this->input->post('program_keahlian');
		$paket_keahlian = $this->input->post('paket_keahlian');
		$jurusan = $this->input->post('jurusan');

		$data_tambah = array(
			'program_keahlian' => $program_keahlian,
			'paket_keahlian' => $paket_keahlian,
			'jurusan' => $jurusan,
		);

		$this->M_admin->kompetensi_keahlian_tambah_up($data_tambah);

		$this->session->set_flashdata('msg', '
						<div class="alert alert-success alert-dismissible fade show" role="alert">
								Tambah Data Berhasil
							</div>');
		redirect('C_admin/kompetensi_keahlian/');
	}

	public function kompetensi_keahlian_hapus($id_kompetensi_keahlian)
	{
		$id_kompetensi_keahlian = array('id_kompetensi_keahlian' => $id_kompetensi_keahlian);

		$success = $this->M_admin->kompetensi_keahlian_hapus($id_kompetensi_keahlian);
		$this->session->set_flashdata('msg', '
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
              <strong>Hapus Data Berhasil</strong>

              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>');
		redirect('C_admin/kompetensi_keahlian');
	}

	public function kompetensi_keahlian_edit($id_kompetensi_keahlian)
	{
		$data['tampil'] = $this->M_admin->kompetensi_keahlian_edit($id_kompetensi_keahlian);

		$this->load->view('template/header-admin');
		$this->load->view('admin/kompetensi_keahlian_edit', $data);
		$this->load->view('template/footer-admin');
	}

	public function kompetensi_keahlian_edit_up()
	{
		$id_kompetensi_keahlian = $this->input->post('id_kompetensi_keahlian');
		$program_keahlian = $this->input->post('program_keahlian');
		$paket_keahlian = $this->input->post('paket_keahlian');
		$jurusan = $this->input->post('jurusan');

		$id_kompetensi_keahlian = array('id_kompetensi_keahlian' => $id_kompetensi_keahlian);

		$data_edit = array(
			'program_keahlian' => $program_keahlian,
			'paket_keahlian' => $paket_keahlian,
			'jurusan' => $jurusan,
		);

		$this->M_admin->kompetensi_keahlian_edit_up($data_edit, $id_kompetensi_keahlian);

		$this->session->set_flashdata('msg', '
						<div class="alert alert-success alert-dismissible fade show" role="alert">
								Edit Data Berhasil
							</div>');
		redirect('C_admin/kompetensi_keahlian/');
	}

	// kompetensi keahlian akhir


	// Kelas awal

	public function kelas()
	{
		$data['tampil'] = $this->M_admin->kelas();

		$this->load->view('template/header-admin');
		$this->load->view('admin/kelas', $data);
		$this->load->view('template/footer-admin');
	}

	public function kelas_tambah()
	{
		$data['tampil'] = $this->M_admin->kompetensi_keahlian();

		$this->load->view('template/header-admin');
		$this->load->view('admin/kelas_tambah', $data);
		$this->load->view('template/footer-admin');
	}

	public function kelas_tambah_up()
	{
		$nama_kelas = $this->input->post('nama_kelas');
		$id_kompetensi_keahlian = $this->input->post('id_kompetensi_keahlian');

		$data_tambah = array(
			'nama_kelas' => $nama_kelas,
			'id_kompetensi_keahlian' => $id_kompetensi_keahlian,
		);

		$this->M_admin->kelas_tambah_up($data_tambah);

		$this->session->set_flashdata('msg', '
						<div class="alert alert-success alert-dismissible fade show" role="alert">
								Tambah Kelas Berhasil
							</div>');
		redirect('C_admin/kelas/');
	}

	public function kelas_hapus($id_kelas)
	{
		$id_kelas = array('id_kelas' => $id_kelas);

		$success = $this->M_admin->kelas_hapus($id_kelas);
		$this->session->set_flashdata('msg', '
            				<div class="alert alert-success alert-dismissible fade show" role="alert">
								Hapus Kelas Berhasil
							</div>');
		redirect('C_admin/kelas');
	}

	public function kelas_edit($id_kelas)
	{
		$data['tampil'] = $this->M_admin->kelas_edit($id_kelas);
		$data['tampil_kompetensi_keahlian'] = $this->M_admin->kompetensi_keahlian();

		$this->load->view('template/header-admin');
		$this->load->view('admin/kelas_edit', $data);
		$this->load->view('template/footer-admin');
	}

	public function kelas_edit_up()
	{
		$id_kelas = $this->input->post('id_kelas');
		$nama_kelas = $this->input->post('nama_kelas');
		$id_kompetensi_keahlian = $this->input->post('id_kompetensi_keahlian');

		$id_kelas = array('id_kelas' => $id_kelas);

		$data_edit = array(
			'nama_kelas' => $nama_kelas,
			'id_kompetensi_keahlian' => $id_kompetensi_keahlian,
		);

		$this->M_admin->kelas_edit_up($data_edit, $id_kelas);

		$this->session->set_flashdata('msg', '
						<div class="alert alert-success alert-dismissible fade show" role="alert">
								Edit Kelas Berhasil
							</div>');
		redirect('C_admin/kelas/');
	}

	public function profil_sekolah()
	{
		$data['profil_sekolah'] = $this->M_admin->profil_sekolah();

		$this->load->view('template/header-admin');
		$this->load->view('admin/profil_sekolah', $data);
		$this->load->view('template/footer-admin');
	}


	// kelas akhir


}
