<?php 
echo "<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>"; 
echo "<script>


var data = $("$no").serialize(); 
$(document).ready(function(){ 
 $.ajax({ 
  type: 'POST', 
     headers: { 
         'Authorization': 'Bearer a78f2e10afa9b06714be86599e165533', 
         'Accept': 'application/json', 
         'Content-Type': 'application/x-www-form-urlencoded', 

     }, 
     url: 'https://api.mainapi.net/smsnotification/1.0.0/messages', 
     data: {msisdn: String(data),content:'tes'},
     success: function(data){ 
      document.write(data) 
     }, 
     error: function(msg){ 
      console.log(msg); 
     } 
 }); 
})</script>"; 
?>