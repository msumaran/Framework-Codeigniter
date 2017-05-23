<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_clientes extends MY_Model
{
	public $main_table 		= "clientes";
	public $select_only_actives  = false;


	public function __construct()
	{
		parent::__construct();
	}
	public function prepare($data=array()){
		var_dump($data);
		return $data;
	}
	
	
}
/* End of file M_slider.php */
/* Location: ./application/models/M_slider.php */