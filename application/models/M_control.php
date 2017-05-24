<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_control extends CI_Model{

	var $id 			         = null;
	var $nombres 		 = '';
	var $email 			         = '';
	var $registered		         = 0;
	var $level 		             = 0;
	var $is_admin                = false;
	var $logeado                 = false;
	var $llave                   = 67657567657;
	var $now;
	// Otors

	var $cookie_name = 'test_cookie';
	var $users_table = "usuarios";

	public function __construct(){
		parent::__construct();
		// Debug end

		$this->eval_session_cookie();
	}

	public function eval_session_cookie(){
		$this->now = time();

		$cookie = $this->input->cookie( $this->cookie_name );

		if($cookie){

			$ar = unserialize($cookie);



			if($ar['id']){
				$id = intval($ar['id']);
				$query= $this->db->query("SELECT * FROM " . $this->users_table . " where id = " . $id);
				$row = $query->row();

				$key = md5($this->llave.$ar['id']);

				if($query->num_rows() == 0 or ($this->now - intval($ar['now'])) > 864000 or $key != $ar['key']){
					$this->wc_logout();
					return;
				}

				return $this->wc_login($row);
			}
		}


	
		return false;
	}

	public function wc_Auth($correo, $passwd, $guardar = true){

		$passwd = $this->encode_pass($correo, trim($passwd));

		if(!$correo and !$passwd) {

			return false;
		}

		$query= $this->db->query("SELECT * FROM " . $this->users_table . " where correo='".$correo."' AND activo = 'si'");

		$row = $query->row();

		if($query->num_rows() == 0) {

            return false;
		}

		if (($row->id > 0) and ($row->passwd == $passwd)) {
	

            $this->wc_login($row);
			return $this->set_session_cookie(1, $row->level, $guardar);
		}

		return false;
	}

	public function wc_login($row){

		$this->id 			 = $row->id;
		$this->nombres 			 = $row->nombres;
		$this->correo 			 = $row->correo;
		$this->level 			 = $row->level;
		$this->logeado 		     = true;

		return true;
	}

	public function register($data){
		$correo = $data->correo;
		$password = $data->password;

		unset($data->correo);

		$data->password = $this->encode_pass($correo, $data->password);
		$data->registered = 1;
		$data->status = 1;

		$this->db->where("correo", $correo);

		if($this->db->update("users", $data)){
			return $this->wc_Auth($correo, $password, true);
		}

		return false;
	}

	public function wc_logout(){
		$this->set_session_cookie(0);
		return $this->set_session_cookie(0,4);
	}

	public function set_session_cookie($action, $level = 0, $save = true){

		switch ($action) {
		case '0': // Borrar cookie
				$strCookie = "";
				$time = $this->now - 3600;
			break;
		case '1': //guardar cookie
			if($save){
				$time = time() + 2520000; // Valido por 1000 horas.
			}else{
				$time = 0;
			}

			$ar['id'] = $this->id;
			$ar['key'] = md5($this->llave.$this->id);
			$ar['now'] = $this->now;
			$strCookie = serialize($ar);
			break;
		}
		
		return setcookie( $this->cookie_name ,$strCookie,$time,"/");



	}

	
	/*****************************/

	private function encode_pass($correo, $pass){

        return md5($correo . "::" . $pass);
	}

	public function reset_pass($correo){

		$query = $this->db->select("id, nombres, correo")
							->from($this->users_table)
							->where("correo", $correo)
							->get();

		$row = $query->row();

		if (!$row) {

			return 0;
		}

		$token = bin2hex(openssl_random_pseudo_bytes(10));

		$data = new stdClass();

		$data->user_id = $row->entry;
		$data->token = $token;

		$data->expires = date('Y-m-d H:i:s', strtotime('1 hour'));

		if($this->db->insert('users_tokens', $data)){

			$data = new stdClass();

			$data->nombres = $row->nombres;
			$data->correo = $row->email;
			$data->token = $token;

			return $data;
		}

		return false;
	}

	public function do_reset($user, $pass){

		$user->password = $this->encode_pass($user->correo, $pass);
		$user->registered = 1;

		$this->db->where("entry", $user->entry);

		return $this->db->update("users", $user);
	}

	/*
	================================ */


	public function direct_login($iduser){

		$query= $this->db->query("SELECT * FROM " . $this->users_table . " where entry=".$iduser);

		$row = $query->row();

		if(!$row->registered){

			die("Es necesario su registro para continuar");
		}


		if($query->num_rows() == 0) {
			return false;
		}

		$this->wc_login($row);

		return $this->set_session_cookie(1, false);
	}


}
