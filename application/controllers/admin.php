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
	function serveis()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('servicis');
			$crud->set_subject('Serveis');
		 $crud->set_relation('estat_servei','estat','estat');
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
			$crud->set_table('perfil_permisos');
			$crud->set_subject('Permisos');
			 
			$crud->set_relation('id_perfil','perfil','nombre_perfil'); 
			$crud->set_relation('id_permiso','permiso','nombre_permiso'); 
	 
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
 
 
			$output = $crud->render();
			
			$this->_example_output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}	
	function decisio()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('decisio');
			$crud->set_subject('Decisions');
			$crud->set_relation('id_proposta','proposta','titol');
			
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
			$output = $crud->render();
			//GESTION PERMISOS
			if (($this->session->userdata('Editar'))!= 1){
				$crud->unset_edit(); 
			}
			if (($this->session->userdata('Eliminar'))!= 1){
				$crud->unset_delete(); 
			}
			//FIN GESTION PERMISOS

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
	function departaments()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('departaments');
			$crud->set_subject('Departaments');
 
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
	function operacio()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('operacio');
			$crud->set_subject('Operacions');
			$crud->set_relation('Projecte_id','projecte','titol'); 
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
			$crud->columns('titol','tipus_projecte_id','data','estat_projecte');
			$crud->edit_fields('titol','tipus_projecte_id','data');

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
			$crud->set_relation('departaments_id','departaments','dept'); 
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
	function projectes()
	{
 
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('projecte');
			$crud->set_subject('Projectes');
			$crud->set_relation('Proposta_id','Proposta','titol'); 
			$crud->set_relation('id_responsable','persones','nom_complet');
			 		
			$crud->columns('titol','data_inici','data_entrega','id_responsable');
			$crud->unset_add(); 
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
			$crud->where('Projecte_id = '.$id);
			//$crud->set_relation('Proposta_id','Proposta','titol'); 
			$crud->set_relation('Objectius_tactics_id','objectius_tactics','objectiu');
			 
			$crud->columns('Objectius_tactics_id');
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
	 
}