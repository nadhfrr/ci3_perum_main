<link rel="shortcut icon" href="<?= base_url() ?>front-end/assets/img/logo-perum.png">
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

	<div class="row">
		<div class="col-lg">
			<?= form_error('pekerjaan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

			<?= $this->session->flashdata('message'); ?>

			<?php if ($this->session->flashdata('success')) : ?>
				<div class="alert alert-success" role="alert">
					<?php echo $this->session->flashdata('success'); ?>
				</div>
			<?php endif; ?>

			<!-- Card  -->
			<div class="card mb-3">
				<div class="card-header">

					<a href="<?php echo site_url('pekerjaan') ?>"><i class="fas fa-arrow-left"></i>Kembali</a>
				</div>
				<div class="card-body">

					<?php foreach ($pekerjaan as $pk) : ?>
						<form action="<?php base_url("pekerjaan/edit") ?>" method="post" enctype="multipart/form-data">

							<input type="hidden" name="id" value="<?php echo $pk['id'] ?>" />

							<div class="form-group">
								<label for="id_rab">Kode Bahan</label>
								<input class="form-control <?php echo form_error('id_rab') ? 'is-invalid' : '' ?>" type="text" name="id_rab" value="<?php echo $pk['id_rab'] ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('id_rab') ?>
								</div>
							</div>

							<div class="form-group">
								<label for="nama_pekerjaan">Uraian Bahan</label>
								<input class="form-control <?php echo form_error('nama_pekerjaan') ? 'is-invalid' : '' ?>" type="text" name="nama_pekerjaan" value="<?php echo $pk['nama_pekerjaan'] ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('nama_pekerjaan') ?>
								</div>
							</div>

							<div class="form-group">
								<label for="satuan">Satuan</label>
								<input class="form-control <?php echo form_error('satuan') ? 'is-invalid' : '' ?>" type="text" name="satuan" value="<?php echo $pk['satuan'] ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('satuan') ?>
								</div>
							</div>

							<div class="form-group">
								<label for="harga_satuan">Harga Dasar</label>
								<input class="form-control <?php echo form_error('harga_satuan') ? 'is-invalid' : '' ?>" type="text" name="harga_satuan" value="<?php echo $pk['harga_satuan'] ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('harga_satuan') ?>
								</div>
							</div>

							<input class="btn btn-dark" type="submit" name="btn" value="Simpan" />
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