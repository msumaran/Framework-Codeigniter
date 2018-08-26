<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_usuarios extends MY_Model
{
	public $main_table 		= "users";
	public $select_only_actives  = false;


	public function __construct()
	{
		parent::__construct();
	}

	public function prepare($data){
		unset($data['cliente']);
		$data['tipo'] = 'cliente';
		$data['activo'] = 'si';
		if(!empty($data['passwd']) )  $data['passwd'] = md5($data['passwd']);
		else unset($data['passwd']);
		
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
		$this->db->where($this->main_table.'.tipo', 'cliente');
		$this->pagination_total_rows = $this->db->count_all_results();
		$this->db->order_by('name', 'asc');
		$this->db->limit($this->result_limit, $offset);
		$query =  $this->db->get();

		$this->db->stop_cache();
		return $query->result();
	}


	public function get_result_all(){
		$this->db->flush_cache();
		$this->db->start_cache();
		
		$this->db->select($this->main_table.'.name, clientes.id');
	

		

		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}
		if(  method_exists($this, 'join') ) $this->join();

		$this->db->from($this->main_table);
		$this->pagination_total_rows = $this->db->count_all_results();
		$this->db->order_by('clientes.name', 'asc');
		$this->db->stop_cache();
		$query = $this->db->get();



		return $query->result();
	}
	public function join(){

		$this->db->select('clientes.name as cliente');
		$this->db->join('clientes', 'clientes.id = users.clientes_id', 'left');
	}
	
	
}
/* End of file M_slider.php */
/* Location: ./application/models/M_slider.php */