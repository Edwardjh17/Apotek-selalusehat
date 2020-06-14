<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_penjualan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('data/m_data_penjualan');
		$this->load->model('data/m_stock_obat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('data_penjualan');
		$data['data_penjualan'] = $this->m_data_penjualan->join();
		$this->load->view('penjualan/data_penjualan/v_data_penjualan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Data Penjualan";
		$subheader = "data_penjualan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("penjualan/data_penjualan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("penjualan/data_penjualan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('data_penjualan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'tanggal_transaksi',
					'label' => 'tanggal_transaksi',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$data['id_obat'] = get_options($this->db->query('select id, nama_obat from stock_obat'),true);
			$data['harga_jual'] = get_options($this->db->query('select id, harga_jual from stock_obat'),true);
			$this->load->view('penjualan/data_penjualan/v_data_penjualan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('tanggal_transaksi','no_referensi','id_obat','harga_jual','nama_pembeli','banyak','total_penjualan'));
			$this->m_data_penjualan->insertData($datapost);
			$this->fungsi->run_js('load_silent("penjualan/data_penjualan","#content")');
			$this->fungsi->message_box("Data Penjualan sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah Data data_enjualan dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('data_penjualan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'tanggal_transaksi',
					'label' => 'tanggal_transaksi',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('data_penjualan',array('id'=>$id));
			$data['id_obat'] = get_options($this->db->query('select id, nama_obat from stock_obat'),true);
			$data['harga_jual'] = get_options($this->db->query('select id, harga_jual from stock_obat'),true);
			$data['status']='';
			$this->load->view('penjualan/data_penjualan/v_data_penjualan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','tanggal_transaksi','no_referensi','id_obat','harga_jual','nama_pembeli','banyak','total_penjualan'));
			$this->m_data_penjualan->updateData($datapost);
			$this->fungsi->run_js('load_silent("penjualan/data_penjualan","#content")');
			$this->fungsi->message_box("Data Penjualan sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit Data data_penjualan dengan data sbb:",true);   
        }  
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('data_penjualan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_data_penjualan->deleteData($id);
		$this->fungsi->run_js('load_silent("penjualan/data_penjualan","#content")');
		$this->fungsi->message_box("Data Penjualan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}

}

/* End of file data_penjualan.php */
/* Location: ./application/controllers/data/data_penjualan.php */