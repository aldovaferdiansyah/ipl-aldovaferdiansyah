<?php
	$koneksi=mysqli_connect("localhost","root","","dbimpal");

    $idPesan=$_GET['idPesan'];

    $query="DELETE FROM pesan WHERE idPesan='$idPesan'";
    $sql=mysqli_query($koneksi,$query) or die ("GAGAL MENGHAPUS DATA !!!".$query);
    header("location:tampilPesan.php");
?>