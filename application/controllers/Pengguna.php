<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Pengguna extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("pengguna_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Daftar Pengguna';
        $data["pengguna"] = $this->pengguna_model->getAll();

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['pengguna'] = $this->db->get('user')->result_array();

        $this->form_validation->set_rules('pengguna', 'Pengguna', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('pengguna/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['pengguna' => $this->input->post('pengguna')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('pengguna');
        }
    }

    public function add()
    {
        $data['title'] = 'Tambah Daftar Pengguna';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $pengguna = $this->pengguna_model;
        $validation = $this->form_validation;
        $validation->set_rules($pengguna->rules());

        if ($validation->run() == false) {
        } else {
            $pengguna->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pengguna/new_form', $data);
        $this->load->view('templates/footer');
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('pengguna');

        $data['title'] = 'Edit Daftar Pengguna';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $where = array('id' => $id);
        $data['pengguna'] = $this->pengguna_model->edit_data($where, 'user')->result_array();

        $pengguna = $this->pengguna_model;
        $validation = $this->form_validation;
        $validation->set_rules($pengguna->rules());

        if ($validation->run() == false) {
        } else {
            $pengguna->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
            // redirect('pengguna');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pengguna/edit_form', $data);
        $this->load->view('templates/footer');

        $data["pengguna"] = $pengguna->getById($id);
        if (!$data["pengguna"]) show_404();
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->pengguna_model->delete($id)) {
            redirect(site_url('pengguna'));
        }
    }
}
