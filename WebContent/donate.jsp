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
	
	<jsp:include page="navBar.jsp" />  


    <div class='container-fluid bg1_'>
    	<div class='container '>
        <br /><br /><br />
        	<div class='row text-container_2'>
            	<div class='' id='donate_unlog'>
            	<div class='row'>
                	<div class='col-xs-12'>
                    	<h1 class='text-center'><em>You can log in to your existing account to track your donations or donate anonymously with PayPal!</em></h1>
                    </div>
                </div>
                <div class='xs-md hidden-sm'>
                	<br />
                </div>
                <% 
                Cookie ck[] = request.getCookies();
                if (ck == null || ck.length == 1) { %>
                <div class='row'>
                	<div class='col-md-5 col-xs-12'>
                    	<form method="post" action="ConfirmInformation" onsubmit="return validateDonationLogInForm()">
                          <div class="form-group">
                            <label for="idInput">UserID</label>
                            <input type="text" class="form-control" id="idInput" name='username' placeholder="User ID" required>
                          </div>
                          <div class="form-group">
                            <label for="passwordInput">Password</label>
                            <input type="password" class="form-control" id="passwordInput" name="password" placeholder="Enter Password" required>
                          </div>
                          <div class="form-group">
                            <label for="passwordInputconfirm">Confirm Password <span  class="hidden" style="color: red;" id="passwordCheckerFirst"><img src="MEDIA/IMAGES/xImage.png" style="height: 20px"/>Passwords don't match</span></label>
                            <input type="password" class="form-control" id="passwordInputconfirm" name="passwordInputconfirm" placeholder="Enter Confirm Password" required>
                          </div>
                         
                          <div class="form-group">
                         	 	<button type="submit" class="btn btn-default" >Submit</button>
                                <span id='forgotPass' ><a href='' style='margin-left: 10px;' class='text-danger'>Forgot Password?</a></span>
                          </div>
                        </form>
                    </div>
                    <div class='col-md-5 col-xs-12 col-md-offset-2 hidden-xs hidden-sm'>
                    	<img src='MEDIA/IMAGES/paypal_logo_donate.gif' style='width: 100%;'/>
                    </div>
                </div>
                <br />
				<hr  />
                <div class='row'>
                	<div class='col-xs-12'>
                    	<p class='text-muted text-center'>
                        	All donations made through our system are 100% safe and secure!
                        </p>
                    </div>
                </div>
                </div>
                
                <% } else {%>
                <!--Logged In Donate-->
                
                <div id='donate_log'>
                <div class='row'>
                	<div class='col-xs-12'>
                    	<h1 class='text-center'><em>Transfer donations straight using your account</em></h1>
                    </div>
                </div>
                <div class='xs-md hidden-sm'>
                	<br />
                </div>
                <div class='row'>
                	<div class='col-md-5 col-xs-12'>
                    	<form action='transferDonationPath' onclick=" return validateDonationForm()" method="post">
							<div class="form-group">
                                <label class="sr-only" for="amount">Amount (in dollars)</label>
                                <div class="input-group">
                                    <div class="input-group-addon">$</div>
                                    <input type="text" class="form-control" id="amountInput" placeholder="Amount" name="amount" required>
                                </div>
                                <center><span  class="hidden" style="color: red;" id="amountChecker"><img src="MEDIA/IMAGES/xImage.png" style="height: 20px"/>Please enter valid amount</span></center>
                       
                            </div>
                            <h3>Donation Terms</h3>
                            <label class="radio-inline">
								<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> PayPal
							</label>
							<label class="radio-inline">
								<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Online Bank
							</label>
								<label class="radio-inline">
								<input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> EastWest
							</label>
                            <h3>Security Check</h3>
							<div class="form-group">
                            	<label for="Password">Password</label>
                            	<input type="password" class="form-control" name="password" id="passwordInput2" placeholder="Enter Password">
							</div>
							<div class="form-group">
								<label for="Password">Confirm Password</label>
								<input type="password" class="form-control" id="passwordInputConfirmation2" placeholder="Enter Confirm Password">
							</div>
							<center><span  class="hidden" style="color: red;" id="passwordChecker"><img src="MEDIA/IMAGES/xImage.png" style="height: 20px"/>Passwords don't match</span></center>
							
							<div class="form-group">
                         	 	<button type="submit" class="btn btn-primary">Transfer Cash!</button>
							</div>
						</form>
                    </div>
                    <div class='col-md-6 col-xs-12 col-md-offset-1'>
                    	<div class='lead'>
                        	<p>
                            	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae hendrerit nunc. Donec vel hendrerit lacus. Integer gravida ligula lorem, et finibus nibh fermentum eget. Fusce ligula nisi, condimentum eu lacus in, dignissim cursus tellus. Aliquam pharetra ut risus sit amet mollis. Ut vitae aliquam enim, non lacinia risus. Praesent imperdiet risus ac diam gravida, et venenatis mi placerat. Vestibulum luctus dolor orci, quis tincidunt felis finibus interdum. Aenean facilisis suscipit dictum. In viverra volutpat urna nec fermentum. Integer diam tortor, imperdiet id suscipit non, congue in diam. Sed lobortis dolor ut leo porttitor, in suscipit leo auctor. Donec sed maximus leo. 
                            </p>
                        </div>
                    </div>
                </div>
                <br />
				<hr  />
                <div class='row'>
                	<div class='col-xs-12'>
                    	<p class='text-muted text-center'>
                        	All donations made through our system are 100% safe and secure!
                        </p>
                    </div>
                </div>
                </div>
                </div>
            </div>
            <% } %>
  		</div>
    </div>

 	<jsp:include page="footerBar.html" />  


</body>
	<script src='JS/jquery.js' type='text/javascript' /></script>
	<script src="JS/jquery.viewportchecker.js"></script>
    <script src='JS/bootstrap.js' type='text/javascript' /></script>
    <script src='JS/custom_.js' type='text/javascript' /></script>
    <script src="JS/jquery.nicescroll.js"></script>
</html>