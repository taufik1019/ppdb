<?php
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Panel Dashboard</title>
    <meta name="keywords" content="Panel Dashboard" />
    <meta name="description" content="Panel Dashboard">
	<meta name="author" content="Panel Dashboard">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body class="dashboard-page sb-l-o sb-r-c">


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
				    <li class="active">
				        <a href="index">
				            <span class="glyphicons glyphicons-home"></span>
				            <span class="sidebar-title">Dashboard</span>
				        </a>
				    </li>

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
				    <li>
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
			</div>
		</aside>


</body>

</html>

