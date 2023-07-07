<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Bahan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("bahan_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Daftar Rincian Bahan';
        $data["bahan"] = $this->bahan_model->getAll();

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['bahan'] = $this->db->get('rincian_bahan')->result_array();

        $this->form_validation->set_rules('bahan', 'Bahan', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('bahan/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['bahan' => $this->input->post('bahan')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('bahan');
        }
    }

    public function add()
    {
        $data['title'] = 'Tambah Daftar Rincian Bahan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $bahan = $this->bahan_model;
        $validation = $this->form_validation;
        $validation->set_rules($bahan->rules());

        if ($validation->run() == false) {
        } else {
            $bahan->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('bahan/new_form', $data);
        $this->load->view('templates/footer');
    }

    public function edit($kd_bahan = null)
    {
        if (!isset($kd_bahan)) redirect('bahan');

        $data['title'] = 'Edit Daftar Rincian Bahan';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $where = array('kd_bahan' => $kd_bahan);
        $data['bahan'] = $this->bahan_model->edit_data($where, 'rincian_bahan')->result_array();

        $bahan = $this->bahan_model;
        $validation = $this->form_validation;
        $validation->set_rules($bahan->rules());

        if ($validation->run() == false) {
        } else {
            $bahan->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
            // redirect('bahan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('bahan/edit_form', $data);
        $this->load->view('templates/footer');

        $data["bahan"] = $bahan->getById($kd_bahan);
        if (!$data["bahan"]) show_404();
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->bahan_model->delete($id)) {
            redirect(site_url('bahan'));
        }
    }
}
