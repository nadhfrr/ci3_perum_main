<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Pekerjaan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("pekerjaan_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Daftar Pekerjaan';
        $data["pekerjaan"] = $this->pekerjaan_model->getAll();

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['pekerjaan'] = $this->db->get('proyek_detail')->result_array();

        $this->form_validation->set_rules('pekerjaan', 'Pekerjaan', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('pekerjaan/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['proyek_detail' => $this->input->post('pekerjaan')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('pekerjaan');
        }
    }

    public function add()
    {
        $data['title'] = 'Tambah Pekerjaan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $pekerjaan = $this->pekerjaan_model;
        $validation = $this->form_validation;
        $validation->set_rules($pekerjaan->rules());

        if ($validation->run() == false) {
        } else {
            $pekerjaan->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pekerjaan/new_form', $data);
        $this->load->view('templates/footer');
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('pekerjaan');

        $data['title'] = 'Edit Pekerjaan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $where = array('id' => $id);
        $data['pekerjaan'] = $this->pekerjaan_model->edit_data($where, 'proyek_detail')->result_array();

        $pekerjaan = $this->pekerjaan_model;
        $validation = $this->form_validation;
        $validation->set_rules($pekerjaan->rules());

        if ($validation->run() == false) {
        } else {
            $pekerjaan->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
            // redirect('pekerjaan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pekerjaan/edit_form', $data);
        $this->load->view('templates/footer');

        $data["pekerjaan"] = $pekerjaan->getById($id);
        if (!$data["pekerjaan"]) show_404();
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->pekerjaan_model->delete($id)) {
            redirect(site_url('pekerjaan'));
        }
    }
}
