<link rel="shortcut icon" href="<?= base_url() ?>front-end/assets/img/logo-perum.png">
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <h5><b><?= $detailrab->nama_rab ?></b></h5>

    <div class="row">
        <div class="col-lg">
            <?= form_error('detailpekerjaan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

            <?= $this->session->flashdata('message'); ?>

            <!-- DataTables -->
            <div class="card mb-3">
                <div class="card-header">
                    <a href="<?php echo site_url('manpro/detailrab/' . $kd_proyek . '') ?>"><i class="fas fa-arrow-left"></i> Kembali</a>

                    <a href="<?php echo site_url('manpro/add') ?>" class="btn btn-primary" style="float:right"><i class="fas fa-plus"></i> Tambah Pekerjaan</a>
                </div>
                <div class="card-body">

                    <div class="table-responsive">
                        <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>ID Pekerjaan</th>
                                    <th>Nama Pekerjaan</th>
                                    <th>Volume</th>
                                    <th>Satuan</th>
                                    <th>Harga Satuan</th>
                                    <th>Jumlah Harga</th>
                                    <th>Keterangan Perbaikan</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($detailpekerjaan as $dp) : ?>

                                    <tr>
                                        <td>
                                            <?php echo $dp->id_pekerjaan ?>
                                        </td>
                                        <td width="">
                                            <?php echo $dp->nama_pekerjaan ?>
                                        </td>
                                        <td>
                                            <?php echo $dp->volume ?>
                                        </td>
                                        <td>
                                            <?php echo $dp->satuan ?>
                                        </td>
                                        <td>
                                            Rp<?= number_format($dp->harga_satuan); ?>
                                        </td>

                                        <td>
                                            Rp<?= number_format($dp->volume * $dp->harga_satuan); ?>
                                        </td>
                                        <td>
                                            <?php echo $dp->keterangan_perbaikan ?>
                                        </td>

                                        <td>
                                            <a href="<?php echo site_url('manpro/edit/' . $kd_proyek . '/' . $dp->id_pekerjaan) ?>" class="btn btn-small text-primary"><i class="fas fa-edit"></i> Edit</a>
                                        </td>
                                    </tr>

                                <?php endforeach; ?>

                            </tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>Rp. <?= number_format($total['totalall']) ?></td>
                            </tr>
                        </table>
                    </div>

                    <div class=""></div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Modal -->
<div class="modal fade" id="addModalDetailrab" tabindex="-1" aria-labelledby="addModalDetailrabLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addModalDetailrabLabel">Edit Data Detail RAB</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('detailrab/edit'); ?>" method="post">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Bowplank</label>
                                <input type="text" name="" class="form-control <?php echo form_error('') ? 'is-invalid' : '' ?>">
                                <div class="invalid-feedback">
                                    <?php echo form_error('') ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Galian tanah</label>
                                <input type="text" name="" class="form-control <?php echo form_error('') ? 'is-invalid' : '' ?>">
                                <div class="invalid-feedback">
                                    <?php echo form_error('') ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="">Pasangan batu kumbung 1:3:10</label>
                                <input type="text" name="" class="form-control <?php echo form_error('') ? 'is-invalid' : '' ?>">
                                <div class="invalid-feedback">
                                    <?php echo form_error('') ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="">Urukan pasir pondasi</label>
                                <input type="text" name="" class="form-control <?php echo form_error('') ? 'is-invalid' : '' ?>">
                                <div class="invalid-feedback">
                                    <?php echo form_error('') ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="">Uruk kembali lubang pondasi</label>
                                <input type="text" name="" class="form-control <?php echo form_error('') ? 'is-invalid' : '' ?>">
                                <div class="invalid-feedback">
                                    <?php echo form_error('') ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
            </form>
        </div>
    </div>
</div>