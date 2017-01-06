var jobTitle;
var jobCategory;
var description;
var salary; 
var pagetop, menu, yPos;



function Submit(){           
jobTitle = document.getElementById("txtTitle");
jobCategory = document.getElementById("txtCategory");
description = document.getElementById("description");
salary = document.getElementById("txtSalary");

                if(jobTitle.value === "" ){                              
    document.getElementById("txtTitle").style.background='red';
                }else{
                document.getElementById("txtTitle").style.background='#ccffcc';
                }              
                
                if(jobCategory.value === "" ){                    
    document.getElementById("txtCategory").style.background='red';
                }else{
                document.getElementById("txtCategory").style.background='#ccffcc';
                }              
                
                if(description.value === "" ){                      
    document.getElementById("description").style.background='red';
                }else{
                document.getElementById("description").style.background='#ccffcc';
                }              

                
                if((jobTitle.value !== "" ) &&  (jobCategory.value !== "" ) && (description.value !== "" )){
                
                window.open('')
                }
                
                }
                

function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}

function yScroll(){
                pagetop = document.getElementById('pagetop');
                menu = document.getElementById('menu');
                yPos = window.pageYOffset;
                if(yPos > 150){
                                pagetop.style.height = "36px";
                                pagetop.style.paddingTop = "8px";
                                menu.style.height = "0px";
                } else {
                                pagetop.style.height = "50px";
                                pagetop.style.paddingTop = "50px";
                                menu.style.height = "50px";
                }
}
window.addEventListener("scroll", yScroll);
