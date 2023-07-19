<link rel="shortcut icon" href="<?= base_url() ?>front-end/assets/img/logo-perum.png">

<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> -->

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
	<h5><b><?= $detailrab->nama_rab ?></b></h5>

	<div class="row">
		<div class="col-lg">
			<?= form_error('detailpekerjaan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

			<?= $this->session->flashdata('message'); ?>

			<?php if ($this->session->flashdata('success')) : ?>
				<div class="alert alert-success" role="alert">
					<?php echo $this->session->flashdata('success'); ?>
				</div>
			<?php endif; ?>

			<div class="card mb-3">
				<div class="card-header">
					<a href="<?php echo site_url('manpro/detailpekerjaan/' . $kd_proyek . '/' . $id_pekerjaan . '') ?>"><i class="fas fa-arrow-left"></i> Kembali</a>
				</div>
				<div class="card-body">

					<form class="user" action="<?php echo site_url('manpro/addPekerjaanByKdProyek/' . $kd_proyek . '/' . $id_pekerjaan . '') ?>" method="post" enctype="multipart/form-data">
						<input type="text" id="nama_pekerjaan" name="nama_pekerjaan" hidden>
						<div class="form-group">
							<label for="id_rab">ID RAB</label>
							<input class="form-control <?php echo form_error('id_rab') ? 'is-invalid' : '' ?>" type="text" id="id_rab" name="id_rab" readonly />
							<div class="invalid-feedback">
								<?php echo form_error('id_rab') ?>
							</div>
						</div>
						<div class="form-group">
							<label for="nama_pekerjaan">Nama Pekerjaan</label>
							<select class="form-control selectpicker" data-live-search="true" type="text" onchange="getIdPekerjaan(this.value)" name="id_peker">
								<option value="">Pilih Pekerjaan</option>
								<?php
								foreach ($pekerjaan as $pk) { ?>
									<option value="<?= $pk->id_pekerjaan; ?>"><?= $pk->nama_pekerjaan; ?></option>
								<?php } ?>
							</select>
							<div class="invalid-feedback">
								<?php echo form_error('nama_pekerjaan') ?>
							</div>
						</div>
						<div class="form-group">
							<label for="satuan">Satuan</label>
							<input class="form-control <?php echo form_error('satuan') ? 'is-invalid' : '' ?>" type="text" id="satuan" name="satuan" readonly />
							<div class="invalid-feedback">
								<?php echo form_error('satuan') ?>
							</div>
						</div>
						<div class="form-group">
							<label for="harga_satuan">Harga Satuan</label>
							<input class="form-control <?php echo form_error('harga_satuan') ? 'is-invalid' : '' ?>" type="text" id="harga_satuan" name="harga_satuan" readonly />
							<div class="invalid-feedback">
								<?php echo form_error('harga_satuan') ?>
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

<script>
	function getIdPekerjaan(idPekerjaan) {

		$.ajax({
			type: "GET",
			url: '<?= base_url() ?>/manpro/getPekerjaan/' + idPekerjaan,
			success: function(getdata) {
				// alert(getdata);
				var obj = JSON.parse(getdata);

				$("#id_rab").val(obj.id_pekerjaan);
				$("#nama_pekerjaan").val(obj.nama_pekerjaan);
				$("#satuan").val(obj.satuan);
				$("#harga_satuan").val(number_format(obj.harga_satuan));

			},
			cache: false,
			dataType: 'html',
		});
	}
</script>