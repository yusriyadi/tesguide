<?php


include('koneksi.php');
$a =$_POST['Nama'];
$b =$_POST['Kota'];


				$sq="INSERT into wisata (nama,kota) values ('$a','$b')";
				mysqli_query($conn,$sq);
			header("location:wisata.php");
		


?>