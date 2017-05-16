<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_opciones extends CI_Model
{
	public $_table 		= "opciones";
	public $opt = array();

	public function __construct()
	{
		parent::__construct();
		$this->getOpciones();
	}

	public function getOpciones()
	{
		$this->db->flush_cache();
		$this->db->start_cache();
		$this->db->select('*');
		$this->db->from($this -> _table);
		$query = $this->db->get();
		$this->db->stop_cache();
		$query = $query -> result();
		foreach($query as $row){
			
			$this->opt[$row->valor] = $row->value;
		}
	}

	public function getOpt()
	{
		$this->db->flush_cache();
		$this->db->start_cache();
		$this->db->select('*');
		$this->db->from($this -> _table);
		//$this->db->where($this -> _table.'.status','1');
		//$this->db->order_by($this -> _table.'.orden','asc');
		$query = $this->db->get();
		$data = array();
		foreach($query -> result() as $row){
				$data[$row->valor] = $row->value;
		}
		return $data;
	}
	public function update($data,$id)
	{
		$this->db->where('id', $id);
		return $this -> db -> update($this -> _table , $data);
	}
	

	
	public function get_id($id){
		if( empty ($id )) return false;
		$this->db->flush_cache();
		$this->db->start_cache();
		$this->db->select('*');
		$this->db->from($this -> _table);
		$this->db->where('id', $id);
		$query = $this->db->get();
		return $query->row();

	}
	public function get($id = 0)
	{
		$this->db->select($this -> _table.'.*');
		$this->db->from($this -> _table);
		$query = $this->db->get();
		return $query->row();
	}
	public function get_where( $where=array(), $todos=true )
	{
		
		$this->db->select($this -> _table.'.*');
		$this->db->from($this -> _table);
		foreach( $where as $row=>$val){
			$this->db->where($this -> _table.'.'.$row, $val);
		}
		$query = $this->db->get();
		if( $todos ){
			return $query->result() ;
		}else{
			return $query->row();
		}
	}
	public function getAll()
	{
		$this->db->select('*');
		$this->db->from($this -> _table);
		
		$query = $this->db->get();
		return $query->result();
	}

}
/* End of file M_slider.php */
/* Location: ./application/models/M_slider.php */