<?php
class Akses extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    if ($this->session->userdata('logged_in') !== TRUE) {
      redirect('login');
    }
  }

  function index()
  {
    //Allowing akses to admin only
    if ($this->session->userdata('level') === '1') {
      $this->load->view('admin/index');
    } else {
      echo "Access Denied";
    }
  }

  function komisaris()
  {
    //Allowing akses to staff only
    if ($this->session->userdata('level') === '2') {
      $this->load->view('komisaris/dashboard_view');
    } else {
      echo "Access Denied";
    }
  }

  function direktur()
  {
    //Allowing akses to staff only
    if ($this->session->userdata('level') === '3') {
      $this->load->view('direktur/dashboard_view');
    } else {
      echo "Access Denied";
    }
  }

  function keuangan()
  {
    //Allowing akses to staff only
    if ($this->session->userdata('level') === '4') {
      $this->load->view('keuangan/dashboard_view');
    } else {
      echo "Access Denied";
    }
  }

  function manajpro()
  {
    //Allowing akses to author only
    if ($this->session->userdata('level') === '5') {
      $this->load->view('manajpro/dashboard_view');
    } else {
      echo "Access Denied";
    }
  }
}
