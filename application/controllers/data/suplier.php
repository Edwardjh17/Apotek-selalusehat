<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class suplier extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('data/m_suplier');
	}

	public function index()
	{
		$this->fungsi->check_previleges('suplier');
		$data['suplier'] = $this->m_suplier->getData();
		$this->load->view('data/suplier/v_suplier_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Suplier";
		$subheader = "suplier";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("data/suplier/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("data/suplier/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('suplier');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_suplier',
					'label' => 'nama_suplier',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('data/suplier/v_suplier_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_suplier','no_telephone','alamat'));
			$this->m_suplier->insertData($datapost);
			$this->fungsi->run_js('load_silent("data/suplier","#content")');
			$this->fungsi->message_box("Data suplier sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah Data suplier dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('suplier');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_suplier',
					'label' => 'nama_suplier',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('suplier',array('id'=>$id));
			$data['status']='';
			$this->load->view('data/suplier/v_suplier_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_suplier','no_telephone','alamat'));
			$this->m_suplier->updateData($datapost);
			$this->fungsi->run_js('load_silent("data/suplier","#content")');
			$this->fungsi->message_box("Data suplier sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit Data suplier dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_suplier->deleteData($id);
                redirect('admin');
            }
}

/* End of file suplier.php */
/* Location: ./application/controllers/data/suplier.php */