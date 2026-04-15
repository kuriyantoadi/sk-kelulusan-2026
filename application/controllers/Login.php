<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

  public function __construct()
	{
			parent::__construct();
			$this->load->model('M_login');
      $this->load->model('M_admin');
	}

  public function index()
  {
    $data['profil_sekolah'] = $this->M_admin->profil_sekolah();

    $this->load->view('login_tekno', $data);
  }

  //Login Siswa Tekno Awal
  public function siswa_tekno()
  {
    $data['profil_sekolah'] = $this->M_admin->profil_sekolah();

    $this->load->view('login_tekno', $data);
  }

  public function login_tekno()
  {
    $nisn_siswa = htmlspecialchars($this->input->post('nisn_siswa', true), ENT_QUOTES);
    $password = htmlspecialchars($this->input->post('password', true), ENT_QUOTES);

    $cek_login = $this->M_login->login_tekno($nisn_siswa, $password);

    if ($cek_login->num_rows() > 0) {
      $data = $cek_login->row_array();

      if ($data['status']=='siswa') {
        $this->session->set_userdata('siswa', true);
        $this->session->set_userdata('ses_id', $data['id_siswa']);
        $this->session->set_userdata('ses_nisn', $data['nisn_siswa']);
        redirect('C_siswa/dashboard_tekno');

      }else {
        $url = site_url('index.php/Login/siswa_tekno');
        echo $this->session->set_flashdata('msg', '

        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          NISN atau Password Salah<br> Silahkan Login Kembali
        </div>
        ');
        redirect($url);
      }

      // $url = site_url('index.php/Login/siswa_tekno');
      $url = site_url('Login/siswa_tekno');
      echo $this->session->set_flashdata('msg', '

      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        NISN atau Password Salah<br> Silahkan Login Kembali
      </div>
      ');
      redirect($url);

    }

    $this->session->set_flashdata('msg', '
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      NISN atau Password Salah<br> Silahkan Login Kembali
    </div>
    ');
    $url = site_url('Login/siswa_tekno');
    redirect($url);
  }
  //Login Siswa Tekno Akhir


    //Login Siswa Bismen Awal
    public function siswa_bismen()
    {
      $data['profil_sekolah'] = $this->M_admin->profil_sekolah();

      $this->load->view('login_bismen', $data);
    }

    public function login_bismen()
    {
      $nisn_siswa = htmlspecialchars($this->input->post('nisn_siswa', true), ENT_QUOTES);
      $password = htmlspecialchars($this->input->post('password', true), ENT_QUOTES);

      $cek_login = $this->M_login->login_bismen($nisn_siswa, $password);

      if ($cek_login->num_rows() > 0) {
        $data = $cek_login->row_array();

        if ($data['status']=='siswa') {
          $this->session->set_userdata('siswa', true);
          $this->session->set_userdata('ses_id', $data['id_siswa']);
          $this->session->set_userdata('ses_nisn', $data['nisn_siswa']);
          redirect('C_siswa/dashboard_bismen');

        // }elseif ($data['status']=='pimpinan') {
        //   $this->session->set_userdata('pimpinan', true);
        //   $this->session->set_userdata('ses_id', $data['id_user']);
        //   $this->session->set_userdata('ses_username', $data['nisn_siswa']);
        //
        //   redirect('C_pimpinan/dashboard');
        }else {
          $url = site_url('Login/siswa_bismen');
          echo $this->session->set_flashdata('msg', '

          <div class="alert alert-danger alert-dismissible fade show" role="alert">
            NISN atau Password Salah<br> Silahkan Login Kembali
          </div>
          ');
          redirect($url);
        }

      }

      $this->session->set_flashdata('msg', '
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        NISN atau Password Salah<br> Silahkan Login Kembali
      </div>
      ');
      $url = site_url('Login/siswa_bismen');
      redirect($url);
    }
    //Login Siswa Tekno Akhir


// Login Admin

  public function fa()
  {
    $this->load->view('admin/index');
  }

  public function admin_login()
  {
    $username = htmlspecialchars($this->input->post('username', true), ENT_QUOTES);
    $password = htmlspecialchars($this->input->post('password', true), ENT_QUOTES);

    $cek_login = $this->M_login->admin_login($username, $password);

    // var_dump($cek_login);
    // exit();

    if ($cek_login->num_rows() > 0) {
      $data = $cek_login->row_array();

      if ($data['status']=='aktif') {
        $this->session->set_userdata('aktif', true);
        $this->session->set_userdata('ses_id', $data['id_admin']);
        $this->session->set_userdata('ses_user', $data['username']);
        redirect('C_admin/siswa_tekno');


      }else {
        $url = base_url('index.php/Login/fa');
        echo $this->session->set_flashdata('msg', '

        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          Username atau Password Salah<br> Silahkan Login Kembali
        </div>
        ');
        redirect($url);
      }

    }

    $this->session->set_flashdata('msg', '
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      Username atau Password Salah<br> Silahkan Login Kembali
    </div>
    ');
    $url = base_url('index.php/Login/fa');
    redirect($url);
  }

  public function siswa_logout()
  {
    $this->session->sess_destroy();
    $url = base_url();
    redirect('C_siswa');
  }

  public function logout_bismen()
  {
    $this->session->sess_destroy();
    $url = base_url();

     $this->session->set_flashdata('msg', '
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
      Terimakasih, Anda sudah Logout.
    </div>
    ');
    
    redirect('Login/siswa_bismen');
  }

  public function logout_tekno()
  {
    $this->session->sess_destroy();
    $url = base_url();

    $this->session->set_flashdata('msg', '
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
      Terimakasih, Anda sudah Logout.
    </div>
    ');

    redirect('Login/siswa_tekno');
  }

  public function admin_logout()
  {
    $this->session->sess_destroy();
    $url = base_url();
    redirect('Login/fa');
  }

}
