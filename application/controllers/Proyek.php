<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Proyek extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("proyek_model");
        $this->load->model("detailrab_model");
        $this->load->model("detailpekerjaan_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Daftar Proyek';
        $data["proyek"] = $this->proyek_model->getAll();
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['proyek'] = $this->db->get('proyek')->result_array();

        $this->form_validation->set_rules('proyek', 'Proyek', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('proyek/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['proyek' => $this->input->post('proyek')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('proyek');
        }
    }

    public function detailrab($kd_proyek)
    {
        $data['title'] = 'Detail Daftar Proyek';
        $data["detailrab"] = $this->db->query('select * from jenis_pekerjaan')->result_array();
        $data["proyek"] = $this->proyek_model->getById($kd_proyek);

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['kd_proyek'] = $kd_proyek;
        // $data['detailrab'] = $this->detailrab_model->getjenisrab($kd_proyek)->result_array();
        // dead($data["detailrab"]);
        $this->form_validation->set_rules('detailrab', 'Detailrab', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('proyek/detailrab', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['detailrab' => $this->input->post('detailrab')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('detailrab');
        }
    }

    public function detailpekerjaan($kd_proyek, $id_pekerjaan = null)
    {
        $data['title'] = 'Detail Daftar Pekerjaan RAB';
        $data["detailpekerjaan"] = $this->detailpekerjaan_model->getAll();
        $data["detailrab"] = $this->detailrab_model->getById($id_pekerjaan);

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['detailpekerjaan'] = $this->db->get('pekerjaan')->result_array();
        // $proyek = $this->db->get('pekerjaan')->row_array();
        $data['kd_proyek'] = $kd_proyek;

        $data['detailpekerjaan'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, $id_pekerjaan);

        $getdata = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, $id_pekerjaan);

        $data['total'] = $this->db->query('select SUM(volume * harga_satuan) as totalall from pekerjaan where kd_proyek = ' . $kd_proyek . ' and id_rab = ' . $id_pekerjaan . '')->row_array();
        // $data['kd_proyek'] = $getdata[0]->kd_proyek;
        // dead($id_pekerjaan);
        // dead($data['detailpekerjaan']);
        // $data['gettotal'] = $this->detailpekerjaan_model->gettotal($id_pekerjaan)->result();
        // var_dump($data['detailpekerjaan']);
        // die();
        $this->form_validation->set_rules('detailpekerjaan', 'Detailpekerjaan', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('proyek/detailpekerjaan', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['detailpekerjaan' => $this->input->post('detailpekerjaan')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('detailpekerjaan');
        }
    }

    public function details()
    {
        $data["proyek"] = $this->proyek_model->getAll();
        $this->load->view("proyek/detail", $data);
    }

    public function list_proyek()
    {
        $data['title'] = 'Daftar Proyek';
        $data["proyek"] = $this->proyek_model->getAll();
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['proyek'] = $this->db->get('proyek')->result_array();

        $this->form_validation->set_rules('proyek', 'Proyek', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('proyek/list_proyek', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['proyek' => $this->input->post('proyek')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('proyek');
        }
    }

    public function add()
    {
        $data['title'] = 'Tambah Daftar Proyek';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $proyek = $this->proyek_model;
        $validation = $this->form_validation;
        $validation->set_rules($proyek->rules());

        if ($validation->run() == false) {
        } else {
            $proyek->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('proyek/new_form', $data);
        $this->load->view('templates/footer');
    }

    public function addpekerjaan()
    {
        $data['title'] = 'Tambah Jenis Pekerjaan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $detailrab = $this->detailrab_model;
        $validation = $this->form_validation;
        $validation->set_rules($detailrab->rules());

        if ($validation->run() == false) {
        } else {
            $detailrab->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('detailrab/new_form', $data);
        $this->load->view('templates/footer');
    }

    public function indexrab($kd_proyek)
    {
        $data['title'] = 'Daftar Pengeluaran RAB';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data["proyek"] = $this->proyek_model->getById($kd_proyek);
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


        $data['totalrab1'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '001')->row_array();
        $data['totalrab2'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '002')->row_array();
        $data['totalrab3'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '003')->row_array();
        $data['totalrab4'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '004')->row_array();
        $data['totalrab5'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '005')->row_array();
        $data['totalrab6'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '006')->row_array();
        $data['totalrab7'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '007')->row_array();
        $data['totalrab8'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '008')->row_array();
        $data['totalrab9'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '009')->row_array();
        $data['totalrab10'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '010')->row_array();
        $data['totalrab11'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '011')->row_array();
        $data['totalrab12'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '012')->row_array();
        $data['totalrab13'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '013')->row_array();
        $data['totalrab14'] = $this->proyek_model->getpekerjaantotal($kd_proyek, '014')->row_array();


        $data['totalall'] = $this->proyek_model->getpekerjaantotalpr($kd_proyek)->row_array();


        $data['totalraball'] = $this->proyek_model->getpekerjaantotalall()->row_array();
        $data['kd_proyek'] = $kd_proyek;


        // dead($data['totalrab1']);
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('proyek/index', $data);
        $this->load->view('templates/footer');
    }

    public function validasi($statusvalidasi, $kd_proyek)
    {
        if ($statusvalidasi == 1) {
            echo "Diterima";
        } else {
            echo "Ditolak";
        }
        $this->proyek_model->upstatusvalidasi($statusvalidasi, $kd_proyek);

        redirect('proyek/list_proyek');
    }

    public function tolak_validasi($statusvalidasi, $kd_proyek)
    {
        $data = [
            'ket_perbaikan' => $this->input->post('ket_perbaikan')
        ];
        // var_dump($data);
        // die;
        $this->db->where('kd_proyek', $kd_proyek);
        $this->db->update('proyek', $data);

        $this->proyek_model->upstatusvalidasi($statusvalidasi, $kd_proyek);
        redirect('proyek/list_proyek');
    }

    public function edit($kd_proyek = null)
    {
        if (!isset($kd_proyek)) redirect('proyek');

        $data['title'] = 'Edit Data Proyek';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $where = array('kd_proyek' => $kd_proyek,);
        $data['proyek'] = $this->proyek_model->edit_data($where, 'proyek')->result_array();
        // dead($data['proyek']);
        $proyek = $this->proyek_model;
        $validation = $this->form_validation;
        $validation->set_rules($proyek->rules());

        if ($validation->run() == false) {
        } else {
            $proyek->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('proyek/edit_form', $data);
        $this->load->view('templates/footer');

        $data["proyek"] = $proyek->getById($kd_proyek);
        if (!$data["proyek"]) show_404();
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->proyek_model->delete($id)) {
            redirect(site_url('proyek'));
        }
    }
}
