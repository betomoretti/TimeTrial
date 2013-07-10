<?php 


/*
* Modelo del login
*/
class login_model extends CI_Model
{
    
    /*
    * Constructor del login
    */
    public function __construct() {
        
        $this->load->library('session');
        $this->load->database();
    }
   
    /*
    * Comprueba si es un usuario existente.
    */
    public function get_login($username,$password) {
        
        $data = array(
            'username' => $username,
            'password' => $password
        );   
        $query = $this->db->get_where('user',$data);
        
        return $query->result_array();
    }

    public function isLogged()
    {
        if(isset($this->session->userdata['username']))
        {
        return TRUE;
        }
        else
        {
        return FALSE;
        }
       
    }
      
   /*
    * Modelo del login
    */
    public function close() {
        return $this->session->sess_destroy();
    }
}

/* End of file login.php */
/* Location: ./application/controllers/login.php */