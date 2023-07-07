<?php defined('BASEPATH') or exit('No direct script access allowed');

class Upah_model extends CI_Model
{
    private $_table = "rincian_upah";

    public $kd_upah;
    public $uraian_upah;
    public $satuan;
    public $harga_dasar;
    public $merk;
    public $spesifikasi;

    public function rules()
    {
        return [
            [
                'field' => 'kd_upah',
                'label' => 'kd_upah',
                'rules' => 'required'
            ],

            [
                'field' => 'uraian_upah',
                'label' => 'uraian_upah',
                'rules' => 'required'
            ],

            [
                'field' => 'satuan',
                'label' => 'satuan',
                'rules' => 'required'
            ],

            [
                'field' => 'harga_dasar',
                'label' => 'harga_dasar',
                'rules' => 'required'
            ],

            [
                'field' => 'merk',
                'label' => 'merk',
                'rules' => 'required'
            ],

            [
                'field' => 'spesifikasi',
                'label' => 'spesifikasi',
                'rules' => 'required'
            ],
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["kd_upah" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->kd_upah = $post["kd_upah"];
        $this->uraian_upah = $post["uraian_upah"];
        $this->satuan = $post["satuan"];
        $this->harga_dasar = $post["harga_dasar"];
        $this->merk = $post["merk"];
        $this->spesifikasi = $post["spesifikasi"];
        $this->db->insert($this->_table, $this);
    }

    public function edit_data($where, $_table)
    {
        return $this->db->get_where($_table, $where);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->kd_upah = $post["kd_upah"];
        $this->uraian_upah = $post["uraian_upah"];
        $this->satuan = $post["satuan"];
        $this->harga_dasar = $post["harga_dasar"];
        $this->merk = $post["merk"];
        $this->spesifikasi = $post["spesifikasi"];

        $this->db->update($this->_table, $this, array('kd_upah' => $post['kd_upah']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("kd_upah" => $id));
    }
}
