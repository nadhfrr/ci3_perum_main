<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Utama extends CI_Controller
{
    public function index()
    {
        $data['title'] = 'Utama';
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();

        $this->load->view('admin/index', $data);
    }
}
