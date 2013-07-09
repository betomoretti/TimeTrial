<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Autentication extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->library('form_validation');
        $this->load->library('session');        
    }

    public function login()
    {
   
        if(!isset($_POST['username']))
        {
        $this->output->enable_profiler(TRUE);
    

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

            $isValidLogin = $this->login_model->getLogin($username,$password);            
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
   
   
    public function data()
    {
        if($this->session->userdata['username'] == TRUE)
        {
        echo $this->session->userdata['username'];
        echo "<br>";
        echo $this->session->userdata['password'];
        }
    }
   
   
    public function logout()
    {
    //destruimos la sesión
        $this->login_model->close(); 
        redirect('main/frontend');
   }
   
   
    public function perfil()
    {
    //pagina restringida a usuarios registrados.
    $logged = $this->login_model->isLogged();
       
        if($logged == TRUE)
        {
        echo "Tienes permiso para ver el contenido privado";
        }
        else
        {
        //si no tiene permiso, abrimos el formulario para loguearse
        $this->load->view('login');
        }
    }
}