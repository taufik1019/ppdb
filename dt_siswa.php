<?php
session_start();
include("con_db/connection.php");
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CEK STATUS PENDAFTARAN ANDA - SMA NEGERI 7 YOGYAKARTA</title>
</head>

<body>
<header class="tz-header tz-header-2">
        <div class="tz-sign-in">
            <div class="container">
                <p>SELAMAT DATANG DI APLIKASI PPDB ONLINE SMA NEGERI 7 YOGYAKARTA</p>
            </div>
        </div>
        <div class="tz-customer-container">
            <div class="container">
                <div class="tz-header-content">
                    <h3 class="tz-logo pull-left">
                        <a href="#"><img alt="Images Logo" src=""></a>
                    </h3>
                    <button type="button" class="tz-button-toggle btn-navbar pull-right" data-target=".nav-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                    <?php
                    include("");
                    ?>
                </div>
            </div><!-- End Content Main Header -->
        </div>
    </header>
    <!-- End class tz-header-2 -->

        <section class="tz-banner tz-banner-style2">
        <!-- Begin class banner style-3 -->
        <div class="tz-banner-style2">
            <div class="tz-slider-banner">
                <div class="tz-items">
                    <div class="tz-slider-images">
                        <img src="" alt="Images">
                    </div>
                    <div class="tz-banner-content">
                        <div class="container">
                            <!-- <small>NUMBER ONE</small> -->
                            <h4>SMA NEGERI 7 YOGYAKARTA</h4>
                            <span class="tz-under-line"></span>
                            <h6>Aplikasi PPDB Online</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End  class banner style-3 -->
    </section>
</body>

</html>