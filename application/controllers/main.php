<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/*
* Controlador que contiene las funciones principales de la aplicacion 
*/
class Main extends CI_Controller {

    /*
    * Constructor del controlador. Se cargan todas las librerias necesarias en el controlador. 
    */
    public function __construct()
	{
		parent::__construct();
		
		/* Standard Libraries of codeigniter are required */
        $this->load->database();
        $this->load->helper('url');
        
        $this->load->model('product_model');    

        $this->load->library('pagination');
        $this->load->library('session');        

        $this->load->library('grocery_CRUD');
        /* ------------------*/ 
	}

    /*
    * Funcion que procesa el show de un producto.
    * @param string $id Id del producto a mostrar 
    */
    public function product($id)
    {
        $product = $this->product_model->get_by_id($id);

        $data['product'] = $product[0];
        $this->_product_output($data);
    }

    /*
    * Funcion que renderiza la vista de un producto
    * @param data $data Datos utiles para la vista 
    */
    public function _product_output($data)
    {
        $this->load->view('product.php', $data);
    }

    /*
    * Funcion que procesa el frontend de la aplicacion.
    */
    public function frontend()
    { 

        $opciones = array();
        $desde = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
     
        $opciones['per_page'] = 10;
        $opciones['base_url'] = base_url().'index.php/main/frontend';
        $opciones['total_rows'] = $this->product_model->get_num_products();
        $opciones['uri_segment'] = 3;
     
        $this->pagination->initialize($opciones);
     
        $data['lista'] = $this->product_model->get_all_products($opciones['per_page'],$desde);
        $data['paginacion'] = $this->pagination->create_links();
     
        $this->_frontend_output($data);
    }

    /*
    * Funcion que renderiza la vista del frontend
    * @param data $data Datos utiles para la vista 
    */
    public function _frontend_output($data)
    {
        $this->load->view('frontend.php', $data);  
    }

    /*
    * Funcion que procesa el backend de la aplicacion.
    */
    public function products()
    {

        if($this->session->userdata('username')) {
            $this->grocery_crud->set_theme('datatables');
            $this->grocery_crud->set_table('product');
            $this->grocery_crud->set_subject('Products');
            $this->grocery_crud->display_as('file_picture_url','Image');
            $this->grocery_crud->callback_delete(array($this,'delete_user'));
            $this->grocery_crud->set_field_upload('file_picture_url','assets/uploads/files');
            $output = $this->grocery_crud->render();

     		$this->_products_output($output);
        } else {
            redirect('autentication/login');
        } 
    }

    /*
    * Funcion que procesa el borrado logico de un producto.
    */
    public function delete_user($primary_key)
    {
        return $this->db->update('product',array('delete' => '1'),array('id' => $primary_key));
    }

    /*
    * Funcion que renderiza la vista del backend
    * @param output $output Datos utiles para la vista 
    */
    function _products_output($output = null) 
    {
        $this->load->view('products.php',$output );    
    }
}


/* End of file main.php */
/* Location: ./application/controllers/main.php */
