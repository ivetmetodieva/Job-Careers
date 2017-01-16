<?php

session_start();

$sectorValue = $_GET['sector'];
$titleValue = $_GET['title'];
$positionValue = $_GET['position'];

?>




<!DOCTYPE html>
<html>
    <head>
	<link rel="stylesheet" type="text/css" href="JobOfferStyle.css">     
	<script src="offerJS.js"></script>
    </head>
    <body>
        
		<div id="pagetop">
<header>
 <div class="img-container"></div>
 </header>
  <div id="menu">menu system</div>
</div>
<div id="wrapper">
</div>
 
 
<div id="wrap">	

		
		<table class="jobOffer">
				  
    
            
            <table>
                <tr>
                    <th>Job title</th>
                    <th>Sector</th>
                    <th>Position</th>
                </tr>				
                <tr>
                    <td><?php echo $titleValue;?></td>
                    <td><?php echo $sectorValue;?></td>
                    <td><?php echo $positionValue;?></td>
                </tr>						
			</table>
			
        
			  </table>
			  
		
	</div>	
	</div>	
	
	
	<footer>
	<p style="text-align: center; padding 150px ;color: #483D8B; padding: 2% ">&#169;Copyright - Job careers, 2016.</p>
	</footer>
	</div>
	</div>
		
		
		

      
        
    </body>
</html>