<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title> Login - DeDiamondPark </title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/assets/css/bootstrap.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/assets/css/font-awesome.css" />
    <link rel="shortcut icon" href="<?= base_url() ?>front-end/assets/img/logo-perum.png">
    <!-- text fonts -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/assets/css/ace-fonts.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/assets/css/ace.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/assets/css/ace-rtl.css" />
</head>

<body class="login-layout">
    <div class="main-container">
        <div class="main-content">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="login-container">
                        <div class="center" style="margin-top: 10%;">
                            <img src="<?php echo base_url() ?>assets/img/logo.png" width="175" height="140">
                            <h4 class="white" id="id-company-text"> Perumahan De' Diamond Park </h4>
                        </div>

                        <div class="space-30"></div>

                        <div class="position-relative">
                            <div id="login-box" class="login-box visible widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header black">
                                            Masukkan akun anda
                                        </h4>

                                        <?= $this->session->flashdata('message'); ?>

                                        <div class="space-6"></div>

                                        <form class="user" method="POST" action="<?= base_url('auth'); ?>">
                                            <fieldset>
                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Username" value="<?= set_value('email'); ?>">
                                                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                                                        <i class=" ace-icon fa fa-user"></i>
                                                    </span>
                                                </label>

                                                <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="password" name="password" class="form-control form-control-user" id="password" placeholder="Password" />
                                                        <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                                                        <i class="ace-icon fa fa-lock"></i>
                                                    </span>
                                                </label>

                                                <div class="space"></div>

                                                <div class="clearfix">
                                                    <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                        <!-- <i class="ace-icon fa fa-key"></i> -->
                                                        <span class="bigger-110">Masuk</span>
                                                    </button>
                                                    <div class="text">
                                                        <a class="small" href="<?= base_url('beranda/index'); ?>">Kembali ke Beranda</a>
                                                    </div>
                                                </div>

                                    </div>
                                </div><!-- /.col -->
                            </div><!-- /.row -->
                        </div><!-- /.main-content -->
                    </div><!-- /.main-container -->

                    <!-- basic scripts -->

                    <!--[if !IE]> -->
                    <script type="text/javascript">
                        window.jQuery || document.write("<script src='<?php echo base_url() ?>assets/assets/js/jquery.js'>" + "<" + "/script>");
                    </script>

                    <script type="text/javascript">
                        if ('ontouchstart' in document.documentElement) document.write("<script src='<?php echo base_url() ?>assets/assets/js/jquery.mobile.custom.js'>" + "<" + "/script>");
                    </script>

                    <!-- inline scripts related to this page -->
                    <script type="text/javascript">
                        jQuery(function($) {
                            $(document).on('click', '.toolbar a[data-target]', function(e) {
                                e.preventDefault();
                                var target = $(this).data('target');
                                $('.widget-box.visible').removeClass('visible'); //hide others
                                $(target).addClass('visible'); //show target
                            });
                        });
                    </script>
</body>

</html>