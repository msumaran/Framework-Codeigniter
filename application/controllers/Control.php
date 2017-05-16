<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Control extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function login()
	{
		$this->load->model('m_control');
		$this->m_control->wc_logout();
		$this->load->view('master/login');
	}
	public function auth(){
		$this->load->model('m_control');
		$data = json_decode(file_get_contents('php://input'), true);
		
		$ar = array();
		if (  $this->m_control->wc_Auth( $data['email'], $data['passwd']) ){
			$ar['login'] = true; 

		}else{
			$ar['login'] = false;
			$ar['error'] = 'Usuario y contraseña incorrecto';

		}

		echo json_encode($ar);
	}

	public function salir(){

		$this->m_control->wc_logout();
		redirect('login','refresh');
	}
}
