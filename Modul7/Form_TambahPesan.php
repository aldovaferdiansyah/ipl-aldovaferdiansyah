<!DOCTYPE html>
<html>
<head>
    <title>TAMBAH PESAN</title>
</head>
<body>
    <!--diasumsikan idPengirim = id user login, didapatkan dari session dan idPesan auto_increment dan tanggal adalah tanggal saat ini sehingga tidak perlu input-->
    <legend><h3>TAMBAH DATA PESAN</h3></legend>
    <table>
    <form action="simpanPesan.php" method="POST">
        <tr>
            <td><label>ID Penerima :</label></td>
            <td><input type="text" name="idPenerima" placeholder="ID Penerima"></td>
        </tr>
        <tr>
            <td><label>ID Pengirim :</label></td>
            <td><input type="text" name="idPengirim" placeholder="ID Pengirim"></td>
        </tr>
        <tr>
            <td><label>Judul :</label></td>
            <td><input type="text" name="Judul" placeholder="Judul"></td>
        </tr>
        <tr>
            <td><label>Text Pesan:</label></td>
            <td><input type="text" name="TextPesan" placeholder="Text Pesan"></td>
        </tr>
        <tr>
            <td><label>Waktu Pesan :</label></td>
            <td><input type="date" name="WktPesan" placeholder="Waktu Pesan"></td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <a href="tampilPesan.php">
                <input type="button" name="kembali" value="Kembali"></a>
                <input type="submit" name="submit" value="Submit">
            </td>
        </tr>
        <tr>
    </form>
    </table>
</body>
</html>