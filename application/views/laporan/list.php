<link rel="shortcut icon" href="<?= base_url() ?>assets/img/logo.png">
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">
            <?= form_error('proyek', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

            <?= $this->session->flashdata('message'); ?>

            <!-- DataTables -->
            <div class="card mb-3">

                <div class="card-body">

                    <div class="table-responsive">
                        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>Kode Proyek</th>
                                    <th>Nama Proyek</th>
                                    <th>Type</th>
                                    <th>Pemilik Proyek</th>
                                    <th>Status</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($proyek as $proyek) : ?>
                                    <tr>
                                        <td width="140">
                                            <?= $proyek['kd_proyek']; ?>
                                        </td>
                                        <td width="200">
                                            <?= $proyek['nama_proyek']; ?>
                                        </td>
                                        <td width="90">
                                            <?= $proyek['type']; ?>
                                        </td>
                                        <td width="200">
                                            <?= $proyek['pemilik_proyek']; ?>
                                        </td>
                                        <td>
                                            <?php if ($proyek['status'] == 1) {
                                                echo 'Diterima';
                                            } else if ($proyek['status'] == 2) {
                                                echo 'Ditolak';
                                            } else {
                                                echo 'Menunggu validasi';
                                            }
                                            ?>
                                        </td>
                                        <td width="300">
                                            <a href="<?php echo site_url('keuangan/index/' . $proyek['kd_proyek']) ?>" class="btn btn-small text-info"><i class="fas fa-info-circle"></i>
                                                Detail
                                            </a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>