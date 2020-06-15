<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_stock_obat extends CI_Model {

	public function getData($value='')
	{
		$this->db->select('stock_obat.*,jenis_obat.jenis_obat');
		$this->db->from('stock_obat');
		$this->db->join('jenis_obat', 'jenis_obat.id = stock_obat.id_jenis_obat');
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
	function countex(){      
		 
		$ce = $this->db->query('SELECT * FROM stock_obat WHERE tanggal_kadaluwarsa BETWEEN DATE_SUB(NOW(), INTERVAL 100 YEAR) AND NOW()');
			$nullex = $ce->num_rows();
			return $nullex;     
	}
	function expired(){
	
		
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
	public function join()
	{
		$this->db->select('kelola_bahan.*,master_bahan.nama_bahan, master_satuan.nama_satuan, dana.sumber_pendanaan, status.status, penyimpanan_bahan.nama_penyimpanan');
		$this->db->from('kelola_bahan');
		$this->db->join('master_bahan', 'master_bahan.id = kelola_bahan.nama_bahan');
		$this->db->join('master_satuan', 'master_satuan.id = kelola_bahan.satuan');
		$this->db->join('dana', 'dana.id_pendanaan = kelola_bahan.pendanaan');
		$this->db->join('status', 'status.id = kelola_bahan.status');
		$this->db->join('penyimpanan_bahan', 'penyimpanan_bahan.id = kelola_bahan.lokasi');
		return $this->db->get();
}
	public function getList()
    {
        $this->db->from('cms_user')->get();
    }

}
