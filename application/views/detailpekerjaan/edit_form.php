<link rel="shortcut icon" href="<?= base_url() ?>front-end/assets/img/logo-perum.png">
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">
            <?= form_error('detailpekerjaan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

            <?= $this->session->flashdata('message'); ?>

            <?php if ($this->session->flashdata('success')) : ?>
                <div class="alert alert-success" role="alert">
                    <?php echo $this->session->flashdata('success'); ?>
                </div>
            <?php endif; ?>

            <!-- Card  -->
            <div class="card mb-3">
                <div class="card-header">

                    <a href="<?php echo site_url('detailpekerjaan/index/' . $getkdproyek . '/' . $getidrab . '') ?>"><i class="fas fa-arrow-left"></i>
                        Kembali</a>
                </div>
                <div class="card-body">

                    <?php foreach ($detailpekerjaan as $dpk) : ?>
                        <form action="<?php base_url("detailpekerjaan/edit") ?>" method="post" enctype="multipart/form-data">

                            <input type="hidden" name="id_pekerjaan" value="<?php echo $dpk['id_pekerjaan'] ?>" />
                            <input type="hidden" name="id_rab" value="<?php echo $dpk['id_rab'] ?>" />
                            <input type="hidden" name="kd_proyek" value="<?php echo $dpk['kd_proyek'] ?>" />
                            <input type="hidden" name="nama_pekerjaan" value="<?php echo $dpk['nama_pekerjaan'] ?>" />
                            <input type="hidden" name="satuan" value="<?php echo $dpk['satuan'] ?>" />

                            <div class="form-group">
                                <label for="volume">Volume</label>
                                <input class="form-control <?php echo form_error('volume') ? 'is-invalid' : '' ?>" type="text" name="volume" placeholder="Keterangan Lain" value="<?php echo $dpk['volume'] ?>" />
                                <div class="invalid-feedback">
                                    <?php echo form_error('volume') ?>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="harga_satuan">Harga satuan</label>
                                <input class="form-control <?php echo form_error('harga_satuan') ? 'is-invalid' : '' ?>" type="text" name="harga_satuan" placeholder="Keterangan Lain" value="<?php echo $dpk['harga_satuan'] ?>" />
                                <div class="invalid-feedback">
                                    <?php echo form_error('harga_satuan') ?>
                                </div>
                            </div>

                            <input class="btn btn-primary btn-sml" type="submit" name="btn" value="Simpan" />
                        </form>
                    <?php endforeach; ?>
                </div>

                <div class="card-footer small text-muted">
                    *Wajib diisi
                </div>


            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->