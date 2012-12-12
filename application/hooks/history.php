<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
// automatically load the history library before the
// controller action is executed and then automatically
// push the page into the history cache after the action
// has executed.

function setup_history() {
    $ci = & get_instance();
    $ci->load->model('mi_model');
	$sql  = "SELECT COUNT(*) as total FROM projecte";
	$ci->numproyectos = $ci->mi_model->devolver_count("projecte");	
     
    
}
function push_history() {
    $ci = & get_instance();
	
 	 
} 

?>