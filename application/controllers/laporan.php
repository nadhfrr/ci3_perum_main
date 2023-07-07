<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model("Proyek_model");
        $this->load->model("detailpekerjaan_model");
    }

    public function index($kd_proyek)
    {
        $data['title'] = 'Daftar Pengeluaran RAB';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        // $data['getidrab'] = $this->Proyek_model->groupbyidrab()->result_array();
        // $data['detailpekerjaan'] = $this->detailpekerjaan_model->pekerjaanjoin('001');

        $data['rab1'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '001');

        $data['rab2'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '002');
        $data['rab3'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '003');
        $data['rab4'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '004');
        // dead($data['rab4']);
        $data['rab5'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '005');
        $data['rab6'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '006');
        $data['rab7'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '007');
        $data['rab8'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '008');
        $data['rab9'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '009');
        $data['rab10'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '010');
        $data['rab11'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '011');
        $data['rab12'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '012');
        $data['rab13'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '013');
        $data['rab14'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, '014');


        $data['totalrab1'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '001')->row_array();
        $data['totalrab2'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '002')->row_array();
        $data['totalrab3'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '003')->row_array();
        $data['totalrab4'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '004')->row_array();
        $data['totalrab5'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '005')->row_array();
        $data['totalrab6'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '006')->row_array();
        $data['totalrab7'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '007')->row_array();
        $data['totalrab8'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '008')->row_array();
        $data['totalrab9'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '009')->row_array();
        $data['totalrab10'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '0010')->row_array();
        $data['totalrab11'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '0011')->row_array();
        $data['totalrab12'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '0012')->row_array();
        $data['totalrab13'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '0013')->row_array();
        $data['totalrab14'] = $this->Proyek_model->getpekerjaantotal($kd_proyek, '0014')->row_array();


        $data['totalraball'] = $this->Proyek_model->getpekerjaantotalall()->row_array();



        // dead($data['totalrab1']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('laporan/index', $data);
        $this->load->view('templates/footer');
    }
    public function pengeluaran()
    {
        $data['title'] = 'Daftar Pengeluaran RAB';
        $data["proyek"] = $this->Proyek_model->getAll();
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['proyek'] = $this->db->get('proyek')->result_array();

        $this->form_validation->set_rules('proyek', 'Proyek', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('laporan/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['proyek' => $this->input->post('proyek')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('proyek');
        }
    }
}
