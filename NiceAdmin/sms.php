<?php 
$d=$_GET['id'];
echo "<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>"; 
echo "<script> 

var ini ='<?php echo $d?>';
var data = $(ini).serialize(); 
$(document).ready(function(){ 
 $.ajax({ 
  type: 'POST', 
     headers: { 
         'Authorization': 'Bearer 00898f6e0e757aaa05a1fe0d01c4df7b', 
         'Accept': 'application/json', 
         'Content-Type': 'application/x-www-form-urlencoded', 

     }, 
     url: 'https://api.mainapi.net/smsnotification/1.0.0/messages', 
     data:{msisdn: ini ,content:'silakan hubungi travel yg bersangkutan'},
     success: function(data){ 
      document.write(data) 
     }, 
     error: function(msg){ 
      console.log(msg); 
     } 
 }); 
})</script>"; 
?>