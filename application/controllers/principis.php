<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class principis extends CI_Controller {

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
		$data['contenido'] =  "principis/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function add()
	{ 
		if ($this->tank_auth->is_logged_in()) {		
			$data['contenido'] =  "principis/add_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	
	}
	public function objectius_estrategics($id){
			$sql4 = "SELECT *
			FROM principi_oestrategics AS o1 
			JOIN objectius_estrategics AS o2  
			ON o1.id_objectius_estrategics = o2.id 
			";
			
		
			
			$data['data'] = $this->mi_model->get_sql($sql4);	
			$this->load->view('principis/obj_est_view', $data);
	
	}
	public function mio(){
		 $sql4 = "SELECT *,DATE_FORMAT(data,'%d-%m-%Y') as data FROM principi";
			$data['data'] = $this->mi_model->get_sql($sql4);	

			$this->load->view('principis/gestion2_view', $data);
	 
	}
	public function gestion($success=null){
		if ($this->tank_auth->is_logged_in()) {		
			$data['contenido'] =  "principis/gestion_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
   

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */