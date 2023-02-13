<?php

Class Fuzzytrapesium extends MX_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
		$data['data'] = $this->db->select('*')->from('fuzzy')->get()->result(); //Untuk mengambil data dari database webinar
		$data['rule'] = $this->db->select('*')->from('fuzzyrule')->get()->result(); //Untuk mengambil data dari database webinar
		$this->template->load('template','fuzzytrapesium/list',$data);	
    }
	
	function cetak() {
		$data['data'] = $this->db->select('*')->from('fuzzy')->get()->result(); //Untuk mengambil data dari database webinar
		
		$this->load->view('fuzzytrapesium/cetak',$data);	
    }

function add() {
    $isi = array(
            'nilai'     => $this->input->post('nilai')
        );
        $this->db->insert('fuzzy',$isi);
        redirect('fuzzytrapesium');
    }

function grafik() {
    $data = $this->db->select('*')->from('fuzzy')->get()->result();
	echo json_encode($data);
    }

	    
function edit(){
	if(isset($_POST['submit'])){
            $data = array(
            'min'     => $this->input->post('min'),
			'mid'     => $this->input->post('mid'),
			'mid2'     => $this->input->post('mid2'),
			'max'     => $this->input->post('max')
        );
        $id   = $this->input->post('id');
        $this->db->where('id',$id);
        $this->db->update('fuzzyrule',$data);
        redirect('fuzzytrapesium');
        }
    }

 function hapus(){
        $id = $this->uri->segment(3);
        if(!empty($id)){
            // proses delete data
            $this->db->where('id',$id);
            $this->db->delete('fuzzy');
        }
        redirect('fuzzytrapesium');
    }

}