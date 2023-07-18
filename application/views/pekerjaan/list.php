<link rel="shortcut icon" href="<?= base_url() ?>assets/img/logo.png">
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

	<div class="row">
		<div class="col-lg">
			<?= form_error('pekerjaan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

			<?= $this->session->flashdata('message'); ?>

			<!-- DataTables -->
			<div class="card mb-3">
				<div class="card-header">
					<a href="<?php echo site_url('pekerjaan/add') ?>"><i class="fas fa-plus"></i> Tambah Baru </a>
				</div>
				<div class="card-body">

					<div class="table-responsive">
						<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>ID RAB</th>
									<th>Nama Pekerjaan</th>
									<th>Satuan</th>
									<th>Harga Satuan</th>
									<th>Aksi</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($pekerjaan as $pk) : ?>
									<tr>
										<td width="150">
											<?= $pk['id_rab']; ?>
										</td>
										<td>
											<?= $pk['nama_pekerjaan']; ?>
										</td>
										<td>
											<?= $pk['satuan']; ?>
										</td>
										<td>
											Rp<?= number_format($pk['harga_satuan']); ?>
										</td>

										<td width="250">
											<a href="<?php echo site_url('pekerjaan/edit/' . $pk['id']) ?>" class="btn btn-small text-primary"><i class="fas fa-edit"></i> Edit </a>
											<a onclick="deleteConfirm('<?php echo site_url('pekerjaan/delete/' . $pk['id']) ?>')" href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus </a>
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
<!-- End of Main Content -->