<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class objectius_tactics extends CI_Controller {

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
		$data['contenido'] =  "objectius_tactics/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function add()
	{ 
		$data['contenido'] =  "objectius_tactics/add_view";
		$this->load->view('page_view', $data);
	
	}
	public function gestion($success=null){
		
 
		$data['contenido'] =  "objectius_tactics/gestion_view";
		 
		$this->load->view('page_view', $data);
	}
  
	 
 

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */