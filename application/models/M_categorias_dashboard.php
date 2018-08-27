<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_categorias_dashboard extends MY_Model
{
	public $main_table 		= "categorias_dashboard";
	public $select_only_actives  = false;


	public function __construct()
	{
		parent::__construct();
	}
	public function join($data=array()){
		
		return $data;
	}
	
	public function get_result_all(){
		$this->db->flush_cache();
		$this->db->start_cache();
		
		$this->db->select($this->main_table.'.*');
	

		

		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}
		if(  method_exists($this, 'join') ) $this->join();

		$this->db->from($this->main_table);
		$this->pagination_total_rows = $this->db->count_all_results();
		$this->db->order_by($this->main_table.'.orden', 'asc');
		$this->db->stop_cache();
		$query = $this->db->get();



		return $query->result();
	}
	
}
/* End of file M_slider.php */
/* Location: ./application/models/M_slider.php */