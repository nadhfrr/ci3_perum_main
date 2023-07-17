<!DOCTYPE html>
<html lang="en">
<title> Utama - DeDiamondPark </title>

<head>
  <?php $this->load->view("_partials/head.php") ?>
</head>

<body id="page-top">

  <?php $this->load->view("_partials/navbar.php") ?>

  <div id="wrapper">
    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item <?php echo $this->uri->segment(2) == '' ? 'active' : '' ?>">
        <a class="nav-link" href="<?php echo site_url('akses/keuangan') ?>">
          <img src="<?php echo base_url() ?>assets/img/home.png" width="18" height="18">
          <span>Utama</span>
        </a>
      </li>

      <li class="nav-item dropdown <?php echo $this->uri->segment(2) == 'home' ? 'active' : '' ?>">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="<?php echo base_url() ?>assets/img/rincian.png" width="20" height="20">
          <span>Rincian</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <a class="dropdown-item" href="<?php echo site_url('bahan') ?>">Rincian Bahan</a>
          <a class="dropdown-item" href="<?php echo site_url('upah') ?>">Rincian Upah</a>
        </div>
      </li>

      <li class="nav-item dropdown <?php echo $this->uri->segment(2) == 'home' ? 'active' : '' ?>">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="<?php echo base_url() ?>assets/img/perhitungan.png" width="20" height="20">
          <span>Perancangan</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <a class="dropdown-item" href="<?php echo site_url('proyek/add') ?>">Tambah Proyek</a>
          <a class="dropdown-item" href="<?php echo site_url('home') ?>">Data Pengeluaran</a>
          <a class="dropdown-item" href="<?php echo site_url('home') ?>">Hitung RAB</a>
        </div>
      </li>
    </ul>

    <div id="content-wrapper">

      <div class="container-fluid">
        <!-- /.page-header -->
        <div class="main-content">
          <div class="main-content-inner">
            <div class="page-content">

              <!-- /section:settings.box -->
              <div class="page-header">

                <h2 style="color: 00000;">
                  Selamat datang, <?php echo $this->session->userdata('username'); ?>&nbsp;<img src="<?php echo base_url() ?>assets/img/happy.png" width="22" height="22">
                </h2>
                <h4 style=" margin-left: 75%;">
                  <script type='text/javascript'>
                    var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei',
                      'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
                    ];

                    var myDays = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];

                    var date = new Date();

                    var day = date.getDate();

                    var month = date.getMonth();

                    var thisDay = date.getDay(),

                      thisDay = myDays[thisDay];
                    var yy = date.getYear();


                    var year = (yy < 1000) ? yy + 1900 : yy;

                    document.write(thisDay + ', ' + day + ' ' + months[month] + ' ' + year);
                  </script>
                </h4>
                <!-- <a href="<?php echo base_url('index.php/login/logout') ?>">Logout"></a> -->
              </div>
              <!-- Sticky Footer -->
              <?php $this->load->view("_partials/footer.php") ?>

            </div>
            <!-- /.content-wrapper -->

          </div>
          <!-- /#wrapper -->


          <?php $this->load->view("_partials/scrolltop.php") ?>
          <?php $this->load->view("_partials/modal.php") ?>
          <?php $this->load->view("_partials/js.php") ?>

</body>

</html>