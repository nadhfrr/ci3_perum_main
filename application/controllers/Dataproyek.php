<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Dataproyek extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("detailrab_model");
        $this->load->model("detailpekerjaan_model");
        $this->load->model("proyek_model");
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
            $this->load->view('dataproyek/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['proyek' => $this->input->post('proyek')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('dataproyek');
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
            $this->load->view('manpro/detailrab/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['detailrab' => $this->input->post('detailrab')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('detailrab');
        }
    }

    public function details()
    {
        $data["proyek"] = $this->proyek_model->getAll();
        $this->load->view("proyek/detail", $data);
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
        $this->load->view('dataproyek/new_form', $data);
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

    public function edit($kd_proyek = null)
    {
        if (!isset($kd_proyek)) redirect('dataproyek');

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
        $this->load->view('dataproyek/edit_form', $data);
        $this->load->view('templates/footer');

        $data["proyek"] = $proyek->getById($kd_proyek);
        if (!$data["proyek"]) show_404();
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->proyek_model->delete($id)) {
            redirect(site_url('dataproyek'));
        }
    }
}
