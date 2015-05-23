<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation - Login</title>
	<link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />

</head>

<body data-spy="scroll" data-target=".navbar-fixed-top" id='top'>
	
	<jsp:include page="navBar.jsp" />  

    <div class='vcenter' id='user_login'>
			<div class='row'>
				<div class='col-md-12'>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h1 class="panel-title">User Login</h1>
						</div>
						<div class="panel-body">
						<% 
								String header = request.getHeader("referer");
								String result[] = header.split("/");
								
								if (!result[result.length-1].equals("successfulSignUp.jsp"))
								{
						%>
							<div class="alert alert-danger" role="alert"><strong>Oops!</strong> Invalid Username/Password</div>
						<% } %>
							<form class='form-horizontal' method="post" action="ConfirmInformation">
								<div class='form-group'>
									<label for="username" class="col-md-2 control-label">Username</label>
									<div class='col-md-10'>
										<input type="text" class="form-control" id="username" name="username" placeholder="User Name">
									</div>
								</div>
								<div class='form-group'>
									<label for="password" class="col-md-2 control-label">Password</label>
									<div class='col-md-10'>
										<input type="password" class="form-control" id=""password"" name="password" placeholder="Password">
									</div>
								</div>		
								<div class='form-group'>
									<div class='col-md-4 col-md-offset-8'>
										<input type="submit" class="form-control" id="loginB" name="loginB" value='Login!'>
									</div>
								</div>			
							
							</form>
						</div>
					</div>
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