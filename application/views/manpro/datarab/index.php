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
                    <a href="<?php echo site_url('rancangan/proyek') ?>"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
                <div class="card-body">
                    <h3><b>Rencana Anggaran Biaya ( RAB )</b></h3>
                    <h6>
                        <p><b>Proyek : <?= $proyek->nama_proyek ?></b></p>
                    </h6>
                    <h6>
                        <p><b>Lokasi : Desa Slempit, Kec. Kedamean, Kab. Gresik</b></p>
                        </h5>
                        <h6>
                            <p><b>Type : <?= $proyek->type ?></b></p>
                        </h6>
                        <hr>
                        <!-- <br> -->

                        <hr>
                        <h5><b>I Pekerjaan Pengukuran dan Pondasi</b></h5>
                        <div class="table-responsive">
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Nama Pekerjaan</th>
                                        <th>Volume</th>
                                        <th>Satuan</th>
                                        <th>Harga Satuan</th>
                                        <th>Jumlah Harga</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($rab1 as $dp) : ?>

                                        <tr>
                                            <th scope="row"><?= $i; ?></th>
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
                                        <?php $i++; ?>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <th>Sub.Total I :</th>
                                        <th><span class="totalForks">Rp<?= number_format($totalrab1['total']); ?></span></th>
                                    </tr>
                                </tfoot>
                            </table>
                            <hr>

                            <hr>
                            <h5><b>II Pekerjaan Pasangan Bata</b></h5>
                            <table class="table table-hover" id="" width="100%" cellspacing="0">
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab2 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total II :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab2['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>III Pekerjaan Atap</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab3 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total III :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab3['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>IV Pekerjaan Rangka Plafon Hollow</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab4 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total IV :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab4['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>V Pekerjaan Lantai 1 : 5</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab5 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total V :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab5['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>VI Pekerjaan Pintu dan Jendela ( kusen )</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab6 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total VI :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab6['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>VII Pekerjaan Pengecatan</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab7 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total VII :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab7['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>VIII Pekerjaan Penutup Atap</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab8 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total VIII :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab8['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>IX Pekerjaan Beton 1 : 2 : 3</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab9 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total IX :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab9['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>X Pekerjaan Plesteran 1 : 2 : 10</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab10 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total X :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab10['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>XI Pekerjaan Sanitasi</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab11 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total XI :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab11['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>XII Pekerjaan Alat Penggantung</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab12 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total XII :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab12['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>XIII Pekerjaan Carport</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab13 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total XIII :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab13['total']); ?></span></th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <hr>

                                <hr>
                                <h5><b>XIV Ekektrikal</b></h5>
                                <table class="table table-hover" id="" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Pekerjaan</th>
                                            <th>Volume</th>
                                            <th>Satuan</th>
                                            <th>Harga Satuan</th>
                                            <th>Jumlah Harga</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($rab14 as $dp) : ?>

                                            <tr>
                                                <th scope="row"><?= $i; ?></th>
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
                                            <?php $i++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                            <th>Sub.Total XIV :</th>
                                            <th><span class="totalForks">Rp<?= number_format($totalrab14['total']); ?></span></th>
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
                        </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>