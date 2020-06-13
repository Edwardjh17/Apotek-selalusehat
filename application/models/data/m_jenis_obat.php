<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_jenis_obat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('jenis_obat jo');
		$this->db->order_by('jo.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('jenis_obat',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('jenis_obat',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('jenis_obat');
	}

}

/* End of file m_suplier.php */
/* Location: ./application/models/data/m_suplier.php */