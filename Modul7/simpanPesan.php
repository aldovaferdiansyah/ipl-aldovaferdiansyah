<?php
    $koneksi = mysqli_connect("localhost","root","","dbimpal");

    $idPenerima=$_POST['idPenerima'];
    $idPengirim=$_POST['idPengirim'];
    $Judul=$_POST['Judul'];
    $TextPesan=$_POST['TextPesan'];
    $WktPesan=$_POST["WktPesan"];
    
    $query="INSERT INTO pesan Values ('','$idPenerima','$idPengirim','$Judul','$TextPesan','$WktPesan')";
    $sql=mysqli_query($koneksi,$query) or die ("GAGAL MENAMBAHKAN DATA PESANAN!!!");
    header("location:tampilPesan.php")
?>