<!DOCTYPE html>
<?php
	$koneksi=mysqli_connect("localhost","root","","dbimpal");
?>
<html>
<head>
    <title>DATA PESANAN</title>
</head>
<body>
    <table border="3">
        <tr>
        <th>ID Pesan</th>
        <th>ID Penerima</th>
        <th>ID Pengirim</th>
        <th>Judul</th>
        <th>Text Pesan</th>
        <th>Waktu Pesan</th>
        <th>Action</th>
        </tr>
        <?php
            $query="SELECT * FROM pesan";
            $data=mysqli_query($koneksi, $query)
        ?>
        <?php while($v=mysqli_fetch_array($data)):;?>
    <tr>
        <td><?php echo $v["idPesan"];?></td>
        <td><?php echo $v["idPenerima"];?></td>
        <td><?php echo $v["idPengirim"];?></td>
        <td><?php echo $v["Judul"];?></td>
        <td><?php echo $v["TextPesan"];?></td>
        <td><?php echo $v["WktPesan"];?></td>
        <td><a href="hapusPesan.php?idPesan=<?php echo $v["idPesan"];?>">HAPUS</a>
    </tr>
    <?php endwhile;?>
    </table>
    <br>
    <a href="Form_TambahPesan.php">MASUKAN DATA</a>
</body>
</html>