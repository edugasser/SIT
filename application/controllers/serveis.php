<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class serveis extends CI_Controller {

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
		$data['contenido'] =  "servicis/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function add()
	{ 
		if ($this->tank_auth->is_logged_in()) {		
		$sql  = "SELECT COUNT(*) as total FROM projecte";
			$data['numpro'] = $this->mi_model->get_sql($sql);
			$data['contenido'] =  "servicis/add_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	
	}
	public function mio(){
			$sql4 = "SELECT *,DATE_FORMAT(data_servei,'%d-%m-%Y') as data FROM servicis";
			$data['data'] = $this->mi_model->get_sql($sql4);	

			$this->load->view('servicis/gestion_view2', $data);
	 
	}
	public function chart($id){
		 
			$sql4 = "SELECT *,
			COUNT(*) as total,id_incidencia,date_format(incidencia.data,'%c') as num,
			DATE_FORMAT(incidencia.data,'%d-%m-%Y') as data 
			FROM incidencia JOIN servicis ON  incidencia.id_servei = servicis.id_servici
			WHERE servicis.id_servici = '$id' 
			GROUP BY MONTH(incidencia.data) ";
			$data['data'] = $this->mi_model->get_sql($sql4);
			$this->load->view('chart_view',$data);
	 
	}
	public function gestion($success=null){
		$sql  = "SELECT COUNT(*) as total FROM projecte";
			$data['numpro'] = $this->mi_model->get_sql($sql);
		if ($this->tank_auth->is_logged_in()) {		
			$data['contenido'] =  "servicis/gestion_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
   

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */