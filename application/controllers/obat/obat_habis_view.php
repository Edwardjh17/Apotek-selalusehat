<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class obat_habis_view extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('data/m_stock_obat');
	}

	public function index()
	{
        //$this->fungsi->check_previleges('stock_obat');
        $data['table_stock'] = $this->m_stock_obat->outstock();
		$data['table_alstock'] = $this->m_stock_obat->almostout();
        $data['nullstock'] = $this->m_stock_obat->countstock();
		$this->load->view('obat/obat_habis/obat_habis_view',$data);
    }
}