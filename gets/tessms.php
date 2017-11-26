<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>



<?php include('koneksi.php');?>
 <table>

		<th>1</th>
		<th>2</th>
<?php
 $sq="select * from detail_guide";
 $hasil = $conn->query($sq); 
 while($data = $hasil->fetch_array()){
		?>	


	<tr>
		<td><?=$data['nama']?></td>
		<td><?=$data['telepon']?></td>
		<td><a href="sms.php?id=<?=$data['telepon']?>"> klik </a></td></td>
	</tr>

<?php }?>
</table>



</body>
</html>