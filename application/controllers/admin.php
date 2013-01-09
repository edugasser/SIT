<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->load->database();
		$this->load->helper('url');
		$this->load->model('mi_model');
		$this->load->library('Tank_auth');
		$this->load->library('grocery_CRUD');	
	}
	
	function _example_output($output = null)
	{
		$this->load->view('example.php',$output);	
	}
	
	function offices()
	{
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}
	
	function index()
	{
		$this->_example_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
	}
	function encuesta_admin()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('encuesta');
			$crud->set_subject('Enquesta');
			$crud->set_relation('id_projecte','projecte','titol');
			$crud->field_type('resultado','dropdown',
            array('1' ,'2', '3','4','5','6','7','8','9','10'));
			 $crud->add_action('Link enquesta', '', base_url().'panel/encuesta/1','ui-icon-plus'); 
		$crud->unset_back_to_list();
			$output = $crud->render();
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function encuesta()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('encuesta_resultado');
			$crud->set_subject('Enquesta');
			$crud->set_relation('id_encuesta','encuesta','pregunta');
				$crud->unset_back_to_list();
			//$crud->field_type('resultado','dropdown',
           // array('1' => '1','2' => '2', '3' => '3','4' => '4','5' => '5','6' => '6','7' => '7','8' => '8','9' => '9','10' => '10'));
			$output = $crud->render();
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function serveis()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('servicis');
			$crud->set_subject('Serveis');
		// $crud->set_relation('estat_servei','estat','estat');
			$crud->unset_back_to_list();
			$output = $crud->render();
			
		

			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function perfil_permisos()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('perfil');
			$crud->set_subject('Permisos');	 
			//$crud->set_relation('id_perfil','perfil','nombre_perfil'); 
			//$crud->set_relation('id_permiso','permiso','nombre_permiso'); 
			$crud->set_relation_n_n('permisos','perfil_permisos','permiso','id_perfil','id_permiso','nombre_permiso',null);
    
	 //GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			$output = $crud->render();
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function incidencias($id= null)
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('incidencia');
			$crud->set_subject('Incidencies');
			$crud->field_type('prioritat','dropdown',
            array('Alta' => 'Alta' ,'Mitja' => 'Mitja','Baixa' => 'Baixa'));
            $crud->field_type('estat','dropdown',
            array('Oberta' => 'Oberta' ,'Tancada' => 'Tancada' ));
			$crud->columns('incidencia','data','estat','prioritat');
			 $crud->set_relation('id_servei','servicis','nom_servei');
			 if ($id!=null){
				 $crud->where('id_servei',$id);
			 }
			 //GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			$output = $crud->render();
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}		
	function permisos()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('permiso');
			$crud->set_subject('Permisos');
			 
			 //GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			$output = $crud->render();
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function usuaris()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('users');
			$crud->set_subject('Usuaris');
			$crud->columns('username','email','perfil');
			$crud->set_relation('perfil','perfil','nombre_perfil'); 
			 //GESTION PERMISOS
			 $crud->unset_add(); 
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			$crud->edit_fields('username','email','perfil');
			
			$output = $crud->render();
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function perfils()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('perfil');
			$crud->set_subject('Perfiles');
 
 //GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
 
	function tipus_projectes()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('tipus_projecte');
			$crud->set_subject('Tipus projectes');
		
			//GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function objectius_tactics()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('objectius_tactics');
			$crud->set_subject('Objectius tactics');
 
			$crud->set_relation('Objectius_estrategics_id','objectius_estrategics','objectiu');
			 
			//GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
			$output = $crud->render();
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function objectius_estrategics()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('objectius_estrategics');
			$crud->set_subject('Objectius estrategics');
			//GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

 
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function estructures()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('estructures');
			$crud->set_subject('Estructures');
 
			//GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function operacio($id=null)
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('operacio');
			$crud->set_subject('Operacions');
			$crud->set_relation('Projecte_id','projecte','titol'); 
			 
			if ($id !=null){
			$crud->where('operacio.Projecte_id',$id);
			}
			$crud->unset_back_to_list();
			$crud->field_type('estat','dropdown',
            array('En procés' => 'En procés', 'Acabada' => 'Acabada' ));
			//GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function principis()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('principi');
			$crud->set_subject('Principis');
		 
			$crud->set_relation_n_n('Objectius_estrategics', 'principi_oestrategics','objectius_estrategics', 'id_principi','id_objectius_estrategics', 'objectiu',null);
			//GESTION PERMISOS
			if (($this->session->userdata('Editar')) != 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function propostes_decisio()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('proposta');
			$crud->set_subject('Propostes');
			$crud->set_relation('tipus_projecte_id','tipus_projecte','tipus'); 
			$crud->set_relation('estat_projecte','estat','estat');
			$crud->columns('titol','estat','decisio');
			$crud->edit_fields('decisio');
$crud->unset_back_to_list();
			//GESTION PERMISOS
			if (($this->session->userdata('Editar')) != 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function propostes()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('proposta');
			$crud->set_subject('Propostes');
			$crud->set_relation('tipus_projecte_id','tipus_projecte','tipus'); 
			$crud->set_relation('estat_projecte','estat','estat');
			$crud->set_relation('id_responsable','persones','nom_complet');
			$crud->columns('titol','tipus_projecte_id','data','estat_projecte','id_responsable');
			$crud->edit_fields('titol','tipus_projecte_id','data','id_responsable','presupost');
$crud->unset_back_to_list();
			//GESTION PERMISOS
			if (($this->session->userdata('Editar')) != 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function decisiones($id=null)
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('decision');
			$crud->set_subject('Decisions');
			$crud->set_relation('id_reunion','reunion','titol'); 
			$crud->field_type('alineado','dropdown',
            array('Principi' => 'Principi' ,'Objectiu estrategic' => 'Objectiu estrategic','Objectiu tactic' => 'Objectiu tactic','Projecte' => 'Projecte','Presupost' => 'Presupost' ));
			if ($id!=null){
			$crud->where('decision.id_reunion',$id);
			}
			$crud->unset_edit_fields('id_reunion');
			$crud->unset_back_to_list();
			//GESTION PERMISOS
			if (($this->session->userdata('Editar')) != 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function reuniones()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('reunion');
			$crud->set_subject('Reunions');
			$crud->set_relation_n_n('Asistents','reunion_estructura', 'estructures','id_reunion','id_estructura','dept',null);
			 	$crud->unset_back_to_list();
			//GESTION PERMISOS
			if (($this->session->userdata('Editar')) != 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function persones()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('persones');
			$crud->set_subject('Persones');
			//$crud->set_relation('estructures_id','estructures','dept'); 
			$crud->set_relation_n_n('Projectes','persona_projecte', 'projecte','id_persona','id_projecte','titol',null);
			$crud->set_relation_n_n('Estructures','persona_estructura', 'estructures','id_persona','id_estructura','dept',null);
			
			$crud->display_as('estructures_id','Personal de');
			//GESTION PERMISOS
			if (($this->session->userdata('Editar')) != 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
	$crud->unset_back_to_list();
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
		function persones_propostes()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('proposta');
			$crud->set_subject('Persones');
			
			$crud->set_relation_n_n('persona_proposta', 'persona_proposta', 'persones', 'id_proposta','id_persona','nom_complet',null);
			$crud->columns('titol','Persones_projecte'); 
			 
			$crud->edit_fields('titol','persona_proposta');
			$crud->add_fields('titol','persona_proposta');
			//GESTION PERMISOS
			if (($this->session->userdata('Editar')) != 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
	$crud->unset_back_to_list();
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function persones_projecte()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('projecte');
			$crud->set_subject('Persones');
			
			$crud->set_relation_n_n('Persones_projecte', 'persona_projecte', 'persones', 'id_projecte','id_persona','nom_complet',null);
			$crud->columns('titol','Persones_projecte'); 
			 
			$crud->edit_fields('titol','Persones_projecte');
			$crud->add_fields('titol','Persones_projecte');
			//GESTION PERMISOS
			if (($this->session->userdata('Editar')) != 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar')) != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
	$crud->unset_back_to_list();
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function projectes()
	{
 
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('projecte');
			$crud->set_subject('Projectes');
			$crud->set_relation('proposta_id','proposta','titol'); 
			$crud->set_relation('id_responsable','persones','nom_complet');
			$crud->set_relation('id_tipus_projecte','tipus_projecte','tipus'); 
			$crud->set_relation('Proposta_id','proposta','titol'); 
			$crud->display_as('id_tipus_projecte','Tipus projecte');
			$crud->columns('titol','data_inici','data_entrega','id_responsable');
			$crud->set_relation_n_n('Objectius_tactics', 'objectius_tactics_has_projecte','objectius_tactics','Projecte_id','Objectius_tactics_id','objectiu',null);
			

			
			$crud->unset_edit_fields('monotoritzacio_temps','monotoritzacio_recursos','monotoritzacio_qualitat');
			$crud->unset_add_fields('monotoritzacio_temps','monotoritzacio_recursos','monotoritzacio_qualitat');
			
			$crud->field_type('prioritat','dropdown',
            array('Alta' => 'Alta', 'Mitja' => 'Mitja','Baixa' => 'Baixa' ));
			//GESTION PERMISOS
		    $crud->display_as('id_responsable','Responsable');
			if ($this->session->userdata('Editar') != 1){
				$crud->unset_edit(); 
			}
			if ($this->session->userdata('Eliminar') != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
			$crud->unset_back_to_list();

			
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function mono_projectes()
	{
 
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('projecte');
			$crud->set_subject('Projectes');
	
			
			$crud->edit_fields('monotoritzacio_temps','monotoritzacio_recursos');
		$crud->display_as('monotoritzacio_temps', 'monitorització temps');
       $crud->display_as('monotoritzacio_recursos', 'monitorització recursos');
	
			$crud->field_type('monotoritzacio_temps','dropdown',
            array('1' => 'Mal', '2' => 'Regular','3' => 'Bé' ));
            
            $crud->field_type('monotoritzacio_recursos','dropdown',
            array('1' => 'Mal', '2' => 'Regular','3' => 'Bé' ));
            
       
			//GESTION PERMISOS
		    $crud->display_as('id_responsable','Responsable');
			if ($this->session->userdata('Editar') != 1){
				$crud->unset_edit(); 
			}
			if ($this->session->userdata('Eliminar') != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
			$crud->unset_back_to_list();

			
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	function objectius_projecte($id=null)
	{
 
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('objectius_tactics_has_projecte');
			$crud->set_subject('Objectius tactics projecte');
			$crud->set_relation('Projecte_id','projecte','titol'); 	
			$crud->set_relation('Objectius_tactics_id','objectius_tactics','objectiu'); 	
			$crud->display_as('Projecte_id','Projecte');
			$crud->display_as('Objectius_tactics_id','Objectiu_tactic');
			//GESTION PERMISOS
			  $crud->display_as('id_responsable','Responsable');
			if ($this->session->userdata('Editar') != 1){
				$crud->unset_edit(); 
			}
			if ($this->session->userdata('Eliminar') != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
			$crud->unset_back_to_list();

			
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	function principis_estrategies($id = null)
	{
 
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('principi_oestrategics');
			$crud->set_subject('Objectius estrategics dels principis');
			$crud->set_relation('id_principi','principi','titol'); 	
			$crud->set_relation('id_objectius_estrategics','objectius_estrategics','objectiu'); 	
			$crud->display_as('id_principi','Principi');
			$crud->display_as('id_objectius_estrategics','Objectiu estrategics');
			$crud->where('principi_oestrategics.id_principi',$id);
			$crud->columns('id_objectius_estrategics');
			$crud->unset_edit(); 
			if ($this->session->userdata('Editar') != 1){
				$crud->unset_edit(); 
			}
			if ($this->session->userdata('Eliminar') != 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS
			$crud->unset_back_to_list();

			
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	} 
}
