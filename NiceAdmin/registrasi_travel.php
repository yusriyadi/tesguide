<?php
include('koneksi.php');

$name = $_POST['name'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];
$namalengkap = $_POST['namalengkap'];
$alamat = $_POST['alamat'];
$telepon = $_POST['telepon'];
$nosiup = $_POST['nosiup'];


  // Proses simpan ke Database
  $query = "INSERT INTO detail_travel ('nama','alamat','telepon','email','no_siup') VALUES('$name', '$alamat', '$telepon', '$email', '$nosiup');";
  $query .= "INSERT INTO pengguna ('username', 'password','hak_akses') VALUES('$username', '$password', 'travel')";
 mysqli_multi_query($conn, $query);
  

?>