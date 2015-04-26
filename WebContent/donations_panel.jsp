<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session = "true" %>
<jsp:useBean id="pbean" scope="session" class="com.information.personal.PersonalBean"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation - Donate</title>
	<link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />

</head>

<body data-spy="scroll" data-target="#navbarCollapse">
	
	<nav role="navigation" class="navbar navbar-default navbar-fixed-top">
    	<div class='container-fluid'>

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="index.html" class="navbar-brand" class="transition">People Helping People</a>
        </div>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
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
                <li><a href="donate.html" class="transition">Donate</a></li>
            </ul>
             <ul class="nav navbar-nav navbar-right">
            	<li id='loginSpace_admin' class='visible'>
                	<div class='container-fluid'>
                        <div class='row'>
                            <div class='col-xs-12'>
                                <p style='margin-top: 1px;'><em>Welcome back,</em> <span id='navLink'>${cookie.username.value }</span>!</p>
                                <p style='margin-top: -15px;'><em>Last active on</em> <span id='navLink'>date</span></p>
                                <p style='margin-top: -15px;margin-bottom: inherit;'><span id='navLink'><a href='donations_panel.html'>Donations</a></span> | <span id='navLink'><a href='admin-content-wp/donation_log_wp.html'>ACP</a></span> | <span id='navLink'>Log Out!</span></p>
                            </div>
                        </div>
                	</div>
                </li>
                <li id='loginSpace_user' class='hidden'>
                	<div class='container-fluid'>
                        <div class='row'>
                            <div class='col-xs-12'>
                                <p style='margin-top: 1px;'><em>Welcome back,</em> <span id='navLink'>${cookie.username.value }</span>!</p>
                                <p style='margin-top: -15px;'><em>Last active on</em> <span id='navLink'>date</span></p>
                                <p style='margin-top: -15px;margin-bottom: inherit;'><span id='navLink'><a href='donations_panel.html'>Your Donations</a></span> | <span id='navLink'> Log Out! </span></p>
                            </div>
                        </div>
                	</div>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden" id='loginSpace'>
                <li id='bLogin' onclick='logn()'><a href='javascript:void(0)'>Login</a></li>
                <li id='aOr' class='hidden-xs hidden-sm' style='margin-left: -20px;margin-right: -20px;'><a href='javascript:void(0)'>or</a></li>
                <li id='sgnUp'><a href='sign_up.html'>Sign Up!</a></li>
                <li id='aLogin' class='hidden'>
                
                	<div class='row'>
						<div class='col-xs-9 col-xs-offset-1'>
                            <form onSubmit='return showPanel()'>
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

	<br /><br /><br />
    
    <div class='container-fluid'>
    	<div class='container'>
        	<div class='row'>
            	<br/>
           		<br/>
				<div class='row'>
                	<div class='row'>
                    <div class='col-xs-10 col-xs-offset-1'>
                    	<div class='row text-center bg-info hidden-xs hidden-sm'>
							<div class='col-md-2 text-left'>
                            	<h4>Name: </h4>
                                <h4>Used ID: </h4>
                                <h4>Contact Number: </h4>
                                <h4>Mailing Address: </h4>
                                <h4>E-Mail Address: </h4>
                            </div>
                            <div class='col-md-5 text-left'>
                            	<h4>${pbean.lastName }, ${pbean.firstName } ${pbean.middleName}</h4>
                                <h4> ${cookie.username.value} </h4>
                                <h4>${pbean.phoneNumber }</h4>
                                <h4>${pbean.address }</h4>
                                <h4>${pbean.email }</h4>
                            </div>
                             <div class='col-md-3 text-left'>
                            	<h4>Joined On: </h4>
                                <h4>Donation Count: </h4>
                                <h4>Total Donations: $</h4>
                            </div>
                            <div class='col-md-2 text-right'>
                            	<h4>[Joined Date]</h4>
                                <h4>[Donation_Count]</h4>
                                <h4>[Donation_Value]</h4>
                            </div>
                        </div>
                        <!-- For Small Screens -->
                        <div class='row text-center bg-success hidden-md hidden-lg'>
							<div class='col-md-12'>
                            	<h4>Name: </h4>
                                <h6>${pbean.lastName }, ${pbean.firstName } ${pbean.middleName}</h6>
                                <h4>Used ID: </h4>
                                <h6>${pbean.username }</h6>
                                <h4>Contact Number: </h4>
                                <h6>${pbean.phoneNumber }</h6>
                                <h4>Mailing Address: </h4>
                                <h6>${pbean.address }</h6>
                                <h4>E-Mail Address: </h4>
                                <h6>${pbean.email }</h6>
                            </div>                            
                        </div>
                        <div class='row text-center bg-success hidden-md hidden-lg'>
                        	<div class='col-md-12'>
                            	<h4>Joined On: </h4>
                                <h6>[Joined Date]</h6>
                                <h4>Donation Count: </h4>
                                <h6>[Donation_Count]</h6>
                                <h4>Total Donations: $</h4>
                                <h6>[Donation_Value]</h6>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <hr />
                <div class='row'>
                	<div class='col-xs-12 text-center'>
						<h4>Where your previous donations went:</h4>
                    </div>
                </div>
                <div class='row'>
                	<div class='col-xs-12 center-block'>
                    <div class='wrapFlow'>
                    	<table class='table table-hover table-bordered table-responsive'>
                        	<tr>
								<th class='text-center'>Donation ID</th>
                                <th class='text-center'>Date</th>
                                <th class='text-center'>Donated To</th>
                                <th class='text-center'>Amount</th>
                            </tr>
                            <tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                            <tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                            <tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                            <tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                            <tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                            <tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                            <tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                            <tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                       		<tr>
								<td>[DONATION_ID]</td>
                                <td>[DATE]</td>
                                <td>[DONATED_TO]</td>
                                <td>[AMOUNT]</td>
                            </tr>
                        </table>
                        </div>
                    </div>
                </div>
			</div>
            	<br style='margin-top: 3vh;' />
            <div class='row'>
            	<div class='row'>
                	<div class='col-xs-12'>
                    	<p class='text-info text-center'>
                        	The table above shows all donation transactions you have made from the beginning. Be sure to track where your donations went
                        </p>
                    </div>
                </div>
                	<br style='margin-top: 3vh;' />
                <div class='row'>
                	<div class='col-md-7'>
                    	<img src='MEDIA/IMAGES/727x519.png' class='img-responsive'/>
                    </div>
                    <div class='col-md-5'>
                    	<img src='MEDIA/IMAGES/727x519.png' class='img-responsive'/>
                        <p class='text-center'>
                        	The images show the statatistics of the frequency and amount of donation you have made
                        </p>
                    </div>
                </div>	
            </div>
  		</div>
    </div>
    
    <br style='margin-top: 3vh;' />
        
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


</html>