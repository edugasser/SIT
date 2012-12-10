<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class operacio extends CI_Controller {

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
 
	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('mi_model');
	}

	public function index()
	{ 
		$data['contenido'] =  "operacio/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function add()
	{ 
		$data['contenido'] =  "operacio/add_view";
		$this->load->view('page_view', $data);
	
	}
	public function gestion($success=null){
		
		$data['success'] = isset($success);
		$sql = "SELECT *,projecte.titol as nom_projecte FROM operacio LEFT JOIN  PROJECTE ON operacio.projecte_id = projecte.id";
		$data['data'] = $this->mi_model->get_sql($sql);
 
		$data['contenido'] =  "operacio/gestion_view";
		 
		$this->load->view('page_view', $data);
	}
  
	 
	public function delete($id){
		//eliminamos
		$this->mi_model->delete("operacio","id",$id);
 
		// where to redirect to
		redirect('/operacio/gestion/','refresh');		
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
	 

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */