<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_giros extends MY_Model
{
	public $main_table 		= "giros";
	public $select_only_actives  = false;
	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_giros');
	}

	

}
/* End of file M_slider.php */
/* Location: ./application/models/M_slider.php */