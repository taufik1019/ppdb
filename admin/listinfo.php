<!DOCTYPE html>
                <html>

                <head>
                    <!-- Meta, title, CSS, favicons, etc. -->
                   <meta charset="utf-8">
                    <title>List Informasi Penting</title>
                    <meta name="keywords" content="List Informasi Penting" />
                    <meta name="description" content="List Informasi Penting">
                    <meta name="author" content="List Informasi Penting">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <!-- Required Plugin CSS -->
                    <link rel="stylesheet" type="text/css" href="assets/js/utility/highlight/styles/googlecode.css">
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/datepicker/css/bootstrap-datetimepicker.css">
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/daterange/daterangepicker.css">
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/colorpicker/css/bootstrap-colorpicker.min.css">
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/tagmanager/tagmanager.css">

                    <!-- Theme CSS -->
                    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/css/theme.css">

                    <link rel="stylesheet" type="text/css" href="assets/admin-tools/admin-forms/css/admin-forms.css">
                    <!-- Favicon -->
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/datatables/media/css/dataTables.bootstrap.css">
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
                                    

                                    <li class="sidebar-label pt15">Data Pendaftar</li>
                                    <li>
                                        <a href="#">
                                            <span class="glyphicons glyphicons-edit"></span> 
                                            <span class="sidebar-title">Verifikasi Pendaftar</span>
                                        </a>
                                    </li>

                                    <li class="sidebar-label pt15">Data Pembayaran</li>
                                    <li>
                                        <a href="#">
                                            <span class="glyphicons glyphicons-edit"></span> 
                                            <span class="sidebar-title">Verifikasi Pembayaran</span>
                                        </a>
                                    </li>


                                    <li class="sidebar-label pt15">Proses Informasi</li>
                                    <li>
                                        <a href="#">
                                            <span class="glyphicons glyphicons-notes"></span> 
                                            <span class="sidebar-title">Input Informasi</span>
                                        </a>
                                    </li>
                                    <li class="active">
                                        <a href="#">
                                            <span class="glyphicons glyphicons-list"></span> 
                                            <span class="sidebar-title">List Informasi</span>
                                        </a>
                                    </li>

                                    <hr />
                                    <li>
                                        <a href="#">
                                            <span class="glyphicons glyphicons-bell"></span>
                                            <span class="sidebar-title">Log User</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
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
                                            <a href="#">List Informasi Penting</a>
                                        </li>
                                    </ol>
                                </div>
                                
                            </header>
                            <!-- End: Topbar -->
                            <div id="content">
                                <div class="row">
                                    <div class="panel">
                                        <div class="panel-heading">
                                            <span class="panel-title">Proses Informasi Penting</span>
                                        </div>
                                        <div class="panel-body">
                                                    <div class="panel-body pn">
                                                        <div style="border:1px solid white;width:100%;height:100%;overflow-y:hidden;overflow-x:scroll;">
                                                            <table class="table table-striped table-bordered table-hover" id="datatable2" cellspacing="0" style="width: 100%">
                                                                <thead>
                                                                    <tr>
                                                                        <th style="width: 30%">Admin</th>
                                                                        <th style="width: 50%">Informasi</th>
                                                                        <th style="width: 10%">Tgl Input</th>
                                                                        <th style="width: 10%">Tindakan</th>
                                                                    </tr>
                                                                </thead>
                                                                
                                                                <tbody>
                                                                <tr>
                                                                    <td style="vertical-align: top;"></td>
                                                                    <buttom class="btn btn-denger"><i class="fa fa-edit"></i></buttom>
                                                                </tr>
                                                            </tbody> 
                                                        </table>      
                                                     </div>
                                                </div>
                                </div>
                            </div>
                        </section>
                        <!-- End: Content -->

                        <!-- Start: Right Sidebar -->
                        
                        <!-- End: Right Sidebar -->

                    </div>
                    <!-- End: Main -->
                    
                    <!-- Google Map API -->
                    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>

                    <!-- jQuery -->
                    <script type="text/javascript" src="vendor/jquery/jquery-1.11.1.min.js"></script>
                    <script type="text/javascript" src="vendor/jquery/jquery_ui/jquery-ui.min.js"></script>

                    <!-- Bootstrap -->
                    <script type="text/javascript" src="assets/js/bootstrap/bootstrap.min.js"></script>

                    <!-- Page Plugins via CDN -->
                    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/globalize/0.1.1/globalize.min.js"></script>
                    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.3/moment.js"></script>

                     <!-- Datatables -->
                    <script type="text/javascript" src="vendor/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
                    <script type="text/javascript" src="vendor/plugins/datatables/media/js/dataTables.bootstrap.js"></script>
                    <script type="text/javascript" src="vendor/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>

                    <!-- via local files 
                    <script type="text/javascript" src="vendor/plugins/globalize/src/core.js"></script>
                    <script type="text/javascript" src="vendor/plugins/moment/moment.min.js"></script> -->

                    <!-- Page Plugins -->
                    <script type="text/javascript" src="vendor/plugins/daterange/daterangepicker.js"></script>
                    <script type="text/javascript" src="vendor/plugins/datepicker/js/bootstrap-datetimepicker.js"></script>
                    <script type="text/javascript" src="vendor/plugins/colorpicker/js/bootstrap-colorpicker.min.js"></script>
                    <script type="text/javascript" src="vendor/plugins/jquerymask/jquery.maskedinput.min.js"></script>
                    <script type="text/javascript" src="vendor/plugins/tagmanager/tagmanager.js"></script>

                    <!-- Theme Javascript -->
                    <script type="text/javascript" src="assets/js/utility/utility.js"></script>
                    <script type="text/javascript" src="assets/js/main.js"></script>
                    <script type="text/javascript" src="assets/js/demo.js"></script>
                    <script type="text/javascript">
             