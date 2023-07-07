<link rel="shortcut icon" href="<?= base_url() ?>assets/img/logo.png">
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

	<div class="row">
		<div class="col-lg">
			<?= form_error('bahan', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

			<?= $this->session->flashdata('message'); ?>

			<!-- DataTables -->
			<div class="card mb-3">
					<div class="card-header">
						<a href="<?php echo site_url('upah/add') ?>"><i class="fas fa-plus"></i> Tambah Baru</a>
					</div>
					<div class="card-body">

						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>Kode Upah</th>
										<th>Uraian Upah</th>
										<th>Satuan</th>
										<th>Harga Dasar</th>
										<th>Merk</th>
										<th>Spesifikasi</th>
										<th>Aksi</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($upah as $upah) : ?>
										<tr>
											<td width="150">
												<?= $upah['kd_upah']; ?>
											</td>
											<td>
												<?= $upah['uraian_upah']; ?>
											</td>
											<td>
												<?= $upah['satuan']; ?>
											</td>
											<td>
												Rp<?= number_format($upah['harga_dasar']); ?>
											</td>
											<td>
												<?= $upah['merk']; ?>
											</td>
											<td>
												<?= $upah['spesifikasi'] ?>
											</td>

											<td width="250">
												<a href="<?php echo site_url('upah/edit/' . $upah['kd_upah']) ?>" class="btn btn-small text-primary"><i class="fas fa-edit"></i> Edit</a>
												<a onclick="deleteConfirm('<?php echo site_url('upah/delete/' . $upah['kd_upah']) ?>')" href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus</a>
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