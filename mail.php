<?php
 error_reporting("null");
date_default_timezone_set("Asia/Jakarta");
$nil=$_GET['m'];
$us=$_GET['us'];
$ps=$_GET['ps'];

include "classes/class.phpmailer.php";
$email="$nil";
$mail = new PHPMailer; 
$mail->IsSMTP();
$mail->SMTPSecure = 'ssl'; 
$mail->Host = ""; 
$mail->Port = 465;
$mail->SMTPAuth = true;
$mail->Username = ""; //user email
$mail->Password = ""; //password email 
$mail->SetFrom("",""); //set email pengirim
$mail->Subject = "Informasi Registrasi"; //subyek email
$mail->AddAddress("$email","nama email tujuan");  //tujuan email
$mail->MsgHTML("Terima kasih anda telah melakukan pendaftaran di SMA Negeri 7 Yogyakarta. Berikut adalah data untuk masuk ke panel dashboard anda.<br /><br />

    <h3>Username: $us</h3>
    <h3>Password: $ps</h3>

    Salam Hormat Kami,<br />
    SMA Negeri 7 YOGYAKARTA<br />
    Jl. MT. Haryono No. 47, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55141<br />
    (0274) 12345");
$mail->Send();
?>
<script type="text/javascript">
    window.location="mendaftar?st=ok#fc"
</script>