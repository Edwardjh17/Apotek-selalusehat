<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_stock_obat extends CI_Model {

	public function getData($value='')
	{
		$this->db->join('jenis_obat jo', 'so.jenis_obat = jo.id', 'left');
		$this->db->select('so.*,jo.jenis_obat');
		
		return $this->db->get('stock_obat so');
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
	function countex(){       
		$ce = $this->db->query('SELECT * FROM stock_obat WHERE tanggal_kadaluwarsa BETWEEN DATE_SUB(NOW(), INTERVAL 100 YEAR) AND NOW()');
			$nullex = $ce->num_rows();
			return $nullex;     
	}
	function expired(){
		$this->db->select('stock_obat.*, jenis_obat.jenis_obat');
		$this->db->from('stock_obat');
		$this->db->join('jenis_obat', 'jenis_obat.id = jenis_obat.jenis_obat');
        return $this->db->query('SELECT * FROM stock_obat WHERE tanggal_kadaluwarsa BETWEEN DATE_SUB(NOW(), INTERVAL 40 YEAR) AND NOW()'); 
	}
	function almostex(){
        return $this->db->query('SELECT * FROM stock_obat WHERE tanggal_kadaluwarsa BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 60 DAY)');
	}
	function outstock(){        
        return $this->db->query('SELECT * FROM stock_obat WHERE jumlah_stock BETWEEN 0 AND 0');           
    }

    function almostout(){        
        return $this->db->query('SELECT * FROM stock_obat WHERE jumlah_stock BETWEEN 1 AND 8');           
    }

     function countstock(){       
      $cs =  $this->db->query('SELECT * FROM stock_obat WHERE jumlah_stock BETWEEN 0 AND 0'); 
        $nullstock = $cs->num_rows();
        return $nullstock;    
	}
	public function getList()
    {
        $this->db->from('cms_user')->get();
    }

}
