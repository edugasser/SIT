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
		$this->load->library('Tank_auth');
    }
    public function calendar(){
    	$sql5 = "
				SELECT  *  FROM projecte
			";
			$data['data'] = $this->mi_model->get_sql($sql5);
	    	$this->load->view('calendar_view',$data);
    }
    	public function conformidad()
	{
		if ($this->tank_auth->is_logged_in()) {	
		$data['contenido'] =  "panel_conformidad_view";
		
		$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function dirigir()
	{
		if ($this->tank_auth->is_logged_in()) {	
		$data['contenido'] =  "panel_dirigir_view";
		
		$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function addencuesta($id){
	echo $_POST['resultado'];
	$sql4 = "INSERT INTO encuesta_resultado (id_encuesta, resultado) VALUES ($id, ".$_POST['resultado'].")";
	$this->mi_model->get_sql($sql4);
	//redirect('/encuesta/'.$id);
	
	}
	public function encuesta($id)
	{
		if ($this->tank_auth->is_logged_in()) {	
		$sql4 = "SELECT * FROM encuesta WHERE id_encuensta = '$id'";
		$data['data'] = $this->mi_model->get_sql($sql4);	
		$data['id'] = $id;
		$this->load->view('encuestas/encuesta_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function probar(){
		$this->config->set_item('username', 'item_value');
	}
	public function evaluar()
	{
		if ($this->tank_auth->is_logged_in()) {	
		$data['contenido'] =  "panel_evaluar_view";
		
		$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function index()
	{
		if ($this->tank_auth->is_logged_in()) {	
		$data['contenido'] =  "panel_control_view";
		
		$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function control(){

		if ($this->tank_auth->is_logged_in()) {	
			
			//TOTALES//
			$data['total_proyectos'] = $this->mi_model->devolver_count("projecte");
			$data['total_servicios'] = $this->mi_model->devolver_count("servicis");
			$data['total_departament'] = $this->mi_model->devolver_count("estructures");
			$data['total_persones'] = $this->mi_model->devolver_count("persones");
			$data['total_propostes'] = $this->mi_model->devolver_count("proposta");
			$data['total_principis'] = $this->mi_model->devolver_count("principi");
			$data['total_oe'] = $this->mi_model->devolver_count("objectius_estrategics");
			$data['total_ot'] = $this->mi_model->devolver_count("objectius_tactics");
			//PROYECTOS
			$hoy = date('Y-m-d');
			$sql4 = "SELECT * FROM projecte WHERE data_inici <= '$hoy' and data_entrega >= '$hoy' ORDER BY data_entrega ASC";
			$data['proyectos'] = $this->mi_model->get_sql($sql4);	
			//ALERTAS
			$sql5 = "
				SELECT  *
					FROM    projecte l
					WHERE   NOT EXISTS
					(
					SELECT  *
					FROM    objectius_tactics_has_projecte r
					WHERE   Projecte_id = l.id
					)
			";
			$data['alerta_proyectos'] = $this->mi_model->get_sql($sql5);
			
			$sql6 = "
				SELECT  *
					FROM    objectius_estrategics l
					WHERE   NOT EXISTS
					(
					SELECT  *
					FROM    principi_oestrategics r
					WHERE   id_objectius_estrategics = l.id
					)
			";
			$data['alerta_objectius'] = $this->mi_model->get_sql($sql6);
			
			$sql8 = "
				SELECT  *
					FROM    objectius_tactics 
					WHERE   Objectius_estrategics_id is null
					
			";
			$data['alerta_tactics'] = $this->mi_model->get_sql($sql8);
			
			
			$sql7 = "
				SELECT  titol FROM proposta WHERE estat_projecte = '2'";
			$data['alerta_propostes'] = $this->mi_model->get_sql($sql7);
			
			$sql9 = "
				SELECT  *
					FROM    projecte l
					WHERE   NOT EXISTS
					(
					SELECT  *
					FROM    persona_projecte r
					WHERE   id_projecte = l.id
					)
			";
			$data['alerta_persona_projecte'] = $this->mi_model->get_sql($sql9);
			
			$sql10 = "
				SELECT  * FROM incidencia WHERE estat = 'Oberta'
			";
			$data['incidencia'] = $this->mi_model->get_sql($sql10);
			
			$data['contenido'] =  "control_view";
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */