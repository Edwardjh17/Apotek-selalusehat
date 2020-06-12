<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_stock_obat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('stock_obat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('stock_obat',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('stock_obat',$data);
	}
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('stock_obat');
	}

}
