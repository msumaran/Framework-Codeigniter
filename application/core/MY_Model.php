<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Model extends CI_Model {

	var $main_table = "";
	var $main_table_id_name = "id";
	var $sec_models = false;
	var $sec_models_id_name = "";
	var $main_table_join = "";
	var $pagination_uri_segment = 2;
	var $pagination_base_url = "";
	var $pagination_total_rows = 0;
	var $pagination_perpage = 25;
	var $pagination_disable_first_last = true;
	var $error = '';
	var $result_limit = 100;

	function __construct(){
		parent::__construct();

		if($this->sec_models){

			$this->sec_models = explode("|", $this->sec_models);
		}

		$this->order_by = "-id";
	}

    public function order_by ($sort = false) {

        if ($sort) {

            $this->order_by = $sort;
        }
    }

    private function get_offset($page){
    	return ($page - 1 ) * $this->pagination_perpage;

    }
	public function combo($name,$id='id'){
		$data = $this->get_result_all();
		$options = array();
		//$options[''] = 'Seleccionar...';
		foreach($data as $row){

			 $options[$row->$id] = $row->$name;
		}
		return $options;
	}


	public function get_id($id){

		$this->db->flush_cache();
		$this->db->start_cache();
		$this->db->select($this->main_table .'.*');
		$this->db->from($this->main_table );
		$this->db->where($this->main_table .'.id', $id);
		if(  method_exists($this, 'join') ) $this->join();
		$query = $this->db->get();
		$this->db->stop_cache();
		$row =  $query->row();
		if(isset($this->combos) and count($this->combos) > 0){

			foreach ($this->combos as $ret) {
					$row->$ret = $this->$ret;
			}
		}

		return $row;
	}

	////////////////////////////////////

	public function get_like($page = 1, $q ){

		$offset = $this->get_offset($page);

		$this->db->flush_cache();
		$this->db->start_cache();
		
		if(  method_exists($this, 'join') ) $this->join();

		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}
		$this->db->select($this->main_table.".*");
		$this->db->from($this->main_table);
		$this->db->like('name', $q, 'BOTH');
		$this->pagination_total_rows = $this->db->count_all_results();
		
		$this->db->limit($this->result_limit, $offset);
		$query =  $this->db->get();

		$this->db->stop_cache();
		return $query->result();
	}
	////////////////////////////////////

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
		$this->pagination_total_rows = $this->db->count_all_results();
		
		$this->db->limit($this->result_limit, $offset);
		$query =  $this->db->get();

		$this->db->stop_cache();
		return $query->result();
	}

	public function get_result_where($condition,$page = 1){

		$offset = $this->get_offset($page);


		$this->db->flush_cache();
		$this->db->start_cache();

		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}

		if(  method_exists($this, 'join') ) $this->join();
		$this->db->select($this->main_table.".*");
		$this->db->from($this->main_table);
		$this->db->where($condition, null, false);

		$this->pagination_total_rows = $this->db->count_all_results();

		$this->db->limit($this->result_limit, $offset);
		$this->db->stop_cache();
		$query =  $this->db->get();
						
		return $query->result();
	}
	public function get_result_where_all($condition){

		$this->db->flush_cache();
		$this->db->start_cache();

		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}
		
		
		$this->db->select($this->main_table.".*");
		$this->db->from($this->main_table);
		$this->db->where($condition);
		if(  method_exists($this, 'join') ) $this->join();
		$this->db->stop_cache();
		$this->pagination_total_rows = $this->db->count_all_results();
		$query = $this->db->get();
		return $query->result();
	}
	public function get_where($condition,$page=1){
		$offset = $this->get_offset($page);

		$this->db->flush_cache();
		$this->db->start_cache();

		if($this->select_only_actives){
			$this->db->where($this->main_table.".activo", "si");
		}
		$this->db->select($this->main_table.".*");
		$this->db->from($this->main_table);
		$this->db->where($condition);
		if(  method_exists($this, 'join') ) $this->join();
		$this->db->stop_cache();
		$this->pagination_total_rows = $this->db->count_all_results();
		$this->db->limit($this->result_limit, $offset);
		$query = $this->db->get();
		return $query->result();
	}

	public function get_result_in($in_array){
		$this->db->flush_cache();
		$this->db->start_cache();
		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}

		if(  method_exists($this, 'join') ) $this->join();
		$query = $this->db->select($this->main_table.".*")
							->from($this->main_table)
							->where_in("id", $in_array)
							->get();
		$this->db->stop_cache();
		return $query->result();
	}

	public function get_result_by_array($field, $array){
		$this->db->flush_cache();
		$this->db->start_cache();
		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}
		if(  method_exists($this, 'join') ) $this->join();
		$query = $this->db->select($this->main_table.".".$field)
							->from($this->main_table)
							->where_in($field, $array)
							->get();
		$this->db->stop_cache();
		return $query->result();
	}

	public function get_result_all(){
		$this->db->flush_cache();
		$this->db->start_cache();
		
		$this->db->select($this->main_table.'.*');
		if (substr($this->order_by, 0, 1) === "-") {

			$this->db->order_by($this->main_table.'.'.substr($this->order_by, 1), "DESC");
		} else {

			$this->db->order_by($this->main_table.'.'.$this->order_by, "ASC");
		}


		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}
		if(  method_exists($this, 'join') ) $this->join();

		$this->db->from($this->main_table);
		$this->pagination_total_rows = $this->db->count_all_results();
		$this->db->stop_cache();
		$query = $this->db->get();



		return $query->result();
	}
	public function get_row($id){
		$this->db->flush_cache();
		$this->db->start_cache();
		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}

		$this->db->select($this->main_table.".*");
		$this->db->from($this->main_table);
		$this->db->where("id", $id);
		$query = $this->db->get();

		$this->db->stop_cache();
		return $query->row();
	}

	public function get_row_where($condition = ""){
		
		if($condition){
			$this->db->flush_cache();
			$this->db->start_cache();
			if($this->select_only_actives){
				$this->db->where("activo", "si");
			}
			if (substr($this->order_by, 0, 1) === "-") {

				$this->db->order_by($this->main_table.'.'.substr($this->order_by, 1), "DESC");
			} else {

				$this->db->order_by($this->main_table.'.'.$this->order_by, "ASC");
			}
			$query = $this->db->select($this->main_table.".*")
								->from($this->main_table)
								->where($condition, null, false)
								->limit(1)
								->get();
			$this->db->stop_cache();
			return $query->row();
		}

		return false;
	}

	public function get_last(){
		$this->db->flush_cache();
		$this->db->start_cache();
		if($this->select_only_actives){
			$this->db->where("activo", "si");
		}

		$query = $this->db->select($this->main_table.".*")
							->from($this->main_table)
							->limit(1, 0)
							->get();
		$this->db->stop_cache();
		return $query->row();
	}

	public function save($data){
		$this->db->flush_cache();
		$this->db->start_cache();
		$id = false;

		if( isset( $data['id'] ) ){

			$id = $data['id'];

			unset($data['id']);
		}


        if($id){
            // update

            if(  method_exists($this, 'prepare') ) $data = $this->prepare($data);

            $this->db->where("id", $id);
            $this->db->update($this->main_table, $data);
            $this->db->stop_cache();
            return $id;
        }else{
            //insert
            
            if(  method_exists($this, 'prepare') ) $data = $this->prepare($data);


            $this->db->insert($this->main_table, $data);
            $this->db->stop_cache();
            return $this->db->insert_id();
        }
	}

	public function delete($id){
		$this->db->flush_cache();
		$this->db->start_cache();
		if($this->sec_models and count($this->sec_models)){

			foreach($this->sec_models as $model_name){

				$this->load->model($model_name);

				$this->$model_name->delete_where($this->sec_models_id_name . " = " . $id);
			}
		}
		 $this->db->stop_cache();
        return $this->db->delete($this->main_table, array("id" => $id));
	}

	public function delete_where($condition = ""){

		$result = $this->get_result_where($condition);

		if($result){

			foreach($result as $row){

				$this->delete($row->id);
			}
		}

		return true;
	}

	public function delete_by_array($field, $array){

		$result = $this->get_result_by_array($field, $array);

		if($result){

			foreach($result as $row){

				$this->delete($row->id);
			}
		}

		return true;
	}

	

	function send_mail($mail_data){

        $this->load->library('email');

        $content = "";
        if($mail_data->template_file){
	        // setup
	        $config["mailtype"] = "html";

	        $datos = $mail_data->datos;

	        $content = $this->load->view('correos/'.$mail_data->template_file, $datos, true);
        }


        $this->email->initialize($config);

        $this->email->from($mail_data->from);
        $this->email->to($mail_data->to);

        $this->email->subject($mail_data->subject);
        $this->email->message($content);

        if(isset($mail_data->attach) and $mail_data->attach){
        	$this->email->attach($mail_data->attach);
        }

        if(!$this->email->send()){
            return $this->email->print_debugger();
        }

        return true;
	}
}

class Client_model extends MY_Model {

	function __construct(){
		parent::__construct();
		$this->select_only_actives = true;
	}
}

class Admin_model extends MY_Model {

	function __construct(){
		parent::__construct();

		$this->select_only_actives = false;
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
