<link rel="shortcut icon" href="<?= base_url() ?>front-end/assets/img/logo-perum.png">
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

	<div class="row">
		<div class="col-lg">
			<?= form_error('pengguna', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

			<?= $this->session->flashdata('message'); ?>

			<?php if ($this->session->flashdata('success')) : ?>
				<div class="alert alert-success" role="alert">
					<?php echo $this->session->flashdata('success'); ?>
				</div>
			<?php endif; ?>

			<div class="card mb-3">
				<div class="card-header">
					<a href="<?php echo site_url('dataproyek') ?>"><i class="fas fa-arrow-left"></i> Kembali</a>
				</div>
				<div class="card-body">

					<form action="<?php base_url('dataproyek/add') ?>" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="kd_proyek">Kode Proyek</label>
							<input class="form-control <?php echo form_error('kd_proyek') ? 'is-invalid' : '' ?>" type="text" name="kd_proyek" placeholder="Kode Proyek" />
							<div class="invalid-feedback">
								<?php echo form_error('kd_proyek') ?>
							</div>
						</div>

						<div class="form-group">
							<label for="nama_proyek">Nama Proyek</label>
							<input class="form-control <?php echo form_error('nama_proyek') ? 'is-invalid' : '' ?>" type="text" name="nama_proyek" placeholder="Nama Proyek" />
							<div class="invalid-feedback">
								<?php echo form_error('nama_proyek') ?>
							</div>
						</div>

						<div class="form-group">
							<label for="type">Type</label>
							<input class="form-control <?php echo form_error('type') ? 'is-invalid' : '' ?>" type="text" name="type" placeholder="Type" />
							<div class="invalid-feedback">
								<?php echo form_error('type') ?>
							</div>
						</div>

						<div class="form-group">
							<label for="pemilik_proyek">Pemilik Proyek</label>
							<input class="form-control <?php echo form_error('pemilik_proyek') ? 'is-invalid' : '' ?>" type="text" name="pemilik_proyek" placeholder="Pemilik Proyek" />
							<div class="invalid-feedback">
								<?php echo form_error('pemilik_proyek') ?>
							</div>
						</div>

						<div class="form-group">
							<label for="keterangan_lain">Keterangan Lain</label>
							<input class="form-control <?php echo form_error('keterangan_lain') ? 'is-invalid' : '' ?>" type="text" name="keterangan_lain" placeholder="Keterangan Lain" />
							<div class="invalid-feedback">
								<?php echo form_error('keterangan_lain') ?>
							</div>
						</div>

						<input class="btn btn-primary btn-sml" type="submit" name="btn" value="Simpan" />
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

<!-- Modal -->
<!-- <div class="modal fade" id="newMenuModal" tabindex="-1" aria-labelledby="newMenuModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="newMenuModalLabel">Add New Menu</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('menu'); ?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control" id="menu" name="menu" placeholder="Menu name">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div> -->