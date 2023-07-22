<link rel="shortcut icon" href="<?= base_url() ?>assets/img/logo.png">
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">
            <?= form_error('rancangan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

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
                                        <td>
                                            <?= $proyek['kd_proyek']; ?>
                                        </td>
                                        <td>
                                            <?= $proyek['nama_proyek']; ?>
                                        </td>
                                        <td>
                                            <?= $proyek['type']; ?>
                                        </td>
                                        <td>
                                            <?= $proyek['pemilik_proyek']; ?>
                                        </td>
                                        <td>
                                            <?php if ($proyek['status'] == 1) {
                                                echo 'Diterima';
                                            } else if ($proyek['status'] == 2) {
                                                echo 'Ditolak';
                                            } else {
                                                echo 'Menunggu Persetujuan';
                                            }
                                            ?>
                                        </td>
                                        <td width="300">
                                            <a href="<?php echo site_url('rancangan/index/' . $proyek['kd_proyek']) ?>" class="btn btn-small text-info"><i class="fas fa-info-circle"></i>
                                                Detail</a>
                                            <!-- <a href="<?php echo site_url('proyek/edit/' . $proyek['kd_proyek']) ?>" class="btn btn-small text-primary"><i class="fas fa-edit"></i> Edit</a> -->
                                            <a onclick="deleteConfirm('<?php echo site_url('proyek/delete/' . $proyek['kd_proyek']) ?>')" href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i>
                                                Hapus</a>
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