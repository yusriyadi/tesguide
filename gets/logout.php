<?php
session_start(); 
unset($_SESSION['login']); 
unset($_SESSION['username']);
unset($_SESSION['level']); 

header ('location:login.html') ;
 ?>