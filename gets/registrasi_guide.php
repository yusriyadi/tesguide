<?php
include('koneksi.php');

$nama = $_POST['nama'];
$ttl = $_POST['ttl'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$umur = $_POST['umur'];
$alamat = $_POST['alamat'];
$telepon = $_POST['telepon'];
$email = $_POST['email'];
$noktp = $_POST['noktp'];


$foto = $_FILES['foto']['name'];
$tmp = $_FILES['foto']['tmp_name'];


$fotobaru = date('dmYHis').$foto;
// Set path folder tempat menyimpan fotonya
$path = "images/".$fotobaru;
// Proses upload
if(move_uploaded_file($tmp, $path)){ // Cek apakah gambar berhasil diupload atau tidak
  // Proses simpan ke Database
  $query = "INSERT INTO detail_guide VALUES('".$nama."', '".$ttl."', '".$jenis_kelamin."', '".$umur."', '".$alamat."', '".$telepon."','".$email."','".$noktp."', '".$fotobaru."')";
  $sql = mysqli_query($conn, $query);
if($sql){ // Cek jika proses simpan ke database sukses atau tidak
    // Jika Sukses, Lakukan :
    header("location: regis_guide.php"); // Redirect ke halaman index.php
  }else{
    // Jika Gagal, Lakukan :
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='regis_guide.php'>Kembali Ke Form</a>";}}
?>