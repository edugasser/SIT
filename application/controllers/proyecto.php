<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class proyecto extends CI_Controller {

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
	var $path = '/proyecto/gestion/';	
	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('mi_model');
		$this->load->library('Tank_auth');
	}
	public function chart($id=null){
		 
			$sql4 = "SELECT *,
			COUNT(*) as total
			
			FROM encuesta JOIN encuesta_resultado ON  encuesta_resultado.id_encuesta = encuesta.id_encuensta	
			WHERE  id_encuensta	 = '$id' 
			GROUP BY resultado ";
			$data['data'] = $this->mi_model->get_sql($sql4);
			$this->load->view('chart_encuestas_view',$data);
	 
	}
	public function objectius_projecte($id_projecte)
	{ 
		$data['id_projecte'] = $id_projecte;
		$data['contenido'] =  "objectius_tactics/objectius_projecte_view";
		$this->load->view('page_view', $data);
	
	}
	public function index()
	{ 
		$data['contenido'] =  "proyecto/index_view";
		$this->load->view('page_view', $data);
	
	}
	public function nuevo(){
		
		$ex = explode('-',$_POST["data_inici"]);
		$fecha_inicio = $ex[2]."-".$ex[1]."-".$ex[0];
		$ex2 = explode('-',$_POST["data_entrega"]);
		$data_entrega = $ex2[2]."-".$ex2[1]."-".$ex2[0];
			$data = array(
			'titol' => trim($_POST['titol']),
			'descripcio' => trim($_POST['descripcio']),
			'data_inici' => $fecha_inicio,
			'pressupost_inicial' => $_POST["pressupost_inicial"],
		 
			
			'pressupost_final' => $_POST["pressupost_final"],
			'data_entrega' => $data_entrega,
			'Proposta_id' => $_POST["Proposta_id"],
			'id_responsable' => $_POST["id_responsable"],		
			);
		$this->mi_model->add("projecte",$data);
		$id = mysql_insert_id();
		 	$mySelected=$_POST['select2']; 
  
		foreach ($mySelected as $item){
			$informe = array (
				"Objectius_tactics_id" => $item, 
				"Projecte_id" => $id, 
				);
			$this->mi_model->add("objectius_tactics_has_projecte",$informe);
		}
		redirect('proyecto/gestion','location');

	}
	public function objectius_tactics($id){
			$sql4 = "SELECT *,o3.objectiu as ob_es, o2.objectiu AS ob_tac,o2.id AS id_obtact FROM objectius_tactics_has_projecte AS o1 JOIN objectius_tactics AS o2  ON o1.Objectius_tactics_id = o2.id 
			JOIN objectius_estrategics AS o3 ON o3.id = o2.Objectius_estrategics_id WHERE Projecte_id = '$id'";
			$data['data'] = $this->mi_model->get_sql($sql4);	
			$this->load->view('proyecto/obj_tac_view', $data);
	
	}
	public function delete($id){
		$this->mi_model->delete("projecte","id", $id);
		redirect('proyecto/gestion');
	}
	public function add($id){
		$this->mi_model->delete("objectius_tactics_has_projecte","Projecte_id", $id);
		
		
		if (!empty($_POST['select2'])){
		$mySelected=$_POST['select2'];
		foreach ($mySelected as $item){
			$informe = array (
				"Objectius_tactics_id" => $item, 
				"Projecte_id" => $id, 
				);
			$this->mi_model->add("objectius_tactics_has_projecte",$informe);
		}
		}
		$ex = explode('-',$_POST["data_inici"]);
		$fecha_inicio = $ex[2]."-".$ex[1]."-".$ex[0];
		$ex2 = explode('-',$_POST["data_entrega"]);
		$data_entrega = $ex2[2]."-".$ex2[1]."-".$ex2[0];
			$data = array(
			'titol' => trim($_POST['titol']),
			'descripcio' => trim($_POST['descripcio']),
			'data_inici' => $fecha_inicio,
			'pressupost_inicial' => $_POST["pressupost_inicial"],
			'monotoritzacio_temps' => $_POST["monotoritzacio_temps"],
			'monotoritzacio_recursos' => $_POST["monotoritzacio_recursos"],
			 
			'pressupost_final' => $_POST["pressupost_final"],
			'data_entrega' => $data_entrega,
			'Proposta_id' => $_POST["Proposta_id"],
			'id_responsable' => $_POST["id_responsable"],		
			);
		$this->mi_model->update("projecte","id",$id,$data);
	 
		redirect('proyecto/gestion','location');

	}
	public function edit($id,$mono=null)
	{ 
		if ($this->tank_auth->is_logged_in()) {		
			$sql2 = "SELECT *,DATE_FORMAT(data_inici,'%d-%m-%Y') as data_inici,DATE_FORMAT(data_entrega,'%d-%m-%Y') as data_entrega FROM projecte WHERE id = '$id'";
			$data['data'] = $this->mi_model->get_sql($sql2);	 
			
			$sql3 = "SELECT * FROM proposta";
			$data['propostes'] = $this->mi_model->get_sql($sql3);
			
			$data['mono'] = $mono;
			$sql3 = "
				SELECT  *
				FROM    objectius_tactics l
				WHERE   NOT EXISTS
				(
				SELECT  *
				FROM    objectius_tactics_has_projecte r
				WHERE   r.Objectius_tactics_id	 = l.id AND Projecte_id = '$id'
				)
			";
			$data['objetivos_falta'] = $this->mi_model->get_sql($sql3);
			
			$sql3 = "
				SELECT  *
				FROM    objectius_tactics l
				WHERE   EXISTS
				(
				SELECT  *
				FROM    objectius_tactics_has_projecte r
				WHERE   r.Objectius_tactics_id	 = l.id AND Projecte_id = '$id'
				)
			";
			$data['objetivos_tengo'] = $this->mi_model->get_sql($sql3);
			
			$sql4 = "SELECT * FROM persones";
			$data['responsable'] = $this->mi_model->get_sql($sql4);			
			$this->load->view('proyecto/edit_view', $data);
		}else{
			redirect('auth/');
		}
	
	}
	public function create()
	{ 
		if ($this->tank_auth->is_logged_in()) {		
			
			$sql3 = "SELECT * FROM proposta";
			$data['propostes'] = $this->mi_model->get_sql($sql3);
			
	 
			$sql3 = "SELECT *FROM  objectius_tactics";
			$data['objectius'] = $this->mi_model->get_sql($sql3);

			$sql4 = "SELECT * FROM persones";
			$data['responsable'] = $this->mi_model->get_sql($sql4);			
			$this->load->view('proyecto/add_view', $data);
		}else{
			redirect('auth/');
		}
	
	}
	public function operaciones(){
 
		if ($this->tank_auth->is_logged_in()) {	
			
			$data['contenido'] =  "proyecto/gestion_operacion_view"; 
			
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function gestion($name_projecto=null){
 
		if ($this->tank_auth->is_logged_in()) {	
			$data['name_projecto'] = $name_projecto;
			$data['contenido'] =  "proyecto/gestion_view"; 
			
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	 public function encuestas( ){
		if ($this->tank_auth->is_logged_in()) {	
	
			$data['contenido'] =  "encuestas/gestion_view"; 
			
			$this->load->view('page_view', $data);
		}else{
			redirect('auth/');
		}
	}
	public function encuestas_mio(){
				$sql2 = "SELECT *,projecte.id as id_projecte,DATE_FORMAT(data,'%d-%m-%Y') as data
			FROM encuesta LEFT JOIN projecte ON projecte.id = encuesta.id_projecte
			";
			$data['data'] = $this->mi_model->get_sql($sql2);	
					$this->load->view('encuestas/mio_view', $data);
	}
 
	 
	public function mio( $name_projecto=null){
			if ($name_projecto!=null){
				$where = " WHERE projecte.id = $name_projecto";
			}else{ $where = '';}
  			$sql23 = "SELECT COUNT(*) as cuento,id_projecte, SUM(resultado) AS suma FROM encuesta JOIN  encuesta_resultado ON encuesta_resultado.id_encuesta = id_encuensta GROUP BY encuesta.id_projecte";
			$data['encuestas'] = $this->mi_model->get_sql($sql23);	
			
			$sql2 = "SELECT *,projecte.id as id_projecte,DATE_FORMAT(data_inici,'%d-%m-%Y') as data_inici,DATE_FORMAT(data_entrega,'%d-%m-%Y') as data_entrega 
			FROM projecte LEFT JOIN persones ON persones.id_persona = projecte.id_responsable $where
			";
			$data['data'] = $this->mi_model->get_sql($sql2);	 
	
			$this->load->view('proyecto/gestion_view2', $data);
		 
	}
 
	function pdf($id){
	$this->load->library('pdf');
	
		$sql2 = "SELECT *,projecte.id as id_projecte,DATE_FORMAT(data_inici,'%d-%m-%Y') as data_inici,
		DATE_FORMAT(data_entrega,'%d-%m-%Y') as data_entrega
		FROM projecte LEFT JOIN persones ON persones.id_persona = projecte.id_responsable
		WHERE projecte.id = $id
			";
		$data =  $this->mi_model->get_sql($sql2);
		
		$sql = "SELECT * FROM objectius_tactics_has_projecte 
		JOIN objectius_tactics ON Objectius_tactics_id= objectius_tactics.id WHERE Projecte_id = '$id'";
		$objectius =  $this->mi_model->get_sql($sql);
	// set document information
	$this->pdf->SetSubject('Fitxa projecte');


	// set font
	$this->pdf->SetFont('helvetica', '', 16);

	// add a page
	$this->pdf->AddPage();
	foreach ($data as $row) {
	// print a line using Cell()
	$this->pdf->SetXY(20, 25);
	$this->pdf->Cell(150, 0, 'Projecte '.utf8_decode($row->titol), 0, 1, 'C');

	$this->pdf->SetFont('helvetica', '', 11);
	$this->pdf->setCellPaddings(1, 1, 1, 1);
	
	$this->pdf->SetXY(15, 39);
	$this->pdf->Cell(35, 0, 'Projecte', 1, 1, 'C', 0, '', 0);

	$this->pdf->SetXY(50, 39);
	$this->pdf->Cell(100, 0, utf8_decode($row->titol), 1, 1, 'C', 0, '', 0); 
	$y = 39;
			$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Responsable', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, utf8_decode($row->nom_complet), 1, 1, 'C', 0, '', 0);	
	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Data inici', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->data_inici, 1, 1, 'C', 0, '', 0);
	


	
	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Data entrega', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->data_entrega, 1, 1, 'C', 0, '', 0);
	
	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Pressupost', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->pressupost_inicial, 1, 1, 'C', 0, '', 0);
	
	$y = $y + 8;
	$this->pdf->SetXY(15, $y);
	$this->pdf->Cell(35, 0, 'Prioritat', 1, 1, 'C', 0, '', 0);
	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, $row->prioritat, 1, 1, 'C', 0, '', 0);
	
	}
	$first=true;
	if (!empty($objectius)){ 
	foreach ($objectius as $row) {
		$y = $y + 8;
	if ($first){
		
		$titulo = "Objectius tàctics";
		$this->pdf->SetXY(15, $y);
		$this->pdf->Cell(35, 0, $titulo, 1, 1, 'C', 0, '', 0);
	} 
	
	$first=false;


	$this->pdf->SetXY(50,  $y);
	$this->pdf->Cell(100, 0, utf8_decode($row->objectiu), 1, 1, 'C', 0, '', 0);
	}
	}
	$this->pdf->Output("ficha_tesoreria.pdf", 'i');
	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */