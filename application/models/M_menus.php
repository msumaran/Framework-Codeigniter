<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_menus extends MY_Model
{
	public $main_table 		= "menus";
	public $select_only_actives  = false;
	public function __construct()
	{
		parent::__construct();
	}

	

}
/* End of file M_slider.php */
/* Location: ./application/models/M_slider.php */