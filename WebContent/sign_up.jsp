<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation - Donate</title>
	<link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />
    <link href="CSS/bootstrap-formhelpers.css" rel="stylesheet" media='screen' />

</head>

<script>

function retVal(){
  alert($('#deliveryDate').val());
}

</script>

<body data-spy="scroll" data-target="#navbarCollapse">
	
	<jsp:include page="navBar.jsp" />  

	

    <div class='container-fluid'>
    	<div class='container'>
        	<div class='row'>
            <br/><br/><br/>
                <div class='row'>
                <div class='col-xs-12'>
                    <div class='row'>
                        <div class='col-xs-12 text-center'>
                        	<hr />
                            <h2>Be part of People Helping People - Sign Up an Account now</h2>
                            <hr />
                        </div>
                    </div>
                    <div class='row'>
                    	<div class='col-md-7 col-xs-12'>
                        	<form method="post" action="informationTransfer" onsubmit="return validateSignUp()">
                            	<div class='row'>
                                	<div class='col-md-6'>
                                    	<label for="username">User Name</label>
                                		<input type="text" class="form-control" id="usernameSignUp" placeholder="User Name" name='username' required>
                                    </div>
                                    <div class='col-md-6'>
										<br><center><span  class="hidden" style="color: red;" id="UserNameCheckerInSignUp"><img src="MEDIA/IMAGES/xImage.png" style="height: 20px"/>Username must be no less than 3 characters and no more than 16 characters.</span></center>
									</div>
                                </div>
                                <br />
                            	<div class='row'>
                                	<div class='col-md-6'>
                                    	<label for="lastName">Last Name</label>
                                		<input type="text" class="form-control" id="lastName" placeholder="Last Name" name='LastName' required>
                                    </div>
                                	<div class='col-md-6'>
                                    	<label for="firstName">Name</label>
                                   		<input type="text" class="form-control" id="firstName" placeholder="First Name" name='FirstName' required>
                                    </div> 
                                    <center><span  class="hidden" style="color: red;" id="NameCheckerInSignUp"><img src="MEDIA/IMAGES/xImage.png" style="height: 20px"/>Names must only contain alphabets.</span></center>									
                                                                                            
                                </div>
                                <br />
                                <div class='row'>
                                	<div class='col-md-6'>
                                		<label for="lastName">E-Mail</label>
                                		<input type="email" class="form-control" id="email_1" placeholder="E-Mail Address" name='Email' required>
                                    </div>
                                    <div class='col-md-6'>
                                    	<label for="firstName">Confirm E-Mail</label>
                                    	<input type="email" class="form-control" id="email_2" placeholder="Confirm E-Mail Address" required>
                                    </div>
                                    <center><span  class="hidden" style="color: red;" id="eMailCheckerInSignUp"><img src="MEDIA/IMAGES/xImage.png" style="height: 20px"/>Emails don't match</span></center>
  
                                </div>
                                <br />
                                <div class='row'>
                                	<div class='col-md-6'>
                                		<label for="lastName">Password</label>
                                		<input type="password" class="form-control" id="password_1" placeholder="Password" name='Password' required>
                                    </div>
                                    <div class='col-md-6'>
                                    	<label for="firstName">Confirm Password</label>
                                    	<input type="password" class="form-control" id="password_2" placeholder="Confirm Password" required>
                                    </div>
                                    <center><span  class="hidden" style="color: red;" id="passwordCheckerInSignUp"><img src="MEDIA/IMAGES/xImage.png" style="height: 20px"/>Passwords don't match</span></center>
									
                                </div>
                                <br />
                                <div class='row'>
                                	<div class='col-md-6'>
                                    	<label for='birthdate'>Birthday</label>
                                    	<div id='birthdate' data-name='birthdate' name='birthdate' class="bfh-datepicker" data-max="today" data-close="false" data-date="today" data-format="y-m-d">
                                        </div>
                                    </div>
                                    <div class='col-md-6'>
                                    	<label for='gender'>Gender</label>
                                        <select class='form-control' name='gender'>
                                        	<option>Male</option>
                                            <option>Female</option>
                                        </select>
                                    </div>
                                </div>
                                <br />
                                <div class='row'>
                                	<div class='col-md-4'>
                                    	<label for="countries_selectors">Country</label>
                                    	<select id="countries_selectors" class="form-control bfh-countries" data-country="PH" name='country' required></select>
                                    </div>
                                    <div class='col-md-4'>
                                    	<label for="State">State</label>
                                    	<select class="form-control bfh-states" data-country="countries_selectors" id='State' name='State' required></select>
                                    </div>
                                    <div class='col-md-4'>
                                    	<label for="zip">Zip Code</label>
                                    	<input type="zip" class="form-control" id="zip" placeholder="Zip Code" name='zipcode' required>
                                    </div>
                                    <center><span  class="hidden" style="color: red;" id="zipCheckerInSignUp"><img src="MEDIA/IMAGES/xImage.png" style="height: 20px"/>ZIP Code must be numbers only.</span></center>
                                </div>
                                <br />
                                <div class='row'>
                                	<div class='col-md-12'>
                                    	<label for="address">Home Address</label>
                                		<input type="text" class="form-control" id="address" placeholder="Home Address" name='Address' required>
                                        </select>
                                    </div>
                                </div>
                                <br />
                                <div class='row'>
                                	<div class='col-md-10'>
                                    	<label for="phone">Contact Number</label>
                                    	<input type="text" class="form-control bfh-phone" data-country="countries_selectors" id="phone" name='PhoneNumber'>
                                    </div>	
                                    <div class='col-md-2'>
                                    	<label for="signup_b"><br /></label>
                                    	<button type="submit" class="btn btn-default  center-block" name='signup_b'>Sign Up!</button>
                                    </div>
                                </div>
                                
                                
                            </form>
                        </div>
                        <div class='col-md-5 col-xs-12'>
                        	<hr />
                        	<h3 class='text-center'>Benefits of Signing Up an account</h3>
                            <hr />
                            <ul>
                            	<li><h4>Live records of your donations</h4></li>
                                <li><h4>Receive updates of where your donation headed</h4></li>
                                <li><h4>Be able to volunteer for upcoming projects</h4></li>
                                <li><h4>Have your name included as a donor in our projects</h4></li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            	</div>
        	</div>
  		</div>
    </div>
	<br style='margin-top: 3vh;' />
  	<jsp:include page="footerBar.html"/>  

</body>
	    
	<script src='JS/jquery.js' type='text/javascript' /></script>
	<script src='JS/bootstrap-formhelpers-min.js'></script>
    <script src='JS/bootstrap.js' type='text/javascript' /></script>
    <script src='JS/custom_.js' type='text/javascript' /></script>
    <script src="JS/jquery.viewportchecker.js"></script>
    <script src="JS/jquery.nicescroll.js"></script>
</html>
