<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class panel extends CI_Controller {

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
		$data['contenido'] =  "panel_control_view";
		
		$this->load->view('page_view', $data);
	}
	public function ver(){

		$data['contenido'] =  "persona_view";
		//$data["field"] = $this->mi_model->get_field("persona");	
		$this->load->view('page_view', $data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */