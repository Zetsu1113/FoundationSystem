<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation - Donate</title>
	<link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />

</head>

<body data-spy="scroll" data-target=".navbar-fixed-top" id='top'>
	
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    	<div class='container-fluid'>
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html" class="transition">People Helping People</a>
		</div>
       <div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav">
                <li><a href="index.html" class="transition">Home</a></li>
                <li><a href="index.html#about" class="transition">About</a></li>
                <li><a href="index.html#contactUs" class="transition">Contact Us</a></li>
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">Projects <b class="caret"></b></a>
                    <ul role="menu" class="dropdown-menu">
                        <li><a href="Projects/project_1.html" class="transition">Pre Membership and Orientation Seminar</a></li>
                        <li><a href="Projects/project_2.html" class="transition">Adopted Families' Tambo Making Project</a></li>
                        <li><a href="PROJECTS/project_3.html" class="transition">Project 3</a></li>
                    </ul>
                </li>
                <li class='active'><a href="donate.html" class="transition">Donate</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
            	<li id='loginSpace_admin' class='visible'>
                	<div class='container-fluid'>
                        <div class='row'>
                            <div class='col-xs-12'>
                                <p style='margin-top: 1px;'><em>Welcome back,</em> <span id='navLink'>Username</span>!</p>
                                <p style='margin-top: -15px;'><em>Last active on</em> <span id='navLink'>date</span></p>
                                <p style='margin-top: -15px;margin-bottom: inherit;'><span id='navLink'><a href='donations_panel.html' class="transition">Donations</a></span> | <span id='navLink'><a href='admin-content-wp/donation_log_wp.html'>ACP</a></span> | <span id='navLink'>Log Out!</span></p>
                            </div>
                        </div>
                	</div>
                </li>
                <li id='loginSpace_user' class='hidden'>
                	<div class='container-fluid'>
                        <div class='row'>
                            <div class='col-xs-12'>
                                <p style='margin-top: 1px;'><em>Welcome back,</em> <span id='navLink'>Username</span>!</p>
                                <p style='margin-top: -15px;'><em>Last active on</em> <span id='navLink'>date</span></p>
                                <p style='margin-top: -15px;margin-bottom: inherit;'><span id='navLink'><a href='donations_panel.html' class="transition">Your Donations</a></span> | <span id='navLink'>Log Out!</span></p>
                            </div>
                        </div>
                	</div>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden" id='loginSpace'>
                <li id='bLogin' onclick='logn()'><a href='javascript:void(0)'>Login</a></li>
                <li id='aOr' class='hidden-xs hidden-sm' style='margin-left: -20px;margin-right: -20px;'></li>
                <li id='sgnUp'><a href='sign_up.html' class="transition">Sign Up!</a></li>
                <li id='aLogin' class='hidden'>
                
                	<div class='row'>
						<div class='col-xs-9 col-xs-offset-1'>
                            <form onSubmit='return showPanel("text")'>
                              <div class="form-group">
                                <input type="userID" class="form-control" id="loginInput_1" placeholder="User ID">
                                <input type="password" class="form-control" id="loginInput_2" placeholder="Password">
                              </div>
                        </div>
                        <div class='col-xs-1'>
                              <div class="form-group">
                                    <button type="submit" class="btn btn-default">Submit</button>
                              </div>
                            </form>
                        </div>
                    </div>
                    
                </li>
            </ul>
		</div>
        </div>
    </nav> 
 

    <div class='container-fluid bg2_' >
    	<div class='container'>
        	<div class='row vwContent text-container_3'>
            <br class='hidden-xs hidden-sm' />
            <br class='hidden-xs hidden-sm' />
				<div class='row'>
                	<div class='col-xs-12'>
                    	<h1 class='text-center hidden-xs hidden-sm'><em>Donation successful! You may track your donations on your <span  class='defLinks '><strong><a href='donations_panel.html' class="transition">Donations</a></strong></span> panel</em></h1>
 						<h3 class='text-center hidden-md hidden-lg'><em>Donation successful! You may track your donations on your <span  class='defLinks '><strong><a href='donations_panel.html' class="transition">Donations</a></strong></span> panel</em></h3>
                    </div>
                </div>
                <hr />
            	<div class='row'>
                    <div class='col-xs-8 col-xs-offset-2'>
                    	<div class='row text-center bg-success hidden-xs hidden-sm'>
							<div class='col-md-offset-1 col-md-5 text-left'>
                            	<h3>Donation ID:</h3>
                                <h3>Donor:</h3>
                                <h3>Time:</h3>
                            </div>
                            
                            <div class='col-md-5 text-right'>
                            	<h3>&lt;Server Generated ID&gt;</h3>
                                <h3>&lt;Name of User&gt;</h3>
                                <h3>&lt;Server Time&gt;</h3>
                            </div>
                        </div>
                        <!-- For Small Screens -->
                        <div class='row text-center bg-success hidden-md hidden-lg'>
							<div class='col-xs-6 text-left'>
                            	<h6>Donation ID:</h6>
                                <h6>Donor:</h6>
                                <h6>Time:</h6>
                            </div>
                            
                            <div class='col-xs-6 text-right'>
                            	<h6>&lt;Server Generated ID&gt;</h6>
                                <h6>&lt;Name of User&gt;</h6>
                                <h6>&lt;Server Time&gt;</h6>
                            </div>
                        </div>
                    </div>
                </div>
            	<hr />
                <div class='row'>
                	<div class='col-xs-12'>
                    	<p>
            	Maecenas vulputate malesuada ligula, at maximus orci consequat in. Nam consectetur vulputate velit, vel pretium metus ultricies sed. Vivamus urna metus, ultrices a est at, vehicula molestie diam. Nullam varius commodo eros a porttitor. Etiam congue eu purus eget finibus. Nam augue orci, feugiat vehicula porttitor eu, lobortis quis ante. Curabitur luctus neque vitae enim viverra sodales a eget lacus. Morbi ante orci, vehicula eu nibh sit amet, eleifend placerat quam. Etiam et bibendum nulla. Cras nec metus sapien. Sed ligula libero, aliquet a consequat sit amet, mattis eu libero. Quisque at dolor sodales nibh feugiat faucibus ornare et felis. Nulla molestie porta lacus pretium tempor. Duis scelerisque erat vel rhoncus laoreet. Nam enim ante, posuere nec tincidunt a, molestie a nisi. Aliquam volutpat odio eros, at pulvinar lectus hendrerit in. 
            			</p>
                    </div>
                </div>
            </div>
  		</div>
    </div>
        
 <div class="footer container-fluid">
	<div class='row'>
    	<div class='col-md-3 col-md-offset-1'>
			<h4>
            	People Helping People Foundation is a non-profit organization based on the Philippines
            </h4>
        </div>
        <div class='col-md-1 hidden-xs hidden-sm'>
        	<h1> | </h1>
        </div>
    	<div class='col-md-2'>
        	<h5>Find Us!</h5>
            <address>
              <strong>People Helping People Foundation</strong><br>
				1611 Espanya Manila<br>
				(63) 406-1611
            </address>
        </div>
        <div class='col-md-1 hidden-xs hidden-sm'>
        	<h1> | </h1>
        </div>
        <div class='col-md-4'>
        	<h5>Powered by ProjectHDX</h5>
			<h4>
            	A joint web application project developed by:
            </h4>
            <ul class='list-unstyled'>
                <li>Cabe, Gerlan Mark B.</li>
            	<li>Cancio, Kyle Cedrick R.</li>
               	<li>Rosalado, Isabela Marie C.</li>
               	<li>Suarez, Jessie James P.</li>
            </ul>
            	
                
        </div>
    </div>
 </div>
</body>
	<script src='JS/jquery.js' type='text/javascript' /></script>
	<script src="JS/jquery.viewportchecker.js"></script>
    <script src='JS/bootstrap.js' type='text/javascript' /></script>
    <script src='JS/custom_.js' type='text/javascript' /></script>
    <script src="JS/jquery.nicescroll.js"></script>
	<script src="JS/bootstrap-formhelpers-min.js"></script>
</html>