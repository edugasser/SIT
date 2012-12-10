<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Url_back extends CI_Controller {
 
function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
		$this->load->library('history');
    }
 
    function index()
	{
		redirect($this->history->pop());
		//echo $this->history->pop();
	}

       
}
 