<?php 

class login_model extends CI_Model
{
 
    public function __construct()
    {
    $this->load->library('session');
    $this->load->database();
    }
   
   
    public function getLogin($username,$password)
    {
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
   
   
   
    public function close()
    {
    return $this->session->sess_destroy();
    }
}