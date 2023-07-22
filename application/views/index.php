<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>De' Diamond Park</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="<?= base_url('front-end/assets/img/logo-perum.png') ?>" rel="icon">
    <link href="<?= base_url('front-end/assets/img/apple-touch-icon.png') ?>" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="<?= base_url('front-end/https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i') ?>" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<?= base_url('front-end/assets/vendor/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('front-end/assets/vendor/icofont/icofont.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('front-end/assets/vendor/boxicons/css/boxicons.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('front-end/assets/vendor/animate.css/animate.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('front-end/assets/vendor/owl.carousel/assets/owl.carousel.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('front-end/assets/vendor/venobox/venobox.css') ?>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<?= base_url('front-end/assets/css/style.css') ?>" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Green - v2.3.1
  * Template URL: https://bootstrapmade.com/green-free-one-page-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">

            <h1 class="logo mr-auto"><a href=""><img src="<?= base_url('front-end/assets/img/logo-perum.png') ?>">De' Diamond Park</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav class="nav-menu d-none d-lg-block">
                <ul>
                    <li class="active"><a href="#hero">Beranda</a></li>
                    <li><a href="#about">Tentang Kami</a></li>
                    <li><a href="#portfolio">Galeri</a></li>
                    <li><a href="#contact">Kontak</a></li>
                    <li><a href="<?= base_url('auth'); ?>">Masuk</a></li>
                </ul>
            </nav>
            <!-- .nav-menu -->

            <!-- <a href="#about" class="get-started-btn scrollto">Get Started</a> -->

        </div>
    </header>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero">
        <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

            <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

            <div class="carousel-inner" role="listbox">

                <!-- Slide 1 -->
                <div class="carousel-item active"><img src="<?= base_url() ?>front-end/assets/img/slide/3.jpg" style="width:1550px;height:800px">
                    <div class="carousel-container">
                        <div class="container">
                            <h1 class="animate__animated animate__fadeInDown" >DE' DIAMOND PARK</h1>
                            <p class="animate__animated animate__fadeInUp" style="color:black;font-weight:bold">Perumahan Bersubsidi dan Komersil</p>
                            <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Lihat Selengkapnya</a>
                        </div>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item"><img src="<?= base_url() ?>front-end/assets/img/slide/1.jpg" style="width:1550px;height:800px">
                    <div class="carousel-container">
                        <div class="container">
                            <h1 class="animate__animated animate__fadeInDown">DE' DIAMOND PARK</h1>
                            <p class="animate__animated animate__fadeInUp" style="color:black;font-weight:bold">Hunian Asri Kawasan Berseri</p>
                            <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Lihat Selengkapnya</a>
                        </div>
                    </div>
                </div>

                <!-- Slide 3 -->
                <div class="carousel-item"><img src="<?= base_url() ?>front-end/assets/img/slide/4.jpg" style="width:1550px;height:800px">
                    <div class="carousel-container">
                        <div class="container">
                            <h1 class="animate__animated animate__fadeInDown">DE' DIAMOND PARK</h1>
                            <p class="animate__animated animate__fadeInUp" style="color:black;font-weight:bold">Harga Mulai RP260 Juta</p>
                            <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Lihat Selengkapnya</a>
                        </div>
                    </div>
                </div>

            </div>

            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </section>
    <!-- End Hero -->

    <main id="main">

        <!-- ======= About Us Section ======= -->
        <section id="about" class="about">
            <div class="container">

                <div class="section-title">
                    <h2>Tentang Kami</h2>
                </div>

                <div class="row content">
                    <div class="col-lg-8" data-aos="fade-right">
                        <h2>PERUMAHAN SUBSIDI DENGAN KONSEP HUNIAN HARMONIS & TERPADU DI GRESIK</h2>
                        <p>
                            Selamat datang di Perumahan De' Diamond Park, hunian yang nyaman dan minimalis. Dengan 4 tipe rumah yang siap dihuni,
                            kami menawarkan pilihan yang sesuai dengan kebutuhan dan gaya hidup Anda. Yaitu, Tipe Sapphire(Tipe 30/60), Tipe Ruby(Tipe 36/72),
                            Tipe Emerald(Tipe 45/84), dan Tipe Amethyst(Tipe 60/66). Dengan fasilitas dan akses terdekat yang menguntungkan. Perumahan
                            De' Diamond Park adalah tempat yang ideal untuk Anda dan keluarga menikmati hidup yang nyaman dan berkualitas.
                        </p>
                    </div>
                    <div class="col-lg-4 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-left">
                        <img src="<?php echo base_url() ?>front-end/assets/img/tentang-kami.jpg" style="height:522px">
                    </div>
                </div>

            </div>
        </section>
        <!-- End About Us Section -->

        <!-- ======= Video Section ======= -->
        <section id="video" class="video">
            <div class="container">

                <div class="row">
                    <div class="col-lg-8 text-center text-lg-center">
                        <iframe width="700" height="400" class="embed-responsive-item" src="https://www.youtube.com/embed/r9hf2T-AKhw" allowfullscreen></iframe>
                    </div>
                    <div class="col-lg-4">
                        <h3>VIDEO DI BUAT</h3>
                        <h3>OLEH PT. KIKA</h3>
                    </div>
                </div>

            </div>
        </section>
        <!-- End Cta Section -->

        <!-- ======= Cta Section ======= -->
        <section id="cta" class="cta">
            <div class="container">

                <div class="row">
                    <div class="col-lg-12 text-center text-lg-center">
                        <h2>Jangan lewatkan kesempatan ini</h2>
                        <h3>Hubungi kami sekarang untuk informasi lebih lanjut</h3>
                        <a class="cta-btn align-middle" href="#contact">Kontak Kami</a>
                    </div>
                </div>

            </div>
        </section>
        <!-- End Cta Section -->

        <!-- ======= Portfolio Section ======= -->
        <section id="portfolio" class="portfolio">
            <div class="container">
                <div class="container">
                    <div class="section-title">
                        <h2>Galeri</h2>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-blog">
                                <a href="blog-details.html">
                                    <img src="<?= base_url('front-end/'); ?>assets/img/blog/45 dp render 4.jpg" alt="Image">
                                </a>

                                <div class="blog-content">
                                    <ul>
                                        <li>
                                        <i class="icofont-ui-user"></i>
                                            <a href="#">Admin</a>
                                        </li>
                                        <li>
                                        <i class="icofont-ui-calendar"></i>
                                            23/12/2021
                                        </li>
                                    </ul>

                                    <a href="blog-details.html">
                                        <h3>Rumah Contoh Tipe Emerald (Tipe 45/84)</h3>
                                    </a>

                                    <p>Jika Anda mencari hunian yang lebih luas, tipe rumah ini adalah pilihan yang tepat. 
                                        Dengan luas tanah 84 meter persegi dan luas bangunan 84 meter persegi, 
                                        Anda akan memiliki ruang yang lebih lega untuk keluarga Anda berkumpul dan beraktivitas.</p>

                                    <a href="blog-details.html" class="read-more">
                                        Lihat Selengkapnya
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="single-blog">
                                <a href="blog-details.html">
                                    <img src="<?= base_url('front-end/'); ?>assets/img/blog/gerbang.jpg" alt="Image">
                                </a>

                                <div class="blog-content">
                                    <ul>
                                        <li>
                                        <i class="icofont-ui-user"></i>
                                            <a href="#">Admin</a>
                                        </li>

                                        <li>
                                        <i class="icofont-ui-calendar"></i>
                                            20/12/2021
                                        </li>
                                    </ul>

                                    <a href="blog-details.html">
                                        <h3>Pintu Masuk Menuju Perumahan de' Diamond Park</h3>
                                    </a>

                                    <p>Lokasi strategis, terdekat dengan lembaga pendidikan dan puskesmas.</p>

                                    <a href="blog-details.html" class="read-more">
                                        Lihat Selengkapnya
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
                            <div class="single-blog">
                                <a href="blog-details.html">
                                    <img src="<?= base_url('front-end/'); ?>assets/img/blog/progres pembangunan.jpg" alt="Image">
                                </a>

                                <div class="blog-content">
                                    <ul>
                                        <li>
                                        <i class="icofont-ui-user"></i>
                                            <a href="#">Admin</a>
                                        </li>

                                        <li>
                                        <i class="icofont-ui-calendar"></i>
                                            03/09/2018
                                        </li>
                                    </ul>

                                    <a href="blog-details.html">
                                        <h3>Rumah Contoh Tipe Ruby (Tipe 36/72)</h3>
                                    </a>

                                    <p>Tipe rumah ini memberikan ruang yang lebih luas dengan luas tanah 72 meter persegi dan luas bangunan 36 meter persegi. 
                                        Rumah ini cocok bagi Anda yang menginginkan hunian yang lebih besar dengan tata letak yang terencana dengan baik.</p>

                                    <a href="blog-details.html" class="read-more">
                                        Lihat Selengkapnya
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Portfolio Section -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container">

                <div class="section-title">
                    <h2>Kontak</h2>
                </div>

            </div>
            <!-- Start Footer Area -->
            <footer class="footer-top-area pt-100 pb-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="single-widget">
                                <img src="<?= base_url('front-end/assets/img/logo-perum.png'); ?>">
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="single-widget">
                                <h3>Kontak Kami</h3>

                                <div class="address">
                                    <li>
                                        <i class="icofont-google-map"></i>
                                        Balongjerambah, Kedamean,
                                        Kec. Kedamean, Kabupaten Gresik,
                                        Jawa Timur 61175
                                    </li>

                                    <li>
                                        <i class="icofont-envelope"></i>
                                        <a href="mailto:dediamondpark@kilauintankarunia.com">
                                            dediamondpark@ kilauintankarunia.com
                                        </a>
                                    </li>

                                    <li>
                                        <i class="icofont-phone"></i>
                                        <a href="tel:+6283890202336">
                                            +6283890202336
                                        </a>
                                    </li>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="single-widget">
                                <h2>
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.262469571367!2d112.51144501474558!3d-7.324388094714075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e78079b68ad50f5%3A0x594a447648a44277!2sDE&#39;%20DIAMOND%20PARK%20KEDAMEAN!5e0!3m2!1sen!2sid!4v1640092449221!5m2!1sen!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </h2>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- End Footer Area -->
            <!-- End Footer Bottom Area -->
        </section>
        <!-- End Contact Section -->

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="container">
                <div class="copyright">
                    <strong><span>Copyright &copy; Perumahan De' Diamond Park <?= date('Y'); ?></span></strong>.
                </div>
            </div>
        </footer>
        <!-- End Footer -->


    </main><!-- End #main -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

    <!-- Vendor JS Files -->
    <script src="<?= base_url('front-end/assets/vendor/jquery/jquery.min.js') ?>"></script>
    <script src="<?= base_url('front-end/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
    <script src="<?= base_url('front-end/assets/vendor/jquery.easing/jquery.easing.min.js') ?>"></script>
    <script src="<?= base_url('front-end/assets/vendor/php-email-form/validate.js') ?>"></script>
    <script src="<?= base_url('front-end/assets/vendor/owl.carousel/owl.carousel.min.js') ?>"></script>
    <script src="<?= base_url('front-end/assets/vendor/isotope-layout/isotope.pkgd.min.js') ?>"></script>
    <script src="<?= base_url('front-end/assets/vendor/venobox/venobox.min.js') ?>"></script>

    <!-- Template Main JS File -->
    <script src="<?= base_url('front-end/assets/js/main.js') ?>"></script>

</body>

</html>