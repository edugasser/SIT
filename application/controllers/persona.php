<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class persona extends CI_Controller {

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
	 
	
	
	}
	function create(){
		 
	    $data['contenido'] =  "personas/ajax_view";
		$this->load->view('page_view', $data);
 
    } 
 
	public function add(){
		 
		$data['contenido'] =  "personas/add_view";
		$this->load->view('page_view', $data);
	}

	public function gestion(){
	 
		$data['contenido'] =  "personas/gestion_view";
		$this->load->view('page_view', $data);
	}
	
	public function chart($id=null){
		 
			$sql4 = "SELECT *,
			COUNT(id_persona) as total
			FROM persones JOIN estructures ON  estructures.id = persones.estructures_id	
			GROUP BY estructures_id ";
			$data['data'] = $this->mi_model->get_sql($sql4);
			$this->load->view('chart_persones_view',$data);
	 
	}
	
	 
}	

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */