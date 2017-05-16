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
