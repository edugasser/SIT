<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class search extends CI_Controller {

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

    function index($funcion,$template,$id,$id2) {
    
        //$this->history->exclude();
        $this->load->model('mi_model');
        $searchq = strip_tags($_GET['q']);
        //$searchq2		=	strip_tags($_GET['nocache']);   
        $data['posibles'] = $this->mi_model->$funcion($searchq,$id);
        $data['searchq'] = $searchq;
        $data['id'] =$id;
        $data['id2'] =$id2;
        $this->load->view('search/'.$template.'_view', $data);
    }
    

}

?>