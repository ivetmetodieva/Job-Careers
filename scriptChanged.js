var show = "";
var name = "";
var uniVar = "";
var pWork1 = document.getElementById("pWork1");
var pWork2 = document.getElementById("pWork2");
var pWork3 = document.getElementById("pWork3");
var highSchoolVar= "";
var mailVar = "";
var ageVar = "";
var addressVar = "";
var right = "green";
var wrong = "red";
var x= "";  




var modal = document.getElementById('id01');
function _(x){
    return document.getElementById(x);
}
function initMenu(){
	_("btn_marker").style.left = _("btn1").offsetLeft+"px";
	_("btn_marker").style.width = _("btn1").offsetWidth-2+"px";
	_("btn_marker").style.display = "block";
}
function loadContent1(btn){
	_("btn_marker").style.left = btn.offsetLeft+"px";
	_("btn_marker").style.width = btn.offsetWidth-2+"px";
	 document.getElementById('wrap1').style.display = 'block';
	 document.getElementById('wrap10').style.display = 'block';
	 document.getElementById('wrap2').style.display = 'none';
	 document.getElementById('wrap3').style.display = 'none';
	 document.getElementById('wrap4').style.display = 'none';
	 document.getElementById('wrap5').style.display = 'none';
	 document.getElementById('mycontent').style.display = 'none';

}

function loadContent2(btn){
	if((name !== "") && ((pass1.value === pass2.value) && (pass1.value !== "" ))){
	_("btn_marker").style.left = btn.offsetLeft+"px";
	_("btn_marker").style.width = btn.offsetWidth-2+"px";	
	 document.getElementById('wrap1').style.display = 'none';
	 document.getElementById('wrap2').style.display = 'block';
	 document.getElementById('wrap20').style.display = 'block';
	 document.getElementById('wrap3').style.display = 'none';
	 document.getElementById('wrap4').style.display = 'none';
	 document.getElementById('wrap5').style.display = 'none';
	 document.getElementById('mycontent').style.display = 'none';
	}
}

