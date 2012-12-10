<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class proyecto extends CI_Controller {

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
	var $path = '/proyecto/gestion/';	
	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('mi_model');
	}

	public function index()
	{ 
		$data['contenido'] =  "proyecto/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function add()
	{ 
		$data['contenido'] =  "proyecto/add_view";
		$this->load->view('page_view', $data);
	
	}
	public function gestion($success=null){
		
		$data['success'] = isset($success);
		$sql = "SELECT *,DATE_FORMAT(data_entrega, '%d-%m-%Y') as data_entrega FROM projecte ORDER BY data_registre";
		$data['proyectos'] = $this->mi_model->get_sql($sql);
 
		$data['contenido'] =  "proyecto/gestion_view";
		 
		$this->load->view('page_view', $data);
	}
 
	public function asignar($id_seccion,$id_seccion_extra,$error =null){
		//Mostramos las personas del grupo//
		 
		$data['success'] = isset($success);
		$sql = "SELECT * FROM seccion_extra  WHERE id_seccion = '$id_seccion'";
		$data['extra'] = $this->mi_model->get_sql($sql);
		
		$sql1 = "SELECT congregacion.nombre_congregacion,persona.id_persona,
		IF(persona.foto<>1,'0',persona.id_persona) as foto,
		concat_ws(' ',nombre_persona,apellido_persona) as nombre_completo
		FROM extra_persona  
						JOIN persona ON persona.id_persona = extra_persona.id_persona
						JOIN congregacion ON congregacion.id_congregacion = persona.id_cong
						WHERE id_seccion_extra = '$id_seccion_extra'";
		$data['miembros'] = $this->mi_model->get_sql($sql1);
		$data['id_seccion_extra'] = $id_seccion_extra;
 
		if ($error!=null){ $data['success'] = '<div name="whatever" id="whatever" class="notibar msgerror"><a class="close"></a><p>La persona ya está en la lista</p></div> ';          
			}
		$data['id_seccion'] = $id_seccion;
		$data['contenido'] =  "extras/asignar_view";
		$data['titulo'] =  $this->mi_model->devolver_dato('seccion','id_seccion',$id_seccion,'nombre_seccion');
	
		$this->load->view('page_view', $data);
	}	
	 
	public function delete($id){
		//eliminamos
		$this->mi_model->delete("projecte","id",$id);
 
		// where to redirect to
		redirect('/proyecto/gestion/','refresh');		
	}
 
	public function update($id_seccion,$id,$dato){
	    $data = array(
               'nombre_seccion_extra' => urldecode($dato)
 
            );
	 
		$this->mi_model->update("seccion_extra","id_seccion_extra",$id,$data);
		redirect(base_url().'/extra/gestion/'.$id_seccion.'/success/');
	}

	 
	public function delete_all(){
		$ids=$_POST['id'];
		$i=0;$error=false;
		//ELIMINAMOS TODOS LOS CHECKBOX SELECCIONADOS
		//FALTA COMPROBACION TRIGGER CUANDO KEY FOREANEA UTILIZADA
		while ($i<count($ids)){	
		 
		 	if (isset($_POST[$i])){ 	
				$this->mi_model->delete("projecte","id",$_POST['id'][$i]);	
			}	 
	    	$i++;   
	    }
		// where to redirect to
		redirect('/proyecto/gestion/','refresh');	

	}
	public function delete_all_asignar($id_seccion,$id_seccion_extra){
		$ids=$_POST['id'];
		$i=0;$error=false;
		//ELIMINAMOS TODOS LOS CHECKBOX SELECCIONADOS
		//FALTA COMPROBACION TRIGGER CUANDO KEY FOREANEA UTILIZADA
		while ($i<count($ids)){	
		 
		 	if (isset($_POST[$i])){ 	
				$this->mi_model->delete_two_where("extra_persona","id_seccion_extra",$id_seccion_extra,"id_persona",$_POST['id'][$i]);	
			}	 
	    	$i++;   
	    }
	
		// where to redirect to
		redirect("/extra/asignar/".$id_seccion."/".$id_seccion_extra);		

	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */