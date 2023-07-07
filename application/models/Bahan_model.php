<?php defined('BASEPATH') or exit('No direct script access allowed');

class Bahan_model extends CI_Model
{
    private $_table = "rincian_bahan";

    public $kd_bahan;
    public $uraian_bahan;
    public $satuan;
    public $harga_dasar;
    public $merk;
    public $spesifikasi;

    public function rules()
    {
        return [
            [
                'field' => 'kd_bahan',
                'label' => 'kd_bahan',
                'rules' => 'required'
            ],

            [
                'field' => 'uraian_bahan',
                'label' => 'uraian_bahan',
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
        return $this->db->get_where($this->_table, ["kd_bahan" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->kd_bahan = $post["kd_bahan"];
        $this->uraian_bahan = $post["uraian_bahan"];
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
        $this->kd_bahan = $post["kd_bahan"];
        $this->uraian_bahan = $post["uraian_bahan"];
        $this->satuan = $post["satuan"];
        $this->harga_dasar = $post["harga_dasar"];
        $this->merk = $post["merk"];
        $this->spesifikasi = $post["spesifikasi"];

        $this->db->update($this->_table, $this, array('kd_bahan' => $post['kd_bahan']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("kd_bahan" => $id));
    }
}
