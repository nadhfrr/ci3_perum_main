<?php defined('BASEPATH') or exit('No direct script access allowed');

class Pekerjaan_model extends CI_Model
{
    private $_table = "pekerjaan";

    public $id_pekerjaan;
    public $kd_proyek;
    public $id_rab;
    public $nama_pekerjaan;
    public $volume;
    public $satuan;
    public $harga_satuan;
    public $jumlah_harga;
    public $keterangan_perbaikan;

    public function rules()
    {
        return [
            [
                'field' => 'id_rab',
                'label' => 'id_rab',
                'rules' => 'required'
            ],

            [
                'field' => 'nama_pekerjaan',
                'label' => 'nama_pekerjaan',
                'rules' => 'required'
            ],

            [
                'field' => 'satuan',
                'label' => 'satuan',
                'rules' => 'required'
            ],

            [
                'field' => 'harga_satuan',
                'label' => 'harga_satuan',
                'rules' => 'required'
            ]
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_pekerjaan" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->id_rab = $post["id_rab"];
        $this->nama_pekerjaan = $post["nama_pekerjaan"];
        $this->satuan = $post["satuan"];
        $this->harga_satuan = $post["harga_satuan"];
        $this->db->insert($this->_table, $this);
    }

    public function edit_data($where, $_table)
    {
        return $this->db->get_where($_table, $where);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_pekerjaan = $post["id_pekerjaan"];
        $this->id_rab = $post["id_rab"];
        $this->nama_pekerjaan = $post["nama_pekerjaan"];
        $this->satuan = $post["satuan"];
        $this->harga_satuan = $post["harga_satuan"];

        $this->db->update($this->_table, $this, array('kd_bahan' => $post['kd_bahan']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("kd_bahan" => $id));
    }
}
