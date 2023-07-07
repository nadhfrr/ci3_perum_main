<?php defined('BASEPATH') or exit('No direct script access allowed');

class Pengguna_model extends CI_Model
{
    private $_table = "user";

    public $id;
    public $noreg_user;
    public $name;
    public $email;
    public $image;
    public $password;
    public $role_id;

    public function rules()
    {
        return [
            [
                'field' => 'noreg_user',
                'label' => 'noreg_user',
                'rules' => 'required'
            ],

            [
                'field' => 'name',
                'label' => 'name',
                'rules' => 'required'
            ],

            [
                'field' => 'email',
                'label' => 'email',
                'rules' => 'required'
            ],

            [
                'field' => 'password',
                'label' => 'password',
                'rules' => 'required'
            ],

            [
                'field' => 'role_id',
                'label' => 'role_id',
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
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        // $this->id = $post["id"];
        $this->noreg_user = $post["noreg_user"];
        $this->name = $post["name"];
        $this->email = $post["email"];
        $this->password = md5($post["password"]);
        $this->image = $post["image"];
        $this->role_id = $post["role_id"];

        $this->db->insert($this->_table, $this);
    }

    public function edit_data($where, $_table)
    {
        return $this->db->get_where($_table, $where);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->noreg_user = $post["noreg_user"];
        $this->name = $post["name"];
        $this->email = $post["email"];
        $this->password = $post["password"];
        $this->role_id = $post["role_id"];

        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function hapus_data($where, $_table)
    {
        $this->db->where($where);
        $this->db->delete($_table);
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id" => $id));
    }
}
