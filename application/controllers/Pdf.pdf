<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class pdf extends CI_Controller {

	public $vista = array();
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 public function __construct()
    {
		parent::__construct();
		$this->vista['base'] = base_url();
    }
   	public function memorandum($id){
    	$this->load->model('m_users_memorandum');
		$this->load->model('m_users');
		$memorandum = $this->m_users_memorandum->get_id( $id );
			
		$ar = explode('-', $memorandum->fecha);

		$numero = '0'.$memorandum->id.'-'.$ar[0];
	

    	$users = $this->m_users->get_id($memorandum->users_id);
    	if(!$users){
    		$users = new stdClass();
    		$users->name = 'Equipo de Nativos Digitales';
    	}
    	

    	$this->load->helper('download');
		$this->load->library('html2pdf');
		$this->html2pdf->folder('./_files/pdfs/');

		$name = 'memo-'.url_title($users->name).'.pdf';
		$archivo = './_files/pdfs/'.$name;
		$this->html2pdf->filename($name);
		$this->html2pdf->paper('a4', 'portrait');
		$data['name'] = $users->name;
		$data['numero'] = $numero;
		$data['fecha'] = pdf_fecha($memorandum->fecha);
		$data['asunto'] = $memorandum->asunto;
		$data['texto'] = $memorandum->texto;


		$data['numero'] = $numero;
		
		$this->html2pdf->html($this->load->view('documentos/memorandum', $data, true));
		if($this->html2pdf->create('save')) {
	    	$data = file_get_contents($archivo);
	    	force_download($name, $data);
		}else{
			echo 'Hubo un error contactate con el area de sistemas!';
		}
    	
    }
    public function contactreport($id){
    	$this->load->model('m_contactreport');
    	$this->load->model('m_users');
    	$this->load->model('m_sueldos');
    	$this->load->helper('download');
    	 $this->load->library('html2pdf');
    	
		$ret = $this->m_contactreport->get_id($id);
		$name = url_title($ret->proyecto.'-'.$ret->cliente.'-CR-00'.$ret->id).'.pdf';
		$archivo = './_files/pdfs/'.$name;
		
		$users = $this->m_users->get_id( $ret->users_id );
		$sueldos = $this->m_sueldos->get_where( array('users_id'=>$users->id,'principal'=>'si'), false );
		
		$this->html2pdf->folder('./_files/pdfs/');
		
		$this->html2pdf->filename($name);
		$this->html2pdf->paper('a4', 'portrait');
		
		$data['ret'] = $ret;
		$data['cargo'] = $sueldos->cargo;
		$data['name'] = $users->name;

		$ar = explode('-', $ret->fecha);

		$data['numero'] = '0'.$ret->id.'-'.$ar[0];

		$this->html2pdf->html($this->load->view('documentos/contact_report', $data, true));
		if($this->html2pdf->create('save')) {
	    	$data = file_get_contents($archivo);
	    	force_download($name, $data);
		}else{
			echo 'Hubo un error contactate con el area de sistemas!';
		}
    	
    }
    public function cotizadorproductos($id){
    	$this->load->model('m_cotizador');
    	$this->load->model('m_cotizacion');
    	$this->load->model('m_cotizacion_cronogramatarea');
    	$this->load->model('m_cotizacion_sueldos');
    	$this->load->model('m_producto');
    	$this->load->helper('download');


    	//$this->load->library('html2pdf');
    	
    	$this->vista['cotizacion'] = $this->m_cotizacion->get_id($id);
    	
    	// Obtenemos la cotización del producto
    	$cotizacion_producto = $this->m_cotizacion->get_where( array('tipo'=>'tmp', 'productos_id'=> $this->vista['cotizacion']->productos_id) , false);
    		
    	$this->vista['tareas'] = $this->m_cotizacion_cronogramatarea->get_cotizacion_id( $cotizacion_producto->id );
    	
    	$this->vista['sueldos'] = $this->m_cotizacion_sueldos->get_cotizacion_id(  $cotizacion_producto->id );
    	$this->vista['cotizacion_producto'] = $cotizacion_producto;
    	

    	$this->vista['producto'] = $this->m_producto->get_id($cotizacion_producto->productos_id);
    	
    	//$this->load->view("documentos/presupuesto",$this->vista);
    	
		$name = url_title($this->vista['cotizacion']->proyectos.'-'.$this->vista['cotizacion']->clientes.'-PS-00'.$this->vista['cotizacion']->id).'.pdf';
		
		$archivo = './_files/pdfs/presupuesto/'.$name;
	    ini_set('memory_limit','32M'); 	 
	    $this->load->library('pdf2');
	    $pdf = $this->pdf2->load();
	    $pdf->SetFooter('ERP - Nativos Digitales S.A.C |{PAGENO}');
	    $pdf->WriteHTML($this->load->view("documentos/presupuesto_producto",$this->vista, true)); // write the HTML into the PDF
	    $pdf->Output($archivo, 'F'); // save to file because we can
		
		 
		$data = file_get_contents($archivo);
	   	force_download($name, $data);
		/*
		$this->html2pdf->folder('./_files/pdfs/presupuesto/');
		
		$this->html2pdf->filename($name);
		$this->html2pdf->paper('a4', 'portrait');
		
		$this->html2pdf->html($this->load->view("documentos/presupuesto",$this->vista, true));
		if($this->html2pdf->create('save')) {
	    	$data = file_get_contents($archivo);
	    	force_download($name, $data);
		}else{
			echo 'Hubo un error contactate con el area de sistemas!';
		}
		*/
    	
    }
    public function cotizador($id){
    	$this->load->model('m_cotizador');
    	$this->load->model('m_cotizacion');
    	$this->load->model('m_cotizacion_cronogramatarea');
    	$this->load->model('m_cotizacion_sueldos');
    	$this->load->helper('download');


    	//$this->load->library('html2pdf');
    	
    	$this->vista['cotizacion'] = $this->m_cotizacion->get_id($id);
    	

    	
    	$this->vista['tareas'] = $this->m_cotizacion_cronogramatarea->get_cotizacion_id($id);
    	
    	$this->vista['sueldos'] = $this->m_cotizacion_sueldos->get_cotizacion_id($id);
    	//var_dump($this->vista['tareas']);
    	//die;
    	//$this->load->view("documentos/presupuesto",$this->vista);
    	

		$name = url_title($this->vista['cotizacion']->proyectos.'-'.$this->vista['cotizacion']->clientes.'-PS-00'.$this->vista['cotizacion']->id).'.pdf';
		
		$archivo = './_files/'.$name;
	    ini_set('memory_limit','32M'); 	 
	    $this->load->library('pdf2');
	    $pdf = $this->pdf2->load();
	    $pdf->SetFooter('Nativos Digitales S.A.C |{PAGENO}');
	    $pdf->WriteHTML($this->load->view("master/documentos/presupuesto",$this->vista, true)); // write the HTML into the PDF
	    $pdf->Output($archivo, 'F'); // save to file because we can
		
		 
		$data = file_get_contents($archivo);
		if(ENVIRONMENT == 'development'){

			$this->load->view("documentos/presupuesto",$this->vista);
		}else{

			force_download($name, $data);
		}
	   	
		/*
		$this->html2pdf->folder('./_files/pdfs/presupuesto/');
		
		$this->html2pdf->filename($name);
		$this->html2pdf->paper('a4', 'portrait');
		
		$this->html2pdf->html($this->load->view("documentos/presupuesto",$this->vista, true));
		if($this->html2pdf->create('save')) {
	    	$data = file_get_contents($archivo);
	    	force_download($name, $data);
		}else{
			echo 'Hubo un error contactate con el area de sistemas!';
		}
		*/
    	
    }
    public function cotizadormedios($id){
    	$this->load->model('m_cotizador');
    	$this->load->model('m_cotizacion');
    	$this->load->model('m_cotizacion_cronogramatarea');
    	$this->load->model('m_cotizacion_sueldos');
    	$this->load->model('m_cotizacion_medios');
    	$this->load->helper('download');
    	
    	$cotizacion = $this->m_cotizacion->get_where( array('id'=>$id) , false );
    	$medios = $this->m_cotizacion_medios->get_where( array('cotizacion_id'=>$id) );
    	$rows = $this->m_cotizacion_medios->get_where( array('cotizacion_id'=>$id) );

    	
    	$this->load->library('PHPExcel');
    	$objReader = PHPExcel_IOFactory::createReader('Excel2007');

		$objPHPExcel = $objReader->load('./assets/excel_modelo/modelo_medios.xlsx');
		$objPHPExcel->setActiveSheetIndex(0);
		$objPHPExcel->getActiveSheet()->SetCellValue('C2', $cotizacion->clientes);
		$objPHPExcel->getActiveSheet()->SetCellValue('C3', 'PSM-00'.$cotizacion->id);
		$objPHPExcel->getActiveSheet()->SetCellValue('C4', $cotizacion->proyectos);
		// Agregamos las filas de sites
	
		$objPHPExcel->getActiveSheet()->insertNewRowBefore(11,(count($rows)-1));
		$i = 10;
		foreach ($rows as $ret) {
			$lista_1 = $ret->clicks + $ret->horas + $ret->leads + $ret->vistas;                                      
            $lista_2 = $ret->cpc_estimado + $ret->costoxhora + $ret->costoxlead + $ret->costoxvista;      
            if( empty( $lista_2 )) $lista_2 = 'N.A.';
            if( empty( $lista_1 )) $lista_1 = 'N.A.';
			$objPHPExcel->getActiveSheet()->SetCellValue('B'.$i, $ret->portales);
			$objPHPExcel->getActiveSheet()->SetCellValue('C'.$i, $ret->formatos);
			$objPHPExcel->getActiveSheet()->SetCellValue('E'.$i, $ret->publicacion.' '.$ret->publicacion_tipo);
			$objPHPExcel->getActiveSheet()->SetCellValue('F'.$i, $ret->tipocompras);
			$objPHPExcel->getActiveSheet()->SetCellValue('G'.$i, $lista_1);
			$objPHPExcel->getActiveSheet()->SetCellValue('H'.$i, $ret->ctr_estimado);
			$objPHPExcel->getActiveSheet()->SetCellValue('I'.$i, $ret->impresiones_estimadas);
			$objPHPExcel->getActiveSheet()->SetCellValue('K'.$i, $lista_2);
			$objPHPExcel->getActiveSheet()->SetCellValue('L'.$i, $ret->cpmestimado);
			$objPHPExcel->getActiveSheet()->SetCellValue('M'.$i, $ret->presupuesto);
			$i++;
		}
		
		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$name = "archivo".rand(1,10000).".xlsx";
		$archivo = "./assets/excel/".$name;
		$objWriter->save($archivo);
		$data = file_get_contents($archivo);
	   	force_download($name, $data);
    }
   	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */