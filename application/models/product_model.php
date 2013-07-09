<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class product_model extends CI_Model {


	public function __construct()
	{
		parent::__construct();
	    $this->load->database();

	}

	function get_last_ten_products()
	{
		$query = $this->db->get('products', 10);
		return $query->result();
	}

}

/* End of file product_model.php */
/* Location: ./application/models/product_model.php */