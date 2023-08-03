<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">
            <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

            <?= $this->session->flashdata('message'); ?>

            <?php if ($this->session->flashdata('success')) : ?>
                <div class="alert alert-success" role="alert">
                    <?php echo $this->session->flashdata('success'); ?>
                </div>
            <?php endif; ?>

            <div class="card mb-3">
                <div class="card-header">
                    <a href="<?php echo site_url('submenu') ?>"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
                <div class="card-body">

                    <form class="user" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="menu_id">ID Menu</label>
                            <input class="form-control <?php echo form_error('menu_id') ? 'is-invalid' : '' ?>" type="text" name="menu_id" />
                            <div class="invalid-feedback">
                                <?php echo form_error('menu_id') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="menu_id">Id Menu</label>
                            <select class="form-control selectpicker" data-live-search="true" type="text" onchange="getIdPekerjaan(this.value)" name="id_peker">
                                <option value="">Pilih id menu</option>
                                <?php
                                foreach ($submenu as $sm) { ?>
                                    <option value="<?= $sm->id; ?>"></option>
                                <?php } ?>
                            </select>
                            <div class="invalid-feedback">
                                <?php echo form_error('menu_id') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="title">Judul</label>
                            <input class="form-control <?php echo form_error('title') ? 'is-invalid' : '' ?>" type="text" name="title" />
                            <div class="invalid-feedback">
                                <?php echo form_error('title') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="url">Nama url</label>
                            <input class="form-control <?php echo form_error('url') ? 'is-invalid' : '' ?>" type="text" name="url" />
                            <div class="invalid-feedback">
                                <?php echo form_error('url') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="icon">Icon</label>
                            <input class="form-control <?php echo form_error('icon') ? 'is-invalid' : '' ?>" type="text" name="icon" />
                            <div class="invalid-feedback">
                                <?php echo form_error('icon') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="is_active">Keaktifan</label>
                            <input class="form-control <?php echo form_error('is_active') ? 'is-invalid' : '' ?>" type="text" name="is_active" />
                            <div class="invalid-feedback">
                                <?php echo form_error('is_active') ?>
                            </div>
                        </div>

                        <input class="btn btn-dark" type="submit" name="btn" value="Simpan" />
                    </form>

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