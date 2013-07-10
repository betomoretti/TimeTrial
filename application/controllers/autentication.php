<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/*
* Controlador para el logeo. 
*/
class Autentication extends CI_Controller {

    /*
    * Constructor del controlador 
    */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->library('form_validation');
        $this->load->library('session');        
    }


    /*
    * Funcion para logear a un usuario 
    */
    public function login()
    {
   
        if(!$this->input->post('username'))
        {  

        $this->load->view('login.php', $output = null); 
        }
        else
        {
       
        $this->form_validation->set_rules('username','Usuario','required|min_lenght[2]|max_lenght[20]');
        $this->form_validation->set_rules('password','Password','required');
       
            if($this->form_validation->run() == FALSE) 
            {
            $this->load->view('login.php',$output); 
            }
            else
            {
            $username = $this->input->post('username');
            $password = $this->input->post('password');

            $isValidLogin = $this->login_model->get_login($username,$password);            
                if($isValidLogin)
                {              
                    $sesion_data = array(
                                    'username' => $username,
                                    'password' => $password
                                        );
                    $this->session->set_userdata($sesion_data);
               
                $data['username'] = $this->session->userdata['username'];
                $data['password'] = $this->session->userdata['password'];

                

                redirect('main/products');
                }
                else
                {
                $this->load->view('login_error');
                }
            }     
       
        }
       
       
    }

    
    /*
    * Funcion para deslogear a un usuario
    */
    public function logout()
    {
        $this->login_model->close(); 

        redirect('main/frontend');
    }
   
}