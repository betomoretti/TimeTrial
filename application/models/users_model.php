<?php 


class Users_model extends CI_Model {

	public $username;
	public $password;


	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function login($username, $password){		

        $this->db->from('user'); 
        $this->db->where('username', $username); 
        $this->db->where('password', $password); 
        $query = $this->db->get();
        if ($query->num_rows() > 0){
           return $query->row();
        }
        return 0;
   }
}

/* End of file products_model.php */
/* Location: ./application/models/products_model.php */