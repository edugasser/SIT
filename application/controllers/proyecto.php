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
		$this->load->library('Tank_auth');
	}

	public function index()
	{ 
		$data['contenido'] =  "proyecto/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function add()
	{ 
		if ($this->tank_auth->is_logged_in()) {		
			$data['contenido'] =  "proyecto/add_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	
	}
	public function gestion(){
 
		if ($this->tank_auth->is_logged_in()) {	
			
			$data['contenido'] =  "proyecto/gestion_view"; 
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
		public function aceptar($id_proposta){
		$array = array('estat_projecte' => 1);
		$this->mi_model->update('projecte','id',$id_proposta,$array);
		
		
		redirect('proyecto/gestion','refresh');
	}
	public function cancelar($id_proposta){
		$array = array('estat_projecte' => 4);
		$this->mi_model->update('projecte','id',$id_proposta,$array);
		redirect('proyecto/gestion','refresh');
	}
		public function mio( ){
 
			
			$sql2 = "SELECT *,projecte.id as id_projecte,DATE_FORMAT(data_inici,'%Y-%m-%d') as data_inici,DATE_FORMAT(data_entrega,'%Y-%m-%d') as data_entrega FROM projecte JOIN estat ON estat.id_estat = projecte.estat_projecte JOIN persones ON persones.id_persona = projecte.id_responsable";
			$data['data'] = $this->mi_model->get_sql($sql2);	 
	
			$this->load->view('proyecto/gestion_view2', $data);
		 
	}
 
	 

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */