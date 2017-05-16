<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	var $salida = array();

	function __construct(){
		parent::__construct();

        $this->load->library('user_agent');
        $backto = $this->agent->referrer();

		$this->set_salida();


        $this->salida["backto"] = $backto;

		$this->load->helper("url");
		$this->load->helper("date");

		$this->load->model("m_opciones");

		$this->settings = $this->m_opciones->getOpciones();

		$this->salida["settings"] = $this->settings;
		$this->salida['base_url'] = base_url();



	}

	function set_salida(){

		$this->salida["ext_styles"] = array();
		$this->salida["styles"] = array();

		$this->salida["ext_scripts"] = array();
		$this->salida["scripts"] = array();
	}
}

class Client_controller extends MY_Controller {

	function __construct(){
		parent::__construct();

		

		$this->user_data = new M_object(array(
			"idUser" => $this->m_control->id,
			"nombres" => $this->m_control->name,
			"email" => $this->m_control->email
		));
		
		$this->salida["userdata"] = $this->user_data;

		$this->salida["navigation"] = false;
	}

	private function redirect(){

		if(!$this->m_control->logeado){
			redirect(base_url() . "control?backto=".current_url());
		}
	}
}

class Admin_controller extends MY_Controller {

	var $salida = array();

	
	function __construct(){
		parent::__construct();

		$this->redirect();

		$this->load->model('m_menus');
		$this->load->model('m_control');
		
		$this->load->library('form_builder');
		$this->db->order_by('orden', 'asc');
		$this->salida['menus'] = $this->m_menus->get_result_where_all( 'tipo="crm"' );
		$this->salida['js'] =  get_filenames('static/js/master');
		$this->salida['v'] = uniqid();

		
	}

	private function redirect(){

		if( !$this->m_control->logeado ){
			redirect(base_url() . "login?backto=".current_url());
		}
	}

   

	public function delete(){

		$this->load->model($this->main_model_name, "main_model");

		$entry = $this->uri->segment($this->uri_segment);

		echo $this->main_model->delete($entry);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
