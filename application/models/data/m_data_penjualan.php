<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_data_penjualan extends CI_Model {
//select->read
public function getData($value='')
{
	$this->db->from('data_penjualan dp');
	$this->db->order_by('dp.id', 'desc');
	return $this->db->get();
}
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('data_penjualan',$data);
       
	}
//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('data_penjualan',$data);
	}
//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('data_penjualan');
	}

}

/* End of file m_data_penjualan.php */
/* Location: ./application/models/data/m_data_penjualan.php */