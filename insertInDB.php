<?php
if(isset($_POST['button1'])) {
	
$server = "localhost";
$username = "root";
$password = "";
$db = "jobsbg";
// Connect
$con = mysqli_connect($server , $username, $password, $db);
// Check if connection is executing
if ($con->connect_error) {
    die("No connection: " . $con->connect_error);
}

$userName = $_POST["userName"];
$userPass = $_POST["psw"];
$highSchool = $_POST["highSchool"];
$uni = $_POST["uni"];
$previousWork1 = $_POST["pWork1"];
$previousWork2 = $_POST["pWork2"];
$previousWork3 = $_POST["pWork3"];
$forLang =  $_POST["pfLanguage"];
$email = $_POST["email"];
$age = $_POST["txtAge"];
$addr = $_POST["address"];

$sql = "INSERT INTO `employee` (`name`, `UserPassword`, `HighSchool`, `University`, `PreviousWork1`, `PreviousWork2`, `PreviousWork3`, `ForeignLanguage`, `Age`, `UserAddress`, `e_mail`) 
VALUES ('$userName', '$userPass', '$highSchool', '$uni', '$previousWork1', '$previousWork2', '$previousWork3', '$forLang', '$age', '$addr', '$email')";

if ($con->query($sql) === TRUE) {
    echo "";
} else {
    echo "Error: " . $sql . "<br>" . $con->error;
}

$con->close();
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<title>Job careers registration form</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="scriptChanged.js"></script>
</head>
<script>
window.onload = function(){
	document.getElementById('wrap40').style.display = 'none';
	_("btn_marker").style.left = btn5.offsetLeft+"px";
	_("btn_marker").style.width = btn5.offsetWidth-2+"px";
	document.getElementById('wrap1').style.display = 'none';
	document.getElementById('wrap2').style.display = 'none';
	document.getElementById('wrap3').style.display = 'none';
	document.getElementById('wrap4').style.display = 'none';
	document.getElementById('wrap5').style.display = 'block';
    document.getElementById('mycontent').style.display = 'none';
}

</script>
<body>
<div id="something">
<h1>Registration form</h1>
<div  id="mymenu">


  <div id="btn_marker"></div>
 
  <button   id="btn1"   onclick="loadContent1(this);" >Personal data </button>
  <button id="btn2" onclick="loadContent2(this)">Education and professional experience</button>
  <button id="btn3" onclick="loadContent3(this)">Age and address</button>
  <button id="btn4" onclick="loadContent4(this)">E-mail addres</button>
  <button id="btn5" onclick="loadContent5(this)">Why?</button>
</div>

	
		<form action = 'insertInDB.php' method= "post" id="forms1">	
             <div id="wrap1">
			  Name <input type = "text"	name="userName" id = "txtName23" required/> *  <span id="emptyMessage" class="confirmMessage"></span><br>
			  User password:  <input type="password" id = "pass1" name="psw"  required /> * <span id="pasMessage" class="confirmMessage"></span><br>
			  Confirm password: <input type="password" id = "pass2" name="psw2" required /> * 
  
			  <span id="confirmMessage" class="confirmMessage"></span>
			  <div id="wrap10">
			  <button type="button" class="btnstyle"  onclick = "next1()">Continue</button>
			  </div>
			  <input type = "text"	id = "txtOutput23" />
			  </div>
	<div id="wrap2">
			<label>High School: </label>
			<input type="text"  name="highSchool" id="highSchool" required/> <span id="highSchoolMessage" class="confirmMessage"></span>
			<br><br>
			<label>Uneversity: </label>
			<input type="text" name="uni" id="uni" required/> <span id="uniMessage" class="confirmMessage"></span>
			<br><br>
			<label>Previous work: </label>
			<input type="text" name="pWork1" id="pWork1"  /> 
			<br><br>
			<label>Previous work: </label>
			<input type="text" name="pWork2" id="pWork2" /> 
			<br><br>
			<label>Previous work: </label>
			<input type="text" name="pWork3" id="pWork2" />
			<br><br>
			<label>Foreign language: </label>
			<input type="text" name="pfLanguage" id="pfLanguage" />
			<br><br>
			<div id="wrap20">
			<button type="button" class="btnstyle"  onclick = "next2()">Continue</button>
			</div>
	</div>  		
	<div id="wrap3">	
		 Age <input type = "text" name="txtAge" id = "txtAge" required/> *  <span id="ageMessage" class="confirmMessage"></span><br>
			  Address:  <input type="text" id = "txtAddress" name="address"  required /> * <span id="addressMessage" class="confirmMessage"></span><br>
			  <span id="confirmMessage" class="confirmMessage"></span>
		<div id="wrap30">
			  <button type="button" class="btnstyle" onclick = "next3()">Continue</button>	
			  </div>
	</div>
	<div id="wrap4">
			<label>E-mail: </label>
			<input type="email" name="email" id="mail" /> <span id="mailMessage" class="confirmMessage"></span>
	</div>
		<div id="wrap40">
			 <input type="submit" class="btnstyle" name="button1" value ="Continue"/>
			</div>
		</form>	


	<div id="wrap5">	
		<form id='forms5'>
			<label>Could you please let us know why you want participate? </label><br><br>
			<textarea name="text" cols="25" rows="5">
			
            </textarea>
			<br><br>
			
		</form>	
		
	<button onclick="document.getElementById('id01').style.display='block'"  class="btnstyle" style="width:auto;">Register</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="dopamine_server.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="https://tedxnbu.files.wordpress.com/2011/01/logo-nbu-sinio-1.jpg" alt="Avatar" class="avatar">
    </div>

	
    <div class="container">
	Please check your data before submit: <br><br>
		<span id="userNameFinal" class="confirmMessage"></span><br><br>
		<span id="userUniversityFinal" class="confirmMessage"></span><br><br>
		<span id="userMailFinal" class="confirmMessage"></span><br><br>
		<span id="userHighEduFinal" class="confirmMessage"></span><br><br>
		<span id="userUniEduFinal" class="confirmMessage"></span><br><br>		
		<span id="userAgeFinal" class="confirmMessage"></span><br><br>
		<span id="userAddressFinal" class="confirmMessage"></span><br><br>
      <button type="button" class="btnstyle" onclick = "next5()">Submit</button>

    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>	
</div>
<p style="text-align: center; padding 150px ;color: #483D8B; padding: 3% ">&#169;Copyright - Job careers, 2016.</p>
</div>

</body>
</html>

