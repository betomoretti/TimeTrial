<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


/*
* Modelo del producto. 
*/
class product_model extends CI_Model {

	private $tb_product = 'product';


	/*
	* Constructor del producto. 
	*/
	public function __construct() {
		parent::__construct();

        $this->load->database();

	}

	/*
	* Obtiene un producto almacenado en la Base de Datos por id.
	* @param string $id Id del producto 
	*/
	public function get_by_id($id) {

		return $this->db->get_where($this->tb_product, array('id' => $id))->result();
	}

	/*
	* Obtiene la cantidad de productos almacenados en la base de datos
	* @return int  
	*/
	function get_num_products() {

	    return $this->db->count_all($this->tb_product);
	}

	/*
	* Obtiene todos los productos almacenados en la base de datos
	* @param int $limit cantidad de productos por ejecucion del metodo
	* @param int $start 
	* @return productos
	*/
	function get_all_products($limit,$start)
	{
	    $this->db->limit($limit,$start);
	    $resultado = $this->db->get($this->tb_product);
	 
	    return $resultado->result();
	}

}

/* End of file product_model.php */
/* Location: ./application/models/product_model.php */