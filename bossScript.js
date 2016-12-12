var show = "";
var name = "";
var proffesion = "";
var addressVar = "";
var eikVar = "";
var websiteVar = "";



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
	 document.getElementById('wrap3').style.display = 'none';
	 document.getElementById('wrap4').style.display = 'none';
	 document.getElementById('wrap5').style.display = 'none';
	 document.getElementById('mycontent').style.display = 'none';
	}
}

function loadContent3(btn){
	if(proffesion !== "" ){
	_("btn_marker").style.left = btn.offsetLeft+"px";
	_("btn_marker").style.width = btn.offsetWidth-2+"px";
	document.getElementById('wrap1').style.display = 'none';
	document.getElementById('wrap2').style.display = 'none';
	document.getElementById('wrap3').style.display = 'block';
	document.getElementById('wrap4').style.display = 'none';
	document.getElementById('wrap5').style.display = 'none';
	document.getElementById('mycontent').style.display = 'none';
	}
}
function loadContent4(btn){
if(eikVar !== "" && addressVar !== ""){		
	_("btn_marker").style.left = btn.offsetLeft+"px";
	_("btn_marker").style.width = btn.offsetWidth-2+"px";
	document.getElementById('wrap1').style.display = 'none';
	document.getElementById('wrap2').style.display = 'none';
	document.getElementById('wrap3').style.display = 'none';
	document.getElementById('wrap4').style.display = 'block';
	document.getElementById('wrap5').style.display = 'none';
	document.getElementById('mycontent').style.display = 'block';
}
}
function loadContent5(btn){
	if(mailVar !== "" && websiteVar !== "" ){
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
  var txtName = document.getElementById("txtBossName");
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
		txtBossName.style.backgroundColor = wrong;
        emMessage.style.color = wrong;
		emMessage.innerHTML = "Enter value";
	}else{
		txtBossName.style.backgroundColor = right;
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
	console.log(pass1);
  }
  
  
   
  
 function next2(){	 
	proffesion = document.getElementById("ddlViewBy");
	if(proffesion !== "" ){		
		 document.getElementById("btn3").style.background='#ccffcc';
  loadContent3(btn3);
	}	
 }
  
  
  function next3(){
	  var txtEIK = document.getElementById("txtEIK");
	var eikMessage = document.getElementById('eikMessage');
	eikVar = txtEIK.value;
	
	
	var txtAddress = document.getElementById("txtAddress");
	var addressMessage = document.getElementById('addressMessage');
	addressVar = txtAddress.value;

	if(eikVar !== "" ){	
	    txtEIK.style.backgroundColor = right;
		eikMessage.style.color = right;
		eikMessage.innerHTML = "ok"	
	}else{		
		txtEIK.style.backgroundColor = wrong;
		eikMessage.style.color = wrong;
		eikMessage.innerHTML = "Please fill the field";
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
	
	if(eikVar !== "" && addressVar !== ""){		
		 document.getElementById("btn4").style.background='#ccffcc';
 
  loadContent4(btn4);
	}

 }
  
  
  
  function next4(){
	var txtMail = document.getElementById("mail");
	var mailMessage = document.getElementById('mailMessage');
	mailVar = txtMail.value;

	var txtWebsite = document.getElementById("txtWeb");
	var websiteMessage = document.getElementById('webMessage');
	websiteVar = txtWebsite.value;
	
	
	if(mailVar !== ""){
	    mail.style.backgroundColor = right;
		mailMessage.style.color = right;
		mailMessage.innerHTML = "ok"	
	}else{
		mail.style.backgroundColor = wrong;
		mailMessage.style.color = wrong;
		mailMessage.innerHTML = "Please fill the field";
	}
	
	if(websiteVar !== ""){
	    txtWeb.style.backgroundColor = right;
		webMessage.style.color = right;
		webMessage.innerHTML = "ok"	
	}else{
		txtWeb.style.backgroundColor = wrong;
		webMessage.style.color = wrong;
		webMessage.innerHTML = "Please fill the field";
	}
	
	if(mailVar !== "" && websiteVar !== "" ){
		document.getElementById("btn5").style.background='#ccffcc';
  loadContent5(btn5);
		
	}
	
 }
  
  
  


window.onclick = function(event) { 	

		
		
		
	bossNameFinal.innerHTML = "Username: " + name;
	bossEikFinal.innerHTML = "EIK: " + eikVar;
	bossAddressFinal.innerHTML = "Address: " + addressVar;
	bossSectorFinal.innerHTML = "Sector: " + addressVar;
	bossMailFinal.innerHTML = "E-mail: " + mailVar;
	bossWebFinal.innerHTML = "Website: " + websiteVar;
	bossHistoryFinal.innerHTML = "Information: " + bossInfo;
	
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

 function next5(){
	 window.location = "http://www.nbu.bg/";
 }
 
 
  
window.addEventListener('load', function(event) { initMenu(); });


