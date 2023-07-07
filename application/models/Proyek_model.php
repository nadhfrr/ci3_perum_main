<?php defined('BASEPATH') or exit('No direct script access allowed');

class Proyek_model extends CI_Model
{
    private $_table = "proyek";

    public $kd_proyek;
    public $nama_proyek;
    public $type;
    public $pemilik_proyek;
    public $keterangan_lain;

    public function rules()
    {
        return [
            [
                'field' => 'kd_proyek',
                'label' => 'kd_proyek',
                'rules' => 'required'
            ],

            [
                'field' => 'nama_proyek',
                'label' => 'nama_proyek',
                'rules' => 'required'
            ],

            [
                'field' => 'type',
                'label' => 'type',
                'rules' => 'required'
            ],

            [
                'field' => 'pemilik_proyek',
                'label' => 'pemilik_proyek',
                'rules' => 'required'
            ],

            [
                'field' => 'keterangan_lain',
                'label' => 'keterangan_lain',
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
        return $this->db->get_where($this->_table, ["kd_proyek" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->kd_proyek = $post["kd_proyek"];
        $this->nama_proyek = $post["nama_proyek"];
        $this->type = $post["type"];
        $this->pemilik_proyek = $post["pemilik_proyek"];
        $this->keterangan_lain = $post["keterangan_lain"];
        $this->db->insert($this->_table, $this);
    }

    public function edit_data($where, $_table)
    {
        return $this->db->get_where($_table, $where);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->kd_proyek = $post["kd_proyek"];
        $this->nama_proyek = $post["nama_proyek"];
        $this->type = $post["type"];
        $this->pemilik_proyek = $post["pemilik_proyek"];
        $this->keterangan_lain = $post["keterangan_lain"];

        $this->db->update($this->_table, $this, array('kd_proyek' => $post['kd_proyek']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("kd_proyek" => $id));
    }

    // public function getpekerjaantotal($kd_proyek, $id_rab)
    // {
    //     $query = $this->db->query("
    //    select sum(p.volume * p.harga_satuan) as total
    //     from pekerjaan p 
    //     left join jenis_pekerjaan jp on p.id_rab=jp.id_rab
    //     where p.kd_proyek = '$kd_proyek' and p.id_rab = '$id_rab'
    //     ");
    //     return $query;
    // }

    public function getpekerjaantotal($kd_proyek, $id_rab)
    {
        $query = $this->db->query("
       select sum(p.volume * p.harga_satuan) as total
        from pekerjaan p 
        left join jenis_pekerjaan jp on p.id_rab=jp.id_rab
        where p.kd_proyek = '$kd_proyek' and p.id_rab = '$id_rab'
        ");
        return $query;
    }
    public function getpekerjaantotalpr($kd_proyek)
    {
        $query = $this->db->query("
       select sum(p.volume * p.harga_satuan) as total
        from pekerjaan p 
        left join jenis_pekerjaan jp on p.id_rab=jp.id_rab
        where p.kd_proyek = '$kd_proyek'
        ");
        return $query;
    }

    public function upstatusvalidasi($statusvalidasi, $kd_proyek)
    {

        $this->db->where('kd_proyek', $kd_proyek);
        $this->db->update('proyek', array('status' => $statusvalidasi));
        return true;
    }

    public function getpekerjaantotalall()
    {
        $query = $this->db->query("
       select sum(p.volume * p.harga_satuan) as total
        from pekerjaan p 
        left join jenis_pekerjaan jp on p.id_rab=jp.id_rab
        
        ");
        return $query;
    }


    public function groupbyidrab()
    {
        $query = $this->db->query("
       SELECT id_rab FROM `pekerjaan` WHERE id_rab GROUP BY id_rab; 
        ");
        return $query;
    }
}
