<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_penjualan_print extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('data/m_data_penjualan');
		$this->load->model('data/m_stock_obat');
	}

	public function index()
	{
		//$this->fungsi->check_previleges('data_penjualan');
		$data['data_penjualan'] = $this->m_data_penjualan->join();
		$this->load->view('penjualan/data_penjualan/v_data_penjualan_print',$data);
    }
}