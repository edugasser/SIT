<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class usuaris extends CI_Controller {

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
		if ($this->tank_auth->is_logged_in()) {	
			
			$data['contenido'] =  "usuaris/usuaris_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	
	}
	public function perfil_permisos(){
		if ($this->tank_auth->is_logged_in()) {		
			$data['contenido'] =  "usuaris/perfil_permisos_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function perfils(){
		if ($this->tank_auth->is_logged_in()) {		
			$data['contenido'] =  "usuaris/perfil_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
 
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */