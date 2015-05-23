<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation</title>
	<link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />
	
</head>
<body data-spy="scroll" data-target=".navbar-fixed-top" id='top'>
	
	<jsp:include page="navBar.jsp" />  

	<!-- FIREFOX SETTING: security.fileuri.strict_origin_policy to false -->
	
	<div id="myCarousel" class="carousel slide hidden-sm hidden-xs" data-ride="carousel">
  <!-- Indicators -->
		<ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <!--<li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>-->
     	</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
            	<div class="container">
                    <div class="carousel-caption">
                        <h1>Help those in need!</h1>
                        <p>All donations made through us will surely be received by those in need.</p>
                        <p><a class="btn btn-lg btn-success transition" href="donate.html" role="button">Donate!</a></p>
                    </div>
                </div>
				<img src="MEDIA/IMAGES/DSC_0239.JPG" alt="IMAGE 1" class='img-responsive width-max height-max'>
        	</div>   
            <div class="item">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Make someone's life better</h1>
                        <p>Your donations will surely help those in need</p>
                    </div>
                </div>
				<img src="MEDIA/IMAGES/DSC_0689.JPG" alt="IMAGE 2" class='img-responsive width-max'>
            </div>    
            <!--<div class="item">
                <img src="MEDIA/IMAGES/jumbo-image.png" alt="IMAGE 3" class='img-responsive'>
            </div>    
            <div class="item">
                <img src="MEDIA/IMAGES/jumbo-image.png" alt="IMAGE 4" class='img-responsive'>
            </div>-->
		</div>
            
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
	</div>
    <!--MAIN BODY-->
    
    <div>
    	
    	<div id='about'>
        	
        	<div class='container text-container'>
            <br /><br />
            	<div class='row well-lg'>
                	<div class='col-xs-12 hidden-xs hidden-sm'>
                    	<h1>Who we are.</h1>
                    </div>
                    <div class='col-xs-12 hidden-md hidden-lg'>
                    	<h1 class='text-center'>Who we are.</h1>
                    </div>
                </div>
               	<div class='row'>
                    <div class='col-md-5'>
                        <img src='MEDIA/IMAGES/727x519.png' class='img-responsive'/>
                    </div>
                    <div class='col-md-7 col-xs-12'>
                        <p class='lead text-justify'>
                        	People Helping People foundation is a non-profit organization with one vision in mind, to end help poverty through projects made possible with donations from willing people.
                        </p>
                        <p class='lead text-justify'>
                        	Be the change the world need! Help us make the world a better place
                        </p>
                        <a href='MEDIA/MOA-PHPF.pdf'><button class='btn btn-success btn-lg'>View MOA</button></a>
                    </div>
                </div>
                
                <div class='row'>
                	<div class='col-xs-12'>
                    	<p class='text-justify'>
<!-- TEXT -->
                        </p>
                    </div>
                </div>
                
                <hr />
                
                <div class='row'>
                	<div class='col-xs-12'>
                    	<img src='MEDIA/IMAGES/world-map.jpg' class='img-responsive'>
                    </div>
                </div>
            	<div class='row'>
                	<br />
                	<div class='col-xs-12'>
                    	<p class='lead text-center'>
                        	Currently based in the Philippines, our foundations aims to expand our reach to other countries.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        
        <div id='contactUs'> <!-- content3 -->

			<div class='container text-container'>   
                            
       		<div class='hidden-xs hidden-sm'><br /><br /></div>
            	<div class='row vwContent'>
                	<div class='col-md-6 col-xs-12'>
                    	<img src='MEDIA/IMAGES/727x519.png' class='img-responsive'/>
                    </div>
  
                    <div class='col-md-6 col-xs-12'>
                    	<div class='hidden-md hidden-lg'>
                    		<br  />
                        </div>
                    <h1 style='margin-top: -1vh;'>CONTACT US!</h1>
                    	<form>
                          <div class="form-group">
                            <label for="Name">Name</label>
                            <input type="name" class="form-control" id="nameInput" placeholder="Enter Name">
                          </div>
                          <div class="form-group">
                            <label for="email">E-Mail Address</label>
                            <input type="email" class="form-control" id="emailInput" placeholder="Enter E-Mail">
                          </div>
                          <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="subject" class="form-control" id="subjectInput" placeholder="Enter Subject">
                          </div>
                          <div class="form-group">
                         		<textarea class="form-control" rows="3" placeholder="Enter Message"></textarea>
                         	 	<button type="submit" class="btn btn-default">Submit</button>
                          </div>
                        </form>
                    </div>
                    
                    <div class='col-xs-12'>
                    	<h3 class='text-info text-center'>
                        	If you have any concern, comment, or suggestion about our organization, feel free to contact us!
                        		
                        </h3>
                    </div>
                    
                </div>
            </div>
		</div>
        
        
    </div>
   	
    <!--MAIN BODY-->
    
 	<jsp:include page="footerBar.html" />  

</body>
	<script src='JS/jquery.js' type='text/javascript' /></script>
	<script src="JS/jquery.viewportchecker.js"></script>
    <script src='JS/bootstrap.js' type='text/javascript' /></script>
    <script src='JS/custom_.js' type='text/javascript' /></script>
    <script src="JS/jquery.nicescroll.js"></script>
