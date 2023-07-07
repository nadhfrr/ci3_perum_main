<?php defined('BASEPATH') or exit('No direct script access allowed');

class Detailrab_model extends CI_Model
{
    private $_table = "jenis_pekerjaan";

    public $id_rab;
    public $nama_rab;

    // public function rules()
    // {
    //     return [
    //         [
    //             'field' => 'id_rab',
    //             'label' => 'id_rab',
    //             'rules' => 'required'
    //         ],

    //         [
    //             'field' => 'nama_rab',
    //             'label' => 'nama_rab',
    //             'rules' => 'required'
    //         ],
    //     ];
    // }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_rab" => $id])->row();
    }

    public function getproyek($id)
    {
        $this->db->select('*');
        $this->db->from('proyekrab');
        $this->db->join('proyek', 'proyek.kd_proyek = proyekrab.kd_proyek');
        $this->db->join('rab', 'rab.id_rab = proyekrab.id_rab');
        $this->db->where('proyekrab.kd_proyek', $id);
        $query = $this->db->get();
        return $query->result();
        //return $this->db->get_where('subpek', ["id_rab" => $id])->result_array();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->id_rab = $post["id_rab"];
        $this->nama_rab = $post["nama_rab"];

        $this->db->insert($this->_table, $this);
    }

    public function edit_data($where, $_table)
    {
        return $this->db->get_where($_table, $where);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_rab = $post["id_rab"];
        $this->nama_rab = $post["nama_rab"];

        $this->db->update($this->_table, $this, array('id_rab' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id_rab" => $id));
    }
    public function getjenisrab($kd_proyek)
    {
        $query = $this->db->query("
        SELECT * FROM pekerjaan p left join jenis_pekerjaan jp on p.id_rab=jp.id_rab WHERE kd_proyek = '$kd_proyek' GROUP by jp.id_rab 
        ");
        return $query;
    }
}
