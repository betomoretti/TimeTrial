<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

    public function __construct()
	{
		parent::__construct();
		
		/* Standard Libraries of codeigniter are required */
        $this->load->database();
        $this->load->helper('url');
        /* ------------------ */ 
        $this->load->model('login_model');

        $this->load->library('session');        

        $this->load->library('grocery_CRUD');

	}

    function index() {
        echo "funciona";
    }

    public function frontend()
    {


        $this->_frontend_output();
    }


    public function _frontend_output($output = null)
    {
        $this->output->enable_profiler(TRUE);


        $this->load->view('frontend.php',$output);  
    }

    public function products()
    {

        if($this->session->userdata('username')) {
        $this->grocery_crud->set_theme('datatables');
        $this->grocery_crud->set_table('product');
        $this->grocery_crud->set_subject('Products');
        $this->grocery_crud->display_as('file_picture_url','Image');

        $this->grocery_crud->set_field_upload('file_picture_url','assets/uploads/files');
        $output = $this->grocery_crud->render();

 		$this->_products_output($output);
        } else {
            redirect('autentication/login');
        } 
    }

    function _products_output($output = null) 
    {
        $this->load->view('products.php',$output );    
    }
}
