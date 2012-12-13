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

	public function objectius_projecte($id_projecte)
	{ 
		$data['id_projecte'] = $id_projecte;
		$data['contenido'] =  "objectius_tactics/objectius_projecte_view";
		$this->load->view('page_view', $data);
	
	}
	public function index()
	{ 
		$data['contenido'] =  "proyecto/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function edit($id)
	{ 
		if ($this->tank_auth->is_logged_in()) {		
			$sql2 = "SELECT *,DATE_FORMAT(data_inici,'%Y-%m-%d') as data_inici FROM projecte WHERE id = '$id'";
			$data['data'] = $this->mi_model->get_sql($sql2);	 
			
			$sql3 = "SELECT * FROM proposta";
			$data['propostes'] = $this->mi_model->get_sql($sql3);

			
			$sql3 = "SELECT * FROM objectius_tactics  
			left JOIN  objectius_tactics_has_projecte
			ON  objectius_tactics.id = Objectius_tactics_id
			WHERE objectius_tactics_has_projecte.projecte_id != '$id'
			";
			$data['objetivos_falta'] = $this->mi_model->get_sql($sql3);
			
			$sql3 = "SELECT * FROM objectius_tactics_has_projecte  
			JOIN  objectius_tactics
			ON  objectius_tactics.id = Objectius_tactics_id
			WHERE objectius_tactics_has_projecte.projecte_id = '$id'
			";
			$data['objetivos_tengo'] = $this->mi_model->get_sql($sql3);
			
			$sql4 = "SELECT * FROM persones";
			$data['responsable'] = $this->mi_model->get_sql($sql4);			
			$this->load->view('proyecto/edit_view', $data);
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
	 
	 
		public function mio( ){
 
			
			$sql2 = "SELECT *,projecte.id as id_projecte,DATE_FORMAT(data_inici,'%Y-%m-%d') as data_inici,DATE_FORMAT(data_entrega,'%Y-%m-%d') as data_entrega FROM projecte LEFT JOIN persones ON persones.id_persona = projecte.id_responsable";
			$data['data'] = $this->mi_model->get_sql($sql2);	 
	
			$this->load->view('proyecto/gestion_view2', $data);
		 
	}
 
	 

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */