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
                    <title>Verifikasi Data Pendaftar</title>
                    <meta name="keywords" content="Verifikasi Data Pendaftar" />
                    <meta name="description" content="Verifikasi Data Pendaftar">
                    <meta name="author" content="Verifikasi Data Pendaftar">
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
                    <link rel="stylesheet" type="text/css" href="vendor/plugins/datatables/media/css/dataTables.bootstrap.css">
                    <link rel="shortcut icon" href="assets/img/favicon.ico">

                    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
                    <!--[if lt IE 9]>
                    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
                    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
                    <![endif]-->
                </head>
                <body calss="form-input-page">

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
                                    
                                   <!--  <li class="sidebar-label pt15">Data Biaya Sekolah</li>
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
                                    <li class="active">
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
                                            <a href="lkp_form">Verifikasi Data Pendaftar</a>
                                        </li>
                                    </ol>
                                </div>
                                
                            </header>
                            <!-- End: Topbar -->
                            <div id="content">
                            <div class="row">
                                    <div class="panel">
                                        <div class="panel-heading">
                                            <span class="panel-title">Proses Verifikasi Data Pendaftar</span>
                                        </div>
                                        <div class="panel-body">
                                            <?php
                                            if(isset($_GET['r_e']))
                                            {
                                                $r_e=$_GET["r_e"];
                                                $st3=$_GET['st'];
                                                mysqli_query($conn,"Update  tb_siswa set status='Baru' where id_siswa='$r_e'");
                                                mysqli_query($conn,"Delete From tb_konfirmasi_pendaftaran where id_siswa='$r_e'");
                                                  ?>
                                                
                                                <div class="alert alert-success alert-dismissable">
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                <i class="fa fa-check pr10"></i>
                                                <strong>Selamat</strong> Anda Membuka 
                                                <a href="#" class="alert-link"> Verifikasi Kembali</a>.</div>
                                                <meta http-equiv="refresh" content="5;url=vf_siswa?st=<?php echo"$st3";?>">
                                                <?php
                                            }

                                            if(isset($_GET['up']))
                                            {
                                                $up=$_GET['up'];
                                                 $st2=$_GET['st'];
                                               if(isset($_POST['tb_update']))
                                                    {
                                                        $namasiswa=str_replace("'", "`", $_POST['namasiswa']); 
                                                        $nisn=str_replace("'", "`", $_POST['nisn']);
                                                        $tempatlahir=str_replace("'", "`", $_POST['tempatlahir']);
                                                        $tgllahir=date("Y-m-d",strtotime($_POST['tgllahir']));
                                                        

                                                        if(isset($_POST['jk']))
                                                        {
                                                            $jk=$_POST['jk'];
                                                        }
                                                        else
                                                        {
                                                            $jk="-";
                                                        }
                                                        $agama=$_POST['agama'];
                                                        $anakke=$_POST['anakke'];
                                                        $dari=$_POST['dari'];
                                                        $statusdalamkeluarga=$_POST['statusdalamkeluarga'];
                                                        $alamatsiswa=str_replace("'", "`", nl2br($_POST['alamatsiswa']));
                                                        $telepon=str_replace("'", "`",$_POST['telepon']);
                                                        
                                                        $sekolahasal=str_replace("'", "`", $_POST['sekolahasal']);
                                                        $namasekolah="-";
                                                        $alamatsekolah=str_replace("'", "`", nl2br($_POST['alamatsekolah']));
                                                        $thnsttb=str_replace("'", "`", $_POST['thnsttb']);
                                                        $nosttb=str_replace("'", "`", $_POST['nosttb']);
                                                        
                                                        $namaayah=str_replace("'", "`", $_POST['namaayah']);
                                                        $namaibu=str_replace("'", "`", $_POST['namaibu']);
                                                        $alamatorangtua=str_replace("'", "`", nl2br($_POST['alamatorangtua']));
                                                        $teleponortu=str_replace("'", "`",$_POST['teleponortu']);
                                                        $kerjaayah=$_POST['kerjaayah'];
                                                        $kerjaibu=$_POST['kerjaibu'];
                                                        $namawali=str_replace("'", "`", $_POST['namawali']);
                                                        $alamatwali=str_replace("'", "`", nl2br($_POST['alamatwali']));
                                                        $telepowali=str_replace("'", "`",$_POST['telepowali']);
                                                        $kerjawali=$_POST['kerjawali'];
                                                        $mtk=$_POST['nilai_bind'];
                                                        $bind=$_POST['nilai_matematika'];
                                                        $ipa=$_POST['nilai_ipa'];
                                                        $asal_ortu=$_POST['asal_ortu'];
                                                        $asal_lain=$_POST['asal_lain'];
                                                        $domisili_ortu = $_POST['domisili_ortu'];
                                                        $domisili_siswa = $_POST['domisili_siswa'];
                                                        $goldar = $_POST['goldar'];

                                                        $pasfoto=str_replace("'", "`", $_FILES['pasfoto']);
                                                            $pasfotonm=str_replace("'", "`", $_FILES['pasfoto']['name']);
                                                            $pasfototy=str_replace("'", "`", $_FILES['pasfoto']['type']);
                                                            $pasfotosz=str_replace("'", "`", $_FILES['pasfoto']['size']);
                                                        $fotoskhu=str_replace("'", "`", $_FILES['fotoskhu']);
                                                            $fotoskhunm=str_replace("'", "`", $_FILES['fotoskhu']['name']);
                                                            $fotoskhuty=str_replace("'", "`", $_FILES['fotoskhu']['type']);
                                                            $fotoskhusz=str_replace("'", "`", $_FILES['fotoskhu']['size']);                                      
                                                        $jumlahnilai=str_replace("'", "`", $_POST['jumlahnilai']);
                                                        $email=str_replace("'", "`", $_POST['email']);

                                                        $pil_kelas=$_POST['pil_kelas'];

                                                        if(empty($namasiswa) || empty($tempatlahir) || empty($tgllahir) || $jk=="-" || $agama=="-" || empty($anakke)|| empty($dari) || $statusdalamkeluarga=="-" || empty($alamatsiswa) || empty($sekolahasal) || empty($namasekolah) || empty($alamatsekolah) || empty($namaayah) || empty($namaibu) || empty($alamatorangtua) || empty($teleponortu) || $kerjaayah=="-" || $kerjaibu=="-" || $pil_kelas=="-")
                                                            {
                                                                ?>
                                                                <div class="alert alert-danger alert-dismissable">
                                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                                <i class="fa fa-remove pr10"></i>
                                                                <strong>Error</strong> Data Siswa Anda Pilih Gagal Diupdate
                                                                <a href="#" class="alert-link"> Wajib Isi Pada Form Yang Ada Simbol *</a> Silahkan Coba Kembali</div>
                                                                <?php
                                                                include("form_lkp_sis.php");
                                                            }
                                                        else
                                                            {
                                                                $tp_dt_ft=mysqli_fetch_row(mysqli_query($conn,"Select foto, foto_skhu from tb_siswa where id_siswa='$fi_id'"));
                                                                $ck=0;
                                                                if($pasfototy=="image/jpeg" || $pasfototy=="image/jpg" || $pasfototy=="image/png")
                                                                {
                                                                    $ck=1;
                                                                    $fn_pasfoto=$pasfotonm;
                                                                }
                                                                else
                                                                {
                                                                    $ck=2;
                                                                    $fn_pasfoto=$tp_dt_ft[0];
                                                                }


                                                                $cb=0;
                                                                if($fotoskhuty=="image/jpeg" || $fotoskhuty=="image/jpg" || $fotoskhuty=="image/png")
                                                                {
                                                                    $cb=1;
                                                                    $fn_skhu=$fotoskhunm;
                                                                }
                                                                else
                                                                {
                                                                    $cb=2;
                                                                     $fn_skhu=$tp_dt_ft[1];
                                                                }

                                                                // if($p_s=="ok")
                                                                $date_update=date("d-m-Y H:i:s");
                                                                $query = "update tb_siswa set nama_siswa='$namasiswa', nisn='$nisn', tempat_lahir='$tempatlahir', tgl_lahir='$tgllahir', jenis_kelamin='$jk', agama='$agama', anak_ke='$anakke', dari='$dari', status_dalam_keluarga='$statusdalamkeluarga', alamat_siswa='$alamatsiswa', telepon='$telepon', sekolah_asal='$sekolahasal', nama_sekolah='$namasekolah', alamat='$alamatsekolah', sttb_tahun='$thnsttb', sttb_nomor='$nosttb', bind='$bind', mtk='$mtk', ipa='$ipa', nama_ayah='$namaayah', nama_ibu='$namaibu', asal_ortu='$asal_ortu', asal_lain='$asal_lain', alamat_ortu='$alamatorangtua', telepon_ortu='$teleponortu', kerja_ayah='$kerjaayah', kerja_ibu='$kerjaibu', nama_wali='$namawali', alamat_wali='$alamatwali', telepon_wali='$telepowali', pekerjaan_wali='$kerjawali', foto='$fn_pasfoto', foto_skhu='$fn_skhu', jumlah_nilai='$jumlahnilai', email_aktif='$email', kelas='$pil_kelas', tgl_update='$date_update', asal_ortu='$asal_ortu', asal_lain='$asal_lain', domisili_siswa='$domisili_siswa', domisili_ortu='$domisili_ortu', golongan_darah='$goldar' where id_siswa='$up'";
                                                                mysqli_query($conn,$query);
                                                                if($ck==1)
                                                                {
                                                                     move_uploaded_file($pasfoto['tmp_name'], "../siswa/foto_pp/".$fn_pasfoto);
                                                                }
                                                                
                                                                if($cb==1)
                                                                {
                                                                     move_uploaded_file($fotoskhu['tmp_name'], "../siswa/foto_skhu/".$fn_skhu);
                                                                }
                                                               
                                                                 ?>
                                                                <div class="alert alert-success alert-dismissable">
                                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                                <i class="fa fa-check pr10"></i>
                                                                <strong>Sukses!</strong> Selamat Data Siswa Yang Anda Pilih Berhasil Diupdate
                                                                <a href="#" class="alert-link">Silahkan Update Data Siswa Lain.</a>.</div>
                                                                <meta http-equiv="refresh" content="5;url=vf_siswa?st=<?php echo"$st2";?>">
                                                                <?php
                                                                include("form_lkp_sis.php");
                                                                           
                                                                    
                                                            }

                                                    }
                                                else
                                                    {
                                                         include("form_lkp_sis.php");
                                                    }
                                            }
                                            else
                                            {
                                                if(isset($_GET['de']))
                                                {
                                                    $st=$_GET['st'];
                                                    
                                                    $de=$_GET['de'];
                                                    mysqli_query($conn,"Delete From tb_siswa where id_siswa='$de'");
                                                        mysqli_query($conn,"Delete From tb_konfirmasi_pendaftaran where id_siswa='$de'");
                                                    $tpl_pb=mysqli_fetch_row(mysqli_query($conn,"Select id_pembayaran from tb_pembayaran where id_siswa='$de'"));
                                                    mysqli_query($conn,"Delete From tb_konfirmasi_pembayaran where id_pembayaran='$tpl_pb[0]'");    
                                                    mysqli_query($conn,"Delete From tb_pembayaran where id_siswa='$de'");
                                                      ?>
                                                    <div class="alert alert-success alert-dismissable">
                                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                    <i class="fa fa-check pr10"></i>
                                                    <strong>Selamat</strong> Anda Berhasil Hapus Data Pendaftar
                                                    <a href="#" class="alert-link"> Silahkan Hapus yang Lain</a>.</div>
                                                    <meta http-equiv="refresh" content="5;url=vf_siswa?st=<?php echo"$st";?>">
                                                    <?php
                                                    // include("form_prt_sis.php");
                                                }
                                                if(isset($_GET['st_a']))
                                                {
                                                    $st=$_GET['st'];
                                                     ?>
                                                    <div class="alert alert-success alert-dismissable">
                                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                    <i class="fa fa-check pr10"></i>
                                                    <strong>Selamat</strong> Anda Berhasil Konfirmasi Data Pendaftar
                                                    <a href="#" class="alert-link"> Silahkan Konfirmasi yang Lain</a>.</div>
                                                    <meta http-equiv="refresh" content="5;url=vf_siswa?st=<?php echo"$st";?>">
                                                    <?php
                                                    // include("form_prt_sis.php");
                                                }

                                                if(isset($_GET['u']))
                                                {
                                                    $proc_es=$_GET['proc_es'];
                                                    $enctype=$_GET['enctype'];
                                                    $u=$_GET['u'];
                                                    $e_cty=$_GET['e_cty'];
                                                    $st=$_GET['st'];
                                                    if(isset($_POST['tb_con']))
                                                    {
                                                        $tg_up=date("Y-m-d H:i:s");
                                                        $status=$_POST['status'];
                                                        $catatan=str_replace("'", "`", nl2br($_POST['catatan']));
                                                        if($status=="-")
                                                        {
                                                            ?>
                                                            <div class="alert alert-danger alert-dismissable">
                                                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                            <i class="fa fa-check pr10"></i>
                                                            <strong>Error!</strong> Anda Gagal Konfirmasi Data Pendaftar
                                                            <a href="#" class="alert-link"> Silahkan Ulangi Kembali</a>.</div>
                                                            <meta http-equiv="refresh" content="5;url=vf_siswa?st=<?php echo"$st";?>">
                                                            <?php
                                                            include("form_prt_sis.php");
                                                        }
                                                        else
                                                        {
                                                            $a_dat=mysqli_query($conn,"select status_verifikasi from tb_pembayaran where id_siswa='$u'");
                                                            $tp_dat=mysqli_fetch_row($a_dat);
                                                            $ck_tbl=mysqli_num_rows($a_dat);
                                                            if($ck_tbl>0)
                                                            {
                                                                mysqli_query($conn,"Update tb_siswa set status='$status', status_pembayaran='$tp_dat[0]' where id_siswa='$u'");
                                                            }
                                                            else
                                                            {
                                                                mysqli_query($conn,"Update tb_siswa set status='$status', status_pembayaran='Belum' where id_siswa='$u'");
                                                            }
                                                           
                                                            mysqli_query($conn,"Update tb_konfirmasi_pendaftaran set id_admin='$fi_id', id_siswa='$u', status='$status', pesan='$catatan', tgl_konfirmasi='$tg_up' where id_siswa='$u'");
                                                            $t_em=mysqli_fetch_row(mysqli_query($conn,"Select email_aktif from tb_siswa where id_siswa='$u'"));
                                                            if(empty($t_em[0]))
                                                            {
                                                                ?>
                                                                <div class="alert alert-success alert-dismissable">
                                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                                <i class="fa fa-check pr10"></i>
                                                                <strong>Selamat</strong> Anda Berhasil Konfirmasi Data Pendaftar
                                                                <a href="#" class="alert-link"> Silahkan Konfirmasi yang Lain</a>.</div>
                                                                <meta http-equiv="refresh" content="5;url=vf_siswa?st=<?php echo"$st";?>">
                                                                <?php
                                                                include("form_prt_sis.php");
                                                            }
                                                            else
                                                            {
                                                                ?>
                                                                <script type="text/javascript">
                                                                    window.location="mail?proc_es=<?php echo"$proc_es";?>&enctype=<?php echo"$enctype";?>&u=<?php echo"$u";?>&e_cty=<?php echo"$e_cty";?>&st=<?php echo"$st";?>";
                                                                </script>
                                                                <?php
                                                            }
                                                        }
                                                    }
                                                    else
                                                    {
                                                        include("form_prt_sis.php");
                                                    }
                                                }
                                                else
                                                {
                                                    ?>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="col-md-4">
                                                                <a href="vf_siswa"><button class="btn btn-info" style="width: 100%"><i class="fa fa-plus"></i> Baru</button></a>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <a href="vf_siswa?st=cf"><button class="btn btn-success" style="width: 100%"><i class="fa fa-check"></i> Terdaftar</button></a>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <a href="vf_siswa?st=rj"><button class="btn btn-danger" style="width: 100%"><i class="fa fa-close"></i> Cadangan</button></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <?php
                                                    include("form_vs_siswa.php");
                                                }
                                            }
                                            ?>
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
                     <script type="text/javascript">  
                            function addRow(tableID) {

                                var table = document.getElementById(tableID);

                                var rowCount = table.rows.length;
                                var row = table.insertRow(rowCount);

                                var colCount = table.rows[0].cells.length;

                                for (var i = 0; i < colCount; i++) {

                                    var newcell = row.insertCell(i);

                                    newcell.innerHTML = table.rows[0].cells[i].innerHTML;
                                    //alert(newcell.childNodes);
                                    switch (newcell.childNodes[0].type) {
                                        case "text":
                                            newcell.childNodes[0].value = "";
                                            break;
                                        case "checkbox":
                                            newcell.childNodes[0].checked = true;
                                            break;
                                        case "select-one":
                                            newcell.childNodes[0].selectedIndex = 0;
                                            break;
                                        case "radio":
                                            newcell.childNodes[0].checked= false;
                                            break;
                                        case "textarea":
                                            newcell.childNodes[0].selectedIndex = 0;
                                            break;
                                    }

                                }
                            }

                            function deleteRow(tableID) {
                                try {
                                    var table = document.getElementById(tableID);
                                    var rowCount = table.rows.length;

                                    for (var i = 0; i <rowCount; i++) {
                                        var row = table.rows[i];
                                        var chkbox = row.cells[0].childNodes[0];
                                        if (null != chkbox && true == chkbox.checked) {
                                            if (rowCount <= 1) {
                                                alert("Tidak Dapat Mengapus Semua Row");
                                                break;
                                            }
                                            table.deleteRow(i);
                                            rowCount--;
                                            i--;
                                        }
                                    }
                                } catch (e) {
                                    alert(e);
                                }
                            }

                        </script>
                </body>
                </html>



<?php
            }
        else
            {
                ?>
                <script type="text/javascript">
                    window.location="../index";
                </script>
                <?php
            }
    }
else
    {
        ?>
        <script type="text/javascript">
            window.location="../index";
        </script>
        <?php
    }
?>

