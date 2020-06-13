<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class stock_obat_view extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('data/m_stock_obat');
		$this->load->model('data/m_suplier');
		$this->load->model('data/m_jenis_obat');
	}

	public function index()
	{
		//$this->fungsi->check_previleges('stock_obat');
		$data['stock_obat'] = $this->m_stock_obat->getData();
		$data['jenis_obat'] = $this->m_jenis_obat->getData();
		$this->load->view('obat/stock_obat/v_stock_obat_view',$data);
	}
}