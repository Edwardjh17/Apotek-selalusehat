<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class obat_kadaluwarsa extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('data/m_stock_obat');
		$this->load->model('data/m_jenis_obat');
		//$this->load->model('data/m_jenis_obat');

	}

	public function index()
	{
        //$this->fungsi->check_previleges('stock_obat');
        $data['table_exp'] = $this->m_stock_obat->expired();
        $data['table_alex'] = $this->m_stock_obat->almostex();
		$data['nullex'] = $this->m_stock_obat->countex();
		$this->load->view('obat/obat_kadaluwarsa/obat_kadaluwarsa_list',$data);
    }
}