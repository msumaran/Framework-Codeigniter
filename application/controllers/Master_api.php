<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master_api extends Admin_controller {

	private $path_admin = 'master/';

	function __construct(){
		parent::__construct();

		$this->config->set_item('compress_output', FALSE);
	}
	/*********************************************
	*
	*	Funciones Basicas
	*
	*********************************************************/
	public function session(){
		$this->load->model($this->path_admin.'m_control');

		echo json_encode($this->m_control);

	}

	public  function get_id($model,$id){
		$modelo = 'm_'.$model;


		$this->load->model($this->path_admin.$modelo,'m_model');
		
	
		$result = $this->m_model->get_id($id);
	
	
		echo json_encode($result);
	}

	public  function get_all($model){
		$modelo = 'm_'.$model;


		$this->load->model($this->path_admin.$modelo,'m_model');
		
		

		$result = $this->m_model->get_result_all();
		
		$data = array();
		$data['total'] = $this->m_model->pagination_total_rows;
		foreach ($result as $row) { 
			 $data['data'][] = $row;
		}
		echo json_encode($data);
	}
	public  function get($model,$page=1){
		$modelo = 'm_'.$model;


		$this->load->model($this->path_admin.$modelo,'m_model');
		
		if ( $this->input->get('q') ){
			$result = $this->m_model->get_like( $page, $this->input->get('q') );
		}else{

			$result = $this->m_model->get_result($page);
		}
		
		$data = array();
		$data['total'] = $this->m_model->pagination_total_rows;
		foreach ($result as $row) { 
			 $data['data'][] = $row;
		}
		echo json_encode($data);
	}
	
	public  function del($model,$id){
		$modelo = 'm_'.$model;
		$this->load->model($this->path_admin.$modelo,'m_model');
		$this->m_model->delete($id);
	}

	public  function save($model,$id=0){
	
		
		$this->load->model($this->path_admin.'m_'.$model,'m_model');
		
		$data = json_decode(file_get_contents('php://input'), true);


		var_dump($data);
		die;
		if(!empty($id) ) $data['id'] = $id;
		
		$insert_id = $this->m_model->save($data);

		$result = $this->m_model->get_id($insert_id);
		
		echo json_encode($result);
	}
	public function form($model,$id=0)
	{

	    	$modelo = 'm_'.$model;
	    	$this->load->model($this->path_admin.$modelo,'m_model');


	    if( !empty($id) ){
				$this->salida['row'] = $this->m_model->get_id( $id );
				if ( empty ( $this->salida['row'] ) ){
					show_404();
				}
				$this->salida['editar'] = true;
			}else{
				$this->salida['row'] = $this->m_model;
				$this->salida['editar'] = false;
			}
	    $this->load->view('admin/form/'.$model,$this->salida);
	}
	public function add_dialog($model,$id=0){
    	$modelo = 'm_'.$model;
    	$this->load->model($this->path_admin.$modelo,'m_model');
    	$data = $this->input->post();
    	if(!$data) return;
    	if( !empty($id) ){
				$data['id'] = $id;
			}

			if( isset($data['created_at']) ){
				$data['created_at'] = tiempo_mysql_save($data['created_at']);

			}

			//var_dump($data);
			$id = $this->m_model->save($data);


			$json = array();
			if(empty($id)){
				if(isset($this->m_model->error) and !empty($this->m_model->error)){
					$error = $this->m_model->error;
				}else{
					$error = 'Hubo un error!!';
				}
				$json['error'] = $error;
				echo json_encode($json);
				die();
			}
			$this->load->model($this->path_admin.$modelo,'m_model');
			if(is_array($this->m_model->get_id($id) )){
				$json = $this->m_model->get_id($id);
				$json['id'] = $id;
				$json['get'] = $this->input->get();
				if(isset( $data['name'] ) ) $json['name'] = $data['name'];
			}else{
				$json = $this->m_model->get_id($id);
				$json->id = $id;
				$json->get = $this->input->get();
				if(isset( $data['name'] ) ) $json->name = $data['name'];
			}
			echo json_encode($json);

    }
    public function upload_image(){
		$this->load->helper('string');
		$mes = date('m');
		$dia = date('d');
		$path = $this->input->get('path');
		
		$config['upload_path'] = './_files/'.$path.'/'.$mes.'/'.$dia.'/';
		if (!is_dir($config['upload_path'])) {
			if (!is_dir('./_files/'.$path)) {
				mkdir('./_files/'.$path,0777);
			}

			if (!is_dir('./_files/'.$path.'/'.$mes.'/')) {
				mkdir('./_files/'.$path.'/'.$mes.'/',0777);
			}
    		mkdir($config['upload_path'],0777);
		}
		$this->ruta = $config['upload_path'];
		$config['allowed_types'] = 'gif|jpg|png';
		$config['file_name'] = $mes.$dia.random_string('alnum', 4);
		$this->load->library('upload', $config);
		if ( $this->upload->do_upload('Filedata') ){
			$datos = $this->upload->data();

			$ruta = base_url();
			$datos['url'] = img_ver($ruta,$datos['file_name']);
			echo json_encode($datos);
		}else{
			var_dump($_FILES);
			echo $this->upload->display_errors();
			echo 'No subio el archivo';
		}
	}
}
