<?php 
echo "<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>"; 
echo "<script> 


var ini ='+6282253663215';
var data = $(ini).serialize(); 
$(document).ready(function(){ 
 $.ajax({ 
  type: 'POST', 
     headers: { 
         'Authorization': 'Bearer 302ea6175f5b200641553d7c2b18f483', 
         'Accept': 'application/json', 
         'Content-Type': 'application/x-www-form-urlencoded', 

     }, 
     url: 'https://api.mainapi.net/smsnotification/1.0.0/messages', 
     data:{msisdn: ini ,content:'tesaaaaa'},
     success: function(data){ 
      document.write(data) 
     }, 
     error: function(msg){ 
      console.log(msg); 
     } 
 }); 
})</script>"; 
?>