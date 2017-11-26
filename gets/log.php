<?php
include 'konek.php';
session_start();

$username = $_POST['username'];
$password = $_POST['password'];



$cek = mysqli_query($conn,"SELECT * FROM pengguna WHERE username='$username' AND password='$password'");

//SELECT * FROM user WHERE username='wildan' -- AND password='$password'

if(mysqli_num_rows($cek)==1){//jika berhasil akan bernilai 1
$c = mysqli_fetch_array($cek);


$_SESSION['username'] = $c['username'];
$_SESSION['level'] = $c['level'];
if($c['level']=="admin"){
header("location:menuadmin.php");
}



else if($c['level']=="guide"){
header("location:menuguide.php");
}
}else{
die("password salah <a href=\"javascript:history.back()\">kembali</a>");
}
?>