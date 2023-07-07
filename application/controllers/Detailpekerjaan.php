<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Detailpekerjaan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("detailpekerjaan_model");
        $this->load->library('form_validation');
    }

    public function index($kd_proyek, $id_pekerjaan = null)
    {
        $data['title'] = 'Detail Daftar Pekerjaan RAB';
        $data["detailpekerjaan"] = $this->detailpekerjaan_model->getAll();

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['detailpekerjaan'] = $this->db->get('pekerjaan')->result_array();
        // $proyek = $this->db->get('pekerjaan')->row_array();


        $data['detailpekerjaan'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, $id_pekerjaan);
        $getdata = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, $id_pekerjaan);
        $data['kd_proyek'] = $getdata[0]->kd_proyek;
        // dead();
        // dead($data['detailpekerjaan']);
        // $data['gettotal'] = $this->detailpekerjaan_model->gettotal($id_pekerjaan)->result();
        // var_dump($data['detailpekerjaan']);
        // die();
        $this->form_validation->set_rules('detailpekerjaan', 'Detailpekerjaan', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('detailpekerjaan/list', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['detailpekerjaan' => $this->input->post('detailpekerjaan')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('detailpekerjaan');
        }
    }

    public function indexdata($kd_proyek, $id_pekerjaan = null)
    {
        $data['title'] = 'Detail Daftar Pekerjaan RAB';
        $data["detailpekerjaan"] = $this->detailpekerjaan_model->getAll();

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['detailpekerjaan'] = $this->db->get('pekerjaan')->result_array();
        // $proyek = $this->db->get('pekerjaan')->row_array();


        $data['detailpekerjaan'] = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, $id_pekerjaan);
        $getdata = $this->detailpekerjaan_model->pekerjaanjoin($kd_proyek, $id_pekerjaan);
        $data['kd_proyek'] = $getdata[0]->kd_proyek;
        // dead();
        // dead($data['detailpekerjaan']);
        // $data['gettotal'] = $this->detailpekerjaan_model->gettotal($id_pekerjaan)->result();
        // var_dump($data['detailpekerjaan']);
        // die();
        $this->form_validation->set_rules('detailpekerjaan', 'Detailpekerjaan', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('detailpekerjaan/list_data', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user', ['detailpekerjaan' => $this->input->post('detailpekerjaan')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">New menu added!</div>');
            redirect('detailpekerjaan');
        }
    }
    function tambah_catatan($id_pekerjaan)
    {
        $data = [
            'keterangan_perbaikan' => $this->input->post('ket_perbaikan'),
        ];
        $this->db->where('id_pekerjaan', $id_pekerjaan);
        $this->db->update('pekerjaan', $data);
        redirect('detailpekerjaan/indexdata/' . $this->input->post('kd_proyek') . '/' . $this->input->post('id_rab') . '');
    }

    public function details($id_pekerjaan = null)
    {
        $data['title'] = 'Detail Daftar Pekerjaan';
        $data["detailpekerjaan"] = $this->detailpekerjaan_model->getAll();

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['detailpekerjaan'] = $this->detailpekerjaan_model->pekerjaanjoin($id_pekerjaan);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('detailpekerjaan/list', $data);
    }

    public function add()
    {
        $data['title'] = 'Tambah Daftar Pengguna';
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

    public function edit($kd_proyek = null, $id_pekerjaan = null)
    {
        if (!isset($id_pekerjaan)) redirect('detailpekerjaan');

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
            // redirect('detailpekerjaan');
        }
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('detailpekerjaan/edit_form', $data);
        $this->load->view('templates/footer');

        $data["detailpekerjaan"] = $detailpekerjaan->getById($id_pekerjaan);
        if (!$data["detailpekerjaan"]) show_404();
    }

    // public function delete($id = null)
    // {
    //     if (!isset($id)) show_404();

    //     if ($this->detailrab_model->delete($id)) {
    //         redirect(site_url('detailrab'));
    //     }
    // }

    public function getsubpek($idrab)
    {
        $datax = $this->detailrab_model->getSubPekByIdRab($idrab);
        echo json_encode($datax);
    }
}
