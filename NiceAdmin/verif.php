<?php
	session_start(); 

	include('koneksi.php');

	$user=$_POST['Username'];
	$pass=$_POST['Password'];

	$sql="SELECT * from pengguna where username='$user' and password='$pass'";

	$res=mysqli_query($conn,$sql);
	$row=mysqli_fetch_array($res);
	
	if(mysqli_num_rows($res)==1)
	{
		
		if($user=='admin')
		{	$_SESSION['login']=1;
			header("location:index_admin.php");

		}else if($row['hak_akses']=='travel'){

			
			$_SESSION['login']=2;
			$_SESSION['id']=$row['Id_p'];
				header("location:keranjang.php");

		}
		else if($row['hak_akses']=='guide')
		{
			$_SESSION['login']=3;
			$_SESSION['id']=$row['Id_p'];

			header("location:mhs.php");

		}
	}
	else
	{
		$_SESSION['login']=0;
	header("location:login.html");
	}
?>	
