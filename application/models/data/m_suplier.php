<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_suplier extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('suplier sp');
		$this->db->order_by('sp.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('suplier',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('suplier',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('suplier');
	}

}

/* End of file m_suplier.php */
/* Location: ./application/models/data/m_suplier.php */