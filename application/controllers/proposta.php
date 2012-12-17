<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class proposta extends CI_Controller {

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
		$this->load->library('Tank_auth');
	}

	public function index()
	{ 
		$data['contenido'] =  "proposta/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function add()
	{ 
		if ($this->tank_auth->is_logged_in()) {		
			$data['contenido'] =  "proposta/add_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	
	}
	public function gestion($success=null){
		if ($this->tank_auth->is_logged_in()) {		
			$data['contenido'] =  "proposta/gestion_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function aceptar($id_proposta){
		$array = array('estat_projecte' => 1);
		$this->mi_model->update('proposta','id',$id_proposta,$array);
		
		
		redirect('proposta/gestion','refresh');
	}
	public function cancelar($id_proposta){
		$array = array('estat_projecte' => 4);
		$this->mi_model->update('proposta','id',$id_proposta,$array);
		redirect('proposta/gestion','refresh');
	}
	public function evaluar(){
		$data['contenido'] =  "proposta/gestion_evaluar_view";
		$this->load->view('page_view', $data);
	}
	public function mio($success=null){
	 
		$sql2 = "SELECT *,proposta.id as id_proposta,DATE_FORMAT(data,'%Y-%m-%d') as data_proposta FROM proposta JOIN estat ON estat.id_estat = proposta.estat_projecte JOIN tipus_projecte ON tipus_projecte.id = proposta.tipus_projecte_id";
		$data['data'] = $this->mi_model->get_sql($sql2);	 

		$data['contenido'] =  "proposta/gestion2_view";
		$this->load->view('proposta/gestion2_view', $data);
	 
	}
   

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */