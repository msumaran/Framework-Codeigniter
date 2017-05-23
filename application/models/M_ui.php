<?php  
class m_ui extends CI_Model{

	public function __construct()
	{
		parent::__construct();
	}
	/*************************************************************
	*  Imprime los meses
	****************************************************************/
	function meses($model){
		$a=range("A","Z");
		echo '<div class="letras">Letras: ';
		foreach($a as $char){
			echo '<a href="javascript:;" ng-click="filtrarl(\''.$char.'\')">'.$char.'</a>';
		}
		echo '</div>';
	}

	function upload_file_data($img,$path){
		$this->load->helper('string');
		$pos  = strpos($img, ';');	
		$type = explode(':', substr($img, 0, $pos))[1];
		var_dump($type);
		$mimes = get_mimes();
		$ext = $mimes[$type];
		var_dump($ext);
		die;
		$img = substr($img, $pos);
		$img = str_replace(';base64,', '', $img);
		$img = str_replace(' ', '+', $img);
		$data = base64_decode($img);

		$mes = date('m');
		$dia = date('d');

		$upload = './_files/'.$path.'/'.$mes.'/'.$dia.'/';
		if (!is_dir($upload)) {
			if (!is_dir('./_files/'.$path)) {
				mkdir('./_files/'.$path,0777);
			}

			if (!is_dir('./_files/'.$path.'/'.$mes.'/')) {
				mkdir('./_files/'.$path.'/'.$mes.'/',0777);
			}
    		mkdir($upload,0777);
		}


		$name = $mes.$dia.random_string('alnum', 4).'.png';
		file_put_contents($upload.$name, $data);

	}
	function send_mail($data=array(), $titulo, $msg=array(), $template='base'){
		$this->load->model('m_users');
		$this->load->library('parser');
		$this->load->model('m_correos');
		$data['base'] = base_url();
	
		$msg = $this->load->view('correos/base',$data,true);

		$mail = new PHPMailer();
        $mail->SetFrom( $this->m_opciones->opt['admin'] , $this->m_opciones->opt['razon_social']);  //Quien envía el correo
        $mail->Subject    = $ret->subject;
        $mail->Body      = $msg;
        $mail->AltBody    = strip_tags($msg);
        $mail->AddAddress($user->email, $user->name);
 
        
        if( !$mail->Send() ) {
            $data["msg"] = "Error en el envío: " . $mail->ErrorInfo;
        } else {
            $data["msg"] = "¡Mensaje enviado correctamente!";
        }


	}
}
