<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class stock_obat extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('data/m_stock_obat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('stock_obat');
		$data['stock_obat'] = $this->m_stock_obat->getData();
		$this->load->view('data/stock_obat/v_stock_obat_list',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Data Stock Obat";
		$subheader = "stock_obat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("data/stock_obat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("data/stock_obat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}
	public function show_addForm()
	{
		$this->fungsi->check_previleges('stock_obat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_obat',
					'label' => 'nama_obat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('data/stock_obat/v_stock_obat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_obat','kode_obat','tanggal_masuk','tanggal_kadaluarsa','jumlah_stock'));
			$this->m_stock_obat->insertData($datapost);
			$this->fungsi->run_js('load_silent("data/stock_obat","#content")');
			$this->fungsi->message_box("Data Stock Obat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah data stock_obat dengan data sbb:",true);
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('stock_obat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_obat',
					'label' => 'nama_obat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('stock_obat',array('id'=>$id));
			$data['status']='';
			$this->load->view('data/stock_obat/v_stock_obat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_obat','kode_obat','tanggal_masuk','tanggal_kadaluarsa','jumlah_stock'));
			$this->m_stock_obat->updateData($datapost);
			$this->fungsi->run_js('load_silent("data/stock_obat","#content")');
			$this->fungsi->message_box("Data Stock Obat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah data stock_obat dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_stock_obat->deleteData($id);
		redirect('admin');
	}
}


	
