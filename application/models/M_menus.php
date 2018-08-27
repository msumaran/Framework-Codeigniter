<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_menus extends MY_Model
{
	public $main_table 		= "menus_dashboard";
	public $select_only_actives  = false;
	public function __construct()
	{
		parent::__construct();
	}

	public function prepare($data){
		unset($data['cliente']);
		unset($data['categoria']);
		$data['tipo'] = 'crm';
		return $data;
	}
	public function get_result($page = 1){

		$offset = $this->get_offset($page);

	

		
		$this->db->flush_cache();
		$this->db->start_cache();

		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}

		if(  method_exists($this, 'join') ) $this->join();
		$this->db->select($this->main_table.".*");
		$this->db->from($this->main_table);
		$this->db->where($this->main_table.'.tipo', 'crm');
		$this->pagination_total_rows = $this->db->count_all_results();
		if (substr($this->order_by, 0, 1) === "-") {

			$this->db->order_by($this->main_table.'.'.substr($this->order_by, 1), "DESC");
		} else {

			$this->db->order_by($this->main_table.'.'.$this->order_by, "ASC");
		}
		$this->db->limit($this->result_limit, $offset);
		$query =  $this->db->get();

		$this->db->stop_cache();
		return $query->result();
	}
	public function join(){

		$this->db->select('clientes.name as cliente, categorias_dashboard.name as categoria');
		$this->db->join('clientes', 'clientes.id = menus_dashboard.clientes_id', 'left');
		$this->db->join('categorias_dashboard', 'categorias_dashboard.id = menus_dashboard.categorias_id', 'left');

	}
	

}
/* End of file M_slider.php */
/* Location: ./application/models/M_slider.php */