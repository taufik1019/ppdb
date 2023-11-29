<?php
session_start();
if(isset($_SESSION['fi_id']) && isset($_SESSION['fi_us']) && isset($_SESSION['fi_ps']))
    {
        include ("../con_db/connection.php");
        error_reporting("null");
        $fi_id=$_SESSION['fi_id'];
        $status=$_SESSION['fi_st'];
        if($status=="Admin")
            {
                ?>
                <!DOCTYPE html>
                <html>

                <head>
                    <!-- Meta, title, CSS, favicons, etc. -->
                   <meta charset="utf-8">
                    <title>Input Informasi</title>
                    <meta name="keywords" content="Input Informasi" />
                    <meta name="description" content="Input Informasi">
                    <meta name="author" content="Input Informasi">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">

                    <!-- Required Plugin CSS -->
                    <link rel="stylesheet" type="text/css" href="assets/js/utility/highlight/styles/googlecode.css">

                    <!-- Required Plugin CSS -->
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/datepicker/css/bootstrap-datetimepicker.css">
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/daterange/daterangepicker.css">
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/colorpicker/css/bootstrap-colorpicker.min.css">
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/tagmanager/tagmanager.css">

                    <!-- Theme CSS -->
                    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/css/theme.css">

                    <link rel="stylesheet" type="text/css" href="assets/admin-tools/admin-forms/css/admin-forms.css">
                    <!-- Favicon -->
                    <link rel="shortcut icon" href="assets/img/favicon.ico">

                    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
                    <!--[if lt IE 9]>
                    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
                    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
                    <![endif]-->
                </head>

                <body class="form-input-page">

                    <!-- Start: Main -->
                    <div id="main">

                        <!-- Start: Header -->
                        <header class="navbar navbar-fixed-top bg-light">
                            <div class="navbar-branding">
                                <a class="navbar-brand" href="index"> <b>Panel</b>Dashboard
                                </a>
                                <span id="toggle_sidemenu_l" class="glyphicons glyphicons-show_lines"></span>
                                <ul class="nav navbar-nav pull-right hidden">
                                    <li>
                                        <a href="#" class="sidebar-menu-toggle">
                                            <span class="octicon octicon-ruby fs20 mr10 pull-right "></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            
                            <?php
                                include("top_acc.php");
                            ?>
                        </header>
                        <!-- End: Header -->

                        <!-- Start: Sidebar -->
                        <aside id="sidebar_left" class="nano nano-primary">
                            <div class="nano-content">
                                <!-- sidebar menu -->
                                <ul class="nav sidebar-menu">
                                    <li>
                                        <a href="index">
                                            <span class="glyphicons glyphicons-home"></span>
                                            <span class="sidebar-title">Dashboard</span>
                                        </a>
                                    </li>
                                    
                                    <!-- <li class="sidebar-label pt15">Data Biaya Sekolah</li>
                                    <li>
                                        <a href="ip_biaya">
                                            <span class="glyphicons glyphicons-book"></span> 
                                            <span class="sidebar-title">Input Biaya</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="up_biaya">
                                            <span class="glyphicons glyphicons-delete"></span> 
                                            <span class="sidebar-title">Update Biaya</span>
                                        </a>
                                    </li> -->

                                    <li class="sidebar-label pt15">Data Pendaftar</li>
                                    <li>
                                        <a href="vf_siswa">
                                            <span class="glyphicons glyphicons-edit"></span> 
                                            <span class="sidebar-title">Verifikasi Pendaftar</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-label pt15">Data Pembayaran</li>
                                    <li>
                                        <a href="lkp_form_byr">
                                            <span class="glyphicons glyphicons-edit"></span> 
                                            <span class="sidebar-title">Verifikasi Pembayaran</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-label pt15">Data Pesan</li>
                                    <li>
                                        <a href="pro_mes">
                                            <span class="glyphicons glyphicons-envelope"></span> 
                                            <span class="sidebar-title">Proses Pesan</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-label pt15">Proses Informasi</li>
                                    <li class="active">
                                        <a href="in_info">
                                            <span class="glyphicons glyphicons-notes"></span> 
                                            <span class="sidebar-title">Input Informasi</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="up_info">
                                            <span class="glyphicons glyphicons-list"></span> 
                                            <span class="sidebar-title">List Informasi</span>
                                        </a>
                                    </li>

                                    <hr />
                                    <li>
                                        <a href="lg_user">
                                            <span class="glyphicons glyphicons-bell"></span>
                                            <span class="sidebar-title">Log User</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="logout">
                                            <span class="glyphicons glyphicons-pen"></span>
                                            <span class="sidebar-title">Logout</span>
                                        </a>
                                    </li>
                                </ul>
                                <div class="sidebar-toggle-mini">
                                    <a href="#">
                                        <span class="fa fa-sign-out"></span>
                                    </a>
                                </div>
                            </div>
                        </aside>
                        <!-- End: Sidebar -->

                        <!-- Start: Content -->
                        <section id="content_wrapper">
                            <!-- Start: Topbar -->
                            <header id="topbar">
                                <div class="topbar-left">
                                    <ol class="breadcrumb">
                                        <li class="crumb-active">
                                            <a href="lkp_form">Input Informasi</a>
                                        </li>
                                    </ol>
                                </div>
                                
                            </header>
                            <!-- End: Topbar -->

                            <div id="content">
                                <div class="row">
                                    <?php
                                    if(isset($_POST['tb_biaya']))
                                    {
                                        $informasi=str_replace("'", "`", $_POST['informasi']);
                                        if(empty($informasi))
                                        {
                                            ?>
                                            <div class="alert alert-danger alert-dismissable">
                                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            <i class="fa fa-check pr10"></i>
                                            <strong>Eror !</strong> Anda Tidak Dapat Tambah Informasi
                                            <a href="#" class="alert-link">Karena Terdapat Form Yang Kosong</a>.</div>
                                            <meta http-equiv="refresh" content="5;url=in_info">
                                            <?php
                                        }
                                        else
                                        {
                                            $d_c=date("Y-m-d H:i:s");
                                            mysqli_query($conn,"Insert into tb_informasi set id_admin='$fi_id', informasi='$informasi', tgl_input='$d_c'");
                                             ?>
                                            <div class="alert alert-success alert-dismissable">
                                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            <i class="fa fa-check pr10"></i>
                                            <strong>Sukses !</strong> Anda Berhasil Tambah Informasi
                                            <a href="#" class="alert-link"> Silahkan Tambah Informasi Yang Lain</a>.</div>
                                            <meta http-equiv="refresh" content="5;url=in_info">
                                            <?php
                                        }
                                    }
                                    ?>
                                    <form class="form-horizontal" role="form" method="post" action="in_info" enctype="multipart/form-data">
                                        <div class="col-md-12">
                                            
                                            <div class="panel">
                                                <div class="panel-heading">
                                                    <span class="panel-title">Proses Input Informasi</span>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <label for="disabledInput" class="col-lg-2 control-label">Informasi Penting</label>
                                                        <div class="col-lg-10">
                                                            <input type="text" name="informasi" class="form-control" placeholder="Harap Inputkan Informasi Anda"></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            
                                        </div>

                                        
                                        <div class="form-group">
                                            <div class="col-lg-12" style="text-align: right;">
                                             <input type="submit" name="tb_biaya" value="Tambah Informasi" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>
                        <!-- End: Content -->

                        <!-- Start: Right Sidebar -->
                        
                        <!-- End: Right Sidebar -->

?>

