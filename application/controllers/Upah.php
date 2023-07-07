<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Upah extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("upah_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Daftar Rincian Upah';
        $data["upah"] = $this->upah_model->getAll();

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['upah'] = $this->db->get('rincian_upah')->result_array();

        $this->form_validation->set_rules('upah', 'Upah', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('upah/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['upah' => $this->input->post('upah')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('upah');
        }
    }

    public function add()
    {
        $data['title'] = 'Tambah Daftar Rincian Upah';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $upah = $this->upah_model;
        $validation = $this->form_validation;
        $validation->set_rules($upah->rules());

        if ($validation->run() == false) {
        } else {
            $upah->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('upah/new_form', $data);
        $this->load->view('templates/footer');
    }

    public function edit($kd_upah = null)
    {
        if (!isset($kd_upah)) redirect('upah');

        $data['title'] = 'Edit Daftar Rincian Upah';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $where = array('kd_upah' => $kd_upah);
        $data['upah'] = $this->upah_model->edit_data($where, 'rincian_upah')->result_array();

        $upah = $this->upah_model;
        $validation = $this->form_validation;
        $validation->set_rules($upah->rules());

        if ($validation->run() == false) {
        } else {
            $upah->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
            // redirect('upah');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('upah/edit_form', $data);
        $this->load->view('templates/footer');

        $data["upah"] = $upah->getById($kd_upah);
        if (!$data["upah"]) show_404();
    }

    public function delete($kd_upah = null)
    {
        if (!isset($kd_upah)) show_404();

        if ($this->upah_model->delete($kd_upah)) {
            redirect(site_url('kd_upah'));
        }
    }
}
