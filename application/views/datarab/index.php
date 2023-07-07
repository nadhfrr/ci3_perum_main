<link rel="shortcut icon" href="<?= base_url() ?>assets/img/logo.png">
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">
            <?= form_error('proyek', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

            <?= $this->session->flashdata('message'); ?>

            <!-- DataTables -->
            <div class="card mb-3">
                <div class="card-header">
                    <a href="<?php echo site_url('datarab/pengeluaran') ?>"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
                <div class="card-body">
                    <h5><b>I</b> Pekerjaan Pengukuran dan Pondasi</h5>
                    <div class="table-responsive">
                        <table class="table table-hover" id="" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>ID Pekerjaan</th>
                                    <th>Nama Pekerjaan</th>
                                    <th>Volume</th>
                                    <th>Satuan</th>
                                    <th>Harga Satuan</th>
                                    <th>Jumlah Harga</th>

                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($rab1 as $dp) : ?>

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


                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>

                                    <th>Sub.Total I :</th>
                                    <th><span class="totalForks">Rp<?= number_format($totalrab1['total']) ?></span></th>
                                </tr>
                            </tfoot>
                        </table>
                        <h5><b>II</b> Pekerjaan Pasangan Bata</h5>
                        <table class="table table-hover" id="" width="100%" cellspacing="0">
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab2 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total II :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab2['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>III</b> Pekerjaan Atap</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab3 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total III :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab3['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>IV</b> Pekerjaan Rangka Plafon Hollow</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab4 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total IV :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab4['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>V</b> Pekerjaan Lantai 1 : 5</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab5 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total V :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab5['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>VI</b> Pekerjaan Pintu dan Jendela ( kusen )</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab6 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total VI :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab6['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>VII</b> Pekerjaan Pengecatan</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab7 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total VII :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab7['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>VIII</b> Pekerjaan Penutup Atap</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab8 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total VIII :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab8['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>IX</b> Pekerjaan Beton 1 : 2 : 3</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab9 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total IX :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab9['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>X</b> Pekerjaan Plesteran 1 : 2 : 10</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab10 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total X :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab10['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>XI</b> Pekerjaan Sanitasi</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab11 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total XI :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab11['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>XII</b> Pekerjaan Alat Penggantung</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab12 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total XII :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab12['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>XIII</b> Pekerjaan Carport</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab13 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total XIII :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab13['total']) ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <h5><b>XIV</b> Ekektrikal</h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID Pekerjaan</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rab14 as $dp) : ?>

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


                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total XIV :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab14['total']) ?></span></th>
                                    </tr>
                                </tfoot>

                            </table>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>

                                </thead>
                                <tbody>


                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>


                                        <th>Sub.Total ALL :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalall['total']); ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>

                            <a href="<?= base_url('datarab/validasi/1/' . $proyek->kd_proyek); ?>" class="btn btn-primary">Konfirmasi</a>
                            <a href="" class="btn btn-danger" data-toggle="modal" data-target="#tolakValidasiModal">Perbaikan</a>

                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>

<!-- Modal -->
<div class="modal fade" id="tolakValidasiModal" tabindex="-1" aria-labelledby="tolakValidasiModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="tolakValidasiModalLabel">Detail Pengeluaran RAB</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?php base_url('datarab/tolak_validasi') ?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="ket_perbaikan">Catatan Perbaikan:</label>
                        <textarea class="form-control <?php echo form_error('ket_perbaikan') ? 'is-invalid' : '' ?>" name="ket_perbaikan" rows="2" id="ket_perbaikan"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="<?= base_url('datarab/validasi/2/' . $proyek->kd_proyek); ?>" class="btn btn-secondary">Simpan</a>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                </div>
            </form>
        </div>
    </div>
</div>