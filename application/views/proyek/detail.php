<link rel="shortcut icon" href="<?= base_url() ?>front-end/assets/img/logo-perum.png">
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

	<div class="row">
		<div class="col-lg">
			<?= form_error('detail', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

			<?= $this->session->flashdata('message'); ?>

			<!-- DataTables -->
			<div class="card mb-3">
					<!-- <div class="card-header">
						<a href="<?php echo site_url('bahan/add') ?>"><i class="fas fa-plus"></i> Tambah Baru </a>
					</div> -->
					<div class="card-body">

						<div class="table-responsive">
							<table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>No</th>
										<th>Jenis Pekerjaan</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($detailrab as $detailrab) : ?>
										<tr>
											<td width="50">
												<?= $detailrab['id_rab']; ?>
											</td>
											<td>
												<?= $detailrab['nama_rab']; ?>
											</td>
											<td>
												<?= $bahan['satuan']; ?>
											</td>
											<td>
												Rp<?= number_format($bahan['harga_dasar']); ?>
											</td>
											<td>
												<?= $bahan['merk']; ?>
											</td>
											<td>
												<?= $bahan['spesifikasi'] ?>
											</td>

											<td width="250">
												<a href="<?php echo site_url('detail/edit/' . $bahan['kd_bahan']) ?>" class="btn btn-small"><i class="fas fa-edit"></i> Edit </a>
												<a onclick="deleteConfirm('<?php echo site_url('bahan/delete/' . $bahan['kd_bahan']) ?>')" href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus </a>
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