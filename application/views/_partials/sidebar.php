<!-- Sidebar -->
<ul class="sidebar navbar-nav">
    <li class="nav-item <?php echo $this->uri->segment(2) == '' ? 'active' : '' ?>">
        <a class="nav-link" href="<?php echo site_url('utama') ?>">
            <img src="<?php echo base_url() ?>assets/img/home.png" width="18" height="18">
            <span>Utama</span>
        </a>
    </li>
    <li class="nav-item <?php echo $this->uri->segment(2) == '' ? 'active' : '' ?>">
        <a class="nav-link" href="<?php echo site_url('pengguna') ?>">
            <img src="<?php echo base_url() ?>assets/img/data pengguna.png" width="18" height="18">
            <span>Data Pengguna</span></a>
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
            <a class="dropdown-item" href="<?php echo site_url('proyek') ?>">Tambah Proyek</a>
            <a class="dropdown-item" href="<?php echo site_url('home') ?>">Data Pengeluaran</a>
            <a class="dropdown-item" href="<?php echo site_url('home') ?>">Hitung RAB</a>
        </div>
    </li>
</ul>