function loadContent3(btn){
	if(uniVar !== ""){
	_("btn_marker").style.left = btn.offsetLeft+"px";
	_("btn_marker").style.width = btn.offsetWidth-2+"px";
	document.getElementById('wrap1').style.display = 'none';
	document.getElementById('wrap2').style.display = 'none';
	document.getElementById('wrap3').style.display = 'block';
	document.getElementById('wrap30').style.display = 'block';
	document.getElementById('wrap4').style.display = 'none';
	document.getElementById('wrap5').style.display = 'none';
	document.getElementById('mycontent').style.display = 'none';
	}
}
function loadContent4(btn){
if(ageVar !== "" && addressVar !== ""){		
	_("btn_marker").style.left = btn.offsetLeft+"px";
	_("btn_marker").style.width = btn.offsetWidth-2+"px";
	document.getElementById('wrap1').style.display = 'none';
	document.getElementById('wrap2').style.display = 'none';
	document.getElementById('wrap3').style.display = 'none';
	document.getElementById('wrap4').style.display = 'block';
	document.getElementById('wrap40').style.display = 'block';
	document.getElementById('wrap5').style.display = 'none';
	document.getElementById('mycontent').style.display = 'block';
}
}
function loadContent5(btn){
	if(mailVar !== ""){
	_("btn_marker").style.left = btn.offsetLeft+"px";
	_("btn_marker").style.width = btn.offsetWidth-2+"px";
	document.getElementById('wrap1').style.display = 'none';
	document.getElementById('wrap2').style.display = 'none';
	document.getElementById('wrap3').style.display = 'none';
	document.getElementById('wrap4').style.display = 'none';
	document.getElementById('wrap5').style.display = 'block';
    document.getElementById('mycontent').style.display = 'none';
	}
}


 function next1(){
  var txtName = document.getElementById("txtName23");
  var txtOutput = document.getElementById("txtOutput23");
  var pass1  = document.getElementById("pass1");
  var pass2  = document.getElementById("pass2");
  var message = document.getElementById('confirmMessage');
  var emMessage = document.getElementById('emptyMessage');
  var pasMessage = document.getElementById('pasMessage');
  
  name = txtName.value;
  txtOutput.value = "Hi there, " + name + "!" 
	if((name !== "") && ((pass1.value === pass2.value) && (pass1.value !== "" ))){
  document.getElementById("btn2").style.background='#ccffcc';
  document.getElementById("btn1").style.background='#ccffcc';
  loadContent2(btn2);
	}
	if(name === ""){
		txtName23.style.backgroundColor = wrong;
        emMessage.style.color = wrong;
		emMessage.innerHTML = "Enter value";
	}else{
		txtName23.style.backgroundColor = right;
		emMessage.style.color = right;
		emMessage.innerHTML = "ok"
	}
	if(pass1.value === "" ){
	    pass1.style.backgroundColor = wrong;
		pasMessage.style.color = wrong;
		pasMessage.innerHTML = "Enter value";
	}else{
		pasMessage.style.color = right;
		pasMessage.innerHTML = "ok"
		pass1.style.backgroundColor = right;
	}
	if((pass1.value === pass2.value) && (pass1.value !== "" )){
	
	 pass2.style.backgroundColor = right;
        message.style.color = right;
		message.innerHTML = "Passwords Match!"
	}else{
		 pass2.style.backgroundColor = wrong;
        message.style.color = wrong;
		message.innerHTML = "Passwords Do Not Match!"
	} 
  }
 function next2(){
	var txtUni = document.getElementById("uni");
	var uniMessage = document.getElementById('uniMessage');
	uniVar = txtUni.value;
	
	
	var txtHighSchool = document.getElementById("highSchool");
	var highSchoolMessage = document.getElementById('highSchoolMessage');
	highSchoolVar = txtHighSchool.value;

	if(uniVar !== "" ){	
	    uni.style.backgroundColor = right;
		uniMessage.style.color = right;
		uniMessage.innerHTML = "ok"	
	}else{		
		uni.style.backgroundColor = wrong;
		uniMessage.style.color = wrong;
		uniMessage.innerHTML = "Please fill the field";
	}
	
	if(highSchoolVar !== ""){
		highSchool.style.backgroundColor = right;
		highSchoolMessage.style.color = right;
		highSchoolMessage.innerHTML = "ok"		
 
	}else{
		highSchool.style.backgroundColor = wrong;
		highSchoolMessage.style.color = wrong;
		highSchoolMessage.innerHTML = "Please fill the field";	
	}
	
	if(highSchoolVar !== "" && uniVar !== ""){		
		 document.getElementById("btn3").style.background='#ccffcc';
  loadContent3(btn3);
	}
	
	
	
 }
  
  
  function next3(){
	  var txtAge = document.getElementById("txtAge");
	var ageMessage = document.getElementById('ageMessage');
	ageVar = txtAge.value;
	
	
	var txtAddress = document.getElementById("txtAddress");
	var addressMessage = document.getElementById('addressMessage');
	addressVar = txtAddress.value;

	if(ageVar !== "" ){	
	    txtAge.style.backgroundColor = right;
		ageMessage.style.color = right;
		ageMessage.innerHTML = "ok"	
	}else{		
		txtAge.style.backgroundColor = wrong;
		ageMessage.style.color = wrong;
		ageMessage.innerHTML = "Please fill the field";
	}
	
	if(addressVar !== ""){
		txtAddress.style.backgroundColor = right;
		addressMessage.style.color = right;
		addressMessage.innerHTML = "ok"		
 
	}else{
		txtAddress.style.backgroundColor = wrong;
		addressMessage.style.color = wrong;
		addressMessage.innerHTML = "Please fill the field";	
	}
	
	if(ageVar !== "" && addressVar !== ""){		
		 document.getElementById("btn4").style.background='#ccffcc';
 
  loadContent4(btn4);
	}

 }
  
  
  
  function next4(){
	var txtMail = document.getElementById("mail");
	var mailMessage = document.getElementById('mailMessage');
	mailVar = txtMail.value;

	if(mailVar !== ""){
	    mail.style.backgroundColor = right;
		mailMessage.style.color = right;
		mailMessage.innerHTML = "ok"	
  document.getElementById("btn5").style.background='#ccffcc';
  loadContent5(btn5);

	}else{
		mail.style.backgroundColor = wrong;
		mailMessage.style.color = wrong;
		mailMessage.innerHTML = "Please fill the field";
	}
 }
  
  
  


window.onclick = function(event) { 
	var finalName = document.getElementById('userNameFinal');
	var finalUniversity = document.getElementById('userUniversityFinal');
	var finalMail = document.getElementById('userMailFinal');
	userNameFinal.innerHTML = "Username: " + name;
	userUniversityFinal.innerHTML = "University: " + uniVar;
	userMailFinal.innerHTML = "E-mail: " + mailVar;
	userHighEduFinal.innerHTML = "High School: " + highSchoolVar;
	userUniEduFinal.innerHTML = "University: " + uniVar;
	userAgeFinal.innerHTML = "High School: " + ageVar;
	userAddressFinal.innerHTML = "University: " + addressVar;
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

 function next5(){
	 window.location = "http://www.nbu.bg/";
 }
  
window.addEventListener('load', function(event) { initMenu(); });