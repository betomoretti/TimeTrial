<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class product_model extends CI_Model {

	private $tb_product = 'product';

	public function __construct()
	{
		parent::__construct();

        $this->load->database();

	}

	public function get()
	{
		return $this->db->get($this->tb_product);
	}

	public function get_by_id($id)
	{
		return $this->db->get_where($this->tb_product, array('id' => $id));
	}

	function get_num_products()
	{
	    return $this->db->count_all($this->tb_product);
	}

	function get_all_products($limit,$start)
	{
	    $this->db->limit($limit,$start);
	    $resultado = $this->db->get($this->tb_product);
	 
	    return $resultado->result();
	}

}

/* End of file product_model.php */
/* Location: ./application/models/product_model.php */