<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Manpro extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
        $this->load->model("detailrab_model");
        $this->load->model("detailpekerjaan_model");
        $this->load->model("proyek_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Utama';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('templates/footer');
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
            $this->load->view('manpro/detailrab/list', $data);
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
            $this->load->view('manpro/detailpekerjaan/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['detailpekerjaan' => $this->input->post('detailpekerjaan')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('detailpekerjaan');
        }
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
        $this->load->view('manpro/detailrab/new_form', $data);
        $this->load->view('templates/footer');
    }

    public function add()
    {
        $data['title'] = 'Tambah Pekerjaan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $detailpekerjaan = $this->detailpekerjaan_model;
        $validation = $this->form_validation;
        $validation->set_rules($detailpekerjaan->rules());

        if ($validation->run() == false) {
        } else {
            $detailpekerjaan->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('manpro/detailpekerjaan/new_form', $data);
        $this->load->view('templates/footer');
    }

    public function edit($kd_proyek = null, $id_pekerjaan = null)
    {
        if (!isset($id_pekerjaan)) redirect('manpro/detailpekerjaan');

        $data['title'] = 'Edit Volume Rincian Detail Pekerjaan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        // dead($kd_proyek);
        $where = array('kd_proyek' => $kd_proyek, 'id_pekerjaan' => $id_pekerjaan);
        $data['detailpekerjaan'] = $this->detailpekerjaan_model->edit_data($where, 'pekerjaan')->result_array();
        $getidrab = $this->detailpekerjaan_model->edit_data($where, 'pekerjaan')->result_array();
        $data['getidrab'] = $getidrab[0]['id_rab'];
        $data['getkdproyek'] = $getidrab[0]['kd_proyek'];

        $detailpekerjaan = $this->detailpekerjaan_model;
        $validation = $this->form_validation;
        $validation->set_rules($detailpekerjaan->rules());
        // dead($detailpekerjaan);
        // var_dump($data['total']);
        // die;
        if ($validation->run() == false) {
        } else {
            $detailpekerjaan->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
            // redirect('manpro/detailpekerjaan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('manpro/detailpekerjaan/edit_form', $data);
        $this->load->view('templates/footer');

        $data["detailpekerjaan"] = $detailpekerjaan->getById($id_pekerjaan);
        if (!$data["detailpekerjaan"]) show_404();
    }
}
