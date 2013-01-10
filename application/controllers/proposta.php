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
	function pdf($id){
	$this->load->library('pdf');
	
		$sql2 = "SELECT * FROM proposta JOIN persones ON proposta.id_responsable = persones.id_persona JOIN tipus_projecte ON proposta.tipus_projecte_id = tipus_projecte.id WHERE proposta.id = '$id'";
		$data =  $this->mi_model->get_sql($sql2);
 
	// set document information
	$this->pdf->SetSubject('Fitxa proposta');


	// set font
	$this->pdf->SetFont('helvetica', '', 16);

	// add a page
	$this->pdf->AddPage();
	foreach ($data as $row) {
	// print a line using Cell()

	$this->pdf->SetXY(20, 25);
	$this->pdf->Cell(150, 0, 'Proposta '.utf8_decode($row->titol), 0, 1, 'C');

	$this->pdf->SetFont('helvetica', '', 11);
	$this->pdf->setCellPaddings(1, 1, 1, 1);
	
	$this->pdf->SetXY(15, 39);
	$this->pdf->Cell(35, 0, 'Proposta', 1, 1, 'C', 0, '', 0);

	$this->pdf->SetXY(50, 39);
	$this->pdf->Cell(100, 0, utf8_decode($row->titol), 1, 1, 'C', 0, '', 0); 
	$y = 39;
			$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, utf8_decode('Descripció'), 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);

	$this->pdf->Cell(100, 0, utf8_decode(strip_tags($row->descripcio)), 1, 1, 'C', 0, '', 0);	
	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Data inici', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->data, 1, 1, 'C', 0, '', 0);
	


	
	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Tipus projecte', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->tipus, 1, 1, 'C', 0, '', 0);
	
	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Estat', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->estat_projecte, 1, 1, 'C', 0, '', 0);
	
	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Pressupost', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->presupost, 1, 1, 'C', 0, '', 0);

	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, utf8_decode('Decisió'), 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->decisio, 1, 1, 'C', 0, '', 0);
	$html = $row->descripcio;

	// output the HTML content
	$this->pdf->writeHTML($html, true, false, true, false, '');


	$this->pdf->Output("proposta.pdf", 'i');
	}

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
	public function gestion($afegir_persones=null){
		if ($this->tank_auth->is_logged_in()) {	
			$data['afegir_persones']	=$afegir_persones;
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
	public function mio($afegir_persones=null){
	 $data['afegir_persones']	=$afegir_persones;
	 	if ($afegir_persones!=null){
		 $sql2 = "SELECT *,proposta.id as id_proposta,DATE_FORMAT(data,'%d-%m-%Y') as data_proposta FROM proposta JOIN estat ON estat.id_estat = proposta.estat_projecte JOIN tipus_projecte ON tipus_projecte.id = proposta.tipus_projecte_id WHERE estat_projecte='1'";
			
	 	}else{
		 	$sql2 = "SELECT *,proposta.id as id_proposta,DATE_FORMAT(data,'%d-%m-%Y') as data_proposta FROM proposta JOIN estat ON estat.id_estat = proposta.estat_projecte JOIN tipus_projecte ON tipus_projecte.id = proposta.tipus_projecte_id";
		
	 	}
		$data['data'] = $this->mi_model->get_sql($sql2);	 

		$data['contenido'] =  "proposta/gestion2_view";
		$this->load->view('proposta/gestion2_view', $data);
	 
	}
   

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